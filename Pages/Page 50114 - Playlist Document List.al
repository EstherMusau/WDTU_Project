page 50114 "Playlist Document List"
{
    PageType = List;
    ApplicationArea = Basic;
    UsageCategory = Administration;
    SourceTable = "Playlist Line";
    Caption='Playlist Document List';
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Document No"; "Document No.")
                {
                   ToolTip='Shows Document Number';
                    ApplicationArea = Basic;
                    
                }
                field("Line No"; "Line No.")
                {
                   ToolTip='Shows Line Number';
                    ApplicationArea = Basic;
                    
                }
                field("Data Format"; "Data Format")
                {
                   ToolTip='Shows Data Format';
                  ApplicationArea = Basic;
                    
                }
                field("End Time"; "End Time")
                {
                   ToolTip='Shows End Time';
                    ApplicationArea = Basic;
                    
                }
                field("No."; "No.")
                {
                   ToolTip='Shows playlist Number';
                    ApplicationArea = Basic;
                    
                }
                field("Start Time"; "Start Time")
                {
                   ToolTip='Shows Document Number';
                    ApplicationArea = Basic;
                    
                }
                field("Duration"; Duration)
                {
                   ToolTip='Shows Duration';
                   ApplicationArea = Basic;
                    
                }
                field("Publisher"; Publisher)
                {
                   ToolTip='Shows Publisher';
                   ApplicationArea = Basic;
                    
                }
                field("Description"; Description)
                {
                   ToolTip='Shows Description';
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