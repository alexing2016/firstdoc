<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="inspectionproduit.aspx.vb" Inherits="production_inspectionproduit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="right_col" role="main">

          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>
                     Inspection
                  </h3>
              </div>
                </div>
              <div class="clearfix"></div>
                <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">




                    <div class="x_title">

                            <div class="clearfix"></div>
                  </div>

                  <div class="x_content">


                    <form runat="server"  class="form-horizontal form-label-left" novalidate>
                        <span class="section">Informations sur le site</span>
                           <div class="row">
                                <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                            

                                                 <label class="control-label col-md-1 col-sm-3 col-xs-12" for="adresse"> Nom <span class="required">*</span>
                        </label>
                                             
                                          </div> 
                                                 <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                                                      <asp:dropdownlist ID="Dropdownlist1" runat="server" AutoPostBack="true" class="form-control col-md-7 col-xs-12">
                         
                                                   
                                                </asp:dropdownlist>
                                                     </div>
                                               
                                             
                                           
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Dropdownlist1"  ID="RequiredFieldValidator1" InitialValue="0" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                                          

                              <table style="width: 99%; padding-bottom: 0px;">
                                   
                                           <tr>
                                            <td colspan="6">
                                                <hr />
                                            </td>
                                        </tr>


                                         <tr>
                                            <td>
                                               <label class="control-label col-md-1 col-sm-3 col-xs-12" for="adresse">Adresse<span class="required">*</span>
                        </label>
                                            </td>
                                            <td colspan="5">
                                                <asp:TextBox ID="txt_adresse_1" runat="server" Columns="50" Width="">
                                                </asp:TextBox>

                                               
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_adresse_1"  ID="RequiredFieldValidator12"  Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                                         

                                            </td>
                                        </tr>
                                   <tr>
                                            <td>
                                                 <label class="control-label col-md-1 col-sm-3 col-xs-12" for="adresse">   Département<span class="required">*</span>
                        </label>
                                             
                                            </td>

                                            <td>
                                               
                                                      <asp:dropdownlist ID="Dropdownlist4" runat="server" AutoPostBack="true" class="form-control col-md-2 col-xs-12">
                         
                                                   
                                                </asp:dropdownlist>
                                               
                                             
                                            </td>
                                         <td>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Dropdownlist4"  ID="RequiredFieldValidator15" InitialValue="0" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                                           </td>
                                            
                                            <td>
                                                 <label class="control-label col-md-1 col-sm-3 col-xs-12" for="adresse">Commune<span class="required">*</span>
                        </label>
                                             
                                            </td>
                                            <td>
                                              <asp:dropdownlist ID="Dropdownlist5" runat="server"  class="form-control col-md-2 col-xs-12">
                                              
                                                   
                                                </asp:dropdownlist>

                                               <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="cmb_Commune" SetFocusOnError="true" ErrorMessage=" Commune"
                                Text="*" ValidationGroup="GPSave1" Style="color: #FF0000" />--%>
                                            </td>
                                         <td>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Dropdownlist5"  ID="RequiredFieldValidator14" InitialValue="0" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                                           </td>
                                           
                                        </tr>








                                        <tr>
                                            <td colspan="6">
                                                <hr />
                                            </td>
                                        </tr>


                                



                               </table>
                               <div class="item form-group">

                               <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">Details <span class="required">*</span>
                        </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">

                        <asp:TextBox id="comments" class="form-control col-md-7 col-xs-12" runat="server" Wrap="true" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                     
                      </div>
                               <div class="col-md-12 col-sm-12 col-xs-12 form-group">
        
               <span class="section">Informations sur le produit</span>
          

                               <table style="width: 99%; padding-bottom: 0px;">


                                               <tr>

                                                    <td>
                                                 <label class="control-label col-md-1 col-sm-3 col-xs-12" for="adresse"> Nom du produit<span class="required">*</span>
                        </label>
                                             
                                            </td>

                                            <td>
                                               
                                                      <asp:dropdownlist ID="Dropdownlistprod" runat="server" AutoPostBack="true" class="form-control col-md-2 col-xs-12">
                         
                                                   
                                                </asp:dropdownlist>
                                               
                                             
                                            </td>
                                         <td>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Dropdownlistprod"  ID="RequiredFieldValidator2" InitialValue="0" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                                           </td>




           <%--                                 <td>
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="adresse">Nom  du produit<span class="required">*</span>
                        </label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_nom_entreprise"  runat="server" style="text-transform:uppercase;">
                                                </asp:TextBox>

                                                  <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_nom_entreprise"  ID="RequiredFieldValidator4" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>




                                                
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_nom_entreprise" ValidationExpression="^[A-Za-z][a-zA-Z-0-9'.\s]{1,100}$" 
                            ErrorMessage="Le nom ne peut contenir de caractères spéciaux ni commencer par un chiffre" Text="*" ValidationGroup="GPSave1"></asp:RegularExpressionValidator>
                                                </td>--%>


                                          
<td>
                               <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">Details <span class="required">*</span>
                        </label>
                                </td>
<td>
                        <asp:TextBox id="TextBox1" class="form-control col-md-7 col-xs-12" runat="server" Wrap="true" TextMode="MultiLine"></asp:TextBox>
                          </td>          
                     




</tr>
                                   <tr>
                                            <td colspan="6">
                                                <hr />
                                            </td>
                                        </tr>

                                   </table>
                                   </div>


       <div class="row alignright" style="margin-right: 15px;">
        <asp:Button ID="RadBtn_Save" runat="server" Text="Sauvegarder" ValidationGroup="cours" CausesValidation="true"
            class="btn btn-success" />

        <asp:Button ID="RadBtn_Cancel" runat="server" Text="Annuler" CausesValidation="false"
            class="btn btn-primary" />
    </div>







</div>
            </form>
           </div>
           </div>     
           </div>      
                </div>
              </div>
        </div>



</asp:Content>

