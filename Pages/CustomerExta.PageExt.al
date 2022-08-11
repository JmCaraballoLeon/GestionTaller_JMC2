pageextension 50100 CustomerExt extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter("Co&mments")
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
        }
    }
}

