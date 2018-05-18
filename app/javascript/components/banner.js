import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Make them happy!", "Make them alcoholics!", "Make them fall in love!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
