table 50123 EntradaVehiculos
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; CodigoVehiculo; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Código Vehículo';
        }
        field(2; FechaEntrada; date)
        {
            DataClassification = CustomerContent;
            Caption = 'Fecha de entrada';
        }
        field(3; MotivoEntrada; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Motivo de la entrada a taller';
        }
        field(4; MovimientoEntrada; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Movimiento generado';
        }
    }

    keys
    {
        key(Key1; CodigoVehiculo)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

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