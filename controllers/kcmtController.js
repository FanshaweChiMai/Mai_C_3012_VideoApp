exports.post_new_review = (req, res) => {
  console.log('hit post review route');

  connect.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

    query = `INSERT INTO tbl_kcomments (comments_id, comments_auth, comments_copy, comments_date, comments_movie, comments_rating) VALUES (NULL, NULL, "${req.body.comment}", CURRENT_TIMESTAMP(), "${req.body.id}", "${req.body.stars}");`;

    connect.query(query, (err, rows) => {
      if (err) {
        return console.log(err.message);
      }

      res.json(rows);
    })
  })
};
