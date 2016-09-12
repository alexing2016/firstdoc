<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="essai.aspx.vb" Inherits="production_essai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="right_col" role="main">

          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Permis de construire</h3>
              </div>

           <%--   <div class="title_right">
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
              <br />
          <br />
              <br />
            <div class="clearfix"></div>
               <div class="x_content">

                    <form runat="server"  class="form-horizontal form-label-left" novalidate>

                      
                      <span class="section"> 1- Identité et coordonnées du demandeur</span>
                     <p><b>Le demandeur indiqué dans le cadre ci-dessous sera le titulaire de la future autorisation et le redevable des taxes d’urbanisme</b><br />
Dans le cas de demandeurs multiples, chacun des demandeurs, à partir du 2éme, doit remplir la fiche complémentaire «Autres demandeurs»<br />
Les décisions prises par l’administration seront notifiées au demandeur indiqué ci-dessous. Une copie sera adressée aux autres demandeurs, qui
seront co-titulaires de l’autorisation et solidairement responsables du paiement des taxes.</p>   
                        <br />
                        <div class="row">
                            
                             <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Titre<span class="required">*</span></label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                     <asp:DropDownList ID="rcmb_titre" runat="server" class="form-control col-md-7 col-xs-12">
                                                    <Items>
                                                        <asp:listitem runat="server" Text="Monsieur" Value="M" />
                                                        <asp:listitem runat="server" Text="Madame" Value="F" />
                                                    </Items>
                                                </asp:DropDownList>
                  </div>
                               <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="email"  ID="RequiredFieldValidator1" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>






                            
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
                                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator4"
            SetFocusOnError="true" Text="exemple@gmail.com" ControlToValidate="email"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
            ValidationGroup="cours" />
                          </div>

                 
                             <%--<div class="col-md-2 col-sm-12 col-xs-12 form-group">
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
                          </div>--%>

                   
                     

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


                             <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="description">NIF<span class="required">*</span>
                        </label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                    <input type="text" class="form-control" runat="server" id="txt_nif" data-inputmask="'mask' : '***-***-***-*'" placeholder="entrez votre NIF">         
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
                                               
                                                      <asp:dropdownlist ID="rcmb_departement" runat="server" AutoPostBack="true" class="form-control col-md-2 col-xs-12">
                         
                                                   
                                                </asp:dropdownlist>
                                               
                                             
                                            </td>
                                         <td>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="rcmb_departement"  ID="RequiredFieldValidator15" InitialValue="0" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                                           </td>
                                            
                                            <td>
                                                 <label class="control-label col-md-1 col-sm-3 col-xs-12" for="adresse">Commune<span class="required">*</span>
                        </label>
                                             
                                            </td>
                                            <td>
                                              <asp:dropdownlist ID="rcmb_commune" runat="server"  class="form-control col-md-2 col-xs-12">
                                              
                                                   
                                                </asp:dropdownlist>

                                               <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="cmb_Commune" SetFocusOnError="true" ErrorMessage=" Commune"
                                Text="*" ValidationGroup="GPSave1" Style="color: #FF0000" />--%>
                                            </td>
                                         <td>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="rcmb_commune"  ID="RequiredFieldValidator14" InitialValue="0" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

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



   <span class="section">2- Le terrain</span>

              <div class="x_title">
                    <h4>2.1- localisation du (ou des) terrain(s)</h4>
                   <p>Les informations et plans (voir liste des pièces à joindre) que vous fournissez doivent permettre à l’administration de localiser précisément le (ou
les) terrain(s) concerné(s) par votre projet.<br />
Le terrain est constitué de l’ensemble des parcelles cadastrales d’un seul tenant appartenant à un même propriétaire</p>
                    <div class="clearfix"></div>
                  </div>   
                             <div class="x_content">
                                 <table style="width: 99%; padding-bottom: 0px;">
                                         <tr>
                                            <td>
                                               <label class="control-label col-md-1 col-sm-3 col-xs-12" for="adresse">Adresse<span class="required">*</span>
                        </label>
                                            </td>
                                            <td colspan="5">
                                                <asp:TextBox ID="txt_adresse_terrain" runat="server" Columns="50" Width="">
                                                </asp:TextBox>

                                               
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_adresse_terrain"  ID="RequiredFieldValidator2"  Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                                         

                                            </td>
                                        </tr>
                                   <tr>
                                            <td>
                                                 <label class="control-label col-md-1 col-sm-3 col-xs-12" for="adresse">   Département<span class="required">*</span>
                        </label>
                                             
                                            </td>

                                            <td>
                                               
                                                      <asp:dropdownlist ID="rcmb_departement_terrain" runat="server" AutoPostBack="true" class="form-control col-md-2 col-xs-12">
                         
                                                   
                                                </asp:dropdownlist>
                                               
                                             
                                            </td>
                                         <td>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="rcmb_departement"  ID="RequiredFieldValidator3" InitialValue="0" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                                           </td>
                                            
                                            <td>
                                                 <label class="control-label col-md-1 col-sm-3 col-xs-12" for="adresse">Commune<span class="required">*</span>
                        </label>
                                             
                                            </td>
                                            <td>
                                              <asp:dropdownlist ID="Dropdownlist6" runat="server"  class="form-control col-md-2 col-xs-12">
                                              
                                                   
                                                </asp:dropdownlist>

                                               <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="cmb_Commune" SetFocusOnError="true" ErrorMessage=" Commune"
                                Text="*" ValidationGroup="GPSave1" Style="color: #FF0000" />--%>
                                            </td>
                                         <td>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Dropdownlist6"  ID="RequiredFieldValidator4" InitialValue="0" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                                           </td>
                                           
                                        </tr>
                               </table>
                            </div>     
                            
                            <br />
                            <hr />
                            <br />
                          
                                <div class="x_title">
                    <h4>2.2- Situation juridique du terrain  <small> (ces données, qui sont facultatives, peuvent toutefois vous permettre de faire valoir des droits à construire
ou de bénéficier d’impositions plus favorables)</small></h4>
                
                    <div class="clearfix"></div>
                  </div>   
                             <div class="x_content">
                                 <table>
                                                                <tr>
                                                                     <td>
                                                                
                                                             <asp:Label runat="server" Text="Etes-vous titulaire d'un certificat d'urbanisme pour ce terrain ? "></asp:Label>    
                                                                  
                                                                   </td>
                                                        
                                                                        <td colspan="6">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td>
                                                                    <td>
                                                                        <div class ="col-md-3 pull-left"  style="margin-right:26px;">
            <asp:radiobuttonlist   CssClass=" align-left" TextAlign="Right" CellPadding="3" CellSpacing="2" runat="server" RepeatDirection="Horizontal" ID="Checkboxlist1" Enabled="true"  Width="300px">
                <asp:ListItem>Oui</asp:ListItem>
                <asp:ListItem>Non</asp:ListItem>
                <asp:ListItem>Je ne sais pas</asp:ListItem>
            </asp:radiobuttonlist>
        </div>
                                                                    </td>
                                                                
                                                                        </tr>
                                       
                                                                   
                                                            </table>

                                  <table>
                                                                <tr>
                                                                     <td>
                                                                
                                                             <asp:Label runat="server" Text="Le terrain est-il situé dans une Zone d’Aménagement Concertée (Z.A.C.)  ? "></asp:Label>    
                                                                  
                                                                   </td>
                                                        
                                                                        <td colspan="6">
                                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                                                                    </td>
                                                                    <td>
                                                                        <div class ="col-md-3 pull-left"  style="margin-right:26px;">
            <asp:radiobuttonlist   CssClass=" align-left" TextAlign="Right" CellPadding="3" CellSpacing="2" runat="server" RepeatDirection="Horizontal" ID="Checkboxlist3" Enabled="true"  Width="300px">
                <asp:ListItem>Oui</asp:ListItem>
                <asp:ListItem>Non</asp:ListItem>
                <asp:ListItem>Je ne sais pas</asp:ListItem>
            </asp:radiobuttonlist>
        </div>
                                                                    </td>
                                                                
                                                                        </tr>
                                       
                                                                   
                                                            </table>





                                 <table>
                                                                <tr>
                                                                     <td>
                                                                
                                                             <asp:Label runat="server" Text="Le terrain fait-il partie d’un remembrement urbain (Association Foncière Urbaine)? "></asp:Label>    
                                                                  
                                                                   </td>
                                                        
                                                                        <td colspan="6">
                                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                                                                    </td>
                                                                    <td>
                                                                        <div class ="col-md-3 pull-left"  style="margin-right:26px;">
            <asp:radiobuttonlist   CssClass=" align-left" TextAlign="Right" CellPadding="3" CellSpacing="2" runat="server" RepeatDirection="Horizontal" ID="Checkboxlist4" Enabled="true"  Width="300px">
                <asp:ListItem>Oui</asp:ListItem>
                <asp:ListItem>Non</asp:ListItem>
                <asp:ListItem>Je ne sais pas</asp:ListItem>
            </asp:radiobuttonlist>
        </div>
                                                                    </td>
                                                                
                                                                        </tr>
                                       
                                                                   
                                                            </table>


                                 <table>
                                                                <tr>
                                                                     <td>
                                                                
                                                             <asp:Label runat="server" Text="Le terrain est-il situé dans un lotissement? "></asp:Label>    
                                                                  
                                                                   </td>
                                                        
                                                                        <td colspan="6">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                                                                    </td>
                                                                    <td>
                                                                        <div class ="col-md-3 pull-left"  style="margin-right:26px;">
            <asp:radiobuttonlist   CssClass=" align-left" TextAlign="Right" CellPadding="3" CellSpacing="2" runat="server" RepeatDirection="Horizontal" ID="Checkboxlist2" Enabled="true"  Width="300px">
                <asp:ListItem>Oui</asp:ListItem>
                <asp:ListItem>Non</asp:ListItem>
                <asp:ListItem>Je ne sais pas</asp:ListItem>
            </asp:radiobuttonlist>
        </div>
                                                                    </td>
                                                                
                                                                        </tr>
                                       
                                                                   
                                                            </table>


                                 <table>
                                                                <tr>
                                                                     <td>
                                                                
                                                             <asp:Label runat="server" Text="Le projet est-il situé dans le périmètre d’une Opération d’Intérêt National (O.I.N)?"></asp:Label>    
                                                                  
                                                                   </td>
                                                        
                                                                        <td colspan="6">
                                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                                    </td>
                                                                    <td>
                                                                        <div class ="col-md-3 pull-left"  style="margin-right:26px;">
            <asp:radiobuttonlist   CssClass=" align-left" TextAlign="Right" CellPadding="3" CellSpacing="2" runat="server" RepeatDirection="Horizontal" ID="Checkboxlist5" Enabled="true"  Width="300px">
                <asp:ListItem>Oui</asp:ListItem>
                <asp:ListItem>Non</asp:ListItem>
                <asp:ListItem>Je ne sais pas</asp:ListItem>
            </asp:radiobuttonlist>
        </div>
                                                                    </td>
                                                                
                                                                        </tr>
                                       
                                                                   
                                                            </table>



                                





                                 
                            </div>       




                            <br />
                            <hr />

                              <span class="section">3- Caractéristiques du projet</span>



                                <div class="x_title">
                    <h3>3.1- Architecte</h3>
                <p>Le recours à un architecte (ou un agréé en architecture) est <b>obligatoire.</b>Toutefois, vous pouvez vous en dispenser si vous êtes un particulier et que vous déclarez vouloir édifier ou modfier pour vous-même :<br />- une construction qui ne dépasse pas 170 m<sup>2</sup><br />- l'extension d'une construction existante soumise à permis de construire si cette extension n'a pas pour effet de porter l'ensemble après travaux au-delà de 170 m<sup>2</sup></p>
                   <p><b>Si votre projet correspond à l'un de ces cas dispense et que vous n'avez pas eu recours à un architecte, cochez la case ci-dessous : </b><br /></p>
                       <div class ="col-md-4 pull-left"  style="margin-right:26px;">
            <asp:checkboxlist   CssClass=" align-left" TextAlign="Right" CellPadding="5" CellSpacing="3" runat="server"  ID="Radiobuttonlist3" Enabled="true" Width="1100px">
                <asp:ListItem>Je déclare sur l'honneur que mon projet  entre dans l'une des situations pour lesquelles le recours à l'architecture n'est pas obligatoire</asp:ListItem>
              
            </asp:checkboxlist>
        </div>
                  
                                     <div class="clearfix"></div>
                  </div>   
                             <div class="x_content">
                                  <p><b>Si vous avez recours à un architecte, compléter les rubriques ci-dessous</b></p>
                                 <br />
                                 <br />
                                                              <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Titre<span class="required">*</span></label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                     <asp:DropDownList ID="rcmb_titre_architecte" runat="server" class="form-control col-md-7 col-xs-12">
                                                    <Items>
                                                        <asp:listitem runat="server" Text="Monsieur" Value="M" />
                                                        <asp:listitem runat="server" Text="Madame" Value="F" />
                                                    </Items>
                                                </asp:DropDownList>
                  </div>
                               <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="email"  ID="RequiredFieldValidator10" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>






                            
                              <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="taux">CIN<span class="required">*</span>
                        </label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                       <asp:TextBox ID="txt_cin_architecte" runat="server" type="text" class="form-control" data-inputmask="'mask' : '**-**-**-****-**-*****'" placeholder="entrez votre CIN" required="required"></asp:TextBox>
                    
                          
                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>    
                       
                  </div> 


                              <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_cin_architecte" ID="RequiredFieldValidator11" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>

                               <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="prénom">Prénom<span class="required">*</span>
                        </label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                 <asp:TextBox runat="server" id="txt_prenom_architecte" class="form-control col-md-7 col-xs-12" name="prénom" placeholder="entrez votre prénom" required="required" type="text"></asp:TextBox>
                           
                              <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>   
                  </div>

                            <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_prenom_architecte"  ID="RequiredFieldValidator13" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>

                  <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nom<span class="required">*</span>
                        </label>
                       </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                  <asp:TextBox runat="server" id="txt_nom_architecte" class="form-control col-md-7 col-xs-12" name="name" placeholder="entrez votre nom" required="required" type="text"></asp:TextBox> 
                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                  </div>
                            <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_nom_architecte"  ID="RequiredFieldValidator16" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>


                             <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email<span class="required">*</span>
                        </label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                     <asp:TextBox runat="server" type="email" id="email_architecte" name="email" required="required" placeholder="exemple@yahoo.fr" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                  </div>

                               <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="email_architecte"  ID="RequiredFieldValidator17" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator3"
            SetFocusOnError="true" Text="exemple@gmail.com" ControlToValidate="email_architecte"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
            ValidationGroup="cours" />
                          </div>

                 
                             <%--<div class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Sexe<span class="required">*</span></label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                     <asp:DropDownList ID="DropDownList7" runat="server" class="form-control col-md-7 col-xs-12">
                                                    <Items>
                                                        <asp:listitem runat="server" Text="Masculin" Value="M" />
                                                        <asp:listitem runat="server" Text="Féminin" Value="F" />
                                                    </Items>
                                                </asp:DropDownList>
                  </div>
                               <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="email"  ID="RequiredFieldValidator18" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>--%>

                   
                     

 <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-3">Téléphone<span class="required">*</span></label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                     <asp:TextBox ID="Txt_tel_architecte" runat="server" type="text" class="form-control" data-inputmask="'mask' : '(999) 9999-9999'" placeholder="entrez votre numéro" required="required"></asp:TextBox>
                          
                          <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                  </div>


   <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="Txt_tel_architecte"  ID="RequiredFieldValidator19" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

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
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="description">NIF<span class="required">*</span>
                        </label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                   <asp:TextBox type="text"  class="form-control" runat="server" id="nif_architecte" data-inputmask="'mask' : '***-***-***-*'" placeholder="entrez votre NIF"></asp:TextBox>     
                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>         
                       
                    
                     
                  </div> 
                            </div>  





                                    <div class="x_title">
                    <h3>3.2- Nature des travaux envisagés</h3>
              
                    <div class="clearfix"></div>
                  </div>   
                             <div class="x_content">
                                 
                                 <table>
                                     <tr>
                                         <td style="width:25%;">
                                              <div class ="col-md-4 pull-left"  style="margin-right:26px;">
            <asp:radiobuttonlist   CssClass=" align-left" TextAlign="Right" CellPadding="5" CellSpacing="3" runat="server"  ID="Checkboxlist6" Enabled="true">
                <asp:ListItem>Nouvelle construction</asp:ListItem>
                <asp:ListItem>Travaux sur construction existante</asp:ListItem>
            </asp:radiobuttonlist>
        </div>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             <asp:Label runat="server"  Font-Size="Medium" Text="Courte description de votre projet ou de vos travaux :"></asp:Label>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             <asp:TextBox runat="server" TextMode="MultiLine" Height="69px" Width="1010px"></asp:TextBox>
                                         </td>
                                     </tr>
                                 </table>
                                
                            </div>  
 <hr />


              <div class="x_title">
                    <h3>3.3- Informations complémentaires</h3>
                
                    <div class="clearfix"></div>
                  </div>   
                             <div class="x_content">
                                 
                              
                                  <table>
                                                                <tr>
                                                                     <td>
                                                                
                                                             <asp:Label runat="server" Text=" Type d'annexes : " Font-Size="Medium"></asp:Label>    
                                                                  
                                                                   </td>
                                                            <%--                <td>
                                                                               
                                                                                    
                                                                                                <div class="col-md-12">
                                                                                                    <asp:Label runat="server" ID="Label3"></asp:Label>
                                                                                                    <asp:CheckBoxList ID="chk_Services" CellPadding="7" CellSpacing="10" runat="server" RepeatDirection="Horizontal" CssClass="CheckboxList"></asp:CheckBoxList>
                                                                                                </div>

                                                                                           

                                                                            </td>--%>
                                                                    <td>
                                                                        <div class ="col-md-3 pull-left"  style="margin-right:26px;">
            <asp:checkboxlist   CssClass=" align-left" TextAlign="Right" CellPadding="5" CellSpacing="3" runat="server" RepeatDirection="Horizontal" ID="rdio_type_coach" Enabled="true"  Width="700px"></asp:CheckBoxList>
        </div>
                                                                    </td>
                                                                        </tr>
                                                                   
                                                            </table>


                                 <br />


                               <table>
                                                                <tr>
                                                                     <td>
                                                                
                                                             <asp:Label runat="server" Text="Nombre de logements créés : " Font-Size="Medium"></asp:Label>    
                                                                  
                                                                   </td>
                                                         <td>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td>
                                                                    <td>
                                                                       <asp:DropDownList CssClass=" form-control " runat="server" ID="rcmb_logements"></asp:DropDownList>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td>
                                                                     <td>
                                                                
                                                             <asp:Label runat="server" Text="Nombre de pièces de la maison : " Font-Size="Medium"></asp:Label>    
                                                                  
                                                                   </td>
                                                         <td>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td>
                                                                    <td>
                                                                       <asp:DropDownList CssClass=" form-control " runat="server" ID="rcmb_pieces"></asp:DropDownList>
                                                                    </td>
                                                                     <td>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td>
                                                                     <td>
                                                                
                                                             <asp:Label runat="server" Text="Nombre de niveaux de la maison : " Font-Size="Medium"></asp:Label>    
                                                                  
                                                                   </td>
                                                         <td>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td>
                                                                    <td>
                                                                       <asp:DropDownList CssClass=" form-control " runat="server" ID="rcmb_niveaux"></asp:DropDownList>
                                                                    </td>
                                                                        </tr>
                                                                   
                                                            </table>



                                 <br />
                               


                                 <table>
                                                                <tr>
                                                                     <td>
                                                                
                                                             <asp:Label runat="server" Text="Mode d'utilisation principale des logements : " Font-Size="Medium"></asp:Label>    
                                                                  
                                                                   </td>
                                                         <td>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td>
                                                                     </tr>
                                      <tr>
                                                                    <td>
                                                                                                                                <div class ="col-md-3 pull-left"  style="margin-right:18px;">
            <asp:radiobuttonlist   CssClass=" align-left" TextAlign="Right" CellPadding="8" CellSpacing="8" runat="server" RepeatDirection="Horizontal" ID="Radiobuttonlist1" Enabled="true"  Width="700px">
                <asp:ListItem>Résidence principale</asp:ListItem>
                <asp:ListItem>Résidence secondaire</asp:ListItem>
                <asp:ListItem>Vente</asp:ListItem>
             <asp:ListItem>Location</asp:ListItem>
                 </asp:radiobuttonlist>
        </div>
                                                                    </td>
                                                                   
                                                                 
                                                        
                                                                        </tr>
                                                                   
                                                            </table>




                                  <table>
                                                                <tr>
                                                                     <td>
                                                                
                                                             <asp:Label runat="server" Text="Indiquez si vos travaux comprennent notamment : " Font-Size="Medium"></asp:Label>    
                                                                  
                                                                   </td>
                                                         <td>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td>
                                                                    </tr>
                                      <tr>
                                                                    <td>
                                                                                                                                <div class ="col-md-3 pull-left"  style="margin-right:26px;">
            <asp:checkboxlist   CssClass=" align-left" TextAlign="Right" CellPadding="8" CellSpacing="8" runat="server" RepeatDirection="Horizontal" ID="Radiobuttonlist2" Enabled="true"  Width="700px">
                <asp:ListItem>Extension</asp:ListItem>
                <asp:ListItem>Surélévation</asp:ListItem>
                <asp:ListItem>Création de niveaux supplémentaires</asp:ListItem>
           
                 </asp:checkboxlist>
        </div>
                                                                    </td>
                                                                   
                                                                 
                                                        
                                                                        </tr>
                                                                   
                                                            </table>
                            </div>     
                            
                            
                            <%--    <div class="x_title">
                    <h4>2- Situation juridique du terrain  <small> (ces données, qui sont facultatives, peuvent toutefois vous permettre de faire valoir des droits à construire
ou de bénéficier d’impositions plus favorables)</small></h4>
                
                    <div class="clearfix"></div>
                  </div>   
                             <div class="x_content">

                            </div>  --%>  

</div>

                       
                     
              
                        



                        
                        
                        
                        
                             
                      
                        
                      
                      
                      
                      
                      
                        

                        

                        


                        
                      <div class="ln_solid"></div>
                    

                        <div class="row alignright" style="margin-right: 15px;">
        <asp:Button ID="RadBtn_Save" runat="server" Text="Sauvegarder" ValidationGroup="cours" CausesValidation="true"
            class="btn btn-success" />
  <asp:Button ID="Button1" runat="server" Text="Envoi sms" CausesValidation="true"
            class="btn btn-success" />
        <asp:Button ID="RadBtn_Cancel" runat="server" Text="Annuler" CausesValidation="false"
            class="btn btn-primary" />
    </div>











    

















                        <asp:Panel ID="Panel1" runat="server" Visible="false" DefaultButton="btnSubmit">
    <p>
        Please Fill the Following to Send Mail.</p>
    <p>
        Your name:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="*"
            ControlToValidate="YourName" ValidationGroup="save" /><br />
        <asp:TextBox ID="YourName" runat="server" Width="250px" /><br />
        Your email address:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="*"
            ControlToValidate="YourEmail" ValidationGroup="save" /><br />
        <asp:TextBox ID="YourEmail" runat="server" Width="250px" />
        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
            SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="YourEmail"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
            ValidationGroup="save" /><br />
        Subject:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="*"
            ControlToValidate="YourSubject" ValidationGroup="save" /><br />
        <asp:TextBox ID="YourSubject" runat="server" Width="400px" /><br />
        Your Question:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="*"
            ControlToValidate="Comments" ValidationGroup="save" /><br />
        <asp:TextBox ID="Comments" runat="server" TextMode="MultiLine" Rows="10" Width="400px" />
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="Send" OnClick="Button1_Click" ValidationGroup="save" />
    </p>
                            <p>
    <asp:Label ID="lblMsgSend" runat="server" Visible="false" />
</p>
</asp:Panel>








                    </form>




                      
                  </div>
            <%--<div class="row">

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
              <%--    <div class="x_title">
                
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
                <%--  <div class="x_content">
                      <form runat="server">
 <fieldset>
                      <legend>Identité du demandeur</legend>
                                  
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
                               
                            </div>
                  </fieldset>

                    <fieldset>
                      <legend>Coordonnées du demandeur</legend>
                      



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
             <label class="control-label col-md-3 col-sm-3 col-xs-3"> Naissance</label>
                       
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                     <input type="text" runat="server" class="form-control" id="date_naissance" data-inputmask="'mask': '99/99/9999'">
                          <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                  </div>

                               <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="email"  ID="RequiredFieldValidator1" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>
                          
                     
                    
                        
                          
                      <table  padding-bottom: 0px;">
                                   
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
                                               
                                                      <asp:dropdownlist ID="rcmb_departement" runat="server" AutoPostBack="true" class="form-control col-md-2 col-xs-12">
                         
                                                   
                                                </asp:dropdownlist>
                                               
                                             
                                            </td>
                                         <td>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="rcmb_departement"  ID="RequiredFieldValidator15" InitialValue="0" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

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
                                   <%--         </td>
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
                  </fieldset>
                      </form>

  
                  </div>--%>
                <%--</div>--%>
              <%--</div>--%>
          <%--  </div>--%>
          </div>
        </div>
</asp:Content>

