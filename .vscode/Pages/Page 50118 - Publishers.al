page 50118 "Publishers"
{
    PageType = List;
    ApplicationArea = Basic;
    UsageCategory = Administration;
    SourceTable = "Publisher";
    Caption = 'Publishers';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Description"; Description)
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Shows Description';
                }
                field("Code"; Code)
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Shows Code';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}