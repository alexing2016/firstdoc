
Partial Class production_Liste_Produit
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Tbl_Produit()

        End If




    End Sub



    Private Sub Tbl_Produit()

        Try
            Using entities As New SGCT_dbEntities
                Dim fonctions = From func In entities.Tbl_Produit
                                Select func

                rlv_part.DataSource = fonctions.ToList
                rlv_part.DataBind()

            End Using


        Catch ex As Exception

        End Try
    End Sub


    Protected Sub RadBtn_Save_Click(sender As Object, e As EventArgs) Handles RadBtn_Save.Click
        Using entities As New SGCT_dbEntities

            Dim prod As New Tbl_Produit
            prod.nom_produit = txt_fonction.Text
            '  secteur.descriptition = txt_montant.Text
            prod.info_produit = TextBox1.Text
            prod.DateCreated = Date.Now
            prod.CreatedBy = "admin"
            entities.Tbl_Produit.Add(prod)
            entities.SaveChanges()
            Tbl_Produit()
        End Using
    End Sub




    'Protected Sub lv_all_pieges_ItemCanceling(sender As Object, e As ListViewDeleteEventArgs) Handles rlv_part.ItemDeleting
    '    Dim entities As New SGCT_dbEntities

    '    Dim dataItem As ListViewDataItem = rlv_part.Items(e.ItemIndex)

    '    Dim id As Long = CType(dataItem.FindControl("TextBox2"), TextBox).Text
    '    Dim fonction As Tbl_secteur_activite = entities.Tbl_secteur_activite.Find(id)

    '    Dim confirmValue As String = Request.Form("confirm_value")
    '    If confirmValue = "Yes" Then

    '        entities.Tbl_secteur_activite.Remove(fonction)

    '        entities.SaveChanges()
    '        'Else
    '        '    RadAjaxManager1.ResponseScripts.Add("CloseAndRefresh_MainPage();")
    '    End If
    '    Load_fonction()
    'End Sub


    'Protected Sub Unnamed_Click(sender As Object, e As ImageClickEventArgs)

    '    Dim dataItem As ListViewDataItem = rlv_part.Items



    '    Dim id As Long = CInt(CType(rlv_part.FindControl("TextBox1"), TextBox).Text)



    '    Using entities As New SGCT_dbEntities


    '        '' Dim piege As Tbl_Note = entities.Tbl_Note.Find(id)
    '        'Dim _etudiant As Tbl_secteur_activite = entities.Tbl_Etudiant.Find(id)
    '        'Dim confirmValue As String = Request.Form("confirm_value")
    '        'If confirmValue = "Yes" Then

    '        '    entities.Tbl_Etudiant.Remove(_etudiant)

    '        '    entities.SaveChanges()
    '        '    'Else
    '        '    '    RadAjaxManager1.ResponseScripts.Add("CloseAndRefresh_MainPage();")
    '        'End If
    '    End Using

    'End Sub

End Class
