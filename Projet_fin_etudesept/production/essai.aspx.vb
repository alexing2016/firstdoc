
Imports System.IO.Ports
Imports System.Net.Mail
Imports System.Net

Partial Class production_essai
    Inherits System.Web.UI.Page



    Dim portserie As New System.IO.Ports.SerialPort
    Private Sub Bind_departement(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.tbl_RefUniteGeo.Where(Function(s) s.Id_UniteGeoSup = 1)
                        Select courss




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                rcmb_departement.DataTextField = "DescriptionUnite"
                rcmb_departement.DataValueField = "Id_UniteGeo"
                rcmb_departement.DataSource = cours.ToList
                rcmb_departement.DataBind()
                If _refresh Then
                    rcmb_departement.DataBind()
                End If
            Catch ex As Exception

            End Try

            rcmb_departement.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using


    End Sub


    Private Sub Bind_departement_terrain(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.tbl_RefUniteGeo.Where(Function(s) s.Id_UniteGeoSup = 1)
                        Select courss




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                rcmb_departement_terrain.DataTextField = "DescriptionUnite"
                rcmb_departement_terrain.DataValueField = "Id_UniteGeo"
                rcmb_departement_terrain.DataSource = cours.ToList
                rcmb_departement_terrain.DataBind()
                If _refresh Then
                    rcmb_departement_terrain.DataBind()
                End If
            Catch ex As Exception

            End Try

            rcmb_departement_terrain.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using


    End Sub


    Private Sub Bind_niveaux(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.Tbl_nombre
                        Select courss




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                rcmb_niveaux.DataTextField = "nombre"
                rcmb_niveaux.DataValueField = "ID"
                rcmb_niveaux.DataSource = cours.ToList
                rcmb_niveaux.DataBind()
                If _refresh Then
                    rcmb_niveaux.DataBind()
                End If
            Catch ex As Exception

            End Try

            rcmb_niveaux.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using


    End Sub




    Private Sub Bind_pieces(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.Tbl_nombre
                        Select courss




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                rcmb_pieces.DataTextField = "nombre"
                rcmb_pieces.DataValueField = "ID"
                rcmb_pieces.DataSource = cours.ToList
                rcmb_pieces.DataBind()
                If _refresh Then
                    rcmb_pieces.DataBind()
                End If
            Catch ex As Exception

            End Try

            rcmb_pieces.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using


    End Sub
    Private Sub Bind_logements(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.Tbl_nombre
                        Select courss




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                rcmb_logements.DataTextField = "nombre"
                rcmb_logements.DataValueField = "ID"
                rcmb_logements.DataSource = cours.ToList
                rcmb_logements.DataBind()
                If _refresh Then
                    rcmb_logements.DataBind()
                End If
            Catch ex As Exception

            End Try

            rcmb_logements.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using


    End Sub

    Private Sub Bind_type_annexe(Optional ByVal _refresh As Boolean = True)
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.Tbl_type_annexe
                        Select courss




            '    Try

            '        chk_Services.DataSource = cours.ToList

            '        chk_Services.DataTextField = "Type_Annexe"
            '        chk_Services.DataValueField = "ID_type"

            '        chk_Services.DataBind()

            '        If _refresh Then
            '            chk_Services.DataBind()
            '        End If
            '    Catch ex As Exception

            '    End Try
        End Using
    End Sub





    Private Sub Bind_type_annexe_1(Optional ByVal _refresh As Boolean = True)
        Using entities As New SGCT_dbEntities
            Dim cours = From courss In entities.Tbl_type_annexe
                        Select courss




            Try

                rdio_type_coach.DataSource = cours.ToList

                rdio_type_coach.DataTextField = "Type_Annexe"
                rdio_type_coach.DataValueField = "ID_type"

                rdio_type_coach.DataBind()

                If _refresh Then
                    rdio_type_coach.DataBind()
                End If
            Catch ex As Exception

            End Try
        End Using
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Bind_departement()
            Bind_type_annexe()
            Bind_type_annexe_1()
            Bind_departement_terrain()
            Bind_logements()
            Bind_niveaux()
            Bind_pieces()

            With portserie
                .PortName = "COM6"
                .BaudRate = 9600
                .Parity = Parity.None
                .StopBits = StopBits.One
                .DataBits = 8
                .Handshake = Handshake.RequestToSend
                .DtrEnable = True
                .RtsEnable = True
                .NewLine = vbCrLf
            End With

        End If



     



        'portserie.Open()
        ''aprés l'ouverture du port, testons sont ouverture
        'If portserie.IsOpen() Then
        '    'nous écrivons à notre port l'utilisation des commandes AT
        '    portserie.Write("AT" & vbCrLf)
        '    'initialisation du mode de text
        '    portserie.Write("AT+CMGF=1" & vbCrLf)
        '    'numero du message en utilisant le mode PDU
        '    portserie.Write("AT+CMGS=" & Chr(34) & "36585529" & Chr(34) & vbCrLf)
        '    'envoie du message 
        '    portserie.Write("Sms envoye via gsm" & Chr(26))
        '    'confirmation du message
        '    MsgBox("Le message est parti avec succes")
        '    portserie.Close()
        'Else
        '    MsgBox("Votre port n'est pas valide")
        'End If
    End Sub







    Private Sub FillCommune(ByVal uniteSup As Long)
        'Dim objs As List(Of Cls_Page)
        Using entities As New SGCT_dbEntities



            Try



                Dim li = From s In entities.tbl_RefUniteGeo.Where(Function(s) s.Id_UniteGeoSup = uniteSup)
                       Select s
                rcmb_commune.Items.Clear()
                rcmb_commune.DataSource = li.OrderBy(Function(s) s.DescriptionUnite).ToList
                rcmb_commune.DataTextField = "DescriptionUnite"
                rcmb_commune.DataValueField = "Id_UniteGeo"
                rcmb_commune.DataBind()


            Catch ex As Exception

            End Try
            rcmb_commune.Items.Insert(0, New ListItem("Sélectionnez", "0"))
        End Using

    End Sub




    Private Sub FillCommune_terrain(ByVal uniteSup As Long)
        'Dim objs As List(Of Cls_Page)
        Using entities As New SGCT_dbEntities



            Try



                Dim li = From s In entities.tbl_RefUniteGeo.Where(Function(s) s.Id_UniteGeoSup = uniteSup)
                       Select s
                Dropdownlist6.Items.Clear()
                Dropdownlist6.DataSource = li.OrderBy(Function(s) s.DescriptionUnite).ToList
                Dropdownlist6.DataTextField = "DescriptionUnite"
                Dropdownlist6.DataValueField = "Id_UniteGeo"
                Dropdownlist6.DataBind()


            Catch ex As Exception

            End Try
            Dropdownlist6.Items.Insert(0, New ListItem("Sélectionnez", "0"))
        End Using

    End Sub

    Protected Sub rcmb_departement_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rcmb_departement.SelectedIndexChanged
        FillCommune(Integer.Parse(rcmb_departement.Text))
    End Sub

    Protected Sub rcmb_departement_terrain_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rcmb_departement_terrain.SelectedIndexChanged
        FillCommune_terrain(Integer.Parse(rcmb_departement_terrain.Text))
    End Sub



    Protected Sub SendMail(ByVal address As String)
        Dim fromAddress = "luchardorelus@gmail.com"
        ' Gmail Address from where you send the mail
        Dim toAddress = address.ToString()
        Const fromPassword As String = "luchonana11"
        'Password of your gmail address
        Dim subject As String = YourSubject.Text.ToString()
        Dim body As String = "From: " + YourName.Text + vbLf
        body += "Email: " + YourEmail.Text + vbLf
        body += "Subject: " + YourSubject.Text + vbLf
        body += "Question: " & vbLf + Comments.Text + vbLf
        Dim smtp = New System.Net.Mail.SmtpClient()
        If True Then
            smtp.Host = "smtp.gmail.com"
            smtp.Port = 587
            smtp.EnableSsl = True
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network
            smtp.Credentials = New NetworkCredential(fromAddress, fromPassword)
            smtp.Timeout = 20000
        End If
        smtp.Send(fromAddress, toAddress, subject, body)
    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        portserie.Open()
        'aprés l'ouverture du port, testons sont ouverture
        If portserie.IsOpen() Then
            'nous écrivons à notre port l'utilisation des commandes AT
            portserie.Write("AT" & vbCrLf)
            'initialisation du mode de text
            portserie.Write("AT+CMGF=1" & vbCrLf)
            'numero du message en utilisant le mode PDU
            portserie.Write("AT+CMGS=" & Chr(34) & "42055487" & Chr(34) & vbCrLf)
            'envoie du message 
            portserie.Write("Sms envoye via gsm et At. C Luchard m voye sms la li bon" & Chr(26))
            'confirmation du message
            MsgBox("Le message est parti avec succes")
            portserie.Close()
        Else
            MsgBox("Votre port n'est pas valide")
        End If




        Using entities As New SGCT_dbEntities



            Try



                Dim li = From s In entities.Tbl_Personne
                       Select s


                For Each pers As Tbl_Personne In li
                    Dim email As String
                    email = pers.email
                    SendMail(email)
                Next


                lblMsgSend.Text = "Your Comments after sending the mail"
                lblMsgSend.Visible = True
                YourSubject.Text = ""
                YourEmail.Text = ""
                YourName.Text = ""
                Comments.Text = ""
            Catch generatedExceptionName As Exception
            End Try
        End Using
    End Sub

    Protected Sub RadBtn_Save_Click(sender As Object, e As EventArgs) Handles RadBtn_Save.Click
        Dim architec As New Tbl_architecte
        Dim db As New SGCT_dbEntities
        Dim pers As New Tbl_Personne

        pers.Nom = name.Text
        pers.Prenom = prénom.Text
        pers.email = email.Text
        pers.CIN = txt_cin.Text
        pers.NIF = txt_nif.Value
        pers.telephone = telephone.Text
        pers.adresse = txt_adresse_1.Text
        pers.Id_uniteGeo = Integer.Parse(rcmb_commune.Text)
        pers.DateCreated = DateAndTime.Now
        If rcmb_titre.SelectedValue = "M" Then
            pers.sexe = "Masculin"
        Else
            pers.sexe = "Féminin"
        End If
        db.Tbl_Personne.Add(pers)
        db.SaveChanges()



        If rcmb_titre_architecte.SelectedValue = "M" Then
            architec.sexe = "Masculin"
        Else
            architec.sexe = "Féminin"
        End If

        architec.Nom = txt_nom_architecte.Text
        architec.Prenom = txt_prenom_architecte.Text
        architec.email = email_architecte.Text
        architec.telephone = Txt_tel_architecte.Text
        architec.CIN = txt_cin_architecte.Text
        architec.NIF = nif_architecte.Text
        architec.DateCreated = DateAndTime.Now
        db.Tbl_architecte.Add(architec)
        db.SaveChanges()
        Response.Redirect("Liste_secteur_activite")

    End Sub
End Class
