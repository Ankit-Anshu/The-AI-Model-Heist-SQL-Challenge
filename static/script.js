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
    .then(data => {
        const resultDiv = document.getElementById('result');
        
        // Check if the data contains results
        if (data.result && data.result.length > 0) {
            let table = '<table class="result-table"><thead><tr>';

            // Create table headers dynamically from the result
            Object.keys(data.result[0]).forEach(column => {
                table += `<th>${column}</th>`;
            });
            table += '</tr></thead><tbody>';

            // Populate table rows with the result data
            data.result.forEach(row => {
                table += '<tr>';
                Object.values(row).forEach(value => {
                    table += `<td>${value}</td>`;
                });
                table += '</tr>';
            });

            table += '</tbody></table>';
            resultDiv.innerHTML = table;  // Display the result table
        } else {
            resultDiv.innerHTML = 'No results found or invalid query.';  // If no result or invalid query
        }
    })
    .catch(error => {
        console.error('Error:', error);
        document.getElementById('result').textContent = 'Error executing query.';  // Error handling
    });
}

// Function to create the confetti effect using your provided parameters
function startConfetti() {
    const canvas = document.getElementById('confettiCanvas');
    const ctx = canvas.getContext('2d');
    
    canvas.style.display = 'block';
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
  
    var duration = 10 * 1000;  // Duration of the confetti animation (15 seconds)
    var animationEnd = Date.now() + duration;
    
    var defaults = { 
      startVelocity: 30, 
      spread: 360, 
      ticks: 60, 
      zIndex: 0 
    };
  
    function randomInRange(min, max) {
      return Math.random() * (max - min) + min;
    }
  
    var interval = setInterval(function() {
      var timeLeft = animationEnd - Date.now();
  
      // Stop the animation once time is up
      if (timeLeft <= 0) {
        clearInterval(interval);
        canvas.style.display = 'none';  // Hide the canvas after confetti stops
      }
  
      // Calculate particle count based on remaining time
      var particleCount = 50 * (timeLeft / duration);
      
      // Create confetti particles from left and right
      confetti({
        ...defaults, 
        particleCount, 
        origin: { x: randomInRange(0.1, 0.3), y: Math.random() - 0.2 }
      });
      confetti({
        ...defaults, 
        particleCount, 
        origin: { x: randomInRange(0.7, 0.9), y: Math.random() - 0.2 }
      });
    }, 250);  // Update every 250ms
  }
  
  // Function to check the final answer (culprit's name)
function checkFinalAnswer() {
  const name = document.getElementById('culprit-name').value.trim().toUpperCase();
  const celebrationDiv = document.getElementById('celebration');
  const confessionDiv = document.getElementById('confession');
  const incorrectDiv = document.getElementById('incorrect');
  const shareButtonsDiv = document.getElementById('share-buttons');
  const certificateDiv = document.getElementById('certificate-container');  // Added for the certificate div

  if (name === 'PRIYA PATEL') {
      celebrationDiv.style.display = 'block';
      confessionDiv.style.display = 'block';
      incorrectDiv.style.display = 'none';
      shareButtonsDiv.style.display = 'block';
      certificateDiv.style.display = 'block';

      startConfetti();

      // Generate share URLs
      const challengeUrl = encodeURIComponent('https://the-ai-model-heist-sql-challenge.onrender.com/');
      const certificateImageUrl = encodeURIComponent('{{ url_for("static", filename="images/certificate.png") }}');
      const twitterText = encodeURIComponent(
          "🚨 I solved the #AIModelHeistSQLChallenge 🕵️‍♂️🎉\n\n" +
          "I cracked the case and helped Detective Ankit uncover the culprit! 💻\n\n" +
          "Big shout-out to @AnkitAnshu01 for creating this amazing challenge! \n\n" +
          "Can you crack the case? 👉 https://the-ai-model-heist-sql-challenge.onrender.com \n\n" +
          "#SQL #SQLChallenge #SQLQuery"
      );
      const linkedInSummary = encodeURIComponent(
        "🚨 I solved the #AIModelHeistSQLChallenge 🕵️‍♂️💻 This thrilling challenge truly pushed my problem-solving skills and SQL expertise to the limit. " +
        "From analyzing data to piecing together clues, it was an exciting test of my abilities! 🔍💡 Huge thanks to @AnkitAnshu01 for crafting such an engaging and thought-provoking experience! 🙌🔥 " +
        "Can you crack the case and reveal the culprit? Dive in here: https://the-ai-model-heist-sql-challenge.onrender.com/ 🚀" +
        "#SQL #SQLChallenge #SQLQuery #ProblemSolving #DataAnalytics"
      );
    

     
      const twitterShareUrl = `https://twitter.com/intent/tweet?text=${twitterText}`;
      const linkedinShareUrl = `https://www.linkedin.com/sharing/share-offsite/?url=${challengeUrl}&title=AI Model Heist SQL Challenge&summary=${linkedInSummary}`;

      // Set share links
      document.getElementById('twitter-share-link').href = twitterShareUrl;
      document.getElementById('linkedin-share-link').href = linkedinShareUrl;

  } else {
      celebrationDiv.style.display = 'none';
      confessionDiv.style.display = 'none';
      incorrectDiv.style.display = 'block';
      incorrectDiv.innerHTML = "That's not the right person. Try again!";
      shareButtonsDiv.style.display = 'none';
      certificateDiv.style.display = 'none';
  }
}


// Flag to track if social share button is clicked
let isSocialShareClicked = false;

// Function to handle the social share button click
function handleSocialShareClick() {
    isSocialShareClicked = true;
    updateMetaTags();
}

// Function to update meta tags dynamically based on the sharing method
function updateMetaTags() {
    const certificateImageUrl = "{{ url_for('static', filename='images/certificate.png') }}";
    const coverImageUrl = "{{ url_for('static', filename='images/cover_photo.png') }}";
    
    // Determine the image based on the share method
    const imageToShare = isSocialShareClicked ? certificateImageUrl : coverImageUrl;

    // Update Open Graph and Twitter Card meta tags dynamically
    document.querySelector("meta[property='og:image']").setAttribute("content", imageToShare);
    document.querySelector("meta[name='twitter:image']").setAttribute("content", imageToShare);
}

// Update social share links to trigger the handleSocialShareClick function
document.getElementById("twitter-share-link").addEventListener("click", handleSocialShareClick);
document.getElementById("linkedin-share-link").addEventListener("click", handleSocialShareClick);
