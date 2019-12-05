import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('new-group-location-name');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
