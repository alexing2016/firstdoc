<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Liste_inspection.aspx.vb" Inherits="production_Liste_inspection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

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
  <li class="active">Liste de toutes les inspections</li>
</ol>
				</div> 
              <div class="page-title">
              <div class="title_left">
                 <div class="col-md-12" style="font-size: 20px;">
        Liste  de toutes les  inspections
			      </div>
              </div>

            <%--  <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                              <button class="btn btn-default" type="button">Go!</button>
                          </span>
                  </div>
                </div>
              </div>--%>
            </div>
            <div class="clearfix"></div>
	
              <form runat="server">
                  <div class="row alignright"  style="margin-right: 15px;">
      <asp:button runat="server"   class="btn btn-primary" ID="btn_new"  Text="Nouvelle inspection"></asp:button>
                      </div>
        

        



             <div class="row">

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    
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
                  </div>
                  <div class="x_content">
                   

                      

                      <asp:ListView ID="rlv_part" runat="server" ItemPlaceholderID="ListViewContainer">
            <LayoutTemplate>
            <table id="datatable" class="table table-striped table-bordered">
                   
                                    <thead>
                        <tr>
                     
                         
                         <th>Nom Entreprise</th>
                       <th>Nom Produit</th>
                           <th>Nom de l'inspecteur</th>
                              <th>Date</th>
                              
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


                    <%--  <td><%#Eval("Nom_entreprise")%></td>
                            
                     <td><%#Eval("Nom_forme")%></td> --%>
                          <td><%#Eval("Nom_entreprise")%></td>
                            
                     <td><%#Eval("nom_produit")%></td> 
                       <td><%#Eval("INSPECTIO_BY")%></td>
                     <td><%#Eval("DATEINSPECTION_CREATED")%></td>    
                
                    <%--<td class="btn btn-success btn-xs"><%#Eval("Statut")%></td>--%>   
                      <%-- <td><button type="button"  class="fa fa-edit" data-toggle="modal" data-target=".bs-example-modal-sm"></button></td>
                        <td><asp:LinkButton Visible="true" ID="lk_delete_piege" OnClientClick="Confirm()" CommandName= "Delete" CausesValidation="false" runat="server" ToolTip="Delete" class=" glyphicon glyphicon-remove "></asp:LinkButton></td>--%>
                   <%-- <asp:TextBox Visible="false" runat="server" ID="TextBox2" Text='<%#Eval("ID_entreprise")%>'></asp:TextBox>--%>
                       <%--  <td><a href="../Demosss/Details_etudiant.aspx?ID=<%#Eval("ID_Fonction")%>"><i class="fa fa-search"></i></a></td>
                      
                   <td><asp:LinkButton Visible="true" ID="lk_delete_piege" OnClientClick="Confirm()" CommandName= "Delete" CausesValidation="false" runat="server" ToolTip="Delete" class=" glyphicon glyphicon-remove "></asp:LinkButton></td>  
                  <asp:TextBox Visible="false" runat="server" ID="TextBox2" Text='<%#Eval("ID_Fonction")%>'></asp:TextBox>--%>
                        </tr>
               </ItemTemplate>      
                </asp:ListView>
                  </div>






                    
                </div>
              </div>
            </div>   
          </form>
          </div>
        </div>



</asp:Content>

