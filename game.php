
<head>
<meta charset="UTF-8">
<title>Café Midori – Fun Zone</title>
<style>
  body { font-family: Arial; text-align: center; }
  .tab {
    display: inline-block; margin: 5px; padding: 10px 20px; 
    background: #7bb87b; color: white; cursor: pointer;
    border-radius: 8px;
  }
  .tab:hover { background: #549854; }
  .game-section { display: none; margin-top: 20px; }
</style>
</head>
<body>

<h1>🎉 Café Midori – Fun Zone 🎉</h1>
<div>
  <div class="tab" onclick="showGame('quiz')">🧠 Quiz</div>
  <div class="tab" onclick="showGame('memory')">☕ Memory Game</div>
  <div class="tab" onclick="showGame('latte')">🎨 Latte Art</div>
  <div class="tab" onclick="showGame('escape')">🚪 Escape Room</div>
  <div class="tab" onclick="showGame('catch')">🎮 Endless Catch</div>
</div>


<div id="quiz" class="game-section">
  <h2>🧠 Quiz</h2>
  <iframe src="quiz.php" width="100%" height="600"></iframe>
</div>

<div id="memory" class="game-section">
  <h2>☕ Memory Game</h2>
  <iframe src="memory.html" width="100%" height="500"></iframe>
</div>

<div id="latte" class="game-section">
  <h2>🎨 Latte Art</h2>
  <iframe src="latte.html" width="100%" height="500"></iframe>
</div>

<div id="escape" class="game-section">
  <h2>🚪 Escape Room</h2>
  <iframe src="escape.html" width="100%" height="500"></iframe>
</div>

<div id="catch" class="game-section">
  <h2>🎮 Endless Catch</h2>
  <iframe src="catch.html" width="100%" height="500"></iframe>
</div>

<script>
function showGame(game) {
  document.querySelectorAll('.game-section').forEach(sec => sec.style.display = 'none');
  document.getElementById(game).style.display = 'block';
}
</script>

</body>
</html>
