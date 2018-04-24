// handle the routing requests => the request gets passed in via the route
const connect = require('../utils/sqlConnect');

exports.show_home = (req, res) => {
  res.render('index', {
    title: 'Flashback App',
    index: true,
    kids: false,
    parents: false
    //index:result
});
};

exports.get_parents_movies = (req, res) => {
  console.log('parents are HERE!');

  connect.getConnection((err, connection) =>{
    if(err){
      return console.log(err.message);
    }
    let query = `SELECT * FROM tbl_parents`;
    connect.query(querry, (err, rows) => {
      connection.release();

      if(err){
        return console.log(err.message);
      }

      console.log(rows);

      res.render('parents',{
        // pMovies: rows[Math.floor(Math.random() * rows.length)],
        // data : JSON.stringify(rows),
        parents: true,
        index : false,
        kids: false
      });
    })
  })
};
// exports.get_all_movies = (req, res) => {
//   console.log('hit get all movies');
//
//   connect.getConnection((err, connection) => {
//     if (err) {
//       return console.log(err.message);
//     }
//
//     let query = `SELECT * FROM tbl_movies m, tbl_genre g, tbl_mov_genre mg WHERE m.movies_id = mg.movies_id AND g.genre_id = mg.genre_id`;
//
//     connect.query(query, (err, rows) => {
//       connection.release(); // let somebody else use this connection
//
//       if (err) {
//         return console.log(err.message);
//       }
//
//       console.log(rows);
//
//       res.render('home', {
//           defaultMovie : rows[Math.floor(Math.random() * rows.length)],
//           data : JSON.stringify(rows),
//           mainpage : true,
//           videopage : false
//       });
//     })
//   })
// };
//
// exports.get_one_movie = (req, res) => {
//   console.log('hit get one route');
//
//   connect.getConnection((err, connection) => {
//     if (err) {
//       return console.log(err.message);
//     }
//
//     let query = `SELECT * FROM tbl_comments WHERE comments_movie = "${req.params.id}"`;
//
//     connect.query(query, (err, rows) => {
//       connection.release(); // let somebody else use this connection
//
//       if (err) {
//         return console.log(err.message);
//       }
//
//       console.log(rows);
//
//       res.render('moviepage', {
//         movie : req.params.id,
//         moviesrc : req.params.movie,
//         data : JSON.stringify(rows),
//         mainpage : false,
//         videopage : true
//       });
//     })
//   })
// };
//
// exports.post_new_review = (req, res) => {
//   console.log('hit post review route');
//
//   connect.getConnection((err, connection) => {
//     if (err) {
//       return console.log(err.message);
//     }
//
//     query = `INSERT INTO tbl_comments (comments_id, comments_auth, comments_copy, comments_date, comments_movie, comments_rating) VALUES (NULL, NULL, "${req.body.comment}", CURRENT_TIMESTAMP(), "${req.body.id}", "${req.body.stars}");`;
//
//     connect.query(query, (err, rows) => {
//       if (err) {
//         return console.log(err.message);
//       }
//
//       res.json(rows);
//     })
//   })
// };


// router.post('/', function(req, res) {
//   console.log('post a review');
//
//   connect.query(, (error, data)=> {
//     if (error) {
//       console.log(error);
//     } else {
//       res.json(data);
//     }
//   });
// });
