IF OBJECT_ID(N'[dbo].[Sales]', N'U') IS NOT NULL   
DROP TABLE [dbo].[Sales]

CREATE TABLE [dbo].[Sales]
( 
	[TransactionId] [nvarchar](100)  NULL,
	[CustomerId] [int]   NULL,
	[ProductId] [bigint]   NULL,
	[Quantity] [int]   NULL,
	[Price] [int]   NULL,
	[TotalAmount] [bigint]   NULL,
	[TransactionDate] [datetime]   NULL,
	[ProfitAmount] [int]   NULL,
	[Hour] [int]   NULL,
	[Minute] [int]   NULL,
	[StoreId] [bigint]   NULL
)
WITH
(
	DISTRIBUTION = HASH ( [CustomerId] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO

IF OBJECT_ID(N'[dbo].[IDS]', N'U') IS NOT NULL   
DROP TABLE [dbo].[IDS]

CREATE TABLE [dbo].[IDS]
( 
	[CustomerId] [int]   NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

IF OBJECT_ID(N'[dbo].[Products]', N'U') IS NOT NULL   
DROP TABLE [dbo].[Products]

CREATE TABLE [dbo].[Products]
( 
	[Products_ID] [int]  NOT NULL,
	[ProductID] [varchar](100)  NULL,
	[Name] [varchar](100)  NULL,
	[Department] [varchar](100)  NULL,
	[Price] [money]  NULL,
	[Category] [varchar](100)  NULL,
	[Thumbnail_FileName] [varchar](250)  NULL,
	[AdImage_FileName] [varchar](250)  NULL,
	[SoundFile_FileName] [varchar](100)  NULL,
	[SubCampaigns] [varchar](100)  NULL,
	[TargetGender] [varchar](40)  NULL,
	[TargetClassification] [varchar](100)  NULL,
	[TargetGeneration] [varchar](100)  NULL,
	[Tags] [varchar](100)  NULL,
	[BLECode] [varchar](100)  NULL,
	[Thumbnail] [varbinary](500)  NULL,
	[AdImage] [varbinary](500)  NULL,
	[SoundFile] [varbinary](500)  NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

IF OBJECT_ID(N'[dbo].[Dim_Customer]', N'U') IS NOT NULL   
DROP TABLE [dbo].[Dim_Customer]

CREATE TABLE [dbo].[Dim_Customer]
( 
	[Id] [bigint]  NULL,
	[Age] [smallint]  NULL,
	[Gender] [nvarchar](4000)  NULL,
	[Pincode] [nvarchar](4000)  NULL,
	[FirstName] [nvarchar](4000)  NULL,
	[LastName] [nvarchar](4000)  NULL,
	[FullName] [nvarchar](4000)  NULL,
	[DateOfBirth] [nvarchar](4000)  NULL,
	[Address] [nvarchar](4000)  NULL,
	[Email] [nvarchar](4000)  NULL,
	[Mobile] [nvarchar](4000)  NULL,
	[UserName] [nvarchar](4000)  NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

IF OBJECT_ID(N'[dbo].[TwitterAnalytics]', N'U') IS NOT NULL   
DROP TABLE [dbo].[TwitterAnalytics]

CREATE TABLE [dbo].[TwitterAnalytics]
( 
	[Time] [nvarchar](100)  NULL,
	[Hashtag] [nvarchar](500)  NULL,
	[Tweet] [nvarchar](4000)  NULL,
	[City] [nvarchar](1000)  NULL,
	[UserName] [nvarchar](500)  NULL,
	[RetweetCount] [int]  NULL,
	[FavouriteCount] [int]  NULL,
	[Sentiment] [nvarchar](100)  NULL,
	[SentimentScore] [int]  NULL,
	[IsRetweet] [int]  NULL,
	[HourOfDay] [nvarchar](20)  NULL,
	[Language] [nvarchar](200)  NULL,
	[LineageKey] [int]  NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

IF OBJECT_ID(N'[dbo].[MillennialCustomers]', N'U') IS NOT NULL   
DROP TABLE [dbo].[MillennialCustomers]

CREATE TABLE [dbo].[MillennialCustomers]
( 
	[CustomerId] [nvarchar](4000)  NULL,
	[Age] [nvarchar](4000)  NULL,
	[ZipCode] [nvarchar](4000)  NULL,
	[FirstName] [nvarchar](4000)  NULL,
	[LastName] [nvarchar](4000)  NULL,
	[DateOfBirth] [nvarchar](4000)  NULL,
	[Phone] [nvarchar](4000)  NULL,
	[UserName] [nvarchar](4000)  NULL,
	[Address] [nvarchar](4000)  NULL,
	[FullName] [nvarchar](4000)  NULL,
	[Gender] [nvarchar](4000)  NULL,
	[Email] [nvarchar](4000)  NULL,
	[Title] [nvarchar](4000)  NULL,
	[ActivityTypeDisplay] [nvarchar](4000)  NULL,
	[EmailStatus] [nvarchar](4000)  NULL,
	[Title_1] [nvarchar](4000)  NULL,
	[LoyaltyId] [nvarchar](4000)  NULL,
	[ProductId] [nvarchar](4000)  NULL,
	[CustomerId_1] [nvarchar](4000)  NULL,
	[Price] [nvarchar](4000)  NULL,
	[Quantity] [nvarchar](4000)  NULL,
	[RewardPoints] [nvarchar](4000)  NULL,
	[CustomerId_2] [nvarchar](4000)  NULL,
	[CustomerId_3] [nvarchar](4000)  NULL,
	[CaseNumber] [nvarchar](4000)  NULL,
	[Priority] [nvarchar](4000)  NULL,
	[Status] [nvarchar](4000)  NULL,
	[CustomerId_4] [nvarchar](4000)  NULL,
	[Salesforce_EmailActivities_SentOn] [nvarchar](4000)  NULL,
	[AdobeAnalytics_WebsiteandClicksData_SentOn] [nvarchar](4000)  NULL,
	[Salesforce_SalesforceContacts_CustomerID] [nvarchar](4000)  NULL,
	[Salesforce_SalesforceContacts_CustomerID_Alternate] [nvarchar](4000)  NULL,
	[DynamicsCommerce_POSTransactions_Id] [nvarchar](4000)  NULL,
	[DynamicsCommerce_POSTransactions_Id_Alternate] [nvarchar](4000)  NULL,
	[Salesforce_EmailActivities_Id] [nvarchar](4000)  NULL,
	[Salesforce_EmailActivities_Id_Alternate] [nvarchar](4000)  NULL,
	[AdobeAnalytics_WebsiteandClicksData_Id] [nvarchar](4000)  NULL,
	[AdobeAnalytics_WebsiteandClicksData_Id_Alternate] [nvarchar](4000)  NULL,
	[DynamicsService_CustomerSupportCases_Id] [nvarchar](4000)  NULL,
	[DynamicsService_CustomerSupportCases_Id_Alternate] [nvarchar](4000)  NULL,
	[DynamicsService_DynamicsCRMServiceContacts_CustomerID] [nvarchar](4000)  NULL,
	[DynamicsService_DynamicsCRMServiceContacts_CustomerID_Alternate] [nvarchar](4000)  NULL,
	[AdobeAnalytics_AdobeAnalyticsWebsiteContacts_CustomerID] [nvarchar](4000)  NULL,
	[AdobeAnalytics_AdobeAnalyticsWebsiteContacts_CustomerID_Alternate] [nvarchar](4000)  NULL,
	[Customer_key] [nvarchar](4000)  NULL,
	[CustKey] [int]  NULL
)
WITH
(
	DISTRIBUTION = HASH ( [CustKey] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO

IF OBJECT_ID(N'[dbo].[TwitterRawData]', N'U') IS NOT NULL   
DROP TABLE [dbo].[TwitterRawData]

CREATE TABLE [dbo].[TwitterRawData]
( 
	[ID] [int]  NOT NULL,
	[TwitterData] [varchar](5000)  NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

IF OBJECT_ID(N'[dbo].[department_visit_customer]', N'U') IS NOT NULL   
DROP TABLE [dbo].[department_visit_customer]

CREATE TABLE [dbo].[department_visit_customer]
( 
	[Date] [nvarchar](4000)  NULL,
	[Accessories_count] [nvarchar](4000)  NULL,
	[Entertainment_count] [nvarchar](4000)  NULL,
	[Gaming] [nvarchar](4000)  NULL,
	[Kids] [nvarchar](4000)  NULL,
	[Mens] [nvarchar](4000)  NULL,
	[Phone_and_GPS] [nvarchar](4000)  NULL,
	[Womens] [nvarchar](4000)  NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

IF OBJECT_ID(N'[dbo].[Category]', N'U') IS NOT NULL   
DROP TABLE [dbo].[Category]

CREATE TABLE [dbo].[Category]
( 
	[ID] [float]  NOT NULL,
	[Category] [varchar](255)  NULL,
	[SubCategory] [varchar](255)  NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

IF OBJECT_ID(N'[dbo].[ProdChamp]', N'U') IS NOT NULL   
DROP TABLE [dbo].[ProdChamp]

CREATE TABLE [dbo].[ProdChamp]
( 
	[Camp] [nvarchar](4000)  NULL,
	[Campaign] [nvarchar](4000)  NULL,
	[Final Camp] [nvarchar](4000)  NULL,
	[ProductID] [nvarchar](4000)  NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

IF OBJECT_ID(N'[dbo].[WebsiteSocialAnalytics]', N'U') IS NOT NULL   
DROP TABLE [dbo].[WebsiteSocialAnalytics]

CREATE TABLE [dbo].[WebsiteSocialAnalytics]
( 
	[Country] [varchar](50)  NULL,
	[Product_Category] [varchar](50)  NULL,
	[Product] [varchar](50)  NULL,
	[Channel] [varchar](50)  NULL,
	[Gender] [varchar](50)  NULL,
	[Sessions] [int]  NULL,
	[Device_Category] [varchar](50)  NULL,
	[Sources] [varchar](50)  NULL,
	[Conversations] [varchar](50)  NULL,
	[Page] [varchar](50)  NULL,
	[Visits] [int]  NULL,
	[Unique_Visitors] [int]  NULL,
	[Browser] [varchar](50)  NULL,
	[Sentiment] [varchar](50)  NULL,
	[Duration_min] [varchar](50)  NULL,
	[Region] [varchar](50)  NULL,
	[Customer_Segment] [varchar](50)  NULL,
	[Daily_Users] [int]  NULL,
	[Conversion_Rate] [int]  NULL,
	[Return_Visitors] [int]  NULL,
	[Tweets] [int]  NULL,
	[Retweets] [int]  NULL,
	[Hashtags] [varchar](50)  NULL,
	[Campaign_Name] [varchar](50)  NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO