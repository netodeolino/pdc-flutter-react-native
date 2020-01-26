var express = require('express');
var router = express.Router();

const controller = require('../controllers');

router.get('/', controller.home);
router.post('/login', controller.login);

module.exports = router;