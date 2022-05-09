query 50100 "Lot Avail . by Bin"
{
    Caption = 'Lot Avail . by Bin';
    QueryType = Normal;

    elements
    {
        dataitem(ItemLedgerEntry; "Item Ledger Entry")
        {
            column(Item_No_; "Item No.") { }
            column(Lot_No_; "Lot No.") { }
            dataitem(Warehouse_Entry; "Warehouse Entry")
            {
                DataItemLink = "Location Code" = ItemLedgerEntry."Location Code",
                              "Item No." = ItemLedgerEntry."Item No.",
                              "Lot No." = ItemLedgerEntry."Lot No.";

                column(Entry_No_; "Entry No.") { }
                column(Location_Code; "Location Code") { }
                column(Zone_Code; "Zone Code") { }
                column(Bin_Code; "Bin Code") { }
                column(Sum_Quantity; Quantity) { Method = Sum; }

                dataitem(Bin; Bin)
                {
                    DataItemLink = Code = Warehouse_Entry."Bin Code";
                    dataitem(Bin_Type; "Bin Type")
                    {
                        DataItemLink = Code = Bin.Code;
                        DataItemTableFilter = Pick = const(true);

                    }

                }


            }

        }
    }

    // trigger OnBeforeOpen()
    // begin

    // end;
}
