document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('mycanvas');
  canvas.height = 500;
  canvas.width = 500;

  const ctx = canvas.getContext('2d');
  ctx.fillStyle = "red";
  ctx.fillRect(0,0,200,200);

  ctx.beginPath();
  ctx.arc(50, 50, 100, 0, 2*Math.PI, true);
  ctx.strokeStyle = "green";
  ctx.lineWidth = 5;
  ctx.stroke();
  ctx.fillStyle = "green";
  ctx.fill();

});
