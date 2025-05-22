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
                ToolTip = 'Initial balance of the customer.';
            }
            field("Credit Limit"; Rec."Credit Limit")
            {
                ApplicationArea = All;
                ToolTip = 'Maximum credit limit for the customer.';
            }

        }

        modify("Responsibility Center")
        {
            ApplicationArea = All;
            Visible = false;

        }

        modify("Contact")
        {
            ApplicationArea = All;
            Visible = false;


        }
        modify("Balance (LCY)")
        {
            ApplicationArea = All;
            Visible = false;
        }
        modify("Balance Due (LCY)")
        {
            ApplicationArea = All;
            Visible = false;
        }
        modify("Sales (LCY)")
        {
            ApplicationArea = All;
            Visible = false;
        }
        modify("Payments (LCY)")
        {
            ApplicationArea = All;
            Visible = false;
        }




    }

}
