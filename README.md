# Portfolio Project 1 — Sales Analytics

## Project overview

This project demonstrates end-to-end sales analytics for an e-commerce business using **SQL**, **Python**, and **Tableau Public**.

The project includes:
- extracting and combining data from Google BigQuery with SQL
- exploratory and statistical analysis in Python
- building analytical dashboards in Tableau Public

## Tools used

- SQL (Google BigQuery)
- Python (Pandas, Matplotlib, SciPy)
- Jupyter Notebook / Google Colab
- Tableau Public

## Project structure

portfolio-project-1-sales-analytics/  
├── images/  
├── notebooks/  
│   └── Portfolio_1_Sales_Analytics.ipynb  
├── sql/  
│   └── sales_dataset_query.sql  
└── README.md  

## Tableau Dashboard

Tableau Public:  
[Portfolio 1 - Sales Analytics](https://public.tableau.com/app/profile/miroszlava.balog/viz/GotoCustomerChannelInsights_/Dashboard1)

## Repository files

- [Jupyter Notebook](notebooks/Portfolio_1_Sales_Analytics.ipynb)
- [SQL Query](sql/sales_dataset_query.sql)

---

## Dataset description

The final analytical dataset was created from Google BigQuery and contains information about sessions, orders, users, products, devices, and traffic sources.

Main dataset characteristics:
- **349,545 rows**
- **19 columns**
- **6 numeric columns**
- **12 categorical columns**
- **1 datetime column**
- **349,545 unique sessions**
- period covered: **2020-11-01 to 2021-01-31**

The highest number of missing values appears in:
- `user_id`
- `is_subscribed`
- `email_confirmed`
- `item_id`
- `price`
- `category`
- `product_name`
- `short_description`

This is expected because the dataset includes **all website sessions**, including sessions without purchases and sessions from users who were not logged in or registered.

For sales analysis, a separate dataset `orders_df` was created that contains only sessions with purchases. This makes revenue, country, category, and customer behavior analysis more accurate.

---

# Business analysis

## Revenue by continents

The **Americas** generate the highest revenue by a wide margin, followed by **Asia** and **Europe**. This shows that the company’s strongest market is concentrated in the Americas.

![Revenue by Continents](<images/Аналіз доходу за континентами.jpg>)

## Revenue by countries

The **United States** is the clear leader by total revenue. **India** and **Canada** also show strong results, while European countries such as the **United Kingdom** and **France** generate a moderate level of revenue.

![Revenue by Countries](<images/Аналіз доходу за країнами.jpg>)

## Number of orders by countries

The highest number of orders also comes from the **United States**, followed by **India** and **Canada**. This confirms a strong concentration of demand in the U.S. market.

![Orders by Countries](<images/Аналіз кількості замовлень за країнами.jpg>)

## Top-10 product categories by revenue

The category **Sofas & armchairs** generates the highest revenue, followed by **Chairs** and **Beds**. This suggests that the main revenue is driven by core home furniture categories rather than smaller accessory products.

![Top-10 Categories by Revenue](<images/Аналіз доходу за категоріями товарів.jpg>)

## Top-10 categories in the country with the highest sales

The country with the highest sales is the **United States**. In the U.S., the leading categories remain **Sofas & armchairs**, **Chairs**, and **Beds**, which means the demand structure in the main market is generally similar to the overall sales structure.

![Top-10 Categories in Top Country](<images/Аналіз топ-10 категорій у країні з найбільшими продажами.jpg>)

## Revenue share by device type

The largest share of revenue comes from **desktop devices (59.00%)**. **Mobile** also contributes a significant share (**38.73%**), while **tablet** has only a minimal contribution (**2.26%**). This means desktop is the most important device type for sales performance.

![Revenue by Device Type](<images/Аналіз продажів за типами девайсів.jpg>)

## Revenue by device models

A small number of specific device models generate the largest share of revenue. This indicates that sales are distributed unevenly across device models and may reflect differences in traffic quality or user behavior.

![Revenue by Device Models](<images/Аналіз продажів за моделями девайсів.jpg>)

## Revenue by browsers

The browser **Chrome** generates the largest revenue by a wide margin. This indicates that the majority of users complete purchases through Chrome, making it the most important browser for user experience optimization.

![Revenue by Browsers](<images/Аналіз продажів за браузерами.jpg>)

## Revenue by traffic channels

The largest share of revenue comes from **Organic Search (35.76%)**, followed by **Paid Search (26.62%)** and **Direct (23.44%)**. **Social Search (7.92%)** and **Undefined (6.26%)** contribute much less.

This suggests that search-driven acquisition is the key driver of sales.

![Revenue by Traffic Channels](<images/Аналіз продажів за каналами трафіку.jpg>)

## Revenue by weekday

Revenue differs across weekdays, which suggests that customer activity and purchase behavior are not evenly distributed throughout the week.

![Revenue by Weekday](<images/Аналіз продажів за днями тижня.jpg>)

## Registered users by country

The largest number of registered users is observed in the **United States**, followed by **India** and **Canada**. This shows that the company’s registered customer base is also heavily concentrated in the U.S. market.

![Registered Users by Country](<images/Аналіз країн за кількістю зареєстрованих користувачів.jpg>)

## Email confirmation and subscription status

Among registered users:
- **71.7%** confirmed their email address
- **83.06%** remained subscribed to the newsletter
- **16.94%** unsubscribed

This indicates a relatively high level of engagement with the brand among registered users.

In addition, the main share of revenue is generated by users who remain subscribed to the newsletter.

---

# Sales dynamics analysis

## Daily revenue trend

Daily revenue fluctuates significantly during the analyzed period, with visible peaks and declines. The highest values appear in **December** and in **early January**, which may indicate seasonal growth in demand during the holiday period.

![Daily Revenue Trend](<images/Аналіз динаміки загальних продажів за датами.jpg>)

## Sales dynamics by continents

Throughout the analyzed period, **Americas** consistently generates the highest revenue and significantly outperforms **Asia** and **Europe**. All three regions show a wave-like pattern, but fluctuations in the Americas are much more pronounced.

![Sales Dynamics by Continents](<images/Аналіз динаміки продажів за континентами.jpg>)

## Sales dynamics by traffic channels

The biggest contribution over time comes from **Organic Search** and **Paid Search**. **Direct** also plays an important role, while **Social Search** and **Undefined** make the smallest contribution.

![Sales Dynamics by Traffic Channel](<images/Аналіз динаміки продажів за каналами трафіку.JPG-1.jpg>)

## Sales dynamics by device types

Across the whole period, **desktop** consistently generates the highest revenue. **Mobile** also contributes a significant share, while **tablet** remains low during the entire period.

![Sales Dynamics by Device Type](<images/Аналіз динаміки продажів за типами девайсів.jpg>)

---

# Statistical analysis

## Relationship between number of sessions and revenue

To test the relationship between daily session count and daily revenue, correlation analysis was performed. The relationship is statistically significant, which means that changes in session volume are associated with changes in revenue.

![Sessions vs Revenue](<images/Статистичний аналіз взаємозв’язку між кількістю сесій та доходом.jpg>)

## Correlation between sales across continents

Spearman correlation was used to evaluate relationships between daily sales in the top-3 continents.

Results showed **moderate positive statistically significant correlations** between all pairs:
- Americas vs Asia: **0.6685**
- Americas vs Europe: **0.6259**
- Asia vs Europe: **0.6082**

This suggests that sales trends across the top regions tend to move in the same general direction.

## Correlation between sales across traffic channels

Positive statistically significant correlations were found between all traffic channels.

The strongest relationships were:
- Organic Search vs Paid Search: **0.7639**
- Direct vs Organic Search: **0.7482**
- Direct vs Paid Search: **0.6908**

This indicates that sales dynamics in the main traffic channels tend to change simultaneously.

## Correlation between sales across top product categories

Sales across the top-5 categories also showed **moderate positive statistically significant relationships**.

The strongest correlations were:
- Bookcases & shelving units vs Chairs: **0.6368**
- Cabinets & cupboards vs Sofas & armchairs: **0.6312**

This may indicate common demand drivers or seasonal factors affecting several core categories at the same time.

---

# Summary of key insights

The analysis shows that:
- the **Americas**, especially the **United States**, are the company’s main market
- the strongest product categories are **Sofas & armchairs**, **Chairs**, and **Beds**
- **desktop** is the dominant device for revenue generation
- **Organic Search** and **Paid Search** are the most effective acquisition channels
- registered and subscribed users generate a substantial share of revenue
- revenue has visible seasonal fluctuations, especially during **December** and **early January**
- important sales dimensions such as continents, traffic channels, and product categories show statistically significant positive relationships

Overall, this project demonstrates practical application of **SQL**, **Python**, and **Tableau** for business analytics and data-driven decision-making.
