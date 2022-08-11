table 50122 MovimientosTaller
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; IdMov; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Código Movimiento';
            AutoIncrement = true;

        }
        field(2; FechaMov; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Fecha del movimiento';

        }
        field(3; TipoMov; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Tipo de movimiento';
        }
        field(4; Motivo; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Motivo de entrada o salida';
        }
    }

    keys
    {
        key(Key1; IdMov)
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