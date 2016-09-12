
Partial Class production_New_patente
    Inherits System.Web.UI.Page
    Private Sub Bind_annee(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.tbl_annee_fiscale
                        Select courss




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                rcmb_annee.DataTextField = "description"
                rcmb_annee.DataValueField = "id_anneefiscale"
                rcmb_annee.DataSource = cours.ToList
                rcmb_annee.DataBind()
                If _refresh Then
                    rcmb_annee.DataBind()
                End If
            Catch ex As Exception

            End Try

            rcmb_annee.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using


    End Sub

    Private Sub Bind_secteur(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.Tbl_secteur_activite
                        Select courss




            'Try
            '    ' rcmb_periode.DataSource = periode.FirstOrDefault
            '    rcmb_secteur.DataTextField = "Nom_secteur"
            '    rcmb_secteur.DataValueField = "ID_secteur"
            '    rcmb_secteur.DataSource = cours.ToList
            '    rcmb_secteur.DataBind()
            '    If _refresh Then
            '        rcmb_secteur.DataBind()
            '    End If
            'Catch ex As Exception

            'End Try

            'rcmb_secteur.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using


    End Sub


    Private Sub Bind_secteur_1(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.Tbl_secteur_activite
                        Select courss




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                DropDownList1.DataTextField = "Nom_secteur"
                DropDownList1.DataValueField = "ID_secteur"
                DropDownList1.DataSource = cours.ToList
                DropDownList1.DataBind()
                If _refresh Then
                    DropDownList1.DataBind()
                End If
            Catch ex As Exception

            End Try

            DropDownList1.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using


    End Sub
    Private Sub Bind_departement(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.tbl_RefUniteGeo.Where(Function(s) s.Id_UniteGeoSup = 1)
                        Select courss




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                Dropdownlist2.DataTextField = "DescriptionUnite"
                Dropdownlist2.DataValueField = "Id_UniteGeo"
                Dropdownlist2.DataSource = cours.ToList
                Dropdownlist2.DataBind()
                If _refresh Then
                    Dropdownlist2.DataBind()
                End If
            Catch ex As Exception

            End Try

            Dropdownlist2.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using


    End Sub



    Private Sub Bind_forme_juridique(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.Tbl_forme_juridique
                        Select courss




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                rcmb_forme_juridique.DataTextField = "Nom_forme"
                rcmb_forme_juridique.DataValueField = "ID_Forme"
                rcmb_forme_juridique.DataSource = cours.ToList
                rcmb_forme_juridique.DataBind()
                If _refresh Then
                    rcmb_forme_juridique.DataBind()
                End If
            Catch ex As Exception

            End Try

            rcmb_forme_juridique.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using


    End Sub

    Private Sub Bind_departement_1(Optional ByVal _refresh As Boolean = True)
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

    Public Function Rechercher_tarif(id As Long) As Tbl_secteur_activite
        Using db As New SGCT_dbEntities
            Dim secteur = (From s In db.Tbl_secteur_activite.Where(Function(s) s.ID_secteur = id)
                          Select s).FirstOrDefault

            Return secteur

        End Using
    End Function



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Bind_secteur()
            Bind_departement()
            Bind_departement_1()
            Bind_secteur_1()
            Bind_forme_juridique()
            Bind_annee()
        End If
    End Sub

    Protected Sub RadBtn_Save_Click(sender As Object, e As EventArgs) Handles RadBtn_Save.Click
        Using db As New SGCT_dbEntities
            Dim personne As New Tbl_Personne
            personne.adresse = txt_adresse_1.Text
            personne.Nom = name.Text
            personne.sexe = rcmb_sexe.Text
            personne.Id_uniteGeo = Integer.Parse(Dropdownlist5.Text)
            personne.Prenom = prénom.Text
            personne.email = email.Text
            personne.telephone = telephone.Text
            personne.CIN = txt_cin.Text
            personne.NIF = txt_nif.Value
            db.Tbl_Personne.Add(personne)
            db.SaveChanges()

            Dim entreprise As New tbl_Entreprise
            entreprise.Fondateur = txt_fondateur.Text
            entreprise.Nom_entreprise = txt_nom_entreprise.Text
            entreprise.Forme_juridique = Integer.Parse(rcmb_forme_juridique.Text)
            entreprise.Adresse = txt_siege_social.Text
            entreprise.Tel1 = txt_cell_1.Text
            entreprise.Tel2 = txt_cell_2.Text
            entreprise.DateCreated = DateAndTime.Now
            entreprise.CreatedBy = "admin"
            db.tbl_Entreprise.Add(entreprise)
            db.SaveChanges()

            Dim id As Long
            id = Integer.Parse(DropDownList1.Text)
            Dim sec As New Tbl_secteur_activite
            sec = Rechercher_tarif(id)

            Dim patente As New tbl_Patente
            patente.ID_Entreprise = entreprise.Id_entreprise
            patente.ChiffresAffaires = txt_CA.Text
            patente.MasseSalariale = txt_massesalariale.Text
            patente.Montant = (((patente.ChiffresAffaires - patente.MasseSalariale) * 2) / 1000) + sec.Tarif
            patente.Id_AnneeFiscal = Integer.Parse(rcmb_annee.Text)
            patente.id_statut = 4
            patente.DateCreated = DateTime.Now
            patente.DateModif = DateTime.Now
            db.tbl_Patente.Add(patente)
            db.SaveChanges()
            Response.Redirect("Liste_patente_statut")
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
End Class
