# Recruitment Funnel & Hiring Analytics

## Project overview
A small portfolio project exploring a recruitment pipeline using SQL and a synthetic dataset of 200 candidate records. It looks at how candidates move through hiring stages, how outcomes vary by sourcing channel, and how long hiring takes.

## Questions
- How many candidates reached each recruitment stage?
- Which sourcing channels have the highest observed hiring rate in this sample?
- What is the average number of days from application to hire?

## Data
The dataset is **synthetic and created for learning/demo purposes**. It does not contain real candidate or employer data. Each row represents one candidate. `stage_reached` records the furthest stage reached. `rejected_reason` is populated for candidates who did not get hired and progressed beyond the initial Applied stage. `hired_date` is populated only for candidates marked Hired.

## Tools
- SQLite / DB Browser for SQLite
- SQL (`GROUP BY`, aggregate functions, conditional counts, date calculations)
- CSV exports
- Excel / Google Sheets for charts and dashboard presentation

## Findings from this synthetic sample
- 50 candidates are recorded at the Applied stage; 13 are marked Hired in this synthetic sample.\n- Employee Referral has the highest observed hiring rate in this generated dataset (18.2%; 8/44).\n- The average time from application to hire is 37.5 days among candidates marked Hired.\n
## Recommendation
In a real recruitment process, compare conversion rates at each stage and review candidate feedback and rejection reasons before changing sourcing spend. Do not treat the highest rate in this small synthetic sample as proof that a source will perform best in real hiring.

## Files
- `candidates.csv` — source dataset (200 synthetic records)
- `analysis.sql` — SQL queries used for the analysis
- `stage_counts.csv` — candidates by stage
- `source_hiring_rates.csv` — hiring rate by source
- `average_days_to_hire.csv` — average days to hire
- `rejection_reasons.csv` — reasons recorded for non-hired candidates
- `recruitment_analytics_dashboard_data.xlsx` — workbook with the dataset and query outputs
- `funnel_chart.png` — recruitment stage chart
- `hiring_rate_by_source.png` — hiring rate chart

## Dashboard
Google Sheets dashboard link: _Add your published Google Sheets URL here after uploading the workbook._

## How to reproduce
1. Open DB Browser for SQLite.
2. Create/open a SQLite database and import `candidates.csv` as a table named `candidates`.
3. Open `analysis.sql` in the Execute SQL tab and run the queries.
4. Export each query result as CSV, or use the included output CSVs to review the expected format.
