
[General]
Version=1

[Preferences]
Username=
Password=2929
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=DASTRAUS
Name=CARS
Count=20000

[Record]
Name=LICENSE_PLATE
Type=NUMBER
Size=20
Data=Sequence(0)
Master=

[Record]
Name=CAR_MODEL
Type=VARCHAR2
Size=10
Data=Components.Code
Master=

[Record]
Name=MANUFACTURING_DATE
Type=DATE
Size=
Data=Random('01/01/1948', ''01/01/2005)
Master=

[Record]
Name=ACTIVE
Type=NUMBER
Size=1
Data=Random(0, 1)
Master=

[Record]
Name=NUMBER_OF_SEATS
Type=NUMBER
Size=2
Data=Random(1, 8)
Master=

