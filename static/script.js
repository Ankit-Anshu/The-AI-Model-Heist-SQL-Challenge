// Function to execute the SQL query
function executeQuery() {
  const query = document.getElementById('query').value;

  fetch('/execute_query', {
      method: 'POST',
      headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: `query=${encodeURIComponent(query)}`
  })
      .then(response => response.json())
      .then(data => displayQueryResult(data))
      .catch(error => handleError(error));
}

// Function to display the query result
function displayQueryResult(data) {
  const resultDiv = document.getElementById('result');
  
  if (data.result && data.result.length > 0) {
      let table = '<table class="result-table"><thead><tr>';
      
      // Create table headers dynamically
      Object.keys(data.result[0]).forEach(column => {
          table += `<th>${column}</th>`;
      });
      table += '</tr></thead><tbody>';

      // Populate rows
      data.result.forEach(row => {
          table += '<tr>';
          Object.values(row).forEach(value => {
              table += `<td>${value}</td>`;
          });
          table += '</tr>';
      });

      table += '</tbody></table>';
      resultDiv.innerHTML = table;
  } else {
      resultDiv.innerHTML = 'No results found or invalid query.';
  }
}

// Function to handle errors
function handleError(error) {
  console.error('Error:', error);
  document.getElementById('result').textContent = 'Error executing query.';
}

// Function to start confetti animation
function startConfetti() {
  const canvas = document.getElementById('confettiCanvas');
  const ctx = canvas.getContext('2d');

  canvas.style.display = 'block';
  canvas.width = window.innerWidth;
  canvas.height = window.innerHeight;

  const duration = 10 * 1000; // 10 seconds
  const animationEnd = Date.now() + duration;
  const defaults = { startVelocity: 30, spread: 360, ticks: 60, zIndex: 0 };

  function randomInRange(min, max) {
      return Math.random() * (max - min) + min;
  }

  const interval = setInterval(() => {
      const timeLeft = animationEnd - Date.now();

      if (timeLeft <= 0) {
          clearInterval(interval);
          canvas.style.display = 'none';
      }

      const particleCount = 50 * (timeLeft / duration);
      confetti({ ...defaults, particleCount, origin: { x: randomInRange(0.1, 0.3), y: Math.random() - 0.2 } });
      confetti({ ...defaults, particleCount, origin: { x: randomInRange(0.7, 0.9), y: Math.random() - 0.2 } });
  }, 250);
}

// Function to check the final answer
function checkFinalAnswer() {
  const name = document.getElementById('culprit-name').value.trim().toUpperCase();
  const isCorrect = (name === 'PRIYA PATEL');
  
  toggleResultDisplay(isCorrect);

  if (isCorrect) {
      startConfetti();
      setupSocialShareLinks();
  }
}

// Function to toggle result display elements
function toggleResultDisplay(isCorrect) {
  const celebrationDiv = document.getElementById('celebration');
  const confessionDiv = document.getElementById('confession');
  const incorrectDiv = document.getElementById('incorrect');
  const shareButtonsDiv = document.getElementById('share-buttons');
  const certificateDiv = document.getElementById('certificate-container');

  if (isCorrect) {
      celebrationDiv.style.display = 'block';
      confessionDiv.style.display = 'block';
      incorrectDiv.style.display = 'none';
      shareButtonsDiv.style.display = 'block';
      certificateDiv.style.display = 'block';
  } else {
      celebrationDiv.style.display = 'none';
      confessionDiv.style.display = 'none';
      incorrectDiv.style.display = 'block';
      incorrectDiv.textContent = "That's not the right person. Try again!";
      shareButtonsDiv.style.display = 'none';
      certificateDiv.style.display = 'none';
  }
}

// Function to setup social share links
function setupSocialShareLinks() {
  const challengeUrl = encodeURIComponent('https://the-ai-model-heist-sql-challenge.onrender.com/');
  const certificateImageUrl = 'https://the-ai-model-heist-sql-challenge.onrender.com/static/images/certificate.png';
  const twitterText = encodeURIComponent(
      "🚨 I solved the #AIModelHeistSQLChallenge 🕵️‍♂️🎉\n\n" +
      "I cracked the case and helped Detective Ankit uncover the culprit! 💻\n\n" +
      "Big shout-out to @AnkitAnshu01 for creating this amazing challenge! \n\n" +
      "Can you crack the case? 👉 https://the-ai-model-heist-sql-challenge.onrender.com \n\n" +
      "#SQL #SQLChallenge #SQLQuery"
  );
  const linkedInSummary = encodeURIComponent(
      "🚨 I solved the #AIModelHeistSQLChallenge 🕵️‍♂️💻 This thrilling challenge truly pushed my problem-solving skills and SQL expertise to the limit. " +
      "From analyzing data to piecing together clues, it was an exciting test of my abilities! 🔍💡 Huge thanks to @ankitanshu01 for crafting such an engaging and thought-provoking experience! 🙌🔥 " +
      "Can you crack the case and reveal the culprit? Dive in here: https://the-ai-model-heist-sql-challenge.onrender.com/ 🚀" +
      "#SQL #SQLChallenge #SQLQuery #ProblemSolving #DataAnalytics"
  );

  const twitterShareUrl = `https://twitter.com/intent/tweet?text=${twitterText}`;
  const linkedinShareUrl = `https://www.linkedin.com/sharing/share-offsite/?url=${challengeUrl}&title=AI Model Heist SQL Challenge&summary=${linkedInSummary}`;

  document.getElementById('twitter-share-link').href = twitterShareUrl;
  document.getElementById('linkedin-share-link').href = linkedinShareUrl;
}

// Function to update meta tags dynamically
function updateMetaForShare() {
  const certificateImageUrl = 'https://the-ai-model-heist-sql-challenge.onrender.com/static/images/certificate.png';
  
  document.querySelector('meta[property="og:image"]').setAttribute('content', certificateImageUrl);
  document.querySelector('meta[name="twitter:image"]').setAttribute('content', certificateImageUrl);
}

// Add event listeners for social share buttons
document.addEventListener('DOMContentLoaded', function () {
  const twitterShareButton = document.getElementById('twitter-share-link');
  const linkedinShareButton = document.getElementById('linkedin-share-link');

  if (twitterShareButton) twitterShareButton.addEventListener('click', updateMetaForShare);
  if (linkedinShareButton) linkedinShareButton.addEventListener('click', updateMetaForShare);
});
