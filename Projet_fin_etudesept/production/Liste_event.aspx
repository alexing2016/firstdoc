<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Liste_event.aspx.vb" Inherits="production_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

           <form runat="server">





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
  <li class="active">Liste des évements</li>
</ol>
				</div> 
             
              <div class="page-title">
              <div class="title_left">
                 <div class="col-md-12" style="font-size: 20px;">
        Liste  des évenements
			      </div>
              </div>

            </div>
            <div class="clearfix"></div>
	



              <div class="container">
      
        <ul class="nav nav-tabs">
           
            <li class="active"><a data-toggle="tab" href="#home">Agenda</a></li>
            <li><a data-toggle="tab" href="#menu1">Liste</a></li>
        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
             <div class="container">
      
      
                        

                   

        <%-- <a href="HtmlPage3.html" target="_blank">Voir map</a>--%>
        

                     <div class="col-sm-12">
                         <asp:ScriptManager runat="server"></asp:ScriptManager>
                                                     <telerik:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanel1">
                                                </telerik:RadAjaxLoadingPanel>
                         <br />
                                              <telerik:RadListView ID="rdLegende" runat="server" ItemPlaceholderID="ProjetContainer" OnItemDataBound="rdLegende_ItemDataBound" DataKeyNames="ID_Statut">
                                            <LayoutTemplate>
                                                <fieldset class="layoutFieldset">
                                                    <asp:PlaceHolder ID="ProjetContainer" runat="server"></asp:PlaceHolder>
                                                </fieldset>
                                            </LayoutTemplate>
                                            <ItemTemplate>
                                                <fieldset class="itemFieldset" style="width:100% ! important">
                                                          <div class="col-sm-12" align="left">
                                                              <asp:Label ID="RadIconTile1" runat="server" Text="" Width="12" Height="12" BorderStyle="Solid" BorderWidth="1"></asp:Label>
                                                                                <%#Eval("Statut")%>
                                                            </div>
                                                        
                                                </fieldset>
                                            </ItemTemplate>
                                        </telerik:RadListView>

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
            <div id="menu1" class="tab-pane fade in active">
            <br />
                  <div class="row alignright"  style="margin-right: 15px;">
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Nouveau évenement</button>
                      </div>
        
             <div class="row">

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <%--<div class="x_title">
                    
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>--%>
                  <div class="x_content">
                   

                      

                      <asp:ListView ID="rlv_part" runat="server" ItemPlaceholderID="ListViewContainer">
                          
            <LayoutTemplate>
            <table id="datatable" class="table table-striped table-bordered">
                   
                                    <thead>
                        <tr>
                          <th>Nom monument</th>
                     <th>Nom mairie</th>
                               <th>Sujet</th>
                              <th>Date début</th>
                              <th>Date fin</th>
                          <th>Statut</th>
                            <th>Modifier</th>
                       <th>Annuler</th>
                             <%--<th>Détails</th>
                            <th>Edit</th>
                        <th>Delete</th>--%>

                          <th class="bulk-actions" colspan="7">
                              <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                            </th>
                        </tr>
                      </thead>                   
           <tbody>

                        <asp:PlaceHolder runat="server" ID="ListViewContainer" />
                </tbody>
               
          </table>
            </LayoutTemplate>
            <ItemTemplate>
                 <tr>
                          <td><%#Eval("nom_monument")%></td>
                             <td><%#Eval("nom_mairie")%></td>
                       <td><%#Eval("Sujet")%></td>
                      <td><%#Eval("DateDebut")%></td>
                      <td><%#Eval("DateFin")%></td>
                       <td><%#Eval("Statut")%></td>
                     <td><asp:LinkButton Visible="true" ID="LinkButton1" CommandName="Edit" CausesValidation="false" runat="server" ToolTip="Modifier" class=" glyphicon glyphicon-edit "></asp:LinkButton></td>  
                        <td><asp:LinkButton Visible="true" ID="lk_delete_piege" OnClientClick="Confirm()" CommandName= "Delete" CausesValidation="false" runat="server" ToolTip="Delete" class=" glyphicon glyphicon-remove "></asp:LinkButton></td>
                    <asp:TextBox Visible="false" runat="server" ID="TextBox2" Text='<%#Eval("ID_Evaluation")%>'></asp:TextBox>
                       <%--  <td><a href="../Demosss/Details_etudiant.aspx?ID=<%#Eval("ID_Fonction")%>"><i class="fa fa-search"></i></a></td>
                      
                   <td><asp:LinkButton Visible="true" ID="lk_delete_piege" OnClientClick="Confirm()" CommandName= "Delete" CausesValidation="false" runat="server" ToolTip="Delete" class=" glyphicon glyphicon-remove "></asp:LinkButton></td>  
                  <asp:TextBox Visible="false" runat="server" ID="TextBox2" Text='<%#Eval("ID_Fonction")%>'></asp:TextBox>--%>
                        </tr>
               </ItemTemplate>
                                                     <EditItemTemplate>
                                        <tr>
                                            
                                           
                                            <td><asp:TextBox ID="tb_update_lon_piege" CssClass="form-control" runat="server" Text='<%# Bind("nom_monument")%>'></asp:TextBox></td>
                                             
                                            
                                             <asp:TextBox Visible="false" runat="server" ID="TextBox1" Text='<%#Eval("ID_Evaluation")%>'></asp:TextBox>
                                             <td>
                                                <asp:LinkButton ID="lk_update_piege" CommandName="Update" CausesValidation="false" runat="server" ToolTip="Modifier" class="btn btn-primary btn-xs" style="margin-right:5px;margin-top:10px"><i class=" fa fa-check"></i></asp:LinkButton>
                                                <asp:LinkButton ID="lk_delete_piege" CommandName="Cancel" CausesValidation="false" runat="server" ToolTip="Annuler" class="btn btn-primary btn-xs" style="margin-top:10px"><i class=" fa fa-close"></i></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </EditItemTemplate>
                                        <InsertItemTemplate>
                                         <tr>
                                            <td style="vertical-align:middle"><strong>Ajouter</strong></td>
                                           
                   
                                            <td><asp:TextBox ID="tb_update_lon_piege" CssClass="form-control" runat="server"></asp:TextBox></td>
                                            <td><asp:TextBox ID="tb_update_code_piege" CssClass="form-control" runat="server"></asp:TextBox></td>
                                         
                                            <td>
                                                <asp:LinkButton ID="lk_insert_piege" CommandName="Insert" CausesValidation="false" runat="server" ToolTip="Ajouter" class="btn btn-primary btn-xs" style="margin-right:5px;margin-top:10px"><i class=" fa fa-plus"></i></asp:LinkButton>
                                                <asp:LinkButton ID="lk_delete_piege" CommandName="Cancel" CausesValidation="false" runat="server" ToolTip="Annuler" class="btn btn-primary btn-xs" style="margin-top:10px"><i class=" fa fa-close"></i></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </InsertItemTemplate>        
                </asp:ListView>
                  </div>






                    <div class="x_content">

                  <!-- modals -->
                  <!-- Large modal -->
               <%--   <button type="button"  class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Large modal</button>--%>

                  <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                        </div>
                        <div class="modal-body">
                          <h4>Text in a modal</h4>
                          <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                          <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <button type="button" class="btn btn-primary">Save changes</button>
                        </div>

                      </div>
                    </div>
                  </div>

                  <!-- Small modal -->
               <%--   <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button>--%>

                  <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Ajouter évenement</h4>
                        </div>
                        <div class="modal-body">
                        <div class="form-group">
                            
              <label for="recipient-name" class="form-control-label">Sujet</label>
             <asp:TextBox runat="server" id="txt_fonction" class="form-control col-md-7 col-xs-12" name="recipient-name" placeholder="entrez le sujet" required="required" type="text"></asp:TextBox>
          
                              </div>
                            <hr />
                          <div class="form-group">
     <label for="recipient-name" class="form-control-label">Place/Monument</label>
             <asp:dropdownlist runat="server" ID="rcmb_monument" class="form-control col-md-7 col-xs-12"></asp:dropdownlist>
</div>
                            <hr />
                            <br />
                  <div class="form-group">
                      
                           <label for="recipient-name" class="form-control-label">Date début</label>
           <telerik:RadDatetimePicker ID="RadDatePicker1" runat="server"></telerik:RadDatetimePicker> 
                      </div>
                              <div class="form-group">
                           <label for="recipient-name" class="form-control-label">Date fin</label>
           <telerik:RadDatetimePicker ID="RadDatetimePicker1" runat="server"></telerik:RadDatetimePicker> 
                    
     
</div>         
                            
                            
                            
                             
<%--<div class="form-group">
     <label for="recipient-name" class="form-control-label">Description</label>
             <asp:TextBox runat="server" id="txt_montant" class="form-control col-md-7 col-xs-12" name="recipient-name" placeholder="entrez une description" required="required" type="text"></asp:TextBox>
</div>--%>


                        

                  

                        </div>
                        
                        <div class="modal-footer">
                             
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <asp:Button ID="RadBtn_Save"  runat="server" Text="Save changes"  class="btn btn-primary"/>
         
                           <%-- <button type="button" class="btn btn-primary">Save changes</button>--%>
                        </div>

                      </div>
                    </div>
                  </div>
                  <!-- /modals -->
                </div>
                </div>
              </div>
            </div>   
        
            </div>
           
        </div>
    </div>





           
    
          </div>
        </div>
                 </form>
</asp:Content>

