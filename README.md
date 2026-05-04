# 📞 Customer Support Performance & SLA Analysis

_Analyzing customer support ticket data to evaluate operational efficiency, SLA compliance, and customer satisfaction._

---

##  Table of Contents
- <a href="#overview">Overview</a>
- <a href="#business-problem">Business Problem</a>
- <a href="#dataset">Dataset</a>
- <a href="#tools--technologies">Tools & Technologies</a>
- <a href="#analysis--key-findings">Analysis & Key Findings</a>
- <a href="#sql-queries">SQL Queries</a>
- <a href="#dashboard">Dashboard</a>
- <a href="#final-recommendations">Final Recommendations</a>
- <a href="#author--contact">Author & Contact</a>

---

<h2><a class="anchor" id="overview"></a> Overview</h2>

This project analyzes customer support operations using ticket-level data to identify inefficiencies in resolution processes, backlog management, and SLA compliance.

The objective is to uncover patterns in customer complaints and provide actionable insights to improve service quality and operational performance.

---

<h2><a class="anchor" id="business-problem"></a> Business Problem</h2>

Customer support teams handle large volumes of tickets daily, but delays in resolution, poor SLA adherence, and recurring issues can negatively impact customer experience.

This project focuses on:
- Identifying ticket backlog and resolution gaps
- Measuring SLA compliance
- Analyzing recurring complaint categories
- Evaluating customer satisfaction trends

---

<h2><a class="anchor" id="dataset"></a>Dataset</h2>

- Dataset used in this project: [Dataset Link](https://www.kaggle.com/datasets/suraj520/customer-support-ticket-dataset)

---

<h2><a class="anchor" id="tools--technologies"></a> Tools & Technologies</h2>

- Excel (Data validation and basic preprocessing)
- SQL (Data extraction and KPI calculation)
- Power BI (Dashboard and visualization)

---

<h2><a class="anchor" id="analysis--key-findings"></a> Analysis & Key Findings</h2>

**Key Metrics:**
- **Total Tickets:** 8,469
- **Open Tickets:** ~5,700 (~67%)
- **Closed Tickets:** ~2,769 (~33%)
- **Average Resolution Time:** ~1.26 hours
- **SLA Compliance Rate:** ~16% (overall)

**Key Insights:**

-  **High backlog pressure (67% open tickets):**  
  A significant portion of tickets remain unresolved, indicating operational inefficiencies

-  **Low SLA compliance (~16%):**  
  Majority of tickets fail to meet SLA targets, impacting service reliability

-  **Better performance among resolved tickets (~50% SLA met):**  
  Indicates backlog is the primary contributor to poor overall SLA performance

-  **Recurring issues dominate workload:**  
  Refund requests and technical issues are the most frequent complaint categories

-  **Low customer satisfaction (~1.0 avg):**  
  Particularly low ratings for cancellation-related issues

-  **Balanced workload across priorities:**  
  Inefficiency is system-wide and not limited to high-priority tickets

**Analysis Approach:**
- Used SQL to calculate KPIs, SLA compliance, and ticket distributions
- Aggregated data across categories, priority levels, and channels
- Analyzed resolution time and satisfaction trends
- Built a Power BI dashboard to visualize operational performance

---

<h2><a class="anchor" id="sql-queries"></a>
SQL Queries</h2>

All SQL queries used for analysis:  
[View SQL Queries](sql/analysis_queries_1.sql)

---

<h2><a class="anchor" id="dashboard"></a> Dashboard</h2>

The Power BI dashboard provides insights into:
- Ticket volume and backlog
- SLA performance
- Complaint category distribution
- Resolution time trends
- Customer satisfaction patterns

![Customer Performance Dashboard](images/customer_performance_dashboard.jpg)

---

<h2><a class="anchor" id="final-recommendations"></a> Final Recommendations</h2>

- **Reduce backlog:**  
  Prioritize high-volume categories such as refunds and technical issues

- **Improve SLA compliance:**  
  Implement monitoring and escalation mechanisms for delayed tickets

- **Address root causes:**  
  Fix recurring issues at the product or process level

- **Enhance customer experience:**  
  Improve handling of cancellation-related requests

- **Optimize support operations:**  
  Distribute workload efficiently across support channels

---

<h2><a class="anchor" id="author--contact"></a> Author & Contact</h2>

**Arnav Jha** <br>
Data Analyst
- 📧 Email: (arnavjha3112@gmail.com) 
- 🔗 [LinkedIn](https://www.linkedin.com/in/arnavkumarjha/)
- 🐙 [Github](https://github.com/arnavjha-3112)
