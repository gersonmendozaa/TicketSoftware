
Partial Class Plantilla_MasterPrincipal
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblCorrUser.Text = Session("corrSesi").ToString
        lblUser.Text = Session("nombSesi") + " " + Session("apelSesi")
    End Sub
End Class

