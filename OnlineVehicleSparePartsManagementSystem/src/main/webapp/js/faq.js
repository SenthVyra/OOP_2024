const openMenu = document.querySelector(".header__top-menuopen");
const closeMenu = document.querySelector(".header__nav-closemenu");
const mainMenu = document.querySelector(".header__nav");

openMenu.addEventListener("click", () => {
  mainMenu.style.display = "flex";
  mainMenu.style.top = "0";
});

closeMenu.addEventListener("click", () => {
  mainMenu.style.top = "-100%";
  document.querySelector(".header__nav-closemenu i").style.display = "none";
});

//Content of the FAQs
const faqs = [
  {
    title: "What if I didn't receive any confirmation ?",
    content:
      "Lorem ipsum dolor sit amet consectetur adipiscing elit quam facilisi praesent euismod et, montes dictumst semper mi integer massa nam neque congue arcu. Class conubia cum ridiculus sapien diam felis, dis mollis taciti vitae natoque, senectus tempor pellentesque aptent nostra.",
  },
  {
    title: "When will I be able to receive my order ?",
    content:
      "Lorem ipsum dolor sit amet consectetur adipiscing elit euismod facilisis parturient augue, lobortis ullamcorper mattis conubia pretium habitant sociosqu habitasse iaculis diam, cubilia aliquam felis at erat vivamus mi id arcu tortor. Nullam dignissim suscipit risus condimentum ante fringilla torquent nec nisi eu, molestie blandit nostra cursus sapien porta accumsan orci semper. Nibh sollicitudin sed curabitur fermentum, lacus sodales ultricies.",
  },
  {
    title: "How can I add changes to the order ?",
    content:
      "Lorem ipsum dolor sit amet consectetur adipiscing elit quam facilisi praesent euismod et, montes dictumst semper mi integer massa nam neque congue arcu. Class conubia cum ridiculus sapien diam felis, dis mollis taciti vitae natoque, senectus tempor pellentesque aptent nostra.",
  },
  {
    title: "How can I cancle my order ?",
    content:
      "Lorem ipsum dolor sit amet consectetur adipiscing elit quam facilisi praesent euismod et, montes dictumst semper mi integer massa nam neque congue arcu. Class conubia cum ridiculus sapien diam felis, dis mollis taciti vitae natoque, senectus tempor pellentesque aptent nostra.",
  },
  {
    title: "What payment methods can I use ?",
    content:
      "Lorem ipsum dolor sit amet consectetur adipiscing elit euismod facilisis parturient augue, lobortis ullamcorper mattis conubia pretium habitant sociosqu habitasse iaculis diam, cubilia aliquam felis at erat vivamus mi id arcu tortor. Nullam dignissim suscipit risus condimentum ante fringilla torquent nec nisi eu, molestie blandit nostra cursus sapien porta accumsan orci semper. Nibh sollicitudin sed curabitur fermentum, lacus sodales ultricies.",
  },
  {
    title: "How to confirm the order ?",
    content:
      "Lorem ipsum dolor sit amet consectetur adipiscing elit quam facilisi praesent euismod et, montes dictumst semper mi integer massa nam neque congue arcu. Class conubia cum ridiculus sapien diam felis, dis mollis taciti vitae natoque, senectus tempor pellentesque aptent nostra.",
  },
  {
    title: "How can I post an advertisement ?",
    content:
      "Lorem ipsum dolor sit amet consectetur adipiscing elit urna vehicula ullamcorper consequat, aptent quisque habitasse pulvinar varius malesuada lacus nisl proin maecenas, interdum porta curae ante tellus morbi tristique est facilisi mi. Phasellus gravida condimentum cursus velit dignissim tempus himenaeos conubia aliquam felis dictum, libero et mattis sapien vitae praesent netus molestie magnis per. Ultrices integer facilisis nec congue suscipit, montes dis odio justo auctor eu, elementum posuere aenean pellentesque.",
  },
  {
    title: "How do I view my previous orders ?",
    content:
      "Lorem ipsum dolor sit amet consectetur adipiscing elit quam facilisi praesent euismod et, montes dictumst semper mi integer massa nam neque congue arcu. Class conubia cum ridiculus sapien diam felis, dis mollis taciti vitae natoque, senectus tempor pellentesque aptent nostra.",
  },
];

//Creating dynamic faq items
const dynamicFaqs = document.querySelector(".faq");
faqs.forEach((faq) => {
  const currentFaqs = document.querySelector(".faq").innerHTML;
  dynamicFaqs.innerHTML =
    `
    <div class="faq__item">
        <div class="faq__item-header">
          <h3>${faq.title}</h3>
          <i class="fa-solid fa-angle-down"></i>
        </div>

        <div class="faq__item-content">
          <p>
           ${faq.content}
          </p>
        </div>
    </div>` + currentFaqs;
});

//Adding functionalities to the faqs
const faqItems = document.querySelectorAll(".faq__item");

faqItems.forEach((faqItem) => {
  faqItem.addEventListener("click", () => {
    faqItem.classList.toggle("active");
  });
});
