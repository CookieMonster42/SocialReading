import Choices from 'choices.js'
import 'choices.js/src/styles/choices.scss';

const initChoices = () => {
  const element = document.getElementById('book-request')
  if (element) {
    const choices = new Choices(element);
  }
}

export { initChoices }
