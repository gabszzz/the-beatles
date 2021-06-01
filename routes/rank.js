var express = require('express');
var router = express.Router();
var sequelize = require('../models').sequelize;
var Musica = require('../models').Musica;


router.get('/', async (req, res, next) => {

  console.log('TESTEEEEEEEEEEEE FUNCIONAAAAAAAAAAAAAAAAAAAA');
  
  const sql = 'SELECT titulo, votos FROM Musica ORDER BY votos DESC;';
  const rank = await sequelize.query(sql, { model: Musica });
  console.log('RAAAAAANK', rank);

  res.status(200).json(rank);
});

module.exports = router;