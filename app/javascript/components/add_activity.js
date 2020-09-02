// recuperer la div dans laquelle on veut ajouter nos éléments
// chercher à ajouter a la fin de la liste le dernier élément crée via insertAdjacentHTML

const incrementedList = () => {

  const buttonAdd = document.querySelector('.btn-add')
  if (buttonAdd) {
    buttonAdd.addEventListener('click', (event) => {
      const activityList = document.getElementById('stock_zone');
        const titleActivity = document.querySelector('.mapboxgl-popup-content h1');
          activityList.insertAdjacentHTML("beforeend", `<div class='activity-list'>${titleActivity.innerText}</div>`)
    });
  }
}

export { incrementedList };
