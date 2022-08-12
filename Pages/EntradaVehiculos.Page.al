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
            repeater(Taller)
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
            action(Salida)
            {
                ApplicationArea = All;
                Image = ClosePeriod;
                Caption = 'Salida Vehiculos';
                RunObject = Page SalidaVehiculos;
                trigger OnAction()
                begin

                end;
            }
            action(CerrarEntrada)
            {
                ApplicationArea = All;
                Image = Close;
                Caption = 'Cerrar Entrada';
                RunObject = Page Movimientos;

                trigger OnAction()
                var
                    Movimientos: Record MovimientosTaller;
                begin
                    Movimientos.Init();
                    Movimientos.IdMov := Rec.MovimientoEntrada;
                    Movimientos.FechaMov := Rec.FechaEntrada;
                    Movimientos.Motivo := Rec.MotivoEntrada;
                    Movimientos.Insert();
                end;
            }
        }
    }


}