// File: Tables/CustomerTable.al
table 50100 "Custom Customer"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "ID"; Integer)
        {
            DataClassification = CustomerContent;
            AutoIncrement = true;
        }

        field(2; "Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }

        field(3; "Phone Number"; Text[30])
        {
            DataClassification = CustomerContent;
        }

        field(4; "Email"; Text[100])
        {
            DataClassification = CustomerContent;
        }

        field(5; "Address"; Text[100])
        {
            DataClassification = CustomerContent;
        }

        field(6; "Balance"; Decimal)
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "ID")
        {
            Clustered = true;
        }
    }
}
