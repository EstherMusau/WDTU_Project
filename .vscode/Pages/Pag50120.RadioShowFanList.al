page 50120 "Radio Show Fan List"
{
    Caption = 'Radio Show Fan List';
    PageType = List;
    SourceTable = "Radio Show Fan";

    layout
    {
        area(content)
        {
            repeater(General)
            {
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
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = Basic;
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the Number field.';
                    ApplicationArea = Basic;
                }
                field("Radio Show No."; Rec."Radio Show No.")
                {
                    ToolTip = 'Specifies the value of the Radio Show Number field.';
                    ApplicationArea = Basic;
                }
            }
        }
    }
}
