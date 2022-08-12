page 50125 Movimientos
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MovimientosTaller;

    layout
    {
        area(Content)
        {
            group(Movimientos)
            {
                field(IdMov; Rec.IdMov)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(FechaMov; Rec.FechaMov)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(TipoMov; Rec.TipoMov)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Motivo; Rec.Motivo)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Vehiculos")
            {
                ApplicationArea = All;
                Image = List;
                Caption = 'Lista de Vehiculos';
                InFooterBar = true;
                RunObject = Page VehiculosTaller;
                trigger OnAction()
                begin

                end;
            }
            action(Entrada)
            {
                ApplicationArea = All;
                Image = Open;
                Caption = 'Entrada Vehiculos';
                RunObject = Page EntradaVehiculos;
                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}