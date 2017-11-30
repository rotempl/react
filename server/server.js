var express = require('express');
const app = express()
var path = require('path');
var mysql = require("mysql");
var bodyParser = require('body-parser');
var session  = require('express-session');
var cookieParser = require('cookie-parser');


app.use(express.static(path.join(__dirname, '..', 'public')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use(cookieParser());


app.use(session({ secret: ',jfgh34o8thrf', 
                  cookie: { maxAge: 1000000 },
                //   resave: true,
                //  saveUninitialized: true
                }));

// app.use(session({
//     secret: cookie_secret,
//     name: cookie_name,
//     store: sessionStore, // connect-mongo session store
//     proxy: true,
//     resave: true,
//     saveUninitialized: true
// }));


var data = require('./routes/data');
var users= require('./routes/users');

app.use('/api', data);
app.use('/users', users);

app.get('/', function (req, res) {
  res.sendFile(`${__dirname}/../index.html`)
});

app.get('*', function (req, res) {
  res.sendFile(`${__dirname}/../index.html`)
});



app.listen(8888);