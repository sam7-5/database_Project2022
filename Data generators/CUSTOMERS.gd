
[General]
Version=1

[Preferences]
Username=
Password=2222
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=DASTRAUS
Name=CUSTOMERS
Count=20000

[Record]
Name=YEARS_OF_DRIVING
Type=NUMBER
Size=2
Data=Random(0, 30)
Master=

[Record]
Name=DATE_OF_BIRTH
Type=DATE
Size=
Data=Random('01/01/1950', '01/01/2005')
Master=

[Record]
Name=NAME
Type=CHAR
Size=20
Data=FirstName + ' ' + LastName
Master=

[Record]
Name=SECURITY_DEPOSIT
Type=NUMBER
Size=1
Data=Random(0, 1)
Master=

[Record]
Name=GENDER
Type=VARCHAR2
Size=10
Data=List('male', 'female')
Master=

[Record]
Name=BLACK_LIST
Type=NUMBER
Size=1
Data=Random(0, 1)
Master=

[Record]
Name=CUSTOMER_ID
Type=NUMBER
Size=
Data=Sequence(0)
Master=

[Record]
Name=LICENSE_EXPIRED_DATE
Type=DATE
Size=
Data=Random('01/01/2022', '01/01/2030')
Master=

