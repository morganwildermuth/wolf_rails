var lastClicked;
var lastLocation;
var grid = clickableGrid(10,10,function(el,row,col,i){
    lastLocation = el.className
    el.className += ' clicked';
    if (lastClicked) lastClicked.className = lastLocation;
    lastClicked = el;
});
     
function clickableGrid( rows, cols, callback ){
    var i=0;
    var grid = document.createElement('table');
    grid.className = 'grid';
    for (var r=0;r<rows;++r){
        var tr = grid.appendChild(document.createElement('tr'));
        for (var c=0;c<cols;++c){
            var cell = tr.appendChild(document.createElement('td'));
            var locationOptions = ['desert', 'water', 'water', 'water', 'forest', 'forest', 'forest', 'forest', 'forest', 'forest']
            var randLocation = locationOptions[Math.floor(Math.random() * locationOptions.length)];
            cell.className = randLocation;
            cell.addEventListener('click',(function(el,r,c,i){
                return function(){
                    callback(el,r,c,i);
                }
            })(cell,r,c,i),false);
        }
    }
    return grid;
}

var Grid ={
  init: function(){
    var gridDiv = document.getElementById("grid");
    gridDiv.appendChild(grid);
  }
}

$(document).ready(function(){ 
  Grid.init();
})