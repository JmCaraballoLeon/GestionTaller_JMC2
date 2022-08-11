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
            group(GroupName)
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
                field(GeneraMov; Rec.GeneraMov)
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