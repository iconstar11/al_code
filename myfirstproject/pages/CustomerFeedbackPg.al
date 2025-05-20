page 50104 "Customer Feedback List"
{
    PageType = List;
    SourceTable = "Customer Feedback";
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.") { }
                field("Customer No."; Rec."Customer No.") { }
                field("Feedback Text"; Rec."Feedback Text") { }
                field("Date Submitted"; Rec."Date Submitted") { }
            }
        }
    }
}
