page 50104 "Customer Feedback List"
{
    // The page displays multiple records in a table (like a spreadsheet).
    PageType = List;
    SourceTable = "Customer Feedback";
    ApplicationArea = All; // Available in all application areas
    UsageCategory = Lists; // Categorized under "Lists" in the role center
    Editable = true;
    CardPageId = "Customer Feedback Card";

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
            action("Open Feedback Card")
            {
                ApplicationArea = All;
                Caption = 'Open Card';
                RunObject = page "Customer Feedback Card";
                RunPageMode = Edit; // You can use View or Edit
            }
            action(AddSampleFeedback)
            {
                Caption = 'Add Sample Feedback';
                trigger OnAction()
                var
                    FeedbackHandler: Codeunit "Feedback Handler";
                    NewEntryNo: Integer;
                begin
                    NewEntryNo := FeedbackHandler.AddFeedback('C0001', 'Awesome service!');
                    Message('Feedback added with Entry No.: %1', NewEntryNo);
                end;
            }
        }
    }


}
