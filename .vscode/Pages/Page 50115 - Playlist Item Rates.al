page 50115 "Playlist Item Rates"
{
    PageType = List;
    ApplicationArea = Basic;
    UsageCategory = Administration;
    SourceTable = "Playlist Item Rate";
    Caption='Playlist Item Rates';
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Source Type"; "Source Type")
                {
                    ToolTip='Shows Source Type';
                    ApplicationArea = Basic;
                    
                }
                field("Item No."; "Item No.")
                {
                  ToolTip='Shows Item No.';
                    ApplicationArea = Basic;
                    
                }
                field("Start Time"; "Start Time")
                {
                    ToolTip='Shows Start Time';
                    ApplicationArea = Basic;
                    
                }
                field("End Time"; "End Time")
                {
                    ToolTip='Shows End Time';
                    ApplicationArea = Basic;
                    
                }
                field("Rate Amount"; "Rate Amount")
                {
                    ToolTip='Shows Rate Amount';
                    ApplicationArea = Basic;
                    
                }
                field("Publisher Code"; "Publisher Code")
                {
                   ToolTip='Shows Publisher Code';
                    ApplicationArea = Basic;
                    
                }
        }
    }
    
  }
}