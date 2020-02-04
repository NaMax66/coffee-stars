### начальная координата - левый средний угол звезды ###
starsCanvasElement = document.getElementById 'stars-canvas'
starsCanvas = starsCanvasElement.getContext '2d'
starsCanvas.beginPath()
starsCanvas.rect(0, 0, 600, 600)
starsCanvas.fillStyle = '#fff'
starsCanvas.fill()

drawStar = (x0 = 0, y0 = 0, fill = 'black') ->
  starsCanvas.beginPath()
  starsCanvas.moveTo x0,70 + y0
  starsCanvas.lineTo 72 + x0,70 + y0
  starsCanvas.lineTo 95 + x0,y0
  starsCanvas.lineTo 117 + x0,70 + y0
  starsCanvas.lineTo 190 + x0,70 + y0
  starsCanvas.lineTo 131 + x0,112 + y0
  starsCanvas.lineTo 154 + x0,180 + y0
  starsCanvas.lineTo 95 + x0,138 + y0
  starsCanvas.lineTo 36 + x0,180 + y0
  starsCanvas.lineTo 59 + x0,112 + y0
  starsCanvas.closePath()
  starsCanvas.strokeStyle = fill
  starsCanvas.stroke()
  starsCanvas.fillStyle = fill
  starsCanvas.fill()

drawStar 20, 20, 'red'
drawStar 380, 20, 'blue'
drawStar 200, 200, 'green'
drawStar 20, 380, 'yellow'
drawStar 380, 380

rgbToHex = (r, g, b) ->
  if (r > 255 || g > 255 || b > 255)
    throw "Invalid color component"
  return ((r << 16) | (g << 8) | b).toString(16)

findPos = (obj) ->
  curleft = 0
  curtop = 0
  if (obj.offsetParent)
    loop
      curleft += obj.offsetLeft
      curtop += obj.offsetTop
      break if obj = obj.offsetParent
    return { x: curleft, y: curtop }
  return undefined;

handler = (e) ->
  pos = findPos(this);
  x = e.pageX - pos.x;
  y = e.pageY - pos.y;
  coord = "x=" + x + ", y=" + y;
  c = this.getContext('2d');
  p = c.getImageData(x, y, 1, 1).data;
  hex = "#" + ("000000" + rgbToHex(p[0], p[1], p[2])).slice(-6)
  el = document.getElementById('status')
  el.style.backgroundColor = hex
  console.log(hex)

starsCanvasElement.addEventListener 'click', handler
