
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs)
        Try
            Dim obje As New LoginCtrl()
            Dim Codi As Integer = 0
            Dim Nomb = "", Apel As String = ""
            If obje.getSesion(txtCorreo.Text, txtPass.Text, Nomb, Apel, Codi) Then
                Session("codiSesi") = Codi
                Session("nombSesi") = Nomb
                Session("apelSesi") = Apel
                Session("corrSesi") = txtCorreo.Text
                Response.Redirect("Plantilla/Default.aspx")
            Else
                Dim Mens As String = "<script type=text/javascript>setMessage('MESS_ERRO', 'Atención', 'Usuario o contraseña incorrecta');</script>"
                ScriptManager.RegisterStartupScript(Me, GetType(Page), "Mensaje", Mens, False)
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class
