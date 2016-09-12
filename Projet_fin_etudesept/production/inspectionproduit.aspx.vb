
Partial Class production_inspectionproduit
    Inherits System.Web.UI.Page
    Private Sub Bind_departement(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.tbl_RefUniteGeo.Where(Function(s) s.Id_UniteGeoSup = 1)
                        Select courss




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                Dropdownlist4.DataTextField = "DescriptionUnite"
                Dropdownlist4.DataValueField = "Id_UniteGeo"
                Dropdownlist4.DataSource = cours.ToList
                Dropdownlist4.DataBind()
                If _refresh Then
                    Dropdownlist4.DataBind()
                End If
            Catch ex As Exception

            End Try

            Dropdownlist4.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using


    End Sub


    Private Sub Bind_entreprise(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.tbl_Entreprise.Where(Function(s) s.Id_entreprise)
                        Select courss




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                Dropdownlist1.DataTextField = "Nom_entreprise"
                Dropdownlist1.DataValueField = "Id_entreprise"
                Dropdownlist1.DataSource = cours.ToList
                Dropdownlist1.DataBind()
                If _refresh Then
                    Dropdownlist1.DataBind()
                End If
            Catch ex As Exception

            End Try

            Dropdownlist1.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using


    End Sub

    Private Sub Bind_produit(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.Tbl_Produit
                        Select courss




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                Dropdownlistprod.DataTextField = "nom_produit"
                Dropdownlistprod.DataValueField = "id_produit"
                Dropdownlistprod.DataSource = cours.ToList
                Dropdownlistprod.DataBind()
                If _refresh Then
                    Dropdownlistprod.DataBind()
                End If
            Catch ex As Exception

            End Try

            Dropdownlistprod.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using


    End Sub






















    Private Sub FillCommune(ByVal uniteSup As Long)
        'Dim objs As List(Of Cls_Page)
        Using entities As New SGCT_dbEntities



            Try



                Dim li = From s In entities.tbl_RefUniteGeo.Where(Function(s) s.Id_UniteGeoSup = uniteSup)
                         Select s
                Dropdownlist5.Items.Clear()
                Dropdownlist5.DataSource = li.OrderBy(Function(s) s.DescriptionUnite).ToList
                Dropdownlist5.DataTextField = "DescriptionUnite"
                Dropdownlist5.DataValueField = "Id_UniteGeo"
                Dropdownlist5.DataBind()


            Catch ex As Exception

            End Try
            Dropdownlist5.Items.Insert(0, New ListItem("Sélectionnez", "0"))
        End Using

    End Sub



    Protected Sub Dropdownlist4_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Dropdownlist4.SelectedIndexChanged
        FillCommune(Integer.Parse(Dropdownlist4.Text))
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Bind_entreprise()
            Bind_departement()
            Bind_produit()

        End If
    End Sub




    Protected Sub RadBtn_Save_Click(sender As Object, e As EventArgs) Handles RadBtn_Save.Click

        Using db As New SGCT_dbEntities
            Dim inspection As New Tbl_Inspection

            inspection.Adresse = txt_adresse_1.Text
            inspection.Id_entreprise = Integer.Parse(Dropdownlist1.Text)
            inspection.id_produit = Integer.Parse(Dropdownlistprod.Text)
            inspection.details_produit = TextBox1.Text
            inspection.details_entrepise = comments.Text
            inspection.CreatedBy = "Admin"
            inspection.DateCreated = Date.Now

            db.Tbl_Inspection.Add(inspection)
            db.SaveChanges()

            Response.Redirect("Liste_inspection")
        End Using




    End Sub
End Class
