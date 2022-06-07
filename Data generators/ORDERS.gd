
[General]
Version=1

[Preferences]
Username=
Password=2963
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=DASTRAUS
Name=ORDERS
Count=20000

[Record]
Name=EXTRAS
Type=VARCHAR2
Size=20
Data=List('Booster', 'handicapped', 'Nothing')
Master=

[Record]
Name=CANCELED
Type=NUMBER
Size=1
Data=Random(0, 1)
Master=

[Record]
Name=DATE_OF_ORDERS
Type=DATE
Size=
Data=Random('01/05/2022', '01/01/2023')
Master=

[Record]
Name=ORDERS_ID
Type=NUMBER
Size=
Data=Sequence(0)
Master=

[Record]
Name=LOCATION
Type=CHAR
Size=20
Data=Address1
Master=

[Record]
Name=CUSTOMER_ID
Type=NUMBER
Size=
Data=List(select Customer_ID from Customers)
Master=

[Record]
Name=LICENSE_PLATE
Type=NUMBER
Size=20
Data=List(select License_Plate from Cars)
Master=

