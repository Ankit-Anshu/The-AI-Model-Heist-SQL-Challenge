(async function () {
    const GITHUB_SQL_DUMP_URL = 'https://raw.githubusercontent.com/Ankit-Anshu/The-AI-Model-Heist-SQL-Challenge/refs/heads/master/AI_Model_Heist_SQL_Challenge.sql'; // Replace with your actual URL
    
    const db = await initDatabase();
  
    // Initialize SQLite database using the dump file
    async function initDatabase() {
      const SQL = await initSqlJs({ locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.8.0/sql-wasm.wasm` });
      const db = new SQL.Database();
  
      // Fetch and execute the SQL dump file
      const response = await fetch(GITHUB_SQL_DUMP_URL);
      if (!response.ok) {
        throw new Error('Failed to fetch the SQL dump file.');
      }
      const sqlDump = await response.text();
      db.exec(sqlDump);
  
      return db;
    }
  
    // Handle step visibility
    let currentStep = 1;
    const totalSteps = 6;
  
    // Show the current step
    function showStep(step) {
      for (let i = 1; i <= totalSteps; i++) {
        const stepDiv = document.getElementById(`step-${i}`);
        if (step === i) {
          stepDiv.style.display = 'block';
        } else {
          stepDiv.style.display = 'none';
        }
      }
      if (step > totalSteps) {
        document.getElementById('final-step').style.display = 'block';
      }
    }
  
    // Step navigation and SQL execution
    document.querySelectorAll('.run-query').forEach(button => {
      button.addEventListener('click', async function () {
        const step = button.dataset.step;
        const queryText = document.getElementById(`query-${step}`).value.trim();
  
        if (queryText) {
          try {
            const results = db.exec(queryText);
            displayResults(results);
            currentStep++;
            showStep(currentStep);
          } catch (error) {
            alert('Error executing the query.');
          }
        }
      });
    });
  
    // Display query results in the table
    function displayResults(results) {
      const table = document.getElementById('result-table');
      const tbody = table.querySelector('tbody');
      tbody.innerHTML = '';
  
      if (results.length > 0) {
        const columns = results[0].columns;
        const rows = results[0].values;
  
        // Create table headers
        const thead = table.querySelector('thead');
        thead.innerHTML = `<tr>${columns.map(col => `<th>${col}</th>`).join('')}</tr>`;
  
        // Create table rows
        rows.forEach(row => {
          const tr = document.createElement('tr');
          row.forEach(cell => {
            const td = document.createElement('td');
            td.textContent = cell;
            tr.appendChild(td);
          });
          tbody.appendChild(tr);
        });
      }
    }
  
    // Final Answer Check
    document.getElementById('check-answer').addEventListener('click', function () {
      const finalAnswer = document.getElementById('final-answer').value.trim().toUpperCase();
      if (finalAnswer === 'ANKIT') {
        alert('Correct! You solved the AI Model Heist.');
      } else {
        alert('Incorrect. Try again!');
      }
    });
  
    // Initialize the first step
    showStep(currentStep);
  })();
  