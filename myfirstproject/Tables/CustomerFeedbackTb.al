table 50103 "Customer Feedback"
{
    Caption = 'Customer Feedback';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = CustomerContent;
        }

        field(2; "Customer No."; Code[20])
        {
            DataClassification = CustomerContent;
        }

        field(3; "Feedback Text"; Text[100])
        {
            DataClassification = CustomerContent;
        }

        field(4; "Date Submitted"; Date)
        {
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}