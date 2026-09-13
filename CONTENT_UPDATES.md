# 웹사이트 콘텐츠 업데이트 방법

기존 Academic Pages/Jekyll 디자인은 유지합니다. SOP, PS, CV는 Word 파일로
관리하고 Research, Publication, Projects는 페이지의 글을 직접 수정합니다.

## 최초 한 번만 설정하기

자동 배포 파일을 저장소에 올린 뒤 GitHub에서 다음과 같이 설정합니다.

1. 저장소의 **Settings → Pages**로 이동합니다.
2. **Build and deployment** 아래 **Source**를 **GitHub Actions**로 바꿉니다.

## SOP, PS, CV 교체하기

아래의 영문 소문자 파일명을 정확히 유지하여 새 Word 파일을 업로드하고
`master` 브랜치에 저장합니다.

- `documents/sop.docx`
- `documents/ps.docx`
- `documents/cv.docx`

저장할 때마다 Word의 전체 글이 읽기 편한 웹 본문으로 자동 변환되고, 문서
안의 사진도 같은 위치에 추출되며, 사이트가 다시 게시됩니다. 페이지의
다운로드 버튼도 이 Word 파일을 그대로 제공합니다.

Word에서는 기본 제공되는 제목, 본문, 목록, 표, 그림 기능을 사용하세요.
사진의 배치는 **텍스트 줄 안**으로 설정하는 것이 가장 안정적입니다. 텍스트
상자, 도형 안의 글, 머리글·바닥글, 떠 있는 그림, 스페이스로 맞춘 배치는
반응형 웹페이지에서 정확히 변환되지 않을 수 있습니다.

## 글로 관리하는 페이지

- Research: `_pages/research.md`
- Publication: `_pages/publications.html`
- Projects: `_pages/projects.md`

글을 고친 뒤 `master` 브랜치에 저장하면 사이트가 자동으로 다시 게시됩니다.
