page 50119 "Radio Show Fan Factbox"
{
    Caption = 'Radio Show Fan Factbox.ListPart';
    PageType = ListPart;
    SourceTable = "Radio Show Fan";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = Basic;
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ToolTip = 'Specifies the value of the E-Mail field.';
                    ApplicationArea = Basic;
                }
                field("Last Contacted"; Rec."Last Contacted")
                {
                    ToolTip = 'Specifies the value of the Last Contacted field.';
                    ApplicationArea = Basic;
                }
            }
        }
    }
}
