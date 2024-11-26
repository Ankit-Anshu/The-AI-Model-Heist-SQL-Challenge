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
  
    // Check if the entered name matches the correct culprit
    if (name === 'PRIYA PATEL') {
      // Show celebration and confession, hide incorrect message
      celebrationDiv.style.display = 'block';
      confessionDiv.style.display = 'block';
      incorrectDiv.style.display = 'none';  // Hide incorrect message
  
      // Trigger the confetti animation
      startConfetti();
    } else {
      // Show incorrect feedback and hide celebration/confession
      celebrationDiv.style.display = 'none';
      confessionDiv.style.display = 'none';
      incorrectDiv.style.display = 'block'; 
      incorrectDiv.innerHTML = "That's not the right person. Try again!"; // Show the incorrect message
    }
  }
  