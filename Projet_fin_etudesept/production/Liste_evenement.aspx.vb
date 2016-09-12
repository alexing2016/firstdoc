
Partial Class production_Liste_evenement
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Load_monument()
            Bind_mairie()

        End If




    End Sub



    Private Sub Load_monument()

        Try
            Using entities As New SGCT_dbEntities
                Dim fonctions = From func In entities.sp_mairie_monument
                            Select func

                rlv_part.DataSource = fonctions.ToList
                rlv_part.DataBind()

            End Using


        Catch ex As Exception

        End Try
    End Sub

    Private Sub Bind_mairie(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities()
            Dim periode = From period In entities.tbl_mairie
                        Select period




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                rcmb_mairie.DataSource = periode.ToList
                rcmb_mairie.DataTextField = "nom_mairie"
                rcmb_mairie.DataValueField = "Id_mairie"

                rcmb_mairie.DataBind()
                If _refresh Then
                    rcmb_mairie.DataBind()
                End If
            Catch ex As Exception

            End Try

            rcmb_mairie.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using
    End Sub

    Protected Sub RadBtn_Save_Click(sender As Object, e As EventArgs) Handles RadBtn_Save.Click
        Using entities As New SGCT_dbEntities

            Dim monument As New tbl_monument
            monument.nom_monument = txt_fonction.Text
            monument.id_mairie = Integer.Parse(rcmb_mairie.Text)
            '  secteur.descriptition = txt_montant.Text
            '  secteur.Tarif = txt_tarif.Text
            ' secteur.DateCreated = DateTime.Now
            entities.tbl_monument.Add(monument)
            entities.SaveChanges()
            Load_monument()
        End Using
    End Sub

    Protected Sub lv_all_pieges_ItemCanceling(sender As Object, e As ListViewDeleteEventArgs) Handles rlv_part.ItemDeleting
        Dim entities As New SGCT_dbEntities

        Dim dataItem As ListViewDataItem = rlv_part.Items(e.ItemIndex)

        Dim id As Long = CType(dataItem.FindControl("TextBox2"), TextBox).Text
        Dim fonction As tbl_monument = entities.tbl_monument.Find(id)

        Dim confirmValue As String = Request.Form("confirm_value")
        If confirmValue = "Yes" Then

            entities.tbl_monument.Remove(fonction)

            entities.SaveChanges()
            'Else
            '    RadAjaxManager1.ResponseScripts.Add("CloseAndRefresh_MainPage();")
        End If
        Load_monument()
    End Sub








    'Modifier secteur



    Protected Sub lv_all_pieges_ItemCanceling(sender As Object, e As ListViewCancelEventArgs) Handles rlv_part.ItemCanceling
        rlv_part.EditIndex = -1
        Load_monument()

    End Sub

    Protected Sub lv_all_pieges_ItemEditing(sender As Object, e As ListViewEditEventArgs) Handles rlv_part.ItemEditing
        rlv_part.EditIndex = e.NewEditIndex
        Load_monument()
    End Sub

    Protected Sub lv_all_pieges_ItemInserting(sender As Object, e As ListViewInsertEventArgs) Handles rlv_part.ItemInserting
        Dim entities As New SGCT_dbEntities
        Dim piege As New tbl_monument




        Try
            piege.nom_monument = CType(e.Item.FindControl("tb_update_lon_piege"), TextBox).Text

        Catch ex As Exception

        End Try



        entities.tbl_monument.Add(piege)
        entities.SaveChanges()
        Load_monument()
    End Sub

    Protected Sub rlv_part_ItemUpdating(sender As Object, e As ListViewUpdateEventArgs) Handles rlv_part.ItemUpdating
        Dim entities As New SGCT_dbEntities


        Dim dataItem As ListViewDataItem = rlv_part.Items(e.ItemIndex)

        Dim text_nom As TextBox = CType(dataItem.FindControl("TextBox1"), TextBox)
        Dim id As Long = CInt(CType(dataItem.FindControl("TextBox1"), TextBox).Text)
        '  id = CDec(CType(dataItem.FindControl("TextBox1"), TextBox).Text)
        Dim piege As tbl_monument = entities.tbl_monument.Find(id)
        Try
            piege.nom_monument = CType(dataItem.FindControl("tb_update_lon_piege"), TextBox).Text

        Catch ex As Exception

        End Try



        entities.SaveChanges()
        rlv_part.EditIndex = -1
        Load_monument()

    End Sub


    Protected Sub lv_all_pieges_PagePropertiesChanging(sender As Object, e As PagePropertiesChangingEventArgs) Handles rlv_part.PagePropertiesChanging

        Load_monument()
    End Sub


    ' Fin modifier secteur





    Protected Sub Unnamed_Click(sender As Object, e As ImageClickEventArgs)

        Dim dataItem As ListViewDataItem = rlv_part.Items



        Dim id As Long = CInt(CType(rlv_part.FindControl("TextBox1"), TextBox).Text)



        Using entities As New SGCT_dbEntities


            '' Dim piege As Tbl_Note = entities.Tbl_Note.Find(id)
            'Dim _etudiant As Tbl_secteur_activite = entities.Tbl_Etudiant.Find(id)
            'Dim confirmValue As String = Request.Form("confirm_value")
            'If confirmValue = "Yes" Then

            '    entities.Tbl_Etudiant.Remove(_etudiant)

            '    entities.SaveChanges()
            '    'Else
            '    '    RadAjaxManager1.ResponseScripts.Add("CloseAndRefresh_MainPage();")
            'End If
        End Using

    End Sub

End Class
