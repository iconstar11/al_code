tableextension 50254 SalesPriceExt extends "Price List Line"
{
    fields
    {
        field(50240; "Promo Code"; Code[20])
        {
            Caption = 'Promo Code';
            DataClassification = CustomerContent;
        }
    }
}
