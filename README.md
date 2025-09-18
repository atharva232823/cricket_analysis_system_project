# Readme.md
**Cricket Analysis System - WTC 2023-2025 Cycle**
This project analyzes the World Test Championship (WTC) 2023-2025 data to extract key insights into team players and performances

**Key Features / Analysis:**
-Created structured batting and bowling tables and main table of countries and points
-Performed analysis to identify top 5 teams,top players statistics,and trends
-Generated insights on performance patterns,strengths and weaknesses for teams and players

**Tools Used:**
-**Excel** for data cleaning 
-**SQL** for data manipulation and query-based analysis

**Project Structure / Tables:**  
- `wtc_points` – Contains points and rankings of teams in the WTC cycle  
- `batting_records` – Player batting statistics  
- `bowling_records` – Player bowling statistics  

**Key Features / Analysis:**  
- Identified batsmen who scored more than 500 runs  
- Found top 5 bowlers with the most wickets  
- Identified bowlers who bowled the most maiden overs  
- Classified batsmen as Excellent, Good, or Average based on performance  
- Classified bowlers as Economical, Average, or Expensive based on performance  
- Found top 3 batsmen from each team  
- Identified all-rounders using combined batting and bowling stats  

**Key SQL Features Demonstrated:**  
- Joins (to identify all-rounders across tables)  
- CASE statements (for classification of batsmen and bowlers)  
- Aggregation functions (to calculate average runs by each country)  
- Filtering and Sorting (to identify top batsmen and bowlers and rank them)

**How to Run / Setup Instructions:**  
1. Load the dataset tables (`wtc_points`, `batting_records`, `bowling_records`) into your SQL database.  
2. Execute the SQL queries for each analysis in your preferred SQL environment.  
3. Review outputs in the result tables to extract insights.

**Author:**  
Atharva Rupesh Mhatre
