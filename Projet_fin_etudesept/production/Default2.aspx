<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

       <form runat="server">

    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        <AjaxSettings>
                      <telerik:AjaxSetting AjaxControlID="RadAjaxManager1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadScheduler1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>


    <script type="text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Voulez-vous vraiment annuler ?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
      </script>
        <div class="right_col" role="main">
          <div class="">
          <div class="crumbs">
					<ol class="breadcrumb">
  <li><i class="fa fa-home"></i>
   <a href="../Demosss/Default4.aspx">Home</a></li>
  <li class="active">Liste des monuments</li>
</ol>
				</div> 
             
              <div class="page-title">
              <div class="title_left">
                 <div class="col-md-12" style="font-size: 20px;">
        Liste  des monuments
			      </div>
              </div>

            </div>
            <div class="clearfix"></div>
	

           
<div class="container">
      
      

         <a href="HtmlPage3.html" target="_blank">Voir map</a>
        

                     <div class="col-sm-12">
                         <asp:ScriptManager runat="server"></asp:ScriptManager>
                                                     <telerik:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanel1">
                                                </telerik:RadAjaxLoadingPanel>
                                              

                                              <telerik:RadScheduler runat="server" ID="RadScheduler1" CustomAttributeNames="Completed" Skin="Office2010Blue"
                                                    FirstDayOfWeek="Monday" LastDayOfWeek="Friday" Reminders-Enabled="true" SelectedView="MonthView"
                                                    AppointmentStyleMode="Default"
                       
                                                     OnAppointmentDelete="RadScheduler1_AppointmentDelete" OverflowBehavior="Auto" Height="700"
                                                   OnAppointmentCreated="RadScheduler1_AppointmentCreated" Culture="fr-FR" OnAppointmentUpdate="RadScheduler1_AppointmentUpdate">
<ExportSettings>
<Pdf PageTopMargin="1in" PageBottomMargin="1in" PageLeftMargin="1in" PageRightMargin="1in"></Pdf>
</ExportSettings>

                                                    <AdvancedForm Modal="true"></AdvancedForm>
                                                    <Localization AllDay="Toute la journée" HeaderDay="Jour" HeaderMonth="Mois" HeaderTimeline="Chronologie" HeaderToday="Aujourd'hui" HeaderWeek="Semaine" Show24Hours="Voir les 24 heures..." ShowBusinessHours="Afficher les heures d'ouverture......" />

                                                  <TimelineView ReadOnly="True" />
                                                  <WeekView ReadOnly="True" />
                                                  <DayView ReadOnly="True" />
                                                  <MultiDayView ReadOnly="True" />
                                                  <MonthView ReadOnly="True" />

<Reminders Enabled="True"></Reminders>
                                                    <AppointmentTemplate>
                                                            <div class="appointmentHeader">
                                                            <asp:Panel ID="RecurrencePanel" CssClass="rsAptRecurrence" runat="server" Visible="false">
                                                            </asp:Panel>
                                                            <asp:Panel ID="RecurrenceExceptionPanel" CssClass="rsAptRecurrenceException" runat="server"
                                                                Visible="false">
                                                            </asp:Panel>
                                                            <asp:Panel ID="ReminderPanel" CssClass="rsAptReminder" runat="server" Visible="false">
                                                            </asp:Panel>
                                                         
                                                             <div class="rsAptSubject" style="border-bottom:1px solid #808080;">
                                                                 
                                                                      <h5> <strong><%# Eval("Subject") %></strong></h5>
                                                                </div>
                                                            <br />
                                                                <%# Eval("Description") %>
                                                        </div>
                                                        <div>
                                                            <strong>
                                                                <hr />
                                                            <asp:Label runat="server" ID="Institution"></asp:Label>
                                                                <br />
                                                                <asp:Label runat="server" ID="Reseau"></asp:Label>
                                                                <br />
                                                             <asp:Label runat="server" ID="Departement"></asp:Label>
                                                           <%--Assigned to: <strong>
                                                                <asp:Label ID="UserLabel" runat="server" Text='<%# If (Container.Appointment.Resources.GetResourceByType("User") is Nothing, "None" , Container.Appointment.Resources.GetResourceByType("User").Text) %>'></asp:Label>
                                                            </strong>--%>
                                                             </strong>
                                                            <br />
                                                           <%-- <asp:CheckBox ID="CompletedStatusCheckBox" runat="server" Text="Completed? " TextAlign="Left"
                                                                Checked='<%#  If (String.IsNullOrEmpty(Container.Appointment.Attributes("Completed")), False, Boolean.Parse(Container.Appointment.Attributes("Completed"))) %>'
                                                                AutoPostBack="true" OnCheckedChanged="CompletedStatusCheckBox_CheckedChanged"></asp:CheckBox>--%>
                                                        </div>
                                                       </AppointmentTemplate>
                                                     <ResourceStyles>
                                                        <telerik:ResourceStyleMapping Type="User" Key="1" BackColor="YellowGreen"></telerik:ResourceStyleMapping>
                                                        <telerik:ResourceStyleMapping Type="User" Key="2" BackColor="Pink"></telerik:ResourceStyleMapping>
                                                        <telerik:ResourceStyleMapping Type="User" Key="3" BackColor="Azure"></telerik:ResourceStyleMapping>
                                                    </ResourceStyles>
                                                </telerik:RadScheduler>
                                                            </div>

    </div>

              

              




           
    
          </div>
        </div>
           </form>
</asp:Content>

