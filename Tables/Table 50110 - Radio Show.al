table 50110 "Radio Show"
{
    
    
    fields
    {
        field(1;"No."; Code[20])
        {
            trigger 
            OnValidate()
            begin

            end;
            trigger
             OnLookup()
             begin

             end;

        }
        field(10;"Radio Show Type"; Code[10])
        {
            TableRelation="Radio Show Type";
            Caption='Radio Show Type';
        }
        field(20;"Name"; Text[50])
        {
            Caption='Name';
        }
        field(40;"Run Time"; Duration)
        {
            Caption='RunTime';
        }
        field(50;"Host Code"; Code[20])
        {
            Caption='Host Code';
        }
        field(60;"Host Name"; Text[50])
        {
            Caption='Host Name';
        }
        field(100;"Average Listeners"; Decimal)
        {
            Caption='Average Listeners';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("Listenership Entry"."Audience Share" where("Radio Show No." = field("No."), Date = field("Date Filter")));
 /*Editable=false;
            FieldClass=FlowField;
            CalcFormula= average("Listenership Entry"."Audience Share"
            where ("Radio Show No."= field ("No."), Date=field ("Date Filter")));*/
        }
        field(110;"Audience Share"; Decimal)
        {
            Caption='Audience Share';
            Editable=false;
            FieldClass=FlowField;
            CalcFormula = average("Listenership Entry"."Audience Share" where ("Radio Show No." = field("No."),Date=field("Date Filter") ));

        }
        field(120;"Advertising Revenue"; Decimal)
        {
            Caption='Advetising Revenue';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum ("Radio Show Entry"."Fee Amount" where("Radio Show No." = field("No."), "Data Format" = filter(Advertisemnt)));

            /*Editable=false;
            FieldClass=FlowField;
            CalcFormula=sum ("Radio Show Entry". "Fee Amount"
            where (
                "Radio Show No."=field("No.")
                "Data Format"=filter(Advertisement)
            ));*/
        }
        field(130;"Royalty Cost"; Decimal)
        {
            Caption='Royalty Cost';
            Editable=false;
            FieldClass=FlowField;

           CalcFormula=sum("Radio Show Entry"."Fee Amount" where("Radio Show No." = field("No."), "Data Format"=filter(Advertisemnt)));


        }

        field(1000;Frequency; Option)
        {
            Caption='Frequency';
            OptionMembers=Hourly,Daily,Weekly,Monthly;
        }
        field(1010;"PSA Planned Quantity"; Integer){}

        field(1020;"Ads Planned Quantity"; Integer){}
        field(1030;"News Required"; Boolean){InitValue=true;}
        field(1040;"News Duration"; Duration){}
        field(1050;"Sports Required"; Boolean){InitValue=true;}
        field(1060;"Sports Duration"; Duration){}
        field(1070;"Weather Required"; Boolean)
        {
            Caption='Weather Required';
            InitValue=true;
        }
        field(1080;"Weather Duration"; Duration)
        {
            Caption='Weather Duration';
        }
        field(1090;"Date Filter"; Date)
        { 
            Caption='Date Filter';
            FieldClass=FlowFilter;
        }

 }
    
 fieldgroups
 {

     fieldgroup(DropDown;"No.",Name,"Host Name") {}
     fieldgroup(Brick;"No.",Name,"Audience Share") {}

 }

}

    
   