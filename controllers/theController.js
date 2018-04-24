// handle the routing requests => the request gets passed in via the route
const connect = require('../utils/sqlConnect');

exports.show_index = (req, res) => {
  res.render('index', {
    title: 'Flashback App',
    index: true,
    kids: false,
    parents: false
    //index:result
});
};

exports.get_parents_movies = (req, res) => {
  console.log('the parents are HERE!');

  connect.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

    let query = `SELECT * FROM tbl_parents p, tbl_genre g, tbl_parents_genre pg WHERE p.parents_id = pg.parents_id AND g.genre_id = pg.genre_id`;

    connect.query(query, (err, rows) => {
      connection.release();

      if (err) {
        return console.log(err.message);
      }

      console.log(rows);

      res.render('parents', {
        greeting: 'Welcome to the Collection of Goldies!',
        intro: 'Click on the posters to review the movies!',
        defaultMovie : rows[Math.floor(Math.random() * rows.length)],
            data : JSON.stringify(rows),
            index: false,
            kids: false,
            parents: true

      });
    })
  })
};

exports.get_kids_movies = (req, res) => {
  console.log('the kids are THERE!');

  connect.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }
    let query = `SELECT * FROM tbl_kids k, tbl_genre g, tbl_kids_genre kg WHERE k.kids_id = kg.kids_id AND g.genre_id = kg.genre_id`;
    // let querCom = `SELECT * FROM tbl_kcomments WHERE comments_movie = "${req.params.id}"`;
    // connect.querCom(querCom,(err,rows)=>{
    //   connection.release();
    //   if (err) {
    //     return console.log(err.message);
    //   }
    // });
    connect.query(query,(err, rows) => {
      connection.release();

      if (err) {
        return console.log(err.message);
      }

      console.log(rows);

      res.render('kids', {
        greeting: 'Hi there kids!',
        intro: 'Watch the trailer and explore more below!',
        defaultMovie : rows[Math.floor(Math.random() * rows.length)],
            data : JSON.stringify(rows),
            index: false,
            kids: true,
            parents: false

      });
    })
  })
};


exports.get_parents_movie = (req, res) => {
  console.log('The parents come once!');

  connect.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

    let query = `SELECT * FROM tbl_comments WHERE comments_movie = "${req.params.id}"`;

    connect.query(query, (err, rows) => {
      connection.release(); // let somebody else use this connection

      if (err) {
        return console.log(err.message);
      }

      console.log(rows);

      res.render('videos', {
        intro: "Let me know what you think of this one!",
        movie : req.params.id,
        moviesrc : req.params.parent,
        data : JSON.stringify(rows),
        videos: true
      });
    })
  })
};

exports.get_kids_movie = (req, res) => {
  console.log('The kids come not twice!');

  connect.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

    let query = `SELECT * FROM tbl_kcomments WHERE comments_movie = "${req.params.id}"`;

    connect.query(query, (err, rows) => {
      connection.release(); // let somebody else use this connection

      if (err) {
        return console.log(err.message);
      }

      console.log(rows);

      res.render('kidsvideos', {
        intro: "Let me know what you think of this one!",
        movie : req.params.id,
        moviesrc : req.params.kid,
        data : JSON.stringify(rows),
        kidsvideos: true
      });
    })
  })
};

exports.post_new_review = (req, res) => {
  console.log('hit post review route');

  connect.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

    query = `INSERT INTO tbl_comments (comments_id, comments_auth, comments_copy, comments_date, comments_movie, comments_rating) VALUES (NULL, NULL, "${req.body.comment}", CURRENT_TIMESTAMP(), "${req.body.id}", "${req.body.stars}");`;
    connect.query(query, (err, rows) => {
      if (err) {
        return console.log(err.message);
      }

      res.json(rows);
    })



})
};

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
