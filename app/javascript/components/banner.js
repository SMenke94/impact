import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Change the world", "One adventure at a time"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
