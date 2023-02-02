Imports Microsoft.VisualBasic

Public Class Validaciones
    Public Function ValidarCorreo(Correo As [String]) As Boolean
        Dim resp As Boolean = False
        Dim Val As New Regex("^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*.(.[a-z]{2,4})$")
        If Val.IsMatch(Correo) Then
            resp = True
        End If
        Return resp
    End Function
End Class
