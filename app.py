from flask import Flask, render_template, request, jsonify
import sqlite3
import os

# Initialize the Flask application
app = Flask(__name__)

# Path to the SQLite database
DB_PATH = "AI_Model_Heist.db"


def execute_query(query):
    """Helper function to execute SQL queries on the database and return results"""
    try:
        # Connect to the SQLite database
        conn = sqlite3.connect(DB_PATH)
        cursor = conn.cursor()
        cursor.execute(query)
        columns = [
            description[0] for description in cursor.description
        ]  # Get column names
        result = cursor.fetchall()  # Fetch all rows
        conn.close()

        # Convert result into a list of dictionaries (rows as dictionaries)
        results_with_columns = [dict(zip(columns, row)) for row in result]

        return results_with_columns
    except Exception as e:
        return str(e)


@app.route("/")
def index():
    """Render the main page with the interactive SQL editor"""
    return render_template("index.html")


@app.route("/execute_query", methods=["POST"])
def execute_sql_query():
    """Execute the user's SQL query and return results"""
    query = request.form.get("query")
    if query:
        result = execute_query(query)
        return jsonify(result=result)
    return jsonify(result="Error: No query provided")


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
