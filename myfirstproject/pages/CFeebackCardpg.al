page 50105 "Customer Feedback Card"
{
    PageType = Card;
    SourceTable = "Customer Feedback";
    ApplicationArea = All;
    UsageCategory = Documents; // This makes it show up when creating or opening a single entry

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Entry No."; Rec."Entry No.") { }
                field("Customer No."; Rec."Customer No.") { }
                field("Feedback Text"; Rec."Feedback Text") { }
                field("Date Submitted"; Rec."Date Submitted") { }
            }
        }
    }
}
