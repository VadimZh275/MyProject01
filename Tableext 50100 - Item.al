tableextension 50100 "AIR Item" extends Item
{
    fields
    {
        // Add changes to table fields here
        field(50100;"AIR Airplane Type Code";code[20])
        {
            CaptionML = ENU = 'AIR Airplane Type Code';            
            Tablerelation = "AIR Airplane Type";
        }
    }
}