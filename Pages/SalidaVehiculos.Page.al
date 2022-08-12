page 50121 SalidaVehiculos
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = SalidaVehiculo;

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
                field(Fecha; Rec.Fecha)
                {
                    ApplicationArea = All;
                    Caption = 'Fecha Salida';
                }
                field(MotivoSalida; Rec.MotivoSalida)
                {
                    ApplicationArea = All;
                    Caption = 'Motivo Salida';
                }
                field(ImporteInterv; Rec.ImporteInterv)
                {
                    ApplicationArea = All;
                    Caption = 'Importe Intervención';
                }
                field(GeneraMov; Rec.MovimientoSalida)
                {
                    ApplicationArea = All;
                    Caption = 'Genera Movimiento';
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
            action(CerrarSalida)
            {
                ApplicationArea = All;
                Image = Close;
                Caption = 'Salida Vehiculos';
                RunObject = Page Movimientos;
                Promoted = true;
                trigger OnAction()
                var
                    Movimientos: Record MovimientosTaller;
                begin
                    Movimientos.Init();
                    Movimientos.IdMov := Rec.MovimientoSalida;
                    Movimientos.FechaMov := Rec.Fecha;
                    Movimientos.Motivo := Rec.MotivoSalida;
                    Movimientos.Insert();
                end;
            }
        }
    }

}