<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Liste_Produit.aspx.vb" Inherits="production_Liste_Produit" %>

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
  <li class="active">Liste de tous les produits</li>
</ol>
				</div> 
              <div class="page-title">
              <div class="title_left">
                 <div class="col-md-12" style="font-size: 20px;">
        Liste  de tous les produits
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
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Nouveau produit</button>
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
                          <th>Nom produit</th>
                         
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
                       <td><%#Eval("nom_produit")%></td>
                     <td><%#Eval("DateCreated")%></td>
                            
                     <%--<td><%#Eval("Nom_forme")%></td>--%> 
                    
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

                    <%--modall data  Alexandre --%>

                    
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
                          <h4 class="modal-title" id="myModalLabel2">Ajouter un nouveau produit</h4>
                        </div>
                        <div class="modal-body">
                        <div class="form-group">
                            
              <label for="recipient-name" class="form-control-label">produit </label>
             <asp:TextBox runat="server" id="txt_fonction" class="form-control col-md-7 col-xs-12" name="recipient-name" placeholder="entrez le nom du produit" required="required" type="text"></asp:TextBox>
        
             <asp:TextBox runat="server" id="TextBox1" class="form-control col-md-7 col-xs-12" name="recipient-name" placeholder="entrez information supplementaires "  type="text"></asp:TextBox>




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
          </form>
          </div>
        </div>




</asp:Content>

