// run with npm from project root: 'npm run upsert -- en'

var fs = require('fs')
var config = require('../../config')
var rp = require('request-promise');

var host = config.server.host;
var port = config.server.port;

if (process.argv.length > 1) {
  lang = process.argv[2]
} else {
  console.log("\nnode upsert language")
  console.log("node upsert en\n")
  process.exit(0)
}

const file = '../../manuscript/' + lang + '/' + 'toc.txt'

// possible future use, for now toc is sent as part of the generated single book file
// grab toc file (works)
/*
fs.readFile(file, 'utf8', function (err,toc) {
    if (err) {
      return console.log(err)
    }
    console.log('toc', toc)
    var tocArray = toc.toString().split("\n");
    console.log("tocArray", tocArray)
})
*/


