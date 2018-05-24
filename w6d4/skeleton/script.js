document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!

  const addPlace = (e) => {
    e.preventDefault();
    const placeInput = document.querySelector('.favorite-input');
    const placeVal = placeInput.value;
    const liEl = document.createElement('li');
    liEl.textContent = placeVal;
    const placesList = document.getElementById('sf-places');

    placesList.appendChild(liEl);
  };


  const placesSubmit = document.querySelector('form');
  placesSubmit.addEventListener("submit", addPlace);


  // adding new photos

  // --- your code here!

  // const addPhoto;
  const photoToggleButton = document.querySelector('.photo-show-button');

  const togglePhotoForm = (e) => {
    e.preventDefault();
    const form = document.querySelector('.photo-form-container');
    if (form.className.indexOf('hidden') > -1) {
      form.classList.remove('hidden');
    } else {
      form.classList.add('hidden');
    }
  };

  photoToggleButton.addEventListener('click', togglePhotoForm);


  const addPhoto = (e) => {
    e.preventDefault();
    const photoInputEl = document.querySelector('.photo-url-input');
    const photoValue = photoInputEl.value;
    const imgEl = document.createElement('img');
    imgEl.src = photoValue;
    const photosListEl = document.querySelector('.dog-photos');
    const liEl = document.createElement('li');
    liEl.appendChild(imgEl);
    photosListEl.appendChild(liEl);
  };

  const photosForm = document.querySelector('.photo-form-container form');
  photosForm.addEventListener('submit', addPhoto);
  console.log(photosForm);



});
