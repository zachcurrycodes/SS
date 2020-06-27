CREATE TABLE loc.Country(
	CountryID INT NOT NULL
		CONSTRAINT PK_Country
		PRIMARY KEY IDENTITY	
	,CountryName NVARCHAR(255) NOT NULL
	,CountryNameShorter NVARCHAR(255) NOT NULL
	,CountryAbbreviation2 NVARCHAR(2) NOT NULL
	,CountryAbbreviation3 NVARCHAR(3) NOT NULL
	,ISO3166 NVARCHAR(3) NOT NULL
)

INSERT INTO loc.Country
VALUES
('United States of America (the)','','US','USA',840)
,('Afghanistan','','AF','AFG',4)
,('Albania','','AL','ALB',8)
,('Algeria','','DZ','DZA',12)
,('American Samoa','','AS','ASM',16)
,('Andorra','','AD','AND',20)
,('Angola','','AO','AGO',24)
,('Anguilla','','AI','AIA',660)
,('Antarctica','','AQ','ATA',10)
,('Antigua and Barbuda','','AG','ATG',28)
,('Argentina','','AR','ARG',32)
,('Armenia','','AM','ARM',51)
,('Aruba','','AW','ABW',533)
,('Australia','','AU','AUS',36)
,('Austria','','AT','AUT',40)
,('Azerbaijan','','AZ','AZE',31)
,('Bahamas (the)','','BS','BHS',44)
,('Bahrain','','BH','BHR',48)
,('Bangladesh','','BD','BGD',50)
,('Barbados','','BB','BRB',52)
,('Belarus','','BY','BLR',112)
,('Belgium','','BE','BEL',56)
,('Belize','','BZ','BLZ',84)
,('Benin','','BJ','BEN',204)
,('Bermuda','','BM','BMU',60)
,('Bhutan','','BT','BTN',64)
,('Bolivia (Plurinational State of)','','BO','BOL',68)
,('Bonaire, Sint Eustatius and Saba','','BQ','BES',535)
,('Bosnia and Herzegovina','','BA','BIH',70)
,('Botswana','','BW','BWA',72)
,('Bouvet Island','','BV','BVT',74)
,('Brazil','','BR','BRA',76)
,('British Indian Ocean Territory (the)','','IO','IOT',86)
,('Brunei Darussalam','','BN','BRN',96)
,('Bulgaria','','BG','BGR',100)
,('Burkina Faso','','BF','BFA',854)
,('Burundi','','BI','BDI',108)
,('Cabo Verde','','CV','CPV',132)
,('Cambodia','','KH','KHM',116)
,('Cameroon','','CM','CMR',120)
,('Canada','','CA','CAN',124)
,('Cayman Islands (the)','','KY','CYM',136)
,('Central African Republic (the)','','CF','CAF',140)
,('Chad','','TD','TCD',148)
,('Chile','','CL','CHL',152)
,('China','','CN','CHN',156)
,('Christmas Island','','CX','CXR',162)
,('Cocos (Keeling) Islands (the)','','CC','CCK',166)
,('Colombia','','CO','COL',170)
,('Comoros (the)','','KM','COM',174)
,('Congo (the Democratic Republic of the)','','CD','COD',180)
,('Congo (the)','','CG','COG',178)
,('Cook Islands (the)','','CK','COK',184)
,('Costa Rica','','CR','CRI',188)
,('Croatia','','HR','HRV',191)
,('Cuba','','CU','CUB',192)
,('Cura�ao','','CW','CUW',531)
,('Cyprus','','CY','CYP',196)
,('Czechia','','CZ','CZE',203)
,('C�te d''Ivoire','','CI','CIV',384)
,('Denmark','','DK','DNK',208)
,('Djibouti','','DJ','DJI',262)
,('Dominica','','DM','DMA',212)
,('Dominican Republic (the)','','DO','DOM',214)
,('Ecuador','','EC','ECU',218)
,('Egypt','','EG','EGY',818)
,('El Salvador','','SV','SLV',222)
,('Equatorial Guinea','','GQ','GNQ',226)
,('Eritrea','','ER','ERI',232)
,('Estonia','','EE','EST',233)
,('Eswatini','','SZ','SWZ',748)
,('Ethiopia','','ET','ETH',231)
,('Falkland Islands (the) [Malvinas]','','FK','FLK',238)
,('Faroe Islands (the)','','FO','FRO',234)
,('Fiji','','FJ','FJI',242)
,('Finland','','FI','FIN',246)
,('France','','FR','FRA',250)
,('French Guiana','','GF','GUF',254)
,('French Polynesia','','PF','PYF',258)
,('French Southern Territories (the)','','TF','ATF',260)
,('Gabon','','GA','GAB',266)
,('Gambia (the)','','GM','GMB',270)
,('Georgia','','GE','GEO',268)
,('Germany','','DE','DEU',276)
,('Ghana','','GH','GHA',288)
,('Gibraltar','','GI','GIB',292)
,('Greece','','GR','GRC',300)
,('Greenland','','GL','GRL',304)
,('Grenada','','GD','GRD',308)
,('Guadeloupe','','GP','GLP',312)
,('Guam','','GU','GUM',316)
,('Guatemala','','GT','GTM',320)
,('Guernsey','','GG','GGY',831)
,('Guinea','','GN','GIN',324)
,('Guinea-Bissau','','GW','GNB',624)
,('Guyana','','GY','GUY',328)
,('Haiti','','HT','HTI',332)
,('Heard Island and McDonald Islands','','HM','HMD',334)
,('Holy See (the)','','VA','VAT',336)
,('Honduras','','HN','HND',340)
,('Hong Kong','','HK','HKG',344)
,('Hungary','','HU','HUN',348)
,('Iceland','','IS','ISL',352)
,('India','','IN','IND',356)
,('Indonesia','','ID','IDN',360)
,('Iran (Islamic Republic of)','','IR','IRN',364)
,('Iraq','','IQ','IRQ',368)
,('Ireland','','IE','IRL',372)
,('Isle of Man','','IM','IMN',833)
,('Israel','','IL','ISR',376)
,('Italy','','IT','ITA',380)
,('Jamaica','','JM','JAM',388)
,('Japan','','JP','JPN',392)
,('Jersey','','JE','JEY',832)
,('Jordan','','JO','JOR',400)
,('Kazakhstan','','KZ','KAZ',398)
,('Kenya','','KE','KEN',404)
,('Kiribati','','KI','KIR',296)
,('Korea (the Democratic People''s Republic of)','','KP','PRK',408)
,('Korea (the Republic of)','','KR','KOR',410)
,('Kuwait','','KW','KWT',414)
,('Kyrgyzstan','','KG','KGZ',417)
,('Lao People''s Democratic Republic (the)','','LA','LAO',418)
,('Latvia','','LV','LVA',428)
,('Lebanon','','LB','LBN',422)
,('Lesotho','','LS','LSO',426)
,('Liberia','','LR','LBR',430)
,('Libya','','LY','LBY',434)
,('Liechtenstein','','LI','LIE',438)
,('Lithuania','','LT','LTU',440)
,('Luxembourg','','LU','LUX',442)
,('Macao','','MO','MAC',446)
,('Madagascar','','MG','MDG',450)
,('Malawi','','MW','MWI',454)
,('Malaysia','','MY','MYS',458)
,('Maldives','','MV','MDV',462)
,('Mali','','ML','MLI',466)
,('Malta','','MT','MLT',470)
,('Marshall Islands (the)','','MH','MHL',584)
,('Martinique','','MQ','MTQ',474)
,('Mauritania','','MR','MRT',478)
,('Mauritius','','MU','MUS',480)
,('Mayotte','','YT','MYT',175)
,('Mexico','','MX','MEX',484)
,('Micronesia (Federated States of)','','FM','FSM',583)
,('Moldova (the Republic of)','','MD','MDA',498)
,('Monaco','','MC','MCO',492)
,('Mongolia','','MN','MNG',496)
,('Montenegro','','ME','MNE',499)
,('Montserrat','','MS','MSR',500)
,('Morocco','','MA','MAR',504)
,('Mozambique','','MZ','MOZ',508)
,('Myanmar','','MM','MMR',104)
,('Namibia','','NA','NAM',516)
,('Nauru','','NR','NRU',520)
,('Nepal','','NP','NPL',524)
,('Netherlands (the)','','NL','NLD',528)
,('New Caledonia','','NC','NCL',540)
,('New Zealand','','NZ','NZL',554)
,('Nicaragua','','NI','NIC',558)
,('Niger (the)','','NE','NER',562)
,('Nigeria','','NG','NGA',566)
,('Niue','','NU','NIU',570)
,('Norfolk Island','','NF','NFK',574)
,('Northern Mariana Islands (the)','','MP','MNP',580)
,('Norway','','NO','NOR',578)
,('Oman','','OM','OMN',512)
,('Pakistan','','PK','PAK',586)
,('Palau','','PW','PLW',585)
,('Palestine, State of','','PS','PSE',275)
,('Panama','','PA','PAN',591)
,('Papua New Guinea','','PG','PNG',598)
,('Paraguay','','PY','PRY',600)
,('Peru','','PE','PER',604)
,('Philippines (the)','','PH','PHL',608)
,('Pitcairn','','PN','PCN',612)
,('Poland','','PL','POL',616)
,('Portugal','','PT','PRT',620)
,('Puerto Rico','','PR','PRI',630)
,('Qatar','','QA','QAT',634)
,('Republic of North Macedonia','','MK','MKD',807)
,('Romania','','RO','ROU',642)
,('Russian Federation (the)','','RU','RUS',643)
,('Rwanda','','RW','RWA',646)
,('R�union','','RE','REU',638)
,('Saint Barth�lemy','','BL','BLM',652)
,('Saint Helena, Ascension and Tristan da Cunha','','SH','SHN',654)
,('Saint Kitts and Nevis','','KN','KNA',659)
,('Saint Lucia','','LC','LCA',662)
,('Saint Martin (French part)','','MF','MAF',663)
,('Saint Pierre and Miquelon','','PM','SPM',666)
,('Saint Vincent and the Grenadines','','VC','VCT',670)
,('Samoa','','WS','WSM',882)
,('San Marino','','SM','SMR',674)
,('Sao Tome and Principe','','ST','STP',678)
,('Saudi Arabia','','SA','SAU',682)
,('Senegal','','SN','SEN',686)
,('Serbia','','RS','SRB',688)
,('Seychelles','','SC','SYC',690)
,('Sierra Leone','','SL','SLE',694)
,('Singapore','','SG','SGP',702)
,('Sint Maarten (Dutch part)','','SX','SXM',534)
,('Slovakia','','SK','SVK',703)
,('Slovenia','','SI','SVN',705)
,('Solomon Islands','','SB','SLB',90)
,('Somalia','','SO','SOM',706)
,('South Africa','','ZA','ZAF',710)
,('South Georgia and the South Sandwich Islands','','GS','SGS',239)
,('South Sudan','','SS','SSD',728)
,('Spain','','ES','ESP',724)
,('Sri Lanka','','LK','LKA',144)
,('Sudan (the)','','SD','SDN',729)
,('Suriname','','SR','SUR',740)
,('Svalbard and Jan Mayen','','SJ','SJM',744)
,('Sweden','','SE','SWE',752)
,('Switzerland','','CH','CHE',756)
,('Syrian Arab Republic','','SY','SYR',760)
,('Taiwan (Province of China)','','TW','TWN',158)
,('Tajikistan','','TJ','TJK',762)
,('Tanzania, United Republic of','','TZ','TZA',834)
,('Thailand','','TH','THA',764)
,('Timor-Leste','','TL','TLS',626)
,('Togo','','TG','TGO',768)
,('Tokelau','','TK','TKL',772)
,('Tonga','','TO','TON',776)
,('Trinidad and Tobago','','TT','TTO',780)
,('Tunisia','','TN','TUN',788)
,('Turkey','','TR','TUR',792)
,('Turkmenistan','','TM','TKM',795)
,('Turks and Caicos Islands (the)','','TC','TCA',796)
,('Tuvalu','','TV','TUV',798)
,('Uganda','','UG','UGA',800)
,('Ukraine','','UA','UKR',804)
,('United Arab Emirates (the)','','AE','ARE',784)
,('United Kingdom of Great Britain and Northern Ireland (the)','','GB','GBR',826)
,('United States Minor Outlying Islands (the)','','UM','UMI',581)
,('Uruguay','','UY','URY',858)
,('Uzbekistan','','UZ','UZB',860)
,('Vanuatu','','VU','VUT',548)
,('Venezuela (Bolivarian Republic of)','','VE','VEN',862)
,('Viet Nam','','VN','VNM',704)
,('Virgin Islands (British)','','VG','VGB',92)
,('Virgin Islands (U.S.)','','VI','VIR',850)
,('Wallis and Futuna','','WF','WLF',876)
,('Western Sahara','','EH','ESH',732)
,('Yemen','','YE','YEM',887)
,('Zambia','','ZM','ZMB',894)
,('Zimbabwe','','ZW','ZWE',716)
,('�land Islands','','AX','ALA',248)

CREATE TABLE loc.USState(
	StateID INT NOT NULL
		CONSTRAINT PK_USState
		PRIMARY KEY IDENTITY
	,StateAbbreviation NVARCHAR(2) NOT NULL
	,StateName NVARCHAR(255) NOT NULL
)

INSERT INTO loc.USState
VALUES
('AL','Alabama')
,('AK','Alaska')
,('AZ','Arizona')
,('AR','Arkansas')
,('CA','California')
,('CO','Colorado')
,('CT','Connecticut')
,('DE','Delaware')
,('FL','Florida')
,('GA','Georgia')
,('HI','Hawaii')
,('ID','Idaho')
,('IL','Illinois')
,('IN','Indiana')
,('IA','Iowa')
,('KS','Kansas')
,('KY','Kentucky')
,('LA','Louisiana')
,('ME','Maine')
,('MD','Maryland')
,('MA','Massachusetts')
,('MI','Michigan')
,('MN','Minnesota')
,('MS','Mississippi')
,('MO','Missouri')
,('MT','Montana')
,('NE','Nebraska')
,('NV','Nevada')
,('NH','New Hampshire')
,('NJ','New Jersey')
,('NM','New Mexico')
,('NY','New York')
,('NC','North Carolina')
,('ND','North Dakota')
,('OH','Ohio')
,('OK','Oklahoma')
,('OR','Oregon')
,('PA','Pennsylvania')
,('RI','Rhode Island')
,('SC','South Carolina')
,('SD','South Dakota')
,('TN','Tennessee')
,('TX','Texas')
,('UT','Utah')
,('VT','Vermont')
,('VA','Virginia')
,('WA','Washington')
,('WV','West Virginia')
,('WI','Wisconsin')
,('WY','Wyoming')

CREATE TABLE loc.WorldRegion(
	WorldRegionID INT NOT NULL
		CONSTRAINT PK_WorldRegion
		PRIMARY KEY IDENTITY
	,WorldRegionCountry INT NOT NULL
		CONSTRAINT FK_WorldRegion_WorldRegionCountry
		REFERENCES loc.Country(CountryID)
	,WorldRegionAbbreviation NVARCHAR(10) NULL
	,WorldRegionName NVARCHAR(255) NOT NULL
	,WorldRegionType NVARCHAR(255) NOT NULL
)

INSERT INTO loc.WorldRegion
VALUES
(41, 'ON','Ontario', 'Province')
,(77, NULL,'�le-de-France', 'Region')

CREATE TABLE loc.City(
	CityID INT NOT NULL
		CONSTRAINT PK_City
		PRIMARY KEY IDENTITY
	,CityName NVARCHAR(255) NOT NULL
	,ClosestMajorCityID INT NULL
		CONSTRAINT FK_City_ClosestMajorCityID
		REFERENCES loc.City(CityID)
	,StateID INT NOT NULL
		CONSTRAINT FK_City_StateID
		REFERENCES loc.USState(StateID)
	,MajorCity BIT NOT NULL
		CONSTRAINT DF_City_MajorCity
		DEFAULT 0
)

INSERT INTO loc.City
VALUES
('Austin', 1, 43, 1)
,('Buda', 1, 43, 0)
,('Columbus', 3, 35, 0)
,('Walnut Creek', NULL, 5, 0)
,('Roswell', NULL, 31, 0)

CREATE TABLE loc.WorldCity(
	WorldCityID INT NOT NULL
		CONSTRAINT PK_WorldCity
		PRIMARY KEY IDENTITY
	,CityName NVARCHAR(255) NOT NULL
	,ClosestMajorCityID INT NULL
		CONSTRAINT FK_WorldRegion_ClosestMajorCityID
		REFERENCES loc.WorldCity(WorldCityID)
	,WorldRegionID INT NOT NULL
		CONSTRAINT FK_WorldCity_WorldRegion
		REFERENCES loc.WorldRegion(WorldRegionID)
	,MajorCity BIT NOT NULL
		CONSTRAINT DF_WorldCity_MajorCity
		DEFAULT 0
)

INSERT INTO loc.WorldCity
VALUES
('Toronto', 1, 1, 1)
,('Burlington', 1, 1, 0)
,('Paris', 3, 2, 1)

CREATE TABLE loc.ZipCode(
	ZipCodeID INT NOT NULL
		CONSTRAINT PK_ZipCodeID		
		PRIMARY KEY IDENTITY
	,ZipCode NVARCHAR(5) NOT NULL
	,CityID INT NOT NULL
		CONSTRAINT FK_ZipCode_CityID
		REFERENCES loc.City(CityID)
)

INSERT INTO loc.ZipCode
VALUES
('78610',1)
,('78613',1)
,('78617',1)
,('78641',1)
,('78652',1)
,('78653',1)
,('78660',1)
,('78664',1)
,('78681',1)
,('78701',1)
,('78702',1)
,('78703',1)
,('78704',1)
,('78705',1)
,('78712',1)
,('78717',1)
,('78719',1)
,('78721',1)
,('78722',1)
,('78723',1)
,('78724',1)
,('78725',1)
,('78726',1)
,('78727',1)
,('78728',1)
,('78729',1)
,('78730',1)
,('78731',1)
,('78732',1)
,('78733',1)
,('78734',1)
,('78735',1)
,('78736',1)
,('78737',1)
,('78738',1)
,('78739',1)
,('78741',1)
,('78742',1)
,('78744',1)
,('78745',1)
,('78746',1)
,('78747',1)
,('78748',1)
,('78749',1)
,('78750',1)
,('78751',1)
,('78752',1)
,('78753',1)
,('78754',1)
,('78756',1)
,('78757',1)
,('78758',1)
,('78759',1)
,('78610',2)

/*

DROP TABLE loc.ZipCode
DROP TABLE loc.WorldCity
DROP TABLE loc.City
DROP TABLE loc.WorldRegion
DROP TABLE loc.USState
DROP TABLE loc.Country

*/