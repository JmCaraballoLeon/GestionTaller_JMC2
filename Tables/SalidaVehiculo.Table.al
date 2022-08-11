table 50121 SalidaVehiculo
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; CodigoVehiculo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Código del Vehiculo';
        }
        field(2; Fecha; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Fecha salida';
        }
        field(3; MotivoSalida; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Motivo de la salida';
        }
        field(4; ImporteInterv; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Importe de intervención';
        }
        field(5; GeneraMov; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Movimiento de salida en el taller';
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