var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  connect.query("SELECT * FROM tbl_index ", (err, result)=>{
    if(err){
      console.log(err);
    }else{
  res.render('index', {
    title: 'Roku',
    index: true,
    kids: false,
    parents: false,
    index:result
  });
}
});
});

router.get('/kids', function(req, res, next) {
  connect.query("SELECT * FROM tbl_index ", (err, result)=>{
    if(err){
      console.log(err);
    }else{
  res.render('kids', {
    title: 'Roku Kids',
    index: false,
    kids:true,
    parents: false,
    kids: result
  });
}
});
});

router.get('/parents', function(req, res, next) {
  connect.query("SELECT * FROM tbl_index ", (err, result)=>{
    if(err){
      console.log(err);
    }else{
  res.render('parents', {
    title: 'RokuP',
    index: false,
    kids: false,
    parents: true,
    parents: result
  });
}
});
});

router.get('/videos/:id', function(req, res) {
connect.query(`SELECT * FROM tbl_index WHERE index_id = "${req.params.id}"`, (err, result)=>{
  if(err){
    console.log(err);
  }else{
    res.render('videos', {
      title: 'Roku',
      index:result
    });
    }
    });
});

router.get('/videokids/:id', function(req, res) {
connect.query(`SELECT * FROM tbl_index WHERE index_id = "${req.params.id}"`, (err, result)=>{
  if(err){
    console.log(err);
  }else{
    res.render('videos', {
      title: 'Roku',
      kids:result
    });
    }
    });
});

router.get('/videoparents/:id', function(req, res) {
connect.query(`SELECT * FROM tbl_index WHERE index_id = "${req.params.id}"`, (err, result)=>{
  if(err){
    console.log(err);
  }else{
    res.render('videos', {
      title: 'Roku',
      parents:result
    });
    }
    });
});
module.exports = router;
