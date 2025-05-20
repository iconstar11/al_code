page 50104 "Customer Feedback List"
{
    // The page displays multiple records in a table (like a spreadsheet).
    PageType = List;
    SourceTable = "Customer Feedback";
    ApplicationArea = All; // Available in all application areas
    UsageCategory = Lists; // Categorized under "Lists" in the role center
    // Explicitly allow editing (optional, default is editable)
    Editable = true;

    layout
    {
        area(content)
        {
            // Repeater means repeat rows (one per record)
            repeater(General)
            {
                // Each "field(...)" represents a column in the list/grid
                field("Entry No."; Rec."Entry No.") { }
                field("Customer No."; Rec."Customer No.") { }
                field("Feedback Text"; Rec."Feedback Text") { }
                field("Date Submitted"; Rec."Date Submitted") { }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action("Open Card")
            {
                ApplicationArea = All;
                Caption = 'Open Card Page';
                RunObject = page "Customer Feedback Card";
                RunPageMode = Edit; // Opens in edit mode
                trigger OnAction()
                var
                    RecFeedback: Record "Customer Feedback";
                begin
                    RecFeedback.Insert(); // <-- This should trigger OnInsert()
                end;
            }
        }
    }

}
