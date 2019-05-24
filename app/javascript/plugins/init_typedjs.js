import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if(document.getElementById("title-typed-text")) {
    new Typed('#title-typed-text', {
      strings: ["a scary house", " a beautiful beach", "a quiet farm",  " an epic mountain"],
      typeSpeed: 90,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
