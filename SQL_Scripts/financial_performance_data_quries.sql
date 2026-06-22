
-- What is the total Profit (Actual Revenue - Actual Cost)?
SELECT 
    SUM(Actual_Revenue) AS Total_Revenue,
    SUM(Actual_Cost) AS Total_Cost,
    SUM(Actual_Revenue) - SUM(Actual_Cost) AS Net_Profit
FROM financial_performance_data;


-- What are the main Cost Drivers?

SELECT 
    Cost_Category,
    SUM(Actual_Cost) AS Total_Actual_Cost
FROM financial_performance_data
GROUP BY Cost_Category
ORDER BY Total_Actual_Cost DESC;

Budget vs. Actual Revenue (Variance) by Department?

SELECT 
    Department,
    SUM(Budgeted_Revenue) AS Target_Revenue,
    SUM(Actual_Revenue) AS Achieved_Revenue,
    SUM(Actual_Revenue) - SUM(Budgeted_Revenue) AS Revenue_Variance
FROM financial_performance_data
WHERE Budgeted_Revenue > 0
GROUP BY Department;

