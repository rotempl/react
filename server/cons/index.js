var mysql = require("mysql");


exports.con = mysql.createConnection({
    host: "127.0.0.1",
    user: "root",
    password: "ru,o",
    database: "airbnbdatabase"
})