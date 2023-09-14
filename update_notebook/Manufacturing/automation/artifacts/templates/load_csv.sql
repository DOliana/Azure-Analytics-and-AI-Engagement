
COPY INTO [#TABLE_NAME#]
FROM 'https://#STORAGE_ACCOUNT#.blob.core.windows.net/customcsv/Manufacturing B2B Scenario Dataset/#CSV_FILE_NAME#.csv'
WITH (
	FILE_TYPE = 'CSV',
	FIRSTROW = #DATA_START_ROW_NUMBER# 
)

