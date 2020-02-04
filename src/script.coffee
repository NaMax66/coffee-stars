starsCanvasElement = document.getElementById 'stars-canvas'

starsCanvas = starsCanvasElement.getContext '2d'
### начальная координата - левый средний угол звезды ###
drawStar = (x0 = 0, y0 = 0) ->
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
  starsCanvas.strokeStyle = '#b4241b'
  starsCanvas.stroke()

drawStar(20, 20)
drawStar(380, 20)
drawStar(200, 200)
drawStar(200, 200)
drawStar(20, 380)
drawStar(380, 380)