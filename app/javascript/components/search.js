const searchAddresses = () => {

  const input = document.querySelector("#search_address");
  console.log(input)
  fetch("https://geo.api.gouv.fr/departements/33/communes")
    .then(response => response.json())
    .then((data) => {
      const array = [];
      data.forEach((municipality) => {
        array.push(municipality.nom)

      });
      // console.log(array)
        input.addEventListener('keyup', (event) => {
          let result = [];
          let entry = input.value;
          let regex = entry.toLowerCase();
          result = array.filter(municipality => municipality.toLowerCase().match(regex)).slice(0, 10)
          // let found = municipality.nom.search(regex);
          // console.dir(result);
          const list = document.getElementById('list-address')
          // console.dir(list)
          while(list.childNodes.length > 0) {
            list.removeChild(list.firstChild)
          }
          result.forEach((name) => {
            let lister = `<li>${name}</li>`
            list.insertAdjacentHTML("afterbegin", lister)

          });
        });
        // mettre un ecouteur sur chaque li au click
        // des que lutilisateur sur une valeur
        // tu modifie le champ input pour ajouter la valeur choisie
    });

}

export { searchAddresses };



