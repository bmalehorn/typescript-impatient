var fs = require("fs");

var pack = JSON.parse(fs.readFileSync("TypeScript/package.json"));

pack.name = "typescript-impatient";
pack.author = "Brian Malehorn";
pack.homepage = "http://github.com/bmalehorn/typescript-impatient";
pack.description = "The latest and greatest version of TypeScript";
pack.keywords.push("impatient", "latest");
pack.bugs.url = "http://github.com/bmalehorn/typescript-impatient/issues";
pack.repository.url = "http://github.com/bmalehorn/typescript-impatient";

var s = JSON.stringify(pack, null, 2);
fs.writeFileSync("package.json", s);
