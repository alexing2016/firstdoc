
Imports System.Data.SqlClient
Imports encrypteway
Partial Class login


    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader
    Dim objcrypt As New encrypteway

    Protected Sub Button_login_Click(sender As Object, e As EventArgs) Handles Button_login.Click

        con = New SqlConnection("Data Source=localhost;Initial Catalog=SGCT_db;Persist Security info=True;User id=sa;Password=solutions;MultipleActiveResultSets=True;")
        con.Open()

        cmd = New SqlCommand("SELECT password FROM users_SGCT WHERE username ='" + TextBoxusername.Text + "' ", con)
        dr = cmd.ExecuteReader


        objcrypt.Encrypttoi(TextBoxpassword.Text)
        If (dr.Read) Then
            If (dr(0).ToString = objcrypt.Encrypttoi(TextBoxpassword.Text)) Then
                Session("New") = TextBoxusername.Text
                Response.Write("Password is Correct")
                Response.Redirect("production/Liste_secteur_activite")
            Else
                Response.Write("Password is not Correct")
            End If

        Else
            Response.Write("Username  not exist")
        End If








    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Response.Redirect("production/logg.aspx")
    End Sub
End Class
