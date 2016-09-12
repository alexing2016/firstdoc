Imports Telerik.Web.UI

Partial Class production_Default
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Load_event()
            Bind_monument()
            BindGridRadScheduler()
        End If




    End Sub



    Private Sub Load_event()

        Try
            Using entities As New SGCT_dbEntities
                Dim fonctions = From func In entities.sp_event
                            Select func

                rlv_part.DataSource = fonctions.ToList
                rlv_part.DataBind()

            End Using


        Catch ex As Exception

        End Try
    End Sub

    Private Sub Bind_monument(Optional ByVal _refresh As Boolean = True)
        Dim _ret As Long = 0
        Using entities As New SGCT_dbEntities()
            Dim periode = From period In entities.tbl_monument
                        Select period




            Try
                ' rcmb_periode.DataSource = periode.FirstOrDefault
                rcmb_monument.DataSource = periode.ToList
                rcmb_monument.DataTextField = "nom_monument"
                rcmb_monument.DataValueField = "Id_monument"

                rcmb_monument.DataBind()
                If _refresh Then
                    rcmb_monument.DataBind()
                End If
            Catch ex As Exception

            End Try

            rcmb_monument.Items.Insert(0, New ListItem("Sélectionnez", "0"))

        End Using
    End Sub

    Protected Sub RadBtn_Save_Click(sender As Object, e As EventArgs) Handles RadBtn_Save.Click
        Using entities As New SGCT_dbEntities

            Dim monument As New Tbl_Event
            monument.Sujet = txt_fonction.Text
            monument.ID_monument = Integer.Parse(rcmb_monument.Text)
            monument.DateDebut = RadDatePicker1.SelectedDate
            monument.DateFin = RadDatetimePicker1.SelectedDate
            monument.ID_Statut = 1
            '  secteur.descriptition = txt_montant.Text
            '  secteur.Tarif = txt_tarif.Text
            ' secteur.DateCreated = DateTime.Now
            entities.Tbl_Event.Add(monument)
            entities.SaveChanges()

        End Using
        BindGridRadScheduler()
        Load_event()
    End Sub




    Protected Sub lv_all_pieges_ItemCanceling(sender As Object, e As ListViewDeleteEventArgs) Handles rlv_part.ItemDeleting
        Dim entities As New SGCT_dbEntities

        Dim dataItem As ListViewDataItem = rlv_part.Items(e.ItemIndex)

        Dim id As Long = CType(dataItem.FindControl("TextBox2"), TextBox).Text
        Dim fonction As New Tbl_Event
        fonction = entities.Tbl_Event.Find(id)
        Dim confirmValue As String = Request.Form("confirm_value")
        If confirmValue = "Yes" Then
            fonction.ID_Statut = 3
            ' entities.tbl_monument.Remove(fonction)

            entities.SaveChanges()
            'Else
            '    RadAjaxManager1.ResponseScripts.Add("CloseAndRefresh_MainPage();")
        End If
        BindGridRadScheduler()
        '  RadScheduler1_AppointmentCreated()
        Load_event()

    End Sub








    'Modifier secteur



    Protected Sub lv_all_pieges_ItemCanceling(sender As Object, e As ListViewCancelEventArgs) Handles rlv_part.ItemCanceling
        rlv_part.EditIndex = -1
        Load_event()

    End Sub

    Protected Sub lv_all_pieges_ItemEditing(sender As Object, e As ListViewEditEventArgs) Handles rlv_part.ItemEditing
        rlv_part.EditIndex = e.NewEditIndex
        Load_event()
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
        Load_event()
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
        Load_event()

    End Sub


    Protected Sub lv_all_pieges_PagePropertiesChanging(sender As Object, e As PagePropertiesChangingEventArgs) Handles rlv_part.PagePropertiesChanging

        Load_event()
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


















    Private db As New SGCT_dbEntities

    Function Agenda() As List(Of Tbl_Event)
        Return db.Tbl_Event.ToList()
    End Function


    Function Agenda1(id As Long, _id As Long) As List(Of Tbl_Event)
        Return db.Tbl_Event.Where(Function(s) s.ID_Institution = id And s.ID_Statut = _id).ToList()
    End Function

    Function Agenda_Statut(id As Long) As List(Of Tbl_Event)
        Return db.Tbl_Event.Where(Function(s) s.ID_Statut = id).ToList()
    End Function

    Sub DeleteConfirmed(ByVal id As Long)
        Dim tbl_evaluation As Tbl_Event = (From s In db.Tbl_Event
                              Where s.ID_Evaluation = id
                            Select s).FirstOrDefault
        db.Tbl_Event.Remove(tbl_evaluation)
        db.SaveChanges()
    End Sub
    Protected Sub RadScheduler1_AppointmentCreated(sender As Object, e As AppointmentCreatedEventArgs)


        ''///////////////////////////////////
        Dim _id As Long = CLng(e.Appointment.ID)
        Dim _eval As New Tbl_Event
        _eval = db.Tbl_Event.Where(Function(s) s.ID_Evaluation = _id).FirstOrDefault
        'Dim _reseau As String = "N/A"
        'Dim _inst = db.Tbl_Institution.Where(Function(s) s.ID_Institution = _eval.ID_Institution).FirstOrDefault
        'Try
        '    Dim _re = db.Tbl_ReseauInstitution.Where(Function(s) s.ID_ReseauInstitution = _inst.ID_Reseau).FirstOrDefault
        '    If _re.Reseau <> "" Then
        '        _reseau = _re.Reseau
        '        Dim res As Label = DirectCast(e.Container.FindControl("Reseau"), Label)
        '        res.Text = _reseau
        '    End If
        'Catch ex As Exception

        'End Try
        'Dim _departement As String = "N/A"
        'Try

        '    Dim _dept = db.tbl_RefUniteGeo.Where(Function(s) s.Id_UniteGeo = _inst.ID_UniteGeographique).FirstOrDefault
        '    If _dept.DescriptionUnite <> "" Then
        '        _departement = _dept.DescriptionUnite
        '    End If
        'Catch ex As Exception

        'End Try
        'Dim inst As Label = DirectCast(e.Container.FindControl("Institution"), Label)
        'inst.Text = _inst.NomInstitution

        'Dim Departement As Label = DirectCast(e.Container.FindControl("Departement"), Label)
        'Departement.Text = _departement
        'Dim pan As Panel = DirectCast(e.Container.FindControl("Panel1"), Panel)
        If _eval.ID_Statut = 1 Then
            e.Appointment.BackColor = Drawing.Color.Cyan

        ElseIf _eval.ID_Statut = 2 Then
            e.Appointment.BackColor = Drawing.Color.YellowGreen
        ElseIf _eval.ID_Statut = 3 Then
            e.Appointment.BackColor = Drawing.Color.Red
      

        End If

        'Dim recurrenceIcon As Label = DirectCast(e.Container.FindControl("RecurrenceIcon"), Label)
        'If e.Appointment.RecurrenceState <> RecurrenceState.NotRecurring Then
        '    If e.Appointment.RecurrenceState = RecurrenceState.Exception Then
        '        recurrenceIcon.CssClass = "rsAptRecurrenceException"

        '    End If

        'End If

        'Dim teacher As Resource = e.Appointment.Resources.GetResourceByType("Teacher")
        'If teacher IsNot Nothing Then
        '    e.Appointment.ToolTip = String.Format("You can reach {0} at {1}.", teacher.Text, teacher.Attributes("Phone"))

        '    Dim teacherLabel As Label = DirectCast(e.Container.FindControl("Teacher"), Label)
        '    teacherLabel.Text = "Teacher: " + teacher.Text
        'End If

        'Dim students As Label = DirectCast(e.Container.FindControl("Students"), Label)
        'Dim studentsCount As Integer = 0
        'For Each student As Resource In e.Appointment.Resources.GetResourcesByType("Student")
        '    studentsCount += 1
        'Next
        'students.Text = studentsCount.ToString() + " student(s)"
    End Sub



    Protected Sub rdLegende_ItemDataBound(sender As Object, e As RadListViewItemEventArgs)
        If TypeOf e.Item Is RadListViewDataItem Then
            Dim item = DirectCast(e.Item, RadListViewDataItem)

            Dim _lb As Label = DirectCast(e.Item.FindControl("RadIconTile1"), Label)
            Dim _obj As Object = CType(DataBinder.GetDataItem(e.Item), Object)
            If _obj.ID_Statut = 1 Then
                _lb.BackColor = Drawing.Color.Cyan
            ElseIf _obj.ID_Statut = 2 Then
                _lb.BackColor = Drawing.Color.YellowGreen
            ElseIf _obj.ID_Statut = 3 Then
                _lb.BackColor = Drawing.Color.Red
          
            End If
        End If
    End Sub
    Protected Sub CompletedStatusCheckBox_CheckedChanged(sender As Object, e As EventArgs)
        Dim CompletedStatusCheckBox As CheckBox = DirectCast(sender, CheckBox)
        'Find the appointment object to directly interact with it
        Dim appContainer As SchedulerAppointmentContainer = DirectCast(CompletedStatusCheckBox.Parent, SchedulerAppointmentContainer)
        Dim appointment As Appointment = appContainer.Appointment
        Dim appointmentToUpdate As Appointment = RadScheduler1.PrepareToEdit(appointment, RadScheduler1.EditingRecurringSeries)
        appointmentToUpdate.Attributes("Completed") = CompletedStatusCheckBox.Checked.ToString()
        RadScheduler1.UpdateAppointment(appointmentToUpdate)
        RadScheduler1.Rebind()
    End Sub

    Protected Sub RadScheduler1_Load(sender As Object, e As EventArgs)
        BindGridRadScheduler()

    End Sub
    Protected Sub RadScheduler1_AppointmentDataBound(sender As Object, e As SchedulerEventArgs)
        If e.Appointment.Attributes("Completed") = "True" Then
            e.Appointment.BackColor = System.Drawing.Color.Red
        End If
    End Sub

    Protected Sub RadScheduler1_AppointmentUpdate(sender As Object, e As AppointmentUpdateEventArgs)
        Using db = New SGCT_dbEntities
            Dim _id As Long = e.ModifiedAppointment.ID
            Dim _eval As New Tbl_Event
            _eval = db.Tbl_Event.Where(Function(s) s.ID_Evaluation = _id).FirstOrDefault
            ''_eval.ID_Evaluation = e.ModifiedAppointment.ID
            _eval.Sujet = e.ModifiedAppointment.Subject
            _eval.DateDebut = e.ModifiedAppointment.Start
            _eval.DateFin = e.ModifiedAppointment.End
            _eval.Commentaires = e.ModifiedAppointment.Description
            _eval.RecurrenceRule = e.ModifiedAppointment.RecurrenceRule
            db.SaveChanges()
            BindGridRadScheduler(True)
        End Using
    End Sub
    Protected Sub RadScheduler1_AppointmentDelete(sender As Object, e As AppointmentDeleteEventArgs)
        DeleteConfirmed(e.Appointment.ID)
        BindGridRadScheduler(True)
    End Sub

    Private Sub BindGridRadScheduler(Optional ByVal _refresh As Boolean = True)
        'Dim objs As List(Of Cls_Page)
        Dim _ret As Long = 0
        'Dim user As New User(CLng(txtUser_Hid.Text))
        'Dim statut As New SessionStatutEvaluation
        'Dim _statut As New Tbl_RefStatutEvaluation
        '_statut = statut.RechercherIDExecuter
              Using db As New SGCT_dbEntities
            Try


                Dim periode = From period In db.Tbl_Event
                          Select period

                Dim _list = periode.ToList
                Dim _listAp As New List(Of Appointment)
                For Each _eval As Tbl_Event In _list
                    Dim _a As New Appointment
                    'Dim _dat As Date = 
                    _a.Start = _eval.DateDebut
                    _a.End = _eval.DateFin
                    _a.ID = _eval.ID_Evaluation
                    _a.Description = _eval.Commentaires
                    _a.Subject = _eval.Sujet
                    '  _a.RecurrenceRule = _inst.NomInstitution
                    _listAp.Add(_a)

                Next
                RadScheduler1.DataKeyField = "ID"
                RadScheduler1.DataSubjectField = "Subject"
                RadScheduler1.DataDescriptionField = "Description"
                RadScheduler1.DataStartField = "Start"
                RadScheduler1.DataEndField = "End"
                RadScheduler1.SelectedDate = DateTime.Now
                RadScheduler1.DataSource = _listAp
                RadScheduler1.DataBind()




            Catch ex As Exception
            End Try


            rdLegende.DataSource = db.Tbl_Statut_Evenement.ToList()
            rdLegende.DataBind()


        End Using

    End Sub
End Class
