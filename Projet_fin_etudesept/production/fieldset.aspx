<%@ Page Language="VB" AutoEventWireup="false" CodeFile="fieldset.aspx.vb" Inherits="production_fieldset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  <fieldset>
      <legend>Informations personnelles</legend>
  
                           
                        <div class="row">
                               <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="prénom">Prénom<span class="required">*</span>
                        </label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                 <asp:TextBox runat="server" id="prénom" class="form-control col-md-7 col-xs-12" name="prénom" placeholder="entrez votre prénom" required="required" type="text"></asp:TextBox>
                           
                              <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>   
                  </div>

                            <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="prénom"  ID="RequiredFieldValidator6" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>

                  <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nom<span class="required">*</span>
                        </label>
                       </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                  <asp:TextBox runat="server" id="name" class="form-control col-md-7 col-xs-12" name="name" placeholder="entrez votre nom" required="required" type="text"></asp:TextBox> 
                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                  </div>
                            <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="name"  ID="RequiredFieldValidator5" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>


                             <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email<span class="required">*</span>
                        </label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                     <asp:TextBox runat="server" type="email" id="email" name="email" required="required" placeholder="exemple@yahoo.fr" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                  </div>

                               <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="email"  ID="RequiredFieldValidator7" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>

                 
                             <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Sexe<span class="required">*</span></label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                     <asp:DropDownList ID="rcmb_sexe" runat="server" class="form-control col-md-7 col-xs-12">
                                                    <Items>
                                                        <asp:listitem runat="server" Text="Masculin" Value="M" />
                                                        <asp:listitem runat="server" Text="Féminin" Value="F" />
                                                    </Items>
                                                </asp:DropDownList>
                  </div>
                               <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="email"  ID="RequiredFieldValidator8" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>

                   
                     

 <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-3">Téléphone<span class="required">*</span></label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                     <asp:TextBox ID="telephone" runat="server" type="text" class="form-control" data-inputmask="'mask' : '(999) 9999-9999'" placeholder="entrez votre numéro" required="required"></asp:TextBox>
                          
                          <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                  </div>


   <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="telephone"  ID="RequiredFieldValidator9" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>


                    <%--         <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="adresse">Adresse<span class="required">*</span>
                        </label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                    <asp:TextBox runat="server" id="adresse" class="form-control col-md-7 col-xs-12" name="adresse" placeholder="entrez votre adresse" required="required" type="text"></asp:TextBox>
                            <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                  </div>


                            <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="adresse"  ID="RequiredFieldValidator2" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>
                   --%>
                      
                      

                   

  

                

                          

                  





                           
                            

                              <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="taux">CIN<span class="required">*</span>
                        </label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                       <asp:TextBox ID="txt_cin" runat="server" type="text" class="form-control" data-inputmask="'mask' : '**-**-**-****-**-*****'" placeholder="entrez votre CIN" required="required"></asp:TextBox>
                    
                          
                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>    
                       
                  </div> 


                              <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_cin" ID="txtt_taux" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>

                             <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="description">NIF<span class="required">*</span>
                        </label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                    <input type="text" class="form-control" runat="server" id="txt_nif" data-inputmask="'mask' : '***-***-***-*'">         
                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>         
                       
                    
                     
                  </div> 
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
                            </div>
  </fieldset>
    </form>
</body>
</html>
