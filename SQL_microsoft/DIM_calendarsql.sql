/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  TOP (1000) [DateKey], 
  [FullDateAlternateKey] as Date, 
  --,[DayNumberOfWeek]
   [EnglishDayNameOfWeek] as Day, --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] as WeekNo, 
  [EnglishMonthName] as Month, 
  LEFT([EnglishMonthName],3) as MonthShort, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
   
  [MonthNumberOfYear] as MonthNo, 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
Where 
	CalendarYear >= 2019
