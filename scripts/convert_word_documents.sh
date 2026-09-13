#!/usr/bin/env bash

set -euo pipefail

mkdir -p _includes/generated images/documents

convert_document() {
  local slug="$1"
  local source_path="documents/${slug}.docx"
  local output_path="_includes/generated/${slug}.html"
  local temporary_path="${output_path}.tmp"
  local media_path="images/documents/${slug}"

  if [[ ! -f "${source_path}" ]]; then
    echo "Skipping ${source_path}: file not found."
    return
  fi

  rm -rf "${media_path}"
  mkdir -p "${media_path}"

  pandoc "${source_path}" \
    --from=docx \
    --to=html5 \
    --track-changes=accept \
    --standalone \
    --template=scripts/pandoc-document-template.html \
    --wrap=none \
    --extract-media="${media_path}" \
    --output="${temporary_path}"

  sed 's|src="images/documents/|src="/images/documents/|g; s|href="images/documents/|href="/images/documents/|g; s|<strong><mark>|<mark>|g; s|</mark></strong>|</mark>|g; s|<mark>||g; s|</mark>||g' \
    "${temporary_path}" > "${output_path}"
  rm "${temporary_path}"

  # The page layout already provides the document title. Remove a duplicate
  # title paragraph when the Word document starts with one.
  if [[ "${slug}" == "sop" ]] && head -n 1 "${output_path}" | grep -Eq '^<p><strong><u>(SOP|Statement of Purpose)</u></strong></p>$'; then
    tail -n +2 "${output_path}" > "${temporary_path}"
    mv "${temporary_path}" "${output_path}"
  elif [[ "${slug}" == "ps" ]] && head -n 1 "${output_path}" | grep -Eq '^<p><strong><u>(PS|Personal|Personal Statement)</u></strong></p>$'; then
    tail -n +2 "${output_path}" > "${temporary_path}"
    mv "${temporary_path}" "${output_path}"
  fi
}

convert_document "sop"
convert_document "ps"
convert_document "cv"
