
Partial Class production_formulaire_demande
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Bind_raisons_checklist()
    End Sub



    Private Sub Bind_raisons_checklist(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.tbl_raison_arbattage
                        Select courss




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                chklstStates.DataTextField = "raison"
                chklstStates.DataValueField = "Id_raison"
                chklstStates.DataSource = cours.ToList
                chklstStates.DataBind()
                If _refresh Then
                    chklstStates.DataBind()
                End If
            Catch ex As Exception

            End Try



        End Using


    End Sub
End Class
