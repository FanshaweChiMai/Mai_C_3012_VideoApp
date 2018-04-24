var express = require('express');
var appController = require('../controllers/theController');
var kidController = require('../controllers/kcmtController');
var router = express.Router();

/* GET home page. */
router.get('/', appController.show_index);

router.get('/parents', appController.get_parents_movies);

router.get('/kids', appController.get_kids_movies);

router.get('/videos/:id/:parent', appController.get_parents_movie );

router.get('/kidsvideos/:id/:kid', appController.get_kids_movie );

router.post('/api', appController.post_new_review);

// router.post('/kapi', kidController.post_new_review);

module.exports = router;
