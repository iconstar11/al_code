codeunit 50120 "Feedback Handler"
{
    Subtype = Normal; // Normal codeunit – not test or install

    procedure AddFeedback(CustomerNo: Code[20]; FeedbackText: Text[100]): Integer
    var
        FeedbackRec: Record "Customer Feedback";
    begin
        // Validate input
        if CustomerNo = '' then
            Error('Customer No. is required.');

        if FeedbackText = '' then
            Error('Feedback text cannot be empty.');

        // Create a new feedback entry
        FeedbackRec.Init();
        FeedbackRec."Customer No." := CustomerNo;
        FeedbackRec."Feedback Text" := FeedbackText;
        FeedbackRec."Date Submitted" := Today();

        FeedbackRec.Insert();

        // Return the Entry No. for reference
        exit(FeedbackRec."Entry No.");
    end;
}
