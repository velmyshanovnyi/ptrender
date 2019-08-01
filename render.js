var Mustache = require('mustache');
var fs = require('fs');
var path = require("path");

//  var ptGUICmd = "E:/soft/PTGUI/PTGUI.exe";
var ptGUICmd  = "C:/Program Files/PTGui/PTGUI.exe";
var tplFile   = "batch.pts.tpl";
var tmpConfig = "batch.tmp.pts";
var template;

// see ReadMe https://velmyshanovnyi.github.io/ptrender/
var config = {
    "baseDir":  "../ptsample",
	"backDir":  "back",
    "frontDir": "front",
    "outDir":   "out"
};

var images;

function scan() {
    var imageList = {};

    var backDir  = config.baseDir + '/' + config.backDir;
    var frontDir = config.baseDir + '/' + config.frontDir;
    var outDir   = config.baseDir + '/' + config.outDir;

    fs.readdirSync(backDir).forEach(file => {
        if (path.extname(file).toLowerCase() == ".jpg") {
            var fname = path.basename(file);
            if (fname.startsWith("GB")) {
                var id = fname.substr(2, fname.length - 6);
                imageList[id] = {
                    "back": backDir + "/" + file
                };
            } else {
                console.log("Skip not back file " + file);
            }

            //readEXIF(file);
        } else {
            console.log("Skip back not an image " + file);
        }
    });

    fs.readdirSync(frontDir).forEach(file => {
        if (path.extname(file).toLowerCase() == ".jpg") {
            var fname = path.basename(file);
            if (fname.startsWith("GF")) {
                var id = fname.substr(2, fname.length - 6);
                var img = imageList[id];
                if (img) {
                    img["front"] = frontDir + "/" + file;
                    img["out"] = outDir + "/P" + id + ".jpg";
                } else {
                    console.log("Skip front file without back " + file);
                }
            } else {
                console.log("Skip not front file " + file);
            }
            //readEXIF(file);
        } else {
            console.log("Skip front not an image " + file);
        }
    });

    return imageList;
}

var spawn = require('child_process').spawnSync;

function proceed(images) {
    for (id in images) {
        var img = images[id];
        var cfg = Mustache.render(template, img);

        fs.writeFileSync(tmpConfig, cfg, (err) => {
            if (err) console.log(err);
            console.log("Successfully Written to File.");
        });

        console.log("Proceed " + img['out']);
        var child = spawn(ptGUICmd, ['-stitchnogui', tmpConfig]);
        // child.stdout.on('data', function (chunk) {
        // console.log(chunk);
        // });

        // or if you want to send output elsewhere
        //child.stdout.pipe(console);

        //exec(ptGUICmd + " " + tmpConfig);


    }
}

function init() {
    console.log("Read config template " + tplFile);
    template = fs.readFileSync(tplFile, "utf8");
    images = scan();
    proceed(images);
}

init();

// fs.writeFileSync(tmpConfig, getConfig(), (err) => {
//     if (err) console.log(err);
//     console.log("Successfully Written to File.");
// });
