
const kApp = {
  // some non-VM functionality would go here -> split the movies into genres using Vue
  kmovieGenres(data, genres) {
    genres.forEach((genre, index) => {
      kApp.vm.genres.push({
        name : genre,
        kids : data.filter(kid => kid.genre_name === genre)
      })
    })
  },

  vm : new Vue({
    el : "#kapp",

    data : {

      genres : [] // these get populated from the function at the top of the file
    },

    methods : {

    },

    delimiters : ["${", "}"]
  })
}

kApp.kmovieGenres(appkData.kids, ["Animation","Musical","Family"]);
