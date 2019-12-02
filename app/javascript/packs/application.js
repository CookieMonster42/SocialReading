import "bootstrap";
let trashes = document.querySelectorAll('.delete-icon')

const removeComment = (event) => {
  console.log(event.currentTarget, "this is the target")
  const id = event.currentTarget.classList[1].split("-")[1]
  const card = document.querySelector(`.card-${id}`)
  card.remove()
}

trashes.forEach((trash) => {
  trash.addEventListener("click", removeComment)
})
