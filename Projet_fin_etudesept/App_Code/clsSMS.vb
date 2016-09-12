
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Data
Imports System.Drawing
Imports System.Text
Imports System.IO.Ports
Imports System.Threading

Imports System.Text.RegularExpressions

Namespace SMSapplication
    Public Class clsSMS
        Dim receiveNow As AutoResetEvent = New AutoResetEvent(False)
#Region "Open and Close Ports"
        'Open Port
        Public Function OpenPort() As SerialPort

            Dim port As New SerialPort()

            Try
                port.PortName = "COM6"
                'COM1
                port.BaudRate = 9600
                '9600
                port.DataBits = 8
                '8
                port.StopBits = StopBits.One
                '1
                port.Parity = Parity.None
                'None
                port.ReadTimeout = 300
                '300
                port.WriteTimeout = 300
                '300
                port.Encoding = Encoding.GetEncoding("iso-8859-1")

                port.Open()
                port.DtrEnable = True
                port.RtsEnable = True
            Catch ex As Exception
                Throw ex
            End Try
            Return port
        End Function

        'Close Port
        Public Sub ClosePort(port As SerialPort)
            Try
                port.Close()
                '  port.DataReceived -= New SerialDataReceivedEventHandler(AddressOf port_DataReceived)
                port = Nothing
            Catch ex As Exception
                Throw ex
            End Try
        End Sub

#End Region

        'Execute AT Command
        Public Function ExecCommand(port As SerialPort, command As String, responseTimeout As Integer, errorMessage As String) As String
            Try

                port.DiscardOutBuffer()
                port.DiscardInBuffer()
                receiveNow.Reset()
                port.Write(command & Convert.ToString(vbCr))

                Dim input As String = ReadResponse(port, responseTimeout)
                If (input.Length = 0) OrElse ((Not input.EndsWith(vbCr & vbLf & "> ")) AndAlso (Not input.EndsWith(vbCr & vbLf & "OK" & vbCr & vbLf))) Then
                    Throw New ApplicationException("No success message was received.")
                End If
                Return input
            Catch ex As Exception
                Throw ex
            End Try
        End Function

        'Receive data from port
        Public Sub port_DataReceived(sender As Object, e As SerialDataReceivedEventArgs)
            Try
                If e.EventType = SerialData.Chars Then
                    receiveNow.[Set]()
                End If
            Catch ex As Exception
                Throw ex
            End Try
        End Sub
        Public Function ReadResponse(port As SerialPort, timeout As Integer) As String
            Dim buffer As String = String.Empty
            Try
                Do
                    If receiveNow.WaitOne(timeout, False) Then
                        Dim t As String = port.ReadExisting()
                        buffer += t
                    Else
                        If buffer.Length > 0 Then
                            Throw New ApplicationException("Response received is incomplete.")
                        Else
                            Throw New ApplicationException("No data received from phone.")
                        End If
                    End If
                Loop While Not buffer.EndsWith(vbCr & vbLf & "OK" & vbCr & vbLf) AndAlso Not buffer.EndsWith(vbCr & vbLf & "> ") AndAlso Not buffer.EndsWith(vbCr & vbLf & "ERROR" & vbCr & vbLf)
            Catch ex As Exception
                Throw ex
            End Try
            Return buffer
        End Function

#Region "Count SMS"
        Public Function CountSMSmessages(port As SerialPort) As Integer
            Dim CountTotalMessages As Integer = 0
            Try

                '#Region "Execute Command"

                Dim recievedData As String = ExecCommand(port, "AT", 300, "No phone connected at ")
                recievedData = ExecCommand(port, "AT+CMGF=1", 300, "Failed to set message format.")
                Dim command As [String] = "AT+CPMS?"
                recievedData = ExecCommand(port, command, 1000, "Failed to count SMS message")
                Dim uReceivedDataLength As Integer = recievedData.Length

                '#End Region

                '#Region "If command is executed successfully"
                If (recievedData.Length >= 45) AndAlso (recievedData.StartsWith("AT+CPMS?")) Then

                    '#Region "Parsing SMS"
                    Dim strSplit As String() = recievedData.Split(","c)
                    Dim strMessageStorageArea1 As String = strSplit(0)
                    'SM
                    Dim strMessageExist1 As String = strSplit(1)
                    'Msgs exist in SM
                    '#End Region
                    '#Region "Count Total Number of SMS In SIM"
                    '#End Region

                    CountTotalMessages = Convert.ToInt32(strMessageExist1)
                    '#End Region

                    '#Region "If command is not executed successfully"
                ElseIf recievedData.Contains("ERROR") Then

                    '#Region "Error in Counting total number of SMS"
                    Dim recievedError As String = recievedData
                    recievedError = recievedError.Trim()
                    '#End Region

                    recievedData = Convert.ToString("Following error occured while counting the message") & recievedError
                End If
                '#End Region


                Return CountTotalMessages
            Catch ex As Exception
                Throw ex
            End Try

        End Function
#End Region



#Region "Send SMS"

        Shared readNow As New AutoResetEvent(False)

        Public Function sendMsg(PhoneNo As String, Message As String) As Boolean
            Dim isSend As Boolean = False
            Dim port As New SerialPort
            port = OpenPort()
            PhoneNo = "36585529"
            Message = "Bon travail luchard"

            Try

                Dim recievedData As String = ExecCommand(port, "AT", 300, "No phone connected")
                recievedData = ExecCommand(port, "AT+CMGF=1", 300, "Failed to set message format.")
                Dim command As [String] = (Convert.ToString("AT+CMGS=""") & PhoneNo) + """"
                recievedData = ExecCommand(port, command, 300, "Failed to accept phoneNo")
                command = (Message & Char.ConvertFromUtf32(26)) + vbCr
                recievedData = ExecCommand(port, command, 3000, "Failed to send message")
                '3 seconds
                If recievedData.EndsWith(vbCr & vbLf & "OK" & vbCr & vbLf) Then
                    isSend = True
                ElseIf recievedData.Contains("ERROR") Then
                    isSend = False
                End If
                Return isSend
            Catch ex As Exception
                Throw ex
            End Try

        End Function
        Private Shared Sub DataReceived(sender As Object, e As SerialDataReceivedEventArgs)
            Try
                If e.EventType = SerialData.Chars Then
                    readNow.[Set]()
                End If
            Catch ex As Exception
                Throw ex
            End Try
        End Sub

#End Region

#Region "Delete SMS"
        Public Function DeleteMsg(port As SerialPort, p_strCommand As String) As Boolean
            Dim isDeleted As Boolean = False
            Try

                '#Region "Execute Command"
                Dim recievedData As String = ExecCommand(port, "AT", 300, "No phone connected")
                recievedData = ExecCommand(port, "AT+CMGF=1", 300, "Failed to set message format.")
                Dim command As [String] = p_strCommand
                recievedData = ExecCommand(port, command, 300, "Failed to delete message")
                '#End Region

                If recievedData.EndsWith(vbCr & vbLf & "OK" & vbCr & vbLf) Then
                    isDeleted = True
                End If
                If recievedData.Contains("ERROR") Then
                    isDeleted = False
                End If
                Return isDeleted
            Catch ex As Exception
                Throw ex
            End Try

        End Function
#End Region







    End Class
End Namespace

'=======================================================
'Service provided by Telerik (www.telerik.com)
'Conversion powered by NRefactory.
'Twitter: @telerik
'Facebook: facebook.com/telerik
'=======================================================
