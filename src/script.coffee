starsCanvasElement = document.getElementById 'stars-canvas'

starsCanvas = starsCanvasElement.getContext '2d'
starsCanvas.beginPath();
starsCanvas.moveTo(20,90);
starsCanvas.lineTo(92,90);
starsCanvas.lineTo(115,20);
starsCanvas.lineTo(137,90);
starsCanvas.lineTo(210,90);
starsCanvas.lineTo(151,132);
starsCanvas.lineTo(174,200);
starsCanvas.lineTo(115,158);
starsCanvas.lineTo(56,200);
starsCanvas.lineTo(79,132);
starsCanvas.closePath();
starsCanvas.strokeStyle = '#b4241b'
starsCanvas.stroke()

