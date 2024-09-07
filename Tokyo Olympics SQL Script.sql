-- Number of athletes in each country
SELECT Country, COUNT(PersonName) AS Total_Athletes
FROM athletes
GROUP BY Country
ORDER BY Total_Athletes DESC;

-- Number of medals won in each country
SELECT TeamCountry, 
SUM(Gold) AS TotalGold, 
SUM(Silver) AS TotalSilver, 
SUM(Bronze) AS TotalBronze
FROM medals
GROUP BY TeamCountry
ORDER BY TotalGold DESC;

-- Average number of entries by gender for each discipline
SELECT Discipline, AVG(Female) AS AverageFemale, AVG(Male) AS AverageMale
FROM entriesgender
GROUP BY Discipline;

