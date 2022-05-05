page 50116 "Radio Show Entries"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Radio Show Entry";
    Caption = 'Radio Show Entries';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Shows Radio Show Number';
                }
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Shows Entry Number ';
                }
                field("Fee Amount"; "Fee Amount")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Shows Fee Number';
                }
                field("Data Format"; "Data Format")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Shows Data Format';
                }
                field("ACSAP ID"; "ACSAP ID")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Shows ACSAP ID';
                }
                field("Radio Show No."; "Radio Show No.")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Shows Radio Number';
                }
                field("Type"; Type)
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Shows Type';
                }
                field("Description"; "Description")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Shows Description';
                }
                field("Date"; Date)
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Shows Date';
                }
                field("Time"; Time)
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Shows Time';
                }
                field("Publisher Code"; "Publisher Code")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Shows Publisher Code';
                }
                field("Duration"; Duration)
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Shows Duration';
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