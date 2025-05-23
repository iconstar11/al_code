pageextension 50255 PriceListLineExt extends "Price List Lines"
{
    layout
    {
        addafter("Cost Factor")
        {
            field("Promo Code"; Rec."Promo Code")
            {
                ApplicationArea = all;

            }
        }
    }

}
