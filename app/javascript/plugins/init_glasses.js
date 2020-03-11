import { TweenLite, TimelineMax, Linear, Back, Sine } from 'gsap';

const fillGlasses = () => {
  document.querySelectorAll('svg[data-size]').forEach((svg) => {
    const size = parseFloat(svg.dataset.size);
    const tl = new TimelineMax();
    const rects = svg.querySelectorAll('rect');
    tl.to(rects, 0.4, { scaleY: size, transformOrigin: '50% 100%' });
  })
}

const initGlasses = () => {
  fillGlasses()
}


window.fillGlasses = fillGlasses

export default initGlasses
