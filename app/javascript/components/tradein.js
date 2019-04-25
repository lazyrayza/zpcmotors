import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Pay the difference", "Get a quote today"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
