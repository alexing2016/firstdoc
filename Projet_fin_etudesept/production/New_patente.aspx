<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="New_patente.aspx.vb" Inherits="production_New_patente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="right_col" role="main">

          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>
                      Nouvelle patente
                  </h3>
              </div>

          <%--    <div class="title_right">
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

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    
                   <%-- <ul class="nav navbar-right panel_toolbox">
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
                    </ul>--%>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <form runat="server"  class="form-horizontal form-label-left" novalidate>

                      
                      <span class="section">Informations personelles</span>
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
                             <%--<div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="description" ID="RequiredFieldValidator11"  ValidationGroup="cours"><span style="color:red"></span>

                            </asp:RequiredFieldValidator>
                          </div>--%>
<%--                                 <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="description">Description<span class="required">*</span>
                        </label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                   <asp:TextBox runat="server" id="description" class="form-control col-md-7 col-xs-12"  name="description" placeholder="entrez la description" required="required"  TextMode="MultiLine"></asp:TextBox>
                             
                       
                    
                     
                  </div> --%>





                             <div class="col-md-12 col-sm-12 col-xs-12 form-group">
        
               <span class="section">Informations de l'entreprise</span>
          
         
         

         
        
                         

           

                  


                                 <table style="width: 99%; padding-bottom: 0px;">
                                   
                                       

                                       <tr>
                                            <td>
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="adresse">Nom entreprise<span class="required">*</span>
                        </label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_nom_entreprise" runat="server" style="text-transform:uppercase;">
                                                </asp:TextBox>

                                                  <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_nom_entreprise"  ID="RequiredFieldValidator4" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_Nom" ValidationExpression="^[A-Za-z][a-zA-Z-0-9'.\s]{1,100}$" 
                            ErrorMessage="Le nom ne peut contenir de caractères spéciaux ni commencer par un chiffre" Text="*" ValidationGroup="GPSave1"></asp:RegularExpressionValidator>
							
							
                                            </td>
                                            <td>
                                                                                             <label class="control-label col-md-3 col-sm-3 col-xs-12" for="adresse">Fondateur<span class="required">*</span></label>

                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_fondateur" runat="server" style="text-transform:uppercase;">
                                                </asp:TextBox>
                                            
                                            </td>
                                           <td>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_fondateur"  ID="RequiredFieldValidator13" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                                           </td>
                                            <td>
                                               <label class="control-label col-md-3 col-sm-3 col-xs-12" for="adresse"> Forme Juridique<span class="required">*</span></label>

                                            </td>
                                            <td>
                                                <asp:dropdownlist ID="rcmb_forme_juridique" runat="server"  class="form-control col-md-2 col-xs-12">
                                              
                                                   
                                                </asp:dropdownlist>

                                                  
                                            </td>
                                           <td>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="rcmb_forme_juridique"  ID="RequiredFieldValidator11" InitialValue="0" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                                           </td>
                                        </tr>



                                   
                                     
                                     <tr> 
                                         <td>
                                              
                   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Siège Social<span class="required">*</span>
                        </label>
              

                 
               
                      
                                         </td>
                                         <td>
    <asp:textbox runat="server" id="txt_siege_social"></asp:textbox>
                            
                      
                
                                              <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_siege_social"  ID="RequiredFieldValidator16" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                               
                                         </td>
                           
                                          <td>
                                            
                  <label class="control-label col-md-3 col-sm-3 col-xs-3">Téléphone(1)<span class="required">*</span></label>
                 </td>
                                         <td>
 <asp:TextBox ID="txt_cell_1" runat="server" type="text"  data-inputmask="'mask' : '(999) 9999-9999'" placeholder="entrez votre numéro" required="required"></asp:TextBox>
                               </td>
                                         <td>
                                               <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_cell_1"  ID="RequiredFieldValidator20" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                                         </td>
                                         <td>
                                            
                  <label class="control-label col-md-3 col-sm-3 col-xs-3">Téléphone(2)</label>
                          </td>
                                         <td>
 <asp:TextBox ID="txt_cell_2" runat="server" type="text"  data-inputmask="'mask' : '(999) 9999-9999'" placeholder="entrez votre numéro" required="required"></asp:TextBox>
                                         </td>
                                     </tr>
                                        <tr>
                                             <td colspan="6">
                                                <hr />
                                            </td>
                                        </tr>
                               </table>


                                  <span class="section">Patente</span>
                                 <table style="width: 99%; padding-bottom: 0px;">
                                   
                                       

                                       
                                <tr>
                                         <td>
 <label class="control-label col-md-3 col-sm-3 col-xs-12" for="prénom">Secteur<span class="required">*</span>
                        </label>
                                         </td>
                                         
                                             
                                    <td style="width:35%;">
                                         
                                               <asp:DropDownList runat="server" ID="DropDownList1" class="form-control col-md-7 col-xs-12"></asp:DropDownList>
                                         
                                    </td>
                                    <td>
                                                    <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="DropDownList1"  ID="RequiredFieldValidator2" Text="Champ obligatoire !" ValidationGroup="cours" InitialValue="0"><span style="color:red">*</span>
</asp:RequiredFieldValidator>
                          </div>
                                    </td>
                                    <td>
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="prénom">Année fiscale<span class="required">*</span>
                        </label>
                                    </td>
                                      <td style="width:25%;">
                                               <asp:DropDownList runat="server" ID="rcmb_annee" class="form-control col-md-7 col-xs-12"></asp:DropDownList>
                                         </td>
                                    <td>
                                          <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="rcmb_annee"  ID="RequiredFieldValidator1" Text="Champ obligatoire !" ValidationGroup="cours" InitialValue="0"><span style="color:red">*</span>
</asp:RequiredFieldValidator>
                          </div>
                                    </td>
                                    </tr>
                                     <tr>
                                         <td>
                   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Chiffre d'affaire<span class="required">*</span>
                        </label>
                                         </td>
                                          <td>
                                                <asp:TextBox ID="txt_CA" runat="server" CssClass=" form-control " style="text-transform:uppercase;">
                                                </asp:TextBox>
                                               

                              
                                            </td>
                                         <td>
                                             
                              <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="RequiredFieldValidator10"   runat="server" ControlToValidate="txt_CA" ErrorMessage="Champ obligatoire !"
                        ValidationGroup="cours"><span style="color:red">*</span></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator runat="server" ValidationExpression="^[0-9]\d{0,9}(\.\d{1,3})?%?$" CssClass=" ErrorMessage" ErrorMessage="Chiffre seulement" ControlToValidate="txt_CA" ValidationGroup="cours">

                      </asp:RegularExpressionValidator>
                         
                                              
                                         </td>
                                          <td>
                                            
                   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Masse Salariale<span class="required">*</span>
                        </label>
                 

                
                  
                          
                                         </td>
                                         <td>
 <asp:textbox runat="server" id="txt_massesalariale" class="form-control col-md-7 col-xs-12" ></asp:textbox>
                            
                       
                  
                             
                                         </td>
                                         <td>
                                             <br />
                                         </td>
                                         <td>
                                               <asp:RequiredFieldValidator CssClass="ErrorMessage" ID="RequiredFieldValidator3"   runat="server" ControlToValidate="txt_massesalariale" ErrorMessage="Champ obligatoire !"
                        ValidationGroup="cours"><span style="color:red">*</span></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator runat="server" ValidationExpression="^[0-9]\d{0,9}(\.\d{1,3})?%?$" CssClass=" ErrorMessage" ErrorMessage="Chiffre seulement" ControlToValidate="txt_massesalariale" ValidationGroup="cours">

                      </asp:RegularExpressionValidator>
                                         </td>
                                     </tr>
                                    
                                        <tr>
                                             <td colspan="6">
                                                <hr />
                                            </td>
                                        </tr>
                               </table>
        </div>

</div>

                       
                     
              
                        



                        
                        
                        
                        
                             
                      
                        
                      
                      
                      
                      
                      
                        

                        

                        


                        
                      <div class="ln_solid"></div>
                    

                        <div class="row alignright" style="margin-right: 15px;">
        <asp:Button ID="RadBtn_Save" runat="server" Text="Sauvegarder" ValidationGroup="cours" CausesValidation="true"
            class="btn btn-success" />

        <asp:Button ID="RadBtn_Cancel" runat="server" Text="Annuler" CausesValidation="false"
            class="btn btn-primary" />
    </div>











    <asp:Panel ID="info_Perso" runat="server" Visible="false">
                                    <table style="width: 99%; padding-bottom: 0px;">
                                        <tr>
                                            <td>
                                                Titre
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="cmb_Titre" runat="server" SelectedText="Mr." AutoPostBack="true">
                                                    <Items>
                                                        <asp:ListItem runat="server" Selected="True" Text="Mr." Value="Mr." />
                                                        <asp:ListItem runat="server" Text="Mme" Value="Mme" />
                                                    </Items>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                NIF
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox11" runat="server" Mask="###-###-###-#">
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                               CIN 
                                            </td>
                                            <td>
                                             <asp:TextBox ID="TextBox2" runat="server" Mask="##-##-##-####-##-#####">
                                                </asp:TextBox>
                                               <%-- <asp:TextBox ID="txt_Religion" runat="server">
                                                </asp:TextBox>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Nom<span style="color:red;font-weight:bold">*</span>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_Nom" runat="server" style="text-transform:uppercase;">
                                                </asp:TextBox>

                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator_txt_Nom" runat="server"
                                ControlToValidate="txt_Nom" SetFocusOnError="true" ErrorMessage=" Nom"
                                ValidationGroup="GPSave1" Style="color: #FF0000" /> 

                                    <asp:RegularExpressionValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txt_Nom" ValidationExpression="^[A-Za-z][a-zA-Z-0-9'.\s]{1,100}$" 
                            ErrorMessage="Le nom ne peut contenir de caractères spéciaux ni commencer par un chiffre" Text="*" ValidationGroup="GPSave1"></asp:RegularExpressionValidator>
							
							
                                            </td>
                                            <td>
                                                Prénom<span style="color:red;font-weight:bold">*</span>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_Prenom" runat="server" style="text-transform:uppercase;">
                                                </asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator_txt_Prenom" runat="server"
                                ControlToValidate="txt_Prenom" SetFocusOnError="true" ErrorMessage=" Prénom"
                                ValidationGroup="GPSave1" Style="color: #FF0000" /> 

                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_Prenom" ValidationExpression="^[A-Za-z][a-zA-Z-0-9'.\s]{1,100}$" 
                            ErrorMessage="Le Prénom ne peut contenir de caractères spéciaux ni commencer par un chiffre" Text="*" ValidationGroup="GPSave1"></asp:RegularExpressionValidator>

                                            </td>
                                            <td>
                                                Nom jeune fille
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_nomJeuneFille" runat="server" Enabled="false" style="text-transform:uppercase;">
                                                </asp:TextBox>

                                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_nomJeuneFille" ValidationExpression="^[A-Za-z][a-zA-Z-0-9-/'.\s]{1,100}$" 
                            ErrorMessage="Nom de jeune fille incorrect, caractères spéciaux ou début digit" Text="*" ValidationGroup="GPSave1"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Groupe Sanguin
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="cmb_GroupeSanguin" runat="server">
                                                    <Items>
                                                        <asp:listitem runat="server" Text="A+" Value="A+" />
                                                        <asp:listitem runat="server" Text="A-" Value="A-" />
                                                        <asp:listitem runat="server" Text="B+" Value="B+" />
                                                        <asp:listitem runat="server" Text="B-" Value="B-" />
                                                        <asp:listitem runat="server" Text="O+" Value="O+" />
                                                        <asp:listitem runat="server" Text="O-" Value="O-" />
                                                        <asp:listitem runat="server" Text="AB+" Value="AB+" />
                                                        <asp:listitem runat="server" Text="AB-" Value="AB-" />
                                                    </Items>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                Sexe
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="cmb_Sexe" runat="server" AutoPostBack="true">
                                                    <Items>
                                                        <asp:listitem runat="server" Text="Masculin" Value="M" />
                                                        <asp:listitem runat="server" Text="Féminin" Value="F" />
                                                    </Items>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                Etat Civil
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="cmb_EtatCivil" runat="server">
                                                    <Items>
                                                        <asp:listitem runat="server" Text="Célibataire" Value="Célibataire" />
                                                        <asp:listitem runat="server" Text="Marié(e)" Value="Marié(e)" />
                                                        <asp:listitem runat="server" Text="Divorcé(e)" Value="Divorcé(e)" />
							<asp:listitem runat="server" Text="Veuf" Value="Veuf" />
							<asp:listitem runat="server" Text="Concubinage" Value="Concubinage" />
                                                    </Items>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Date de Naissance<span style="color:red;font-weight:bold">*</span>
                                            </td>
                                            <td>
                                               <%-- <asp:DatePicker ID="txt_Naissance" runat="server" MinDate="1950-01-01" MaxDate="1998-01-01">
                                                 <DateInput ID="DateInput1" DisplayDateFormat="d-MMM-yyyy" runat="server" DateFormat="d-MMM-yyyy">
                        </DateInput>
                                                </asp:DatePicker>--%>

                                                 <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator_txt_Naissance" runat="server"
                                ControlToValidate="txt_Naissance" SetFocusOnError="true" ErrorMessage=" Date de naissance"
                               ValidationGroup="GPSave1" Style="color: #FF0000" />--%>
                                            </td>
                                            <td>
                                                Lieu de Naissance
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_LieuNaissance" runat="server">
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                Religion<span style="color:red;font-weight:bold">*</span>
                                            </td>
                                            <td>

                                            <asp:DropDownList ID="rcb_Religion" runat="server">
                                    <Items>
                                    </Items>
                                </asp:DropDownList>
                                 <asp:TextBox ID="txt_Religion" runat="server" Visible="false">
                                                </asp:TextBox>
<%--                                                <asp:TextBox ID="txt_NbreEnfant" runat="server">
                                                </asp:TextBox>--%>
                                                <%--<asp:TextBox ID="txt_Religion" runat="server">
                                                </asp:TextBox>--%>
                                                 <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator_txt_Cin" runat="server"
                                ControlToValidate="txt_NbreEnfant" SetFocusOnError="true" ErrorMessage=" Nombre d'enfants"
                                ValidationGroup="GPSave1" Style="color: #FF0000" />--%>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Téléphone<span style="color:red;font-weight:bold">*</span>
                                            </td>
                                            <td>
                                                 <asp:TextBox ID="txt_Telephone" runat="server" Mask="(509) ####-####">
                                                </asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator_txt_Telephone" runat="server"
                                ControlToValidate="txt_Telephone" SetFocusOnError="true" ErrorMessage=" Téléphone"
                               ValidationGroup="GPSave1" Style="color: #FF0000" />
                                               
                                            </td>
                                            <td>
                                                Email
                                            </td>
                                            <td>
                                               <asp:TextBox ID="Txt_Email" runat="server">
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                Niveau d'étude
                                            </td>
                                            <td>
                                               <asp:CheckBox ID="cmb_NiveauEtude" runat="server"  Width="230">                    
                        </asp:CheckBox> 
                                               <%-- <asp:TextBox ID="txt_NiveauEtude" runat="server">
                                                </asp:TextBox>--%>
                                            </td>
                                        </tr>


                                           <tr>
                                            <td colspan="6">
                                                <hr />
                                            </td>
                                        </tr>


                                        <tr>
                                             <td>
                                                Lieu de Naissance
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_lieu_naiss" Enabled="false" runat="server">
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                Département<span style="color:red;font-weight:bold">*</span>
                                            </td>
                                            <td>
                                              <asp:dropdownlist ID="Dropdownlist2" runat="server" AutoPostBack="true" CssClass=" control-label col-md-7">
                                              
                                                   
                                                </asp:dropdownlist>
                                            </td>
                                            <%--<td>
                                                Arrondissement
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="cmb_arrondissement" runat="server" AutoPostBack="true">
                                                </asp:DropDownList>
                                            </td>--%>
                                            <td>
                                                Commune<span style="color:red;font-weight:bold">*</span>
                                            </td>
                                            <td>
                                              <asp:dropdownlist ID="Dropdownlist3" runat="server" AutoPostBack="true" CssClass=" control-label col-md-7">
                                              
                                                   
                                                </asp:dropdownlist>

                                               <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="cmb_Commune" SetFocusOnError="true" ErrorMessage=" Commune"
                                Text="*" ValidationGroup="GPSave1" Style="color: #FF0000" />--%>
                                            </td>
                                        </tr>








                                        <tr>
                                            <td colspan="6">
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Adresse<span style="color:red;font-weight:bold">*</span>
                                            </td>
                                            <td colspan="5">
                                                <asp:TextBox ID="txt_Adresse" runat="server" Columns="175" Width="">
                                                </asp:TextBox>

                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_txt_Adresse" runat="server"
                                ControlToValidate="txt_Adresse" SetFocusOnError="true" ErrorMessage=" Adresse"
                               ValidationGroup="GPSave1" Style="color: #FF0000" />

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Département<span style="color:red;font-weight:bold">*</span>
                                            </td>
                                            <td>
                                                <asp:dropdownlist ID="cmb_Departement" runat="server" AutoPostBack="true" CssClass=" control-label col-md-7">
                                              
                                                   
                                                </asp:dropdownlist>
                                            </td>
                                            <%--<td>
                                                Arrondissement
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="cmb_arrondissement" runat="server" AutoPostBack="true">
                                                </asp:DropDownList>
                                            </td>--%>
                                            <td>
                                                Commune<span style="color:red;font-weight:bold">*</span>
                                            </td>
                                            <td>
                                                <asp:CheckBox ID="cmb_Commune" runat="server">
                                                    <%--<Items>
                                                        <%--<asp:listitem runat="server" Text="Port-au-Prince" Value="Port-au-Prince"></asp:listitem><br />
<asp:listitem runat="server" Text="Cayes  " Value="Cayes"></asp:listitem><br />
<asp:listitem runat="server" Text="Jacmel" Value="Jacmel"></asp:listitem>--%>
                                                   
                                                </asp:CheckBox>

                                             <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator_cmb_Commune" runat="server"
                                ControlToValidate="cmb_Commune" SetFocusOnError="true" ErrorMessage=" Commune"
                                Text="*" ValidationGroup="GPSave1" Style="color: #FF0000" />--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6">
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="text-align: right">
                                              <%--  <asp:Button ID="RBT_Modifier_infoPers" runat="server" Text="Modifier">
                                                </asp:Button>--%>

                                                   <asp:Button ID="RBT_Modifier_infoPers" runat="server" Visible="false" Text="Sauvegarder"  ValidationGroup="GPSave1"> 
                                                </asp:Button>

                                                 <asp:Button ID="RBT_Sauvegarder_infoPers" runat="server" Text="Modifier">
                                                </asp:Button>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>

























                    </form>




                      
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
</asp:Content>


