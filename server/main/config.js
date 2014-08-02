"use strict";

var mysql       = require('mysql'),
    morgan      = require('morgan'),
    bodyParser  = require('body-parser'),
    middle      = require('./middleware');

var connection = mysql.createConnection({
  host     : process.env.host || 'localhost',
  user     : process.env.user || 'root',
  password : process.env.password || '',
  database : process.env.database
});

connection.connect(function(err) {
  if (err) {
    console.error('error connecting: ' + err.stack);
    return;
  }
  console.log('connected as id ' + connection.threadId);
});

// connection.query('SELECT * from koch', function(err, rows, fields) {
//   if (err) throw err;
//   console.log('The database is: ', rows, fields);
// });


/*
 * Include all your global env variables here.
*/
module.exports = exports = function (app, express, routers) {
  app.set('port', process.env.PORT || 9000);
  app.set('base url', process.env.URL || 'http://localhost');
  app.use(morgan('dev'));
  app.use(bodyParser.json());
  app.use(bodyParser.urlencoded({extended: true}));
  app.use(middle.cors);
  app.use(express.static(__dirname + '/../../client'));
  app.use('/dataRequest', routers.DataRequestRouter);
  app.use(middle.logError);
  app.use(middle.handleError);
};
