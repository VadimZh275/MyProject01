page 50100 "AIR Airplane Type List"
{
    PageType = List;
    SourceTable = "AIR Airplane Type";
    
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("ICAO Code";"ICAO Code")
                {
                    ApplicationArea = All;
                }
                field(Description;Description)
                {
                    ApplicationArea = All;
                }
                field(Popularity;Popularity)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
        }
    }
    
    actions
    {
        area(processing)
        {
            Action(GetAirplaneTypes)
            {
                CaptionML = ENU = 'Get Airplane Types';
                Promoted = true;
                PromotedIsBig = true;
                Image = Start;
                ApplicationArea = all;

                trigger OnAction();
                var
                    AIRFunctions : Codeunit "AIR ICAO Functions";
                begin
                    AIRFunctions.GetAirplaneTypes;
                end;
            }
            action(CreateItem)
            {
                CaptionML = ENU = 'Create Item';
                Promoted = true;
                PromotedIsBig = true;
                Image = Item;
                ApplicationArea = all;
                trigger OnAction();
                var
                    ItemL : record Item;
                begin

                    Iteml.Init;
                    ItemL."AIR Airplane Type Code" := "ICAO Code";
                    ItemL.Description := Description;
                    ItemL.Insert(true);
                    Page.Run(Page::"Item Card",ItemL);
                end;
            }
        }
    }
} 