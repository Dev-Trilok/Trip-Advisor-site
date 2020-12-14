
var images = [
"images/corbett.jpg",
"images/skiing.jpg",
"images/thailand.jpg"
];

var i = 0;
function slides() {

    document.getElementById("slideimage").src = images[i];
    if (i < (images.length - 1))
        i++;
    else
        i = 0;
}

setInterval[slides,3000]