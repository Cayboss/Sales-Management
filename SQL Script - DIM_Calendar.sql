-- Cleansed DIM_Date Table --
SELECT 
  DateKey, 
  FullDateAlternateKey AS Date, 
  EnglishDayNameOfWeek AS Day, 
  EnglishMonthName AS Month, 
  SUBSTRING (EnglishMonthName FOR 3) AS MonthShort,   -- Useful for front end date navigation and front end graphs.
  MonthNumberOfYear AS MonthNo, 
  CalendarQuarter AS Quarter, 
  CalendarYear AS Year 
FROM 
	DimDate
WHERE 
  CalendarYear >= 2019;
