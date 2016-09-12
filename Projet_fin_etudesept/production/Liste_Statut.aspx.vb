﻿
Partial Class production_Liste_Statut
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Load_Statut()

        End If




    End Sub



    Private Sub Load_Statut()

        Try
            Using entities As New SGCT_dbEntities
                Dim fonctions = From func In entities.Tbl_statut_patente
                            Select func

                rlv_part.DataSource = fonctions.ToList
                rlv_part.DataBind()

            End Using


        Catch ex As Exception

        End Try
    End Sub


    Protected Sub RadBtn_Save_Click(sender As Object, e As EventArgs) Handles RadBtn_Save.Click
        Using entities As New SGCT_dbEntities

            Dim statut As New Tbl_statut_patente
            statut.Statut = txt_statut.Text
            '  secteur.descriptition = txt_montant.Text
            '  statut.Tarif = txt_tarif.Text
            statut.DateCreated = DateTime.Now
            entities.Tbl_statut_patente.Add(statut)
            entities.SaveChanges()
            Load_Statut()
        End Using
    End Sub

    Protected Sub lv_all_pieges_ItemCanceling(sender As Object, e As ListViewDeleteEventArgs) Handles rlv_part.ItemDeleting
        Dim entities As New SGCT_dbEntities

        Dim dataItem As ListViewDataItem = rlv_part.Items(e.ItemIndex)

        Dim id As Long = CType(dataItem.FindControl("TextBox2"), TextBox).Text
        Dim fonction As Tbl_statut_patente = entities.Tbl_statut_patente.Find(id)

        Dim confirmValue As String = Request.Form("confirm_value")
        If confirmValue = "Yes" Then

            entities.Tbl_statut_patente.Remove(fonction)

            entities.SaveChanges()
            'Else
            '    RadAjaxManager1.ResponseScripts.Add("CloseAndRefresh_MainPage();")
        End If
        Load_Statut()
    End Sub








    'Modifier secteur



    Protected Sub lv_all_pieges_ItemCanceling(sender As Object, e As ListViewCancelEventArgs) Handles rlv_part.ItemCanceling
        rlv_part.EditIndex = -1
        Load_Statut()

    End Sub

    Protected Sub lv_all_pieges_ItemEditing(sender As Object, e As ListViewEditEventArgs) Handles rlv_part.ItemEditing
        rlv_part.EditIndex = e.NewEditIndex
        Load_Statut()
    End Sub

    Protected Sub lv_all_pieges_ItemInserting(sender As Object, e As ListViewInsertEventArgs) Handles rlv_part.ItemInserting
        Dim entities As New SGCT_dbEntities
        Dim piege As New Tbl_statut_patente




        Try
            piege.Statut = CType(e.Item.FindControl("tb_update_lon_piege"), TextBox).Text
            '  piege.Tarif = CType(e.Item.FindControl("tb_update_code_piege"), TextBox).Text
        Catch ex As Exception

        End Try



        entities.Tbl_statut_patente.Add(piege)
        entities.SaveChanges()
        Load_Statut()
    End Sub

    Protected Sub rlv_part_ItemUpdating(sender As Object, e As ListViewUpdateEventArgs) Handles rlv_part.ItemUpdating
        Dim entities As New SGCT_dbEntities


        Dim dataItem As ListViewDataItem = rlv_part.Items(e.ItemIndex)

        Dim text_nom As TextBox = CType(dataItem.FindControl("TextBox1"), TextBox)
        Dim id As Long = CInt(CType(dataItem.FindControl("TextBox1"), TextBox).Text)
        '  id = CDec(CType(dataItem.FindControl("TextBox1"), TextBox).Text)
        Dim piege As Tbl_statut_patente = entities.Tbl_statut_patente.Find(id)
        Try
            piege.Statut = CType(dataItem.FindControl("tb_update_lon_piege"), TextBox).Text
            '  piege.Tarif = CType(dataItem.FindControl("tb_update_code_piege"), TextBox).Text
        Catch ex As Exception

        End Try



        entities.SaveChanges()
        rlv_part.EditIndex = -1
        Load_Statut()

    End Sub


    Protected Sub lv_all_pieges_PagePropertiesChanging(sender As Object, e As PagePropertiesChangingEventArgs) Handles rlv_part.PagePropertiesChanging

        Load_Statut()
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
