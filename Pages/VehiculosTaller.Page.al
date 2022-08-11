page 50120 VehiculosTaller
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vehiculo;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Codigo; Rec.Codigo)
                {
                    ApplicationArea = All;
                    Caption = 'Código';
                }
                field(TipoVehiculo; Rec.TipoVehiculo)
                {
                    ApplicationArea = All;
                    Caption = 'Tipo de Vehículo';
                }
                field(Matricula; Rec.Matricula)
                {
                    ApplicationArea = All;
                    Caption = 'Matrícula';
                }
                field(Cilindrada; Rec.Cilindrada)
                {
                    ApplicationArea = All;
                    Caption = 'Cilindrada';
                }
                field(FechaMatriculacion; Rec.FechaMatriculacion)
                {
                    ApplicationArea = All;
                    Caption = 'Fecha de matriculación';
                }
                field(ClienteVinculado; Rec.ClienteVinculado)
                {
                    ApplicationArea = All;
                    Caption = 'Cliente Vínculado';
                }
                field("FechaUltimaRevisión"; Rec."FechaUltimaRevisión")
                {
                    ApplicationArea = All;
                    Caption = 'Fecha Última Revisión';
                }
                field("FormulaCalculoRevisión"; Rec."FormulaCalculoRevisión")
                {
                    ApplicationArea = All;
                    Caption = 'Fórmula Calculo Revisión';
                }
                field(FechaProximaRevision; Rec.FechaProximaRevision)
                {
                    ApplicationArea = All;
                    Caption = 'Fecha próxima revisión';
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

}