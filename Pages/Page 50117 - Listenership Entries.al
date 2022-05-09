page 50117 "Listenership Entries"
{
    PageType = List;
    ApplicationArea = Basic;
    UsageCategory = Administration;
    SourceTable = "Listenership Entry";
    Caption='Listenership Entries';
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Age Demographic"; "Age Demographic")
                {
                    ToolTip='Shows Age Demographic';
                    ApplicationArea = Basic;
                    
                }
                field("Audience Share"; "Audience Share")
                {
                    ToolTip='Shows Audience Share';
                    ApplicationArea = Basic;
                    
                }
                field("Date"; Date)
                {
                    ToolTip='Shows Date';
                    ApplicationArea = Basic;
                    
                }
                field("End Time"; "End Time")
                {
                    ToolTip='Shows End Time';
                    ApplicationArea = Basic;
                    
                }
                field("Entry No."; "Entry No.")
                {
                    ToolTip='Shows Entry Number';
                    ApplicationArea = Basic;
                    
                }
                field("Listener Count"; "Listener Count")
                {
                    ToolTip='Shows Listener Count';
                    ApplicationArea = Basic;
                    
                }
                field("Radio Show No."; "Radio Show No.")
                {
                    ToolTip='Shows Radio Show Number';
                    ApplicationArea = Basic;
                    
                }
                field("Ratings Source Entry No"; "Ratings Source Entry No")
                {
                    ToolTip='Shows Ratings Source Entry No';
                    ApplicationArea = Basic;
                    
                }
                field("Start Time"; "Start Time")
                {
                    ToolTip='Shows Start Time';
                    ApplicationArea = Basic;
                    
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