pageextension 50252 CustomerCardExt extends "Customer Card"
{
    layout
    {
        modify("Balance (LCY)")
        {
            Visible = false;
        }
        modify("Balance Due (LCY)")
        {
            Visible = false;
        }
        modify("Home Page")
        {
            ApplicationArea = All;
            Visible = false;
        }
        modify(ContactName)
        {
            ApplicationArea = All;
            Visible = false;
        }
        modify(Shipping)
        {

            Visible = false;
        }
        modify("Intrastat Partner Type")
        {
            Visible = false;
        }
        modify("Address 2")
        {

            Visible = false;
        }
        modify("City")
        {
            visible = false;
        }
        modify("MobilePhoneNo")
        {
            Visible = false;
        }
        modify(County)
        {
            visible = false;
        }


    }
}
