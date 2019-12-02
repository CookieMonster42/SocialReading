const fomth = () => {
  const range = document.querySelector("#range");
  if (range) {
    console.log(range)
    range.addEventListener("focus", (event) => {
      console.log(event);
      console.log(event.currentTarget);
    });
  }
};

export { fomth }
