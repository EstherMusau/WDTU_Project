table 50118 "Radio Show Fan"
{
    Caption = 'Radio Show Fan';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "No.";Code[20] )
        {
            Caption = 'Number';
            
        }
        field(10;"Radio Show No.";Code[20])
        {
            Caption='Radio Show Number';
        }
        field(20;Name;Text[50])
        {

        }
        field(30; "E-Mail";Text[250])
        {

        }
        field(40;"Last Contacted";Date)
        {

        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
