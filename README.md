# Worldwide Crude Oil Trade — BigQuery SQL & Excel Analysis

**Overview**  
Analysis of worldwide crude oil import/export flows using Google BigQuery for SQL and Excel for visualization. All monetary values in the deliverables are in **USD (billions)**.

## Project contents
- **/sql** — BigQuery script files (results already scaled to USD billions)
- **/excel** — Exported CSVs and `crude_trade_dashboard.xlsx` (PivotTables & Dashboard)
- **/images** — Dashboard screenshot(s)

## How I ran the analysis
1. Run the SQL scripts in BigQuery (project: `project-portfolio-468411`) and export results as CSV.
2. Import the CSVs into Excel via Power Query (set column type = Decimal Number).
3. Build PivotTables and an Excel Dashboard (`crude_trade_dashboard.xlsx`).

## Key insights (example)
- Top exporters: Saudi Arabia, Russia, United Arab Emirates
- Top importers: China, India, Japan
- Year-over-year global trade growth: X%

## Files to open
- `excel/crude_trade_dashboard.xlsx` — open to view charts and slicers.
- `sql/*.sql` — run in BigQuery to reproduce the CSVs.
- images/dashboard.png

## Contact
Aloysius Oky Indrawanto — aokyindrawanto@gmail.com — [LinkedIn](https://www.linkedin.com/in/aloysius-oky-indrawanto-395a8088)
