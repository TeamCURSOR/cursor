var canvas = document.getElementById('matrix_block');
canvas.width=window.innerWidth;
canvas.height=(window.innerHeight);
var c=canvas.getContext('2d');
c.fillStyle= '#000';
c.fillRect(0, 0, innerWidth, innerHeight);

window.addEventListener('resize', function(){
	canvas.width=window.innerWidth;
	canvas.height=window.innerHeight;
	c.fillStyle= '#000';
	c.fillRect(0, 0, innerWidth, innerHeight);
})

var yPositions = Array(300).join(0).split('');
console.log(yPositions);
function matrix(){
	c.fillStyle = 'rgba(0, 0, 0, .1)';//'rgba(255,255,255, .07)'; //green rgba(8, 30, 1, .05)
	c.fillRect(0, 0, innerWidth, innerHeight);

	
	c.fillStyle='rgba(55,55,55, .4)';
	c.font = "80px Verdana";
	c.fillText("Cursor",canvas.width/2+canvas.width/20-7,canvas.height/2-5);
	c.fillText("Coming Soon",canvas.width/2-5 ,canvas.height/2+85);
	c.font = "80px Verdana";
	c.fillStyle= '#ffffff';
	c.fillText("Cursor",canvas.width/2+canvas.width/20,canvas.height/2);
	c.fillText("Coming Soon",canvas.width/2 ,canvas.height/2+90);

	c.fillStyle= '#ffffff'; //'#37cc05' //green '#ff0000' //red
	c.font = '12pt Arial';

	yPositions.map(function(y,index){
		text = String.fromCharCode(1e2+Math.random()*30);
		x = (index*10) +10;
		matrix_block.getContext('2d').fillText(text, x, y);

		if(y>  100+Math.random()*1e5)
			yPositions[index] = 0;
		else
			yPositions[index]=y+17;
	});
}

setInterval(matrix, 50);