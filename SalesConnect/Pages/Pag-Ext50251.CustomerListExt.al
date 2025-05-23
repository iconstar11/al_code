pageextension 50251 CustomerListExt extends "Customer List"
{
    layout
    {
        addafter("Phone No.")
        {
            field(email; Rec."Email")
            {
                ApplicationArea = All;
                ToolTip = 'Email address of the customer.';
            }
            field(Address; Rec.Address)
            {
                ApplicationArea = All;
                ToolTip = 'Physical address of the customer.';
            }
            field("Opening Balance"; Rec."Opening Balance")
            {
                ApplicationArea = All;
                ToolTip = 'The amount of money the customer owes the company at the start of the period.';
            }
            field("Credit Limit"; Rec."Credit Limit")
            {
                ApplicationArea = All;
                ToolTip = 'Maximum credit limit for the customer.';
            }
        }

        modify("Responsibility Center") { ApplicationArea = All; Visible = false; }
        modify("Contact") { ApplicationArea = All; Visible = false; }
        modify("Balance (LCY)") { ApplicationArea = All; Visible = false; }
        modify("Balance Due (LCY)") { ApplicationArea = All; Visible = false; }
        modify("Sales (LCY)") { ApplicationArea = All; Visible = false; }
        modify("Payments (LCY)") { ApplicationArea = All; Visible = false; }
        modify("Attached Documents") { Visible = false; }
    }

    actions
    {
        addlast(Navigation)
        {
            action(OpenPromoPrices)
            {
                ApplicationArea = All;
                Caption = 'Open Promo Prices';
                Image = Navigate; // Updated to a valid system icon

                trigger OnAction()
                var
                    PriceListPageID: Integer;
                begin
                    // Replace with the actual page ID or page name of your custom Price List Lines page
                    PriceListPageID := Page::"Price List Lines";

                    PAGE.Run(PriceListPageID, Rec);
                end;
            }
        }
    }
}
