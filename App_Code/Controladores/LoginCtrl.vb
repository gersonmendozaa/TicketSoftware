Imports Microsoft.VisualBasic
Imports System.Data.SqlClient

Public Class LoginCtrl
    Public Function getSesion(Correo As String, Pass As String, ByRef Nomb As String, ByRef Apel As String, ByRef Codi As Integer) As Boolean
        Dim ConexionSQL As New Conexion()
        ConexionSQL.conectar()
        Dim resp As Boolean = False
        Dim comando As New SqlCommand()
        Dim lector As SqlDataReader
        comando.CommandType = System.Data.CommandType.Text
        comando.CommandText = "Select * from usuarios where corr_usua=@p1 and pass_usua=@p2 and acti_usua=1"
        comando.Connection = ConexionSQL.conexionSQL
        comando.Parameters.AddWithValue("@p1", Correo)
        comando.Parameters.AddWithValue("@p2", Pass)
        Try
            lector = comando.ExecuteReader()
            If lector.HasRows Then
                While lector.Read()
                    Codi = lector.GetInt32(0)
                    Nomb = lector.GetString(1)
                    Apel = lector.GetString(2)
                    resp = True
                End While
                lector.Close()
            Else
                resp = False
            End If
        Catch [error] As SqlException
        End Try
        Return resp
        ConexionSQL.desconectar()
    End Function
End Class
