tableextension 50124 CustomerExt extends Customer
{
    fields
    {
        field(50000; CodigoVehiculo; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Código Vehículo';
            TableRelation = Vehiculo.Codigo;
        }
    }
}