// bootstrap
import "bootstrap";
// map
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initChoices } from '../plugins/init_choices';
// flatpickr
import flatpickr from "flatpickr";
// Places.JS
import { initAutocomplete } from '../plugins/init_autocomplete.js'

initAutocomplete();

initMapbox();
initChoices();


// ranger JS starts here
let range_slider = document.getElementById("range-slider")
const range_slider_val = document.querySelector(".value-of-range-slider")
console.log(range_slider)
// output.innerHTML = range_slider.value;

const change = (event) => {
    console.log(event.currentTarget.value);
    range_slider_val.innerHTML = `${event.currentTarget.value} KM`;
  };

let refresh_search = () => {
  range_slider.addEventListener('change', change)
  range_slider.addEventListener('mousemove', change)
}

refresh_search();
// here it ends


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

//Date AND Time
// var element = document.querySelector('.datep')
// console.log(element)
// const options = {
//   enableTime: true,
//   dateFormat: "Y-m-d H:i",
// }
// flatpickr(element, options);


//Date
var date = document.querySelector('.datepicker')
const options = {
  altInput: true,
  altFormat: "F j, Y",
  dateFormat: "Y-m-d",
}
flatpickr(date, options);

//Time
var time = document.querySelector('.timepicker')
const options_time = {
  enableTime: true,
  noCalendar: true,
  dateFormat: "H:i"
}
flatpickr(time, options_time);



