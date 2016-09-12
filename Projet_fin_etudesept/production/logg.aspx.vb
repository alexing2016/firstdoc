Imports System.Data.SqlClient
Imports encrypteway
Partial Class production_logg
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader
    Dim objcrypt As New encrypteway
    Protected Sub LoginButton_Click(sender As Object, e As EventArgs)
        con = New SqlConnection("Data Source=localhost;Initial Catalog=SGCT_db;Persist Security info=True;User id=sa;Password=solutions;MultipleActiveResultSets=True;")
        con.Open()

        cmd = New SqlCommand("SELECT password FROM users_SGCT WHERE username ='" + Account_Login.UserName + "' ", con)
        dr = cmd.ExecuteReader


        objcrypt.Encrypttoi(Account_Login.Password)
        If (dr.Read) Then
            If (dr(0).ToString = objcrypt.Encrypttoi(Account_Login.Password)) Then
                Session("New") = Account_Login.UserName
                Response.Write("Password is Correct")
                Response.Redirect("Liste_secteur_activite")
            Else
                Response.Write("Password is not Correct")
            End If

        Else
            Response.Write("Username  not exist")
        End If




    End Sub
End Class
