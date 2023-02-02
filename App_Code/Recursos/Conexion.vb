Imports System.Collections.Generic
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Linq
Imports System.Web
Imports System.Web.UI.WebControls

''' <summary>
''' Descripción breve de Conexion
''' </summary>
Public Class Conexion
    Private cadenaConexion As [String]
    Public conexionSQL As SqlConnection
    Public Sub New()
        Me.cadenaConexion = ConfigurationManager.ConnectionStrings("CadenaConexion").ConnectionString
    End Sub
    Public Function conectar() As Boolean
        Try
            Me.conexionSQL = New SqlConnection(Me.cadenaConexion)
            Me.conexionSQL.Open()
            Return True
        Catch
            Return False
        End Try
    End Function
    Public Function estadoConexion() As Boolean
        Select Case Me.conexionSQL.State
            Case System.Data.ConnectionState.Broken
                Return True
            Case System.Data.ConnectionState.Open
                Return True
            Case Else
                Return False
        End Select
    End Function
    Public Sub desconectar()
        Me.conexionSQL.Close()
    End Sub

End Class

'=======================================================
'Service provided by Telerik (www.telerik.com)
'Conversion powered by NRefactory.
'Twitter: @telerik
'Facebook: facebook.com/telerik
'=======================================================

