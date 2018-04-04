var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {

  res.render('index', {
    title: 'Flashback App',
    index: true,
    kids: false,
    parents: false
    //index:result
});
});

router.get('/parents', function(req, res, next) {
  connect.query("SELECT * FROM tbl_parents ", (err, result)=>{
    if(err){
      console.log(err);
    }else{
  res.render('parents', {
    title: 'Click on the posters to check out the snippets!',
    index: false,
    kids: false,
    parents: true,
    parents: result
  });
}
});
});

router.get('/videos/:id', function(req, res) {
connect.query(`SELECT * FROM tbl_parents WHERE parents_id = "${req.params.id}"`, (err, result)=>{
  if(err){
    console.log(err);
  }else{
    res.render('videos', {
      title: 'Enjoy the Video',
      index: false,
      kids: false,
      parents: false,
      videos: true,
      videos:result
    });
    }
    });
});


router.get('/kids', function(req, res, next) {
  connect.query("SELECT * FROM tbl_kids ", (err, result)=>{
    if(err){
      console.log(err);
    }else{
  res.render('kids', {
    title: 'Click on the posters to check out the snippets!',
    index: false,
    kids: true,
    parents: false,
    kids: result
  });
}
});
});


router.get('/kidsvideos/:id', function(req, res) {
connect.query(`SELECT * FROM tbl_kids WHERE kids_id = "${req.params.id}"`, (err, result)=>{
  if(err){
    console.log(err);
  }else{
    res.render('kidsvideos', {
      title: 'Roku for Kids',
      index: false,
      kids: false,
      parents: false,
      kidsvideos: true,
      kidsvideos:result
    });
    }
    });
});


module.exports = router;
