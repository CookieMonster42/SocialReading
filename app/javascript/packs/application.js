// bootstrap
import "bootstrap";
// map
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
// flatpickr
import flatpickr from "flatpickr";

initMapbox();


var request = document.querySelector("#book-request");
var tagInput = document.querySelector(".book-form-tags")
console.log(tagInput)

var fetchBookInfo = () => {
  tagInput.classList.remove('hidden')
  console.log("change is the right thing")
  Rails.ajax({
    url: "/groups/new",
    type: "get",
    data: request.value,
  })
}


request.addEventListener("change", fetchBookInfo);


var element = document.querySelector('.datep')
console.log(element)
const options = {
  enableTime: true,
  dateFormat: "Y-m-d H:i",
}
flatpickr(element, options);

