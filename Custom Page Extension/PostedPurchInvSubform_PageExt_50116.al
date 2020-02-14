pageextension 50116 PostedPurchInvSF extends "Posted Purch. Invoice Subform"
{
    layout
    {
        // Add changes to page layout here
        addafter(Description)
        {
            field("Description 2"; "Description 2")
            {
                ApplicationArea = All;
            }
            field("Description 3"; "Description 3")
            {
                ApplicationArea = All;
            }
        }
        addafter("Unit of Measure Code")
        {


            field("HL Sales Order No."; "HL Sales Order No.")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field("HL Sales Line No."; "HL Sales Line No.")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field("Vendor Article No"; "Vendor Article No")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field("HL Line Type"; "HL Line Type")
            {
                ApplicationArea = All;
                Caption = 'Ref Type';
            }
            field(Brand; Brand)
            {
                ApplicationArea = All;
                Enabled = false;
            }

        }
    }

    actions
    {
        // Add changes to page actions here

    }

    var
        myInt: Integer;
}