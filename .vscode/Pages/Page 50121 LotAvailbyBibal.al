page 50121 "LotAvail. byBin"
{
    Caption = 'LotAvail. byBin';
    PageType = List;
    SourceTable = "Warehouse Entry";
    SourceTableTemporary = true;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Item No."; "Item No.")
                {
                    ToolTip = 'Specifies the number of the item in the entry.';
                    ApplicationArea = Basic;
                }
                field("Location Code"; "Location Code")
                {
                    ToolTip = 'Specifies the code of the location to which the entry is linked.';
                    ApplicationArea = Basic;
                }
                field("Bin Code"; "Bin Code")
                {
                    ToolTip = 'Specifies the bin where the items are picked or put away.';
                    ApplicationArea = Basic;
                }
                field("Serial No."; "Serial No.")
                {
                    ToolTip = 'Specifies the serial number.';
                    ApplicationArea = Basic;
                }
                field(Quantity; Quantity)
                {
                    ToolTip = 'Specifies the number of units of the item in the warehouse entry.';
                    ApplicationArea = Basic;
                }
            }
        }
    }

    trigger OnOpenPage()
    var
        LotAvail: Query "Lot Avail . by Bin";
    begin
        LotAvail.Open;
        while LotAvail.Read do begin
            Init;
            "Entry No." := "Entry No." + 1;
            "Item No." := LotAvail.Item_No_;
            "Location Code" := LotAvail.Location_Code;
            "Bin Code" := LotAvail.Bin_Code;
            "Quantity" := LotAvail.Sum_Quantity;
            Insert;


        end;

    end;
}
