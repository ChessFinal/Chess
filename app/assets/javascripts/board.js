function draw()
{
  // Main entry point got the HTML5 chess board example
  canvas = document.getElementById('chess');

  // Canvas supported?
  if(canvas.getContext)
  {
    ctx = canvas.getContext('2d');

    // Calculdate the precise block size
    BLOCK_SIZE = canvas.height / NUMBER_OF_ROWS;
    
    // Draw the background
    drawBoard();

    defaultPositions();
  

    canvas.addEventListener('click', board_click, false);
  }
  else
  {
    alert("Canvas not supported!");
  }
}

function drawBoard()
{ 
  for(iRowCounter = 0; iRowCounter < NUMBER_OF_ROWS; iRowCounter++)
  {
    drawRow(iRowCounter);
  } 
  
  // Draw outline
  ctx.lineWidth = 3;
  ctx.strokeRect(0, 0, NUMBER_OF_ROWS * BLOCK_SIZE, NUMBER_OF_COLS * BLOCK_SIZE); 
}