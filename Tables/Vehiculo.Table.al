table 50120 Vehiculo
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Codigo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Código';
        }
        field(2; TipoVehiculo; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Tipo de Vehiculo';
        }
        field(3; Matricula; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Matrícula';
        }
        field(4; Cilindrada; Blob)
        {
            DataClassification = ToBeClassified;
            Caption = 'Cilindrada';
        }
        field(5; FechaMatriculacion; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Fecha de Matriculación';
        }
        field(6; FechaUltimoMovimiento; DateFormula)
        {
            DataClassification = CustomerContent;
            Caption = 'Fecha último movimiento';
        }
        field(7; EstadoUltimoMov; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Estado último movimiento';
        }
        field(8; ClienteVinculado; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Cliente Vinculado';
            TableRelation = Customer."No.";
        }
        field(9; FechaUltimaRevisión; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Fecha última revisión';
        }
        field(10; FormulaCalculoRevisión; DateFormula)
        {
            DataClassification = CustomerContent;
            Caption = 'Formula calculo de revisión';
        }
        field(11; FechaProximaRevision; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Fecha próxima revisión';
        }
    }

    keys
    {
        key(Key1; Codigo)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}