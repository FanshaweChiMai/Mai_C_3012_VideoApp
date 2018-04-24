const pApp = {
  // some non-VM functionality would go here -> split the movies into genres using Vue
  movieGenres(data, genres) {
    genres.forEach((genre, index) => {
      pApp.vm.genres.push({
        name : genre,
        parents : data.filter(parent => parent.genre_name === genre)

      })
    })
  },

  vm : new Vue({
    el : "#app",

    data : {

      genres : [] // these get populated from the function at the top of the file
    },

    methods : {

    },

    delimiters : ["${", "}"]
  })
}

pApp.movieGenres(appData.parents, ["Action", "Adventure", "Drama", "Historical", "Science-Fiction", "Thriller"]);


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

kApp.kmovieGenres(appkData.kids, ["Adventure","Animation","Musical","Science-Fiction","Mystery","Family","Fantasy"]);
