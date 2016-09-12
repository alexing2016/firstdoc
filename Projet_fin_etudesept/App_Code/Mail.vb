Imports Microsoft.VisualBasic
Imports System.Net.Mail
Imports System.Net
Imports System.Web.Services
Imports System.Web.Script.Serialization
Public Class Mail
   






    Sub MailSendInfo(_to As String)
        Dim _from As String = "healthqual0@gmail.com"
        Dim _sujet As String = "Information"
        '  Dim _lienConfirmen As String = "Cliquer sur ce lien  www.healthqual.com/cotch pour Confirmer"
        '  Dim _annule As String = "ce lien www.healthqual.com/cotch/Annuler pour Annule "
        ' Dim _body As String = _lienConfirmen & "  ou" & _annule
        Dim _pass As String = "healthqual@"
        Dim [to] As String = _to
        Dim from As String = _from
        Dim subject As String = _sujet
        '  Dim body As String = _body
        Using mm As New MailMessage(_from, _to)
            mm.Subject = _sujet
            Dim _template As String = "<span style='line-height:20px; font-family:Times New Roman, Times, serif;font-size:14px;'>" 'TextReader.ReadToEnd

            _template &= "<table dir='ltr' style='width:100%;border:1px solid #4D7496;border-collapse:collapse;font-size:11pt;color:#000000'><tbody><tr><td style='padding:10px;background-color:#4D7496;color:#fff'><strong>HealthQual</strong></td></tr>"
            _template &= "<tr><td style='padding:10px 20px 0 20px'><h1 style='margin:0;font-size:16pt;color:#000000'>Planification de formation</h1></td></tr>"
            '' _template &= "<b>Référence&nbsp;&nbsp;:Dossier d’adoption No. :  " & Dossier & "</b><br />"
            _template &= "<tr><td style='padding:10px 20px;font-size:9pt'><p>"
            _template &= "<b>Cher(ère) Formateur(trice)</b><br />"
            _template &= "<br/><p>L'équipe <b>HealthQual</b> vous informe de la planification d'une formation.<br>"
            '   _template &= "<b>Institution <span style='margin-left:1px;'>:</span><span style='color:#4D7496;'> " & _institution & "</span><br />"
            '   _template &= "Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style='margin-left:5px;'>:</span><span style='color:#4D7496;'> " & _date & "</span><br />"
            ' _template &= "Lieu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style='margin-left:6px;'>:</span><span style='color:#4D7496;'> " & _lieu & "</span><br />"
            ' _template &= "Sujet &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style='margin-left:2px;'>:</span><span style='color:#4D7496;'> " & sujet & "</span> <br /><br /></p>"

            '  _template &= "<p>Pour confirmer votre participation à cette formation<br>merci de cliquer  <a href='http://64.34.170.167/HEALTHQUAL/PL/Evaluer/ConfirmerStatutMail.aspx?IdC=" & _idC & "&IE=" & _idE & "'>ici</a><br>Pour rejeter l'invitation cliquer <a href='http://192.168.1.38/HEALTHQUAL/PL/Evaluer/ConfirmerRejeterMail.aspx?IdC=" & _idC & "&IE=" & _idE & "'>ici</a><br /><br /></p>"
            _template &= "<span style='color:#4D7496;'>===================================================================================================== <br />"
            _template &= "-----------------------------------------------------------------------------------------------------</span><br /> "
            _template &= "<p>L'équipe HealthQual<br />"
            _template &= "</p></td></tr></tbody></table>"
            mm.Body = _template
            ''   Dim a As String = mail.GroupingText
            'If fuAttachment.HasFile Then
            '    Dim FileName As String = Path.GetFileName(fuAttachment.PostedFile.FileName)
            '    mm.Attachments.Add(New Attachment(fuAttachment.PostedFile.InputStream, FileName))
            'End If
            mm.IsBodyHtml = True
            Dim smtp As New SmtpClient()
            smtp.Host = "smtp.gmail.com"
            smtp.EnableSsl = True
            Dim NetworkCred As New NetworkCredential(_from, _pass)
            smtp.UseDefaultCredentials = True
            smtp.Credentials = NetworkCred
            smtp.Port = 25
            ''     ServicePointManager.ServerCertificateValidationCallback = Function(s As Object, certificate As X509Certificate, chain As X509Chain, sslPolicyErrors As SslPolicyErrors) True
            Try
                smtp.Send(mm)
            Catch ex As Exception
                '  ClientScriptManager.RegisterStartupScript(Me.GetType, "alert", "alert('Echec dénvoi.'" & _to & ");", True)
            End Try

            '' ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Email sent.');", True)
        End Using
    End Sub
End Class
