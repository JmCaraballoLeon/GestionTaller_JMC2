page 50122 EntradaVehiculos
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = EntradaVehiculos;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(CodigoVehiculo; Rec.CodigoVehiculo)
                {
                    ApplicationArea = All;
                    Caption = 'Código Vehiculo';

                }
                field(FechaEntrada; Rec.FechaEntrada)
                {
                    ApplicationArea = All;
                    Caption = 'Fecha de entrada';
                }
                field(MotivoEntrada; Rec.MotivoEntrada)
                {
                    ApplicationArea = All;
                    Caption = 'Motivo de entrada';
                }
                field(MovimientoEntrada; Rec.MovimientoEntrada)
                {
                    ApplicationArea = All;
                    Caption = 'Movimiento de entrada';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}