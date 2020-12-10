REM
REM	Create a new app folder under .\Source Documents\, using the TSEEQ Sales Sample as a template.
REM
 
	SET vSourceDocsFolder=..\..\Source Documents\
	SET vTSEEQSalesFolder=..\..\Source Documents\TSEEQ Sales Sample\

	call :GetvNewAppName
	call :CreateFolders
	call :CopyIncludeFiles
	call :CopyRuleFiles
	call :CopyQVFs
	explorer "%vNewAppFolder%"
exit /b

REM
REM	SUBROUTINE Get New App Name
REM
:GetvNewAppName
	set /p vNewAppName=Please enter the name of your new app, for example, Marketing or Finance:
	SET vNewAppFolder=..\..\Source Documents\%vNewAppName%\
exit /b


REM
REM	SUBROUTINE Copy QVFs
REM
:CopyQVFs
	REM ------------------- Extract and Transform ------------------- 
	Copy  "%vTSEEQSalesFolder%1_Extract\Sales@Extract.QVF"  	"%vNewAppFolder%\1_Extract\%vNewAppName%@Extract.QVF"
	Copy  "%vTSEEQSalesFolder%2_Transform\Sales@Transform.QVF" 	"%vNewAppFolder%\2_Transform\%vNewAppName%@Transform.QVF"

	
	REM 	In TSEEQ v4.0.9, the following name changes occurred, and apply to v4.0.9 and  later v4.x versions (for example, v4.1.0):
	REM	1. "Sales DataModel.QVF"  was renamed to "Sales DataModel (deprecrated).QVF" 		 (note: “deprecated” was unintentionally misspelled in the file name.)
	REM	2. "Sales Dashboard.QVF" was renamed to Sales Dashboard Binary Load (deprecrated).QVF	(note: “deprecated” was unintentionally misspelled in the file name.)
	REM	3. "Sales Datamodel and Dashboard Combined.QVF"  was renamed to "Sales Dashboard.QVF"

	REM ------------------- DataModel:  Depending on your TSEEQ version, you may wish to run the 1st copy line rather than the 2nd ------------------- 
	REM ------------------- The next line is for TSEEQ versions prior to v4.0.9: ------------------- 
	REM Copy  "%vTSEEQSalesFolder%3_Load\Sales DataModel.QVF"  		"%vNewAppFolder%\3_Load\%vNewAppName% DataModel.QVF"
	REM ------------------- The next copy line is for TSEEQ versions v4.0.9 and later: ------------------- 
	Copy  "%vTSEEQSalesFolder%3_Load\Sales DataModel (deprecrated).QVF"  "%vNewAppFolder%\3_Load\%vNewAppName% DataModel (deprecrated).QVF"

	REM ------------------- Primary Dashboard: The next line is valid for all TSEEQ verions ------------------- 
	Copy  "%vTSEEQSalesFolder%4_App\Sales@Dashboard.QVF"  		"%vNewAppFolder%\4_App\%vNewAppName%@Dashboard.QVF"

	REM ------------------- Dashboard Variations: Depending on your TSEEQ version, you may wish to run the 1st copy line rather than the 2nd ------------------- 
	REM ------------------- The next line is for TSEEQ versions prior to v4.0.9:------------------- 
	REM Copy  "%vTSEEQSalesFolder%4_App\Sales Datamodel and Dashboard Combined.QVF"  "%vNewAppFolder%\4_App\%vNewAppName% Datamodel and Dashboard Combined.QVF"
	REM ------------------- The next line is for TSEEQ versions v4.0.9 and later: ------------------- 
	REM The next copy line is for TSEEQ versions v4.0.9 and later: 
 	Copy  "%vTSEEQSalesFolder%4_App\Sales Dashboard Binary Load (deprecrated).QVF"  "%vNewAppFolder%\4_App\%vNewAppName% Dashboard Binary Load (deprecrated).QVF"
exit /b


REM
REM	SUBROUTINE Copy Include Files
REM
:CopyIncludeFiles
	Copy  "%vTSEEQSalesFolder%include\SalesExtractInclude_PreProcessing.txt"   	"%vNewAppFolder%\include\%vNewAppName%ExtractInclude_PreProcessing.txt"
	Copy  "%vTSEEQSalesFolder%include\SalesTransformInclude_PreProcessing.txt" 	"%vNewAppFolder%\include\%vNewAppName%TransformInclude_PreProcessing.txt"
	Copy  "%vTSEEQSalesFolder%include\SalesLoadInclude_PreProcessing.txt" 		"%vNewAppFolder%\include\%vNewAppName%LoadInclude_PreProcessing.txt"

	Copy  "%vTSEEQSalesFolder%include\SalesExtractInclude_PostProcessing.txt"   	"%vNewAppFolder%\include\%vNewAppName%ExtractInclude_PostProcessing.txt"
	Copy  "%vTSEEQSalesFolder%include\SalesTransformInclude_PostProcessing.txt" 	"%vNewAppFolder%\include\%vNewAppName%TransformInclude_PostProcessing.txt"
	Copy  "%vTSEEQSalesFolder%include\SalesLoadInclude_PostProcessing.txt" 		"%vNewAppFolder%\include\%vNewAppName%LoadInclude_PostProcessing.txt"

	Copy  "%vTSEEQSalesFolder%include\SalesAppInclude_PreProcessing.txt"   			"%vNewAppFolder%\include\%vNewAppName%AppInclude_PreProcessing.txt"
	Copy  "%vTSEEQSalesFolder%include\SalesAppInclude_PostProcessing.txt"   		"%vNewAppFolder%\include\%vNewAppName%AppInclude_PostProcessing.txt"

	Copy  "%vTSEEQSalesFolder%include\SalesCalendarCreation.qvs"   		"%vNewAppFolder%\include\%vNewAppName%CalendarCreation.qvs"

exit /b

REM
REM	SUBROUTINE Copy Rule Files
REM
:CopyRuleFiles
	Copy  "%vTSEEQSalesFolder%ETL_Rules\SalesExtractRules.xls"   	"%vNewAppFolder%\ETL_Rules\%vNewAppName%ExtractRules.xls"
	Copy  "%vTSEEQSalesFolder%ETL_Rules\SalesTransformRules.xls"   	"%vNewAppFolder%\ETL_Rules\%vNewAppName%TransformRules.xls"
	Copy  "%vTSEEQSalesFolder%ETL_Rules\SalesLoadRules.xls"   	"%vNewAppFolder%\ETL_Rules\%vNewAppName%LoadRules.xls"
	Copy  "%vTSEEQSalesFolder%Variables\Sales_Variables.xls"   	"%vNewAppFolder%\Variables\%vNewAppName%_Variables.xls"
	Copy  "%vTSEEQSalesFolder%Variables\Sales_App_Variables.xls"   	"%vNewAppFolder%\Variables\%vNewAppName%_App_Variables.xls"
	Copy  "%vTSEEQSalesFolder%Variables\Sales_Extract_Variables.xls"   	"%vNewAppFolder%\Variables\%vNewAppName%_Extract_Variables.xls"

	Copy  "%vTSEEQSalesFolder%Variables\Sales Dashboard Chart Dimensions.xlsx"   	"%vNewAppFolder%\Variables\%vNewAppName% Dashboard Chart Dimensions.xlsx"
	Copy  "%vTSEEQSalesFolder%Variables\Sales Dashboard Chart Measures.xlsx"   	"%vNewAppFolder%\Variables\%vNewAppName% Dashboard Chart Measures.xlsx"
	Copy  "%vTSEEQSalesFolder%Variables\Sales Dashboard Selection Pane Fields.xlsx"   "%vNewAppFolder%\Variables\%vNewAppName% Dashboard Selection Pane Fields.xlsx"
	Copy  "%vTSEEQSalesFolder%Variables\Sales_Date_Variables.xls"   "%vNewAppFolder%\Variables\%vNewAppName%_Date_Variables.xls"

	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesExtractRules_TABLES_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%ExtractRules_TABLES_Worksheet.csv"
	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesExtractRules_INCLUDE_FIELDS_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%ExtractRules_INCLUDE_FIELDS_Worksheet.csv"
	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesExtractRules_EXCLUDE_FIELDS_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%ExtractRules_EXCLUDE_FIELDS_Worksheet.csv"

	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesTransformRules_TABLES_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%TransformRules_TABLES_Worksheet.csv"
	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesTransformRules_INCLUDE_FIELDS_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%TransformRules_INCLUDE_FIELDS_Worksheet.csv"
	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesTransformRules_EXCLUDE_FIELDS_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%TransformRules_EXCLUDE_FIELDS_Worksheet.csv"
	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesTransformRules_TRANSFORM_FIELDS_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%TransformRules_TRANSFORM_FIELDS_Worksheet.csv"

	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesLoadRules_TABLES_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%LoadRules_TABLES_Worksheet.csv"

	Copy  "%vTSEEQSalesFolder%\External Data\XLS\EmpOff.xls" "%vNewAppFolder%\External Data\XLS\EmpOff.xls"
exit /b


REM
REM	SUBROUTINE Create Folders
REM
:CreateFolders
	mkdir "%vNewAppFolder%1_Extract"
	mkdir "%vNewAppFolder%2_Transform"
	mkdir "%vNewAppFolder%3_Load"
	mkdir "%vNewAppFolder%4_App"
	mkdir "%vNewAppFolder%ETL_Rules"
	mkdir "%vNewAppFolder%ETL_Rules\CSV"
	mkdir "%vNewAppFolder%Include"
	mkdir "%vNewAppFolder%Variables"
	mkdir "%vNewAppFolder%QVDs\Extracted"
	mkdir "%vNewAppFolder%QVDs\Transformed\tmp"
	mkdir "%vNewAppFolder%External Data\XLS"
	mkdir "%vNewAppFolder%External Data\CSV"
exit /b
