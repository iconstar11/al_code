tableextension 50250 CustomerExt extends Customer
{
    fields
    {
        // Custom internal customer number
        field(50111; "Phone Number"; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Phone Number';
        }

        field(50112; "Email"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Email';
        }

        field(50113; "Credit Limit"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Credit Limit';
        }

        field(50114; "Opening Balance"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Opening Balance';
        }
    }
}
