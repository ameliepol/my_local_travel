const validerTrip = () => {

  const validButton = document.getElementById('valider-trip');
  console.dir(validButton)
  if (validButton) {
    validButton.addEventListener('click', (event) => {
      console.log(event)
      const dayOne = document.getElementById('day-one');
      const dayTwo = document.getElementById('day-two');
      const dayThree = document.getElementById('day-three');

    // on crée un objet vide trip
    // on transforme dayOneList en une liste de strings
    //on insère cette liste comme valeur de Trip poour la clé dayOne

      let trip = {};

      if (dayOne) {
        const dayOneList = dayOne.querySelectorAll('.activity-list');
        let activityListDayOne = [];
        dayOneList.forEach((activity) => {
          activityListDayOne.push(activity.innerText);
        });
        trip.dayOne = activityListDayOne;
      };

      if (dayTwo) {
      const dayTwoList = dayTwo.querySelectorAll('.activity-list');
        let activityListDayTwo = [];
        dayTwoList.forEach((activity) => {
          activityListDayTwo.push(activity.innerText);
        });
        trip.dayTwo = activityListDayTwo;
      };

      if (dayThree) {
      const dayThreeList = dayThree.querySelectorAll('.activity-list');
        let activityListDayThree = [];
        dayThreeList.forEach((activity) => {
          activityListDayThree.push(activity.innerText);
        });
        trip.dayThree = activityListDayThree;
      };

      let urlUpdate = document.getElementById("valider-trip").dataset.url
      window.location = `${urlUpdate}?dayone=${trip.dayOne}&daytwo=${trip.dayTwo}&daythree=${trip.dayThree}`
      // fetch(
      //     urlUpdate, {
      //       method: 'patch',
      //       headers: {
      //         'Accept': 'application/json',
      //         'Content-Type': 'application/json'
      //       },
      //       body: 'coco'
      //     }
      //   )
      //   .then(response => response.json())
      //     .then((data) => {
      //       console.log(data); // Look at local_names.default
      //   })
      // fetch(url: urlUpdate,
      //   {
      //     headers: {
      //     'Accept': 'application/json',
      //     'Content-Type': 'application/json'
      //     },
      //     method: 'patch',
      // })
    });
  };
};
export { validerTrip };




// 1 OK créer un bouton
// 2 OK clic => eventlistener
// 3 OK chercher ts les éléments avec la classe des div que j'insère (queryselector)
// 4 OK transformer la liste obtenue (liste d'objets html) en liste de strings (des noms des activités) (each en js)
// 5 lancer une requête fetch patch (update) en js qui va envoyer au controller Trips la liste des éléments classés dans l'ordre avec les jours
// 6 implémenter la méthode update du controller trip :
// pour chq activité, trouver le jour (day.find), trouver l'activité et créer un selected activity
// 7 console.log (ok)
