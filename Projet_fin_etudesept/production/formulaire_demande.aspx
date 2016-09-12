<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="formulaire_demande.aspx.vb" Inherits="production_formulaire_demande" %>

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
  <li class="active">Formulaire de demande</li>
</ol>
				</div> 
              <div class="page-title">
              <div class="title_left">
                 <div class="col-md-12" style="font-size: 20px;">
     Formulaire de demande d'abattage
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
                  
        
             <div class="row">

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
          
                  <div class="x_content">
                   

                      
                      <div class="col-md-12 col-sm-12 col-xs-12 form-group" style="width:500px; float:left;">
        <fieldset>
               <span  style="font-size:medium " class="section">Motif de l'abbatage de l'arbre</span>
          
            <div>
        <asp:CheckBoxList ID="chklstStates" runat="server" CellPadding="100" CellSpacing="100">
            </asp:CheckBoxList>
            </div>
         
        </fieldset>
        </div>
                  
                  </div>






                  
                </div>
              </div>
            </div>   
          </form>
          </div>
        </div>
</asp:Content>

