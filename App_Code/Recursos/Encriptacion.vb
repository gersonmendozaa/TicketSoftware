Imports Microsoft.VisualBasic
Imports System.Security.Cryptography

Public Class Encriptacion
    Public Function SHA256Encripta(input As String) As String
        Dim provider As New SHA256CryptoServiceProvider()

        Dim inputBytes As Byte() = Encoding.UTF8.GetBytes(input)
        Dim hashedBytes As Byte() = provider.ComputeHash(inputBytes)

        Dim output As New StringBuilder()

        For i As Integer = 0 To hashedBytes.Length - 1
            output.Append(hashedBytes(i).ToString("x2").ToLower())
        Next

        Return output.ToString()
    End Function
End Class
