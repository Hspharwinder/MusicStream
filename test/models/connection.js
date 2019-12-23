var mySql = require('mysql');

const mySqlCon = mySql.createConnection({
    host:'000.00.000.000',
    user:'username',
    password:'abc',
    database:'DBname',
    multipleStatements:true
})

mySqlCon.connect((err)=>{
    if(!err)
        console.log('DataBase Connected');
    else
        console.log('DataBase Connection Failed');
})

module.exports = mySqlCon;
