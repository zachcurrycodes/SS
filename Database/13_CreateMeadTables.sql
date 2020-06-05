CREATE TABLE ref.MeadType(
	MeadTypeID INT NOT NULL
		CONSTRAINT PK_MeadType
		PRIMARY KEY IDENTITY
	,MeadType NVARCHAR(255) NOT NULL
	)

CREATE TABLE dbo.Meadery(
	MeaderyID INT NOT NULL
		CONSTRAINT PK_Meadery
		PRIMARY KEY IDENTITY
	,MeaderyName NVARCHAR(255) NOT NULL
	,AddressID INT NOT NULL
		CONSTRAINT FK_Meadery_AddressID
		REFERENCES dbo.SSAddress(AddressID)
	,VenueID INT NOT NULL
		CONSTRAINT FK_Meadery_VenueID
		REFERENCES dbo.Venue(VenueID)
	,OpeningDate DATETIME NOT NULL
	,ClosingDate DATETIME
	)

CREATE TABLE dbo.Mead(
	MeadID INT NOT null
		CONSTRAINT PK_Mead
		PRIMARY KEY IDENTITY
	,MeadName NVARCHAR(255) NOT NULL
	,MeadTypeID INT NOT NULL
		CONSTRAINT FK_Mead_MeadTypeID
		REFERENCES ref.MeadType(MeadTypeID)
	,HoneyWine BIT
		CONSTRAINT DF_Mead_HoneyWine
		DEFAULT 0
	,MeaderyID INT NOT NULL
		CONSTRAINT FK_Mead_MeaderyID
		REFERENCES dbo.Meadery(MeaderyID)
	,CreatedBy INT NOT NULL
		CONSTRAINT FK_Mead_CreatedBy
		REFERENCES ident.SSUser(UserID)
	,CreatedDate DATETIME NOT NULL
		CONSTRAINT DF_Mead_CreatedDate
		DEFAULT GETDATE()
	)

/*

DROP TABLE dbo.Mead
DROP TABLE dbo.Meadery
DROP TABLE ref.MeadType

*/