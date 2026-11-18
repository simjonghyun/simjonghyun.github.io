document.querySelectorAll("[data-slide-gallery]").forEach((gallery) => {
  const track = gallery.querySelector("[data-slide-track]");
  const slides = [...track.children];
  const controls = gallery.querySelector("[data-slide-controls]");
  const previous = gallery.querySelector("[data-slide-prev]");
  const next = gallery.querySelector("[data-slide-next]");
  const status = gallery.querySelector("[data-slide-status]");
  let current = 0;

  function updateControls() {
    const visibleSlide = Math.round(track.scrollLeft / track.clientWidth);
    current = Math.max(0, Math.min(slides.length - 1, visibleSlide));
    const page = `${current + 1} / ${slides.length}`;
    if (status.textContent !== page) status.textContent = page;
    previous.disabled = current === 0;
    next.disabled = current === slides.length - 1;
  }

  function moveSlide(direction) {
    const destination = slides[current + direction];
    if (!destination) return;
    track.scrollLeft = destination.offsetLeft;
    updateControls();
  }

  previous.addEventListener("click", () => moveSlide(-1));
  next.addEventListener("click", () => moveSlide(1));
  track.addEventListener("scroll", updateControls, { passive: true });
  window.addEventListener("resize", updateControls);
  controls.hidden = false;
  updateControls();
});
