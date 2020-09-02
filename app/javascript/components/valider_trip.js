const validerTrip = () => {

  const validButton = document.getElementById('valider-trip');
  if (validButton) {
    validButton.addEventListener('click', (event) => {
      const dayOne = document.getElementById('day-one');
      const dayTwo = document.getElementById('day-two');
      const dayThree = document.getElementById('day-three');

    // on crée un objet vide trip
      let trip = {};

      if (dayOne) {
        const dayOneList = dayOne.querySelectorAll('.activity-list');
        // on transforme dayOneList en une liste de strings
        let activityListDayOne = [];
        dayOneList.forEach((activity) => {
        activityListDayOne.push(activity.innerText);
        });
        trip.dayOne = "activityListDayOne";
      };
      console.log(activityListDayOne);
        //on insère cette liste comme valeur de Trip poour la clé dayOne

      // if (dayTwo) {
      //   const dayTwoList = dayTwo.querySelectorAll('.activity-list');

      // }

      // if (dayThree) {
      //   const dayThreeList = dayThree.querySelectorAll('.activity-list');

      // }



      // const selectedActivities = document.querySelectorAll('.activity-list');
      // let list = []
      // selectedActivities.forEach((selectedActivity) => {
      //   list.push(selectedActivity.innerText);
      // });
      // console.log(trip);
    });
  };
};
export { validerTrip };




// 1 créer un bouton
// 2 clic => eventlistener
// 3 chercher ts les éléments avec la classe des div que j'insère (queryselector)
// 4 transformer la liste obtenue (liste d'objets html) en liste de strings (des noms des activités) (each en js)
// 5 lancer une requête fetch patch (update) en js qui va envoyer au controller Trips la liste des éléments classés dans l'ordre avec les jours
// 6 implémenter la méthode update du controller trip :
// pour chq activité, trouver le jour (day.find), trouver l'activité et créer un selected activity
// 7 console.log (ok)
