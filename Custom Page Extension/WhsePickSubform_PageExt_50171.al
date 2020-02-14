pageextension 50171 WhsePickSF extends "Whse. Pick Subform"
{
    layout
    {
        // Add changes to page layout here
        addafter("Item No.")
        {
            field("Vendor Article No."; "Vendor Article No.")
            {
                ApplicationArea = All;
            }
            field(Description_; Description)
            {
                ApplicationArea = All;
                Caption = 'Description';
            }
            field("Description 2"; "Description 2")
            {
                ApplicationArea = All;
            }
            field("Description 3"; "Description 3")
            {
                ApplicationArea = All;
            }
        }
        modify(Description)
        {
            Visible = false;
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}