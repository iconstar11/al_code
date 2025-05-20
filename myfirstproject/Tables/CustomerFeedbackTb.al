table 50103 "Customer Feedback"
{
    // Table to store customer feedback data
    Caption = 'Customer Feedback';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            Editable = false; // Prevent manual input
        }

        field(2; "Customer No."; Code[20])
        {
            DataClassification = CustomerContent;
        }

        field(3; "Feedback Text"; Text[100])
        {
            DataClassification = CustomerContent;
        }

        field(4; "Date Submitted"; Date)
        {
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            // Clustered = true; // Optional, can be removed
        }
    }

    // Auto-increment Entry No. when inserting new records


    trigger OnInsert()
    var
        FeedbackRec: Record "Customer Feedback";
    begin
        Message('OnInsert started');
        if "Entry No." = 0 then begin
            if FeedbackRec.FindLast() then
                "Entry No." := FeedbackRec."Entry No." + 1
            else
                "Entry No." := 1;
        end;
        Message('OnInsert finished: %1', "Entry No.");
    end;



}


// // Define a table object with ID 50103 and the name "Customer Feedback"
// table 50103 "Customer Feedback"
// {
//     // Display name (caption) in the UI
//     Caption = 'Customer Feedback';

//     // General classification for data protection (GDPR)
//     DataClassification = ToBeClassified;

//     // Define the fields (columns) of the table
//     fields
//     {
//         // Field 1: Entry No. (Primary key, unique identifier for each record)
//         field(1; "Entry No."; Integer)
//         {
//             // This field holds user-specific content
//             DataClassification = CustomerContent;
//         }

//         // Field 2: Customer No. (Link to a customer code, max 20 characters)
//         field(2; "Customer No."; Code[20])
//         {
//             DataClassification = CustomerContent;
//         }

//         // Field 3: Feedback Text (The actual feedback message, max 100 characters)
//         field(3; "Feedback Text"; Text[100])
//         {
//             DataClassification = CustomerContent;
//         }

//         // Field 4: Date Submitted (The date the feedback was given)
//         field(4; "Date Submitted"; Date)
//         {
//             DataClassification = SystemMetadata;
//         }
//     }

//     // Define the primary key of the table
//     keys
//     {
//         // Primary Key (PK): Based on Entry No.
//         key(PK; "Entry No.")
//         {
//             // Improves performance when filtering or sorting on this field
//             Clustered = true;
//         }
//     }
// }
