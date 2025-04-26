# Soccer Game-Scoring Interface System

## Overview
This project, developed for **IST 659 – Database Administration Concepts**, aims to build a **real-time football match data scoring and analytics system**.  
It allows data collection, storage, analysis, and visualization tailored to different stakeholders like coaches, analysts, players, broadcasters, and fans.

The system scrapes live football match data, stores it efficiently using SQL databases, processes it with optimized queries, and visualizes insights through interactive dashboards.

---

## Team Members
- Nithish Kumar (363744421)
- Keerthi Krishna Aiyappan
- Kunal Shirodkar
- Mrudu Lahari Malayanur
- Rishikesh Ramesh
- Shruti Kamath

---

## Folder Structure
| File / Folder | Description |
| :--- | :--- |
| `ClubId.csv` | Lookup table mapping Team IDs to Team Names. |
| `PlayerName.csv` | Player details including IDs, positions, and team mappings. |
| `Position.csv` | Lookup table for player positions. |
| `Type_Lookup.csv` | Lookup for event types (shots, passes, goals, etc.). |
| `master.csv` | Primary match events data with 151 columns and 58,000 rows. |
| `Conceptual Model.jpeg` | Conceptual Entity-Relationship model of the database. |
| `Logical Model.jpeg` | Logical schema showing table relations and keys. |
| `Nvigatioon Diagram.jpeg` | Navigation diagram for user flows. |
| `Form or Dashboard Wire Frames.pdf` | Initial design wireframes for dashboard layouts. |
| `SQL Script for CRUD operations - 1.sql` | SQL script for creating tables and basic CRUD operations (Part 1). |
| `SQL Script for CRUD Operations - 2.sql` | Additional SQL scripts for CRUD operations (Part 2). |
| `Script for source or sample data migration.sql` | Script for migrating initial sample data into tables. |
| `script for implementing external model.sql` | Additional SQL for integrating external advanced features. |
| `Up Down Script to create a new column.sql` | Scripts for schema modifications (add/remove columns). |
| `Soccer Game Scoring Interface System - Project Final Report.pdf` | Final detailed project report. |
| `Soccer Final Presentation.pptx` | Presentation summarizing project deliverables. |
| `README.md` | This file. |

---

## How the System Works
1. **Data Collection**  
   Real-time match data is scraped from **Opta** using Python and Selenium.

2. **Database Design**  
   - Tables for Clubs, Players, Positions, Match Events, and Event Types.
   - Relationships enforced with foreign keys.
   - Conceptual and Logical models guide schema structure.

3. **Data Insertion & Processing**  
   - CSV files imported into SQL database.  
   - Scripts manage database creation and migration.

4. **Metric Calculation**  
   - SQL views, stored procedures, and triggers calculate advanced metrics like Shot Accuracy, Goal Conversion, Pass Threat, Defensive Contributions.

5. **Visualization**  
   - Dashboards created for different users using Power BI/Tableau:
     - **Player View**: Personal stats, xG, ball progression.
     - **Coach View**: Expected Goals, shot maps, team strategy.
     - **Fan View**: Appearances, goals vs assists.
     - **Broadcaster View**: Defensive contribution, scoring frequency.
     - **Analyst View**: Deep statistical analysis of chances and shots.

---

## Key Features
- **Dynamic Data Updates** using scrapers and SQL procedures.
- **Real-Time Match Event Tracking**.
- **Role-Specific Interactive Dashboards**.
- **Advanced Player KPIs**.
- **Optimized and Scalable Database Design**.

---

## Scope and Limitations
- Focused on 27 players from two teams to manage complexity.
- Full-scale expansion planned for larger datasets.

---

## Future Enhancements
- Full web-based dynamic application for all stakeholders.
- Expansion to multiple teams, leagues, and seasons.
- Machine learning integration for predictive analytics.

---

## How to Run
1. Set up a **SQL Server** (or **MySQL**) database using the provided SQL scripts.
2. Import datasets from `.csv` files.
3. Execute migration and metric scripts.
4. Connect database to Power BI or Tableau to visualize dashboards.
5. (Optional) Set up live scraping for real-time data updates.

---

## References
- [Journal of Functional Morphology and Kinesiology](https://doi.org/10.3390/jfmk8030104)  
- [IEEE Paper: Soccer Player Trajectory Analysis](https://ieeexplore.ieee.org/document/5564970)  
- Other references listed in the final report.

---
