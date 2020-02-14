tableextension 50133 TransferLines extends "Transfer Line"
{
    fields
    {
        // Add changes to table fields here
        field(50000; "Vendor Article No."; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50002; "Description 3"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        modify("Item No.")
        {
            trigger OnAfterValidate()
            var
                RecItem: Record Item;
            begin
                if "Item No." <> '' then begin
                    Clear(RecItem);
                    IF RecItem.GET("Item No.") then begin
                        "Vendor Article No." := RecItem."Vendor Article No";
                        "Description 2" := RecItem."Description 2";
                        "Description 3" := RecItem."Description 3";
                    end;
                end else begin
                    "Vendor Article No." := '';
                    "Description 2" := '';
                    "Description 3" := '';
                end;
            end;
        }
    }


    var
        myInt: Integer;
}