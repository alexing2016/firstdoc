Imports Telerik.Web.UI

Partial Class Default2
    Inherits System.Web.UI.Page

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
        'Dim _id As Long = CLng(e.Appointment.ID)
        'Dim _eval = db.Tbl_Evaluation.Where(Function(s) s.ID_Evaluation = _id).FirstOrDefault
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
        'If _eval.ID_Statut = 1 Then
        '    e.Appointment.BackColor = Drawing.Color.GreenYellow

        'ElseIf _eval.ID_Statut = 2 Then
        '    e.Appointment.BackColor = Drawing.Color.AliceBlue
        'ElseIf _eval.ID_Statut = 3 Then
        '    e.Appointment.BackColor = Drawing.Color.YellowGreen
        'ElseIf _eval.ID_Statut = 4 Then
        '    e.Appointment.BackColor = Drawing.Color.Red

        'End If

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
            e.Appointment.BackColor = System.Drawing.Color.CornflowerBlue
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
        End Using

        

    End Sub



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        BindGridRadScheduler()
    End Sub
End Class
