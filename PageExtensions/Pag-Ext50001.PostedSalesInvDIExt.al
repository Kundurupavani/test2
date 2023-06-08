pageextension 50001 PostedSalesInvDIExt extends "Posted Sales Invoice"
{
    actions
    {
        addafter(Print)
        {
            action("Sales Invoice -TDS")
            {
                ApplicationArea = all;
                Image = Report;
                trigger OnAction()
                var
                    "Sales Invoice Header": Record "Sales Invoice Header";
                begin
                    "Sales Invoice Header".SetRange("No.", Rec."No.");
                    Report.Run(50003, true, false, "Sales Invoice Header");
                end;
            }
            action("Tax Invoice")
            {
                ApplicationArea = all;
                Image = Report;
                trigger OnAction()
                var
                    "Sales Invoice Header": Record "Sales Invoice Header";
                begin
                    "Sales Invoice Header".SetRange("No.", Rec."No.");
                    Report.Run(50002, true, false, "Sales Invoice Header");
                end;
            }
        }
    }
}
