var express = require('express');
var router = express.Router();

var LocalStrategy  = require('passport-local').Strategy;
var mysql = require("mysql");
var connection= require('../cons/index')

router.get('/checkEmail/:emailAddress', function (req, res, next){
    var emailAddress= req.params.emailAddress;
    var sql = "SELECT emailAdress FROM users WHERE emailAdress='" +emailAddress+ "';"
    connection.con.query(sql, function (err, result) {
        if (err) throw err;
        if(result.length===0){
            res.send({result: true});
        }else{
            res.send({result:false});
        }
    })
})

router.post('/registerNewUser', function (req, res, next){
    let sql = `INSERT INTO users (firstName, lastName, userPassword, emailAdress) VALUES
                ('${req.body.firstName}', '${req.body.email}', '${req.body.lastName}', '${req.body.password}');`
    connection.con.query(sql, function (err, result) {
        if (err) throw err;
        res.send({result:true});
    })    
})

router.post('/checkLoginDetails', function(req, res, next){
    let sql= `SELECT users.firstName, users.lastName, users.id FROM users WHERE 
                emailAdress='${req.body.email}' and userPassword='${req.body.password}'`;
    connection.con.query(sql, function(err, result){
        if(err) throw err;
        if(result.length == 0){
            res.send({confirmDetails: false})
        }else{
            res.send({confirmDetails: true,
                    userId: result[0].id,  
                    firstName: result[0].firstName,
                    lastName: result[0].lastName})
        }
    })          
})

module.exports = router;