import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed("#banner-typed-text", {
    strings: ["Your Cocktail bar ^1000", "create your signature drinks^1000"],
    typeSpeed: 90,
    loop: true,
  });
};

export { loadDynamicBannerText };


