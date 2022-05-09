query 50100 "Lot Avail. by Bin"

{

    QueryType = Normal;



    elements

    {

        //The First Data Item in the Query from the table item ledger entry

        dataitem(Item_Ledger_Entry; "Item Ledger Entry")

        {

            column(Item_No; "Item No.")

            {



            }

            column(Lot_No; "Lot No.")

            {



            }

            //The Second Data item from table warehouse entry

            dataitem(Warehouse_Entry; "Warehouse Entry")

            {

                DataItemLink = "Location Code" = Item_Ledger_Entry."Location Code",

                                "Item No." = Item_ledger_Entry."Item No.",

                                "Lot No." = Item_Ledger_Entry."Lot No.";

                column(Entry_No; "Entry No.")

                {



                }

                column(Location_Code; "Location Code")

                {



                }

                column(Zone_Code; "Zone Code")

                {



                }

                column(Bin_Code; "Bin Code")

                {



                }

                column(Sum_Quantity; Quantity)

                {

                    Method = Sum;

                }

                //The Third Data Item from table Bin

                dataitem(Bin; Bin)

                {

                    DataItemLink = Code = Warehouse_Entry."Bin Code";

                    //The fourth Data item from table Bin Type;

                    dataitem(Bin_Type; "Bin Type")

                    {

                        DataItemLink = Code = Bin."Bin Type Code";

                        // DataItemLink = Code = Bin.Code; These Code display that the Warehouse Entry Exist and is so there is need to auto increment in page

                        //using Entry + 1

                        DataItemTableFilter = Pick = CONST(true);

                    }



                }

            }



        }

    }

}


// query 50100 "Lot Avail . by Bin"
// {
//     Caption = 'Lot Avail . by Bin';
//     QueryType = Normal;

//     elements
//     {
//         dataitem(ItemLedgerEntry; "Item Ledger Entry")
//         {
//             column(Item_No_; "Item No.") { }
//             column(Lot_No_; "Lot No.") { }
//             dataitem(Warehouse_Entry; "Warehouse Entry")
//             {
//                 DataItemLink = "Location Code" = ItemLedgerEntry."Location Code",
//                               "Item No." = ItemLedgerEntry."Item No.",
//                               "Lot No." = ItemLedgerEntry."Lot No.";

//                 column(Entry_No_; "Entry No.") { }
//                 column(Location_Code; "Location Code") { }
//                 column(Zone_Code; "Zone Code") { }
//                 column(Bin_Code; "Bin Code") { }
//                 column(Sum_Quantity; Quantity) { Method = Sum; }

//                 dataitem(Bin; Bin)
//                 {
//                     DataItemLink = Code = Warehouse_Entry."Bin Code";
//                     dataitem(Bin_Type; "Bin Type")
//                     {
//                         DataItemLink = Code = Bin.Code;
//                         DataItemTableFilter = Pick = const(true);

//                     }

//                 }


//             }

//         }
//     }

//     // trigger OnBeforeOpen()
//     // begin

//     // end;
// }
