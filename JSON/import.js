var csv = require('fast-csv'),
    fs = require('fs');

var files = [{
        path: './CSV/districts.csv',
        out: './JSON/districts.json',
        headers: ['id', 'name', 'veh_reg_num', 'code', 'region_id']
    },
    {
        path: './CSV/regions.csv',
        out: './JSON/regions.json',
        headers: ['id', 'name', 'shortcut']
    },
    {
        path: './CSV/villages.csv',
        out: './JSON/villages.json',
        headers: ['id', 'fullname', 'shortname', 'zip', 'district_id', 'region_id']
    }
];


files.forEach((file) => {

    var rs = fs.createReadStream(file.path, { encoding: "utf8" }),
        ws = fs.createWriteStream(file.out, { encoding: "utf8" }),
        data = [];

    console.log('FILE:', file.path);

    csv
        .fromStream(rs, {
            headers: true,
            ignoreEmpty: true,
            headers: file.headers
        })
        .on("data", function(_data) {
            console.log(_data);
            data.push(_data);
        })
        .on("end", function() {
            ws.write(JSON.stringify(data, null, "\t"));
            ws.close();
            data = undefined; // garbege
            console.log("done");
        });
});