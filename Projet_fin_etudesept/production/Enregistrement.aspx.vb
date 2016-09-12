Imports encrypteway
Partial Class production_Enregistrement
    Inherits System.Web.UI.Page

    Protected Sub RadBtn_Saveit_Click(sender As Object, e As EventArgs) Handles RadBtn_Saveit.Click
        Dim objcrypt As New encrypteway



        Using db As New SGCT_dbEntities


            Dim pers = (From doc In db.users_SGCT
                       Select doc).ToList
            Dim find_user As Integer

            For Each per As users_SGCT In pers
                Dim use As String
                Dim user_pass As String
                use = per.username
                user_pass = username.Text

                If use = user_pass Then

                    find_user = 1

                End If
            Next

            If find_user = 1 Then
                lbl_erreur.Text = "Ce user existe déjà dans la base"
            Else
                Dim personne As New users_SGCT
                personne.nom = name.Text

                personne.prenom = prénom.Text
                personne.adresse = "dont know"
                personne.Telephone = "dont know"

                objcrypt.Encrypttoi(password.Text)
                personne.password = objcrypt.Encrypttoi(password.Text)
                personne.username = username.Text
                personne.occupation = 1
                personne.IsActif = 1
                db.users_SGCT.Add(personne)
                db.SaveChanges()
            End If



        End Using







    End Sub
End Class
