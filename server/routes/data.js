var express = require('express');
var router = express.Router();

var mysql = require("mysql");
var connection= require('../cons/index')



router.get('/data/locations', function (req, res, next){
    var sql = "SELECT locations.*, cities.cityName, countries.countryName FROM locations  INNER JOIN cities  ON locations.city= cities.cityId INNER JOIN countries ON countries.countryId = cities.countryId"
    connection.con.query(sql, function (err, result) {
        if (err) throw err;
        res.send(result);
    })
    
})


router.get('/data/Cities', function (req, res, next){
    var sql = "SELECT * FROM cities"
    connection.con.query(sql, function (err, result) {
        if (err) throw err;
        res.send(result);
    })    
})

router.get('/data/country', function (req, res, next){
    var sql = "SELECT * FROM countries"
    connection.con.query(sql, function (err, result) {
        if (err) throw err;
        res.send(result);
    })
    
})

router.get('/data/reviews/:tableName', function(req, res, next){
    var tableName= req.params.tableName
    var sql = "SELECT * FROM "+ tableName
    connection.con.query(sql, function (err, result) {
            if (err) throw err;
            res.send(result);
        })
})




module.exports = router;