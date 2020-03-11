const formElement = document.querySelector('#new_group')

const inputChangeEvent = (_e) => {
  Rails.fire(formElement, 'submit');
}

const initSearch = () => {
  if (formElement === null)
    return

  formElement.querySelectorAll('input, select').forEach((inputElement) => {
    inputElement.addEventListener('change', inputChangeEvent)
  })
};

export { initSearch };


