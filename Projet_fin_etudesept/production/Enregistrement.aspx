<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Enregistrement.aspx.vb" Inherits="production_Enregistrement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">



    <div class="right_col" role="main">


   <div class="crumbs">
					<ol class="breadcrumb">
  <li><i class="fa fa-home"></i>
   <a href="../Demosss/Default4.aspx">Home</a></li>
  <li class="active">Registration</li>
   </ol>
	</div> 




                <div class="page-title">
              <div class="title_left">
                 <div class="col-md-12" style="font-size: 20px;">
        Enregistement
			      </div>
              </div>
                     </div>

         <form runat="server">
              









    

             <div class="row">

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    
                    <%--<ul class="nav navbar-right panel_toolbox">
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







            




         

       








                            
    









                            </div>











                    
                  </div>







                    <%--fffff--%>



                 






                     <div class="x_content">
                   
                   
                      

                      

                  <span class="section">Informations sur le compte</span>
                        <div class="row">
                       


                                                 
                       
             <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="username">username<span class="required">*</span>
                        </label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                     <asp:TextBox runat="server" type="text" id="username" name="username" required="required" placeholder="username" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                      <asp:Label runat="server" ID="lbl_erreur"></asp:Label>
                  </div>

                               <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="username"  ID="RequiredFieldValidator1" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>





                                <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="password">password<span class="required">*</span>
                        </label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                     <asp:TextBox runat="server" type="text" TextMode="Password" id="password" name="password" required="required" placeholder="*****" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                  </div>

                               <div class="col-md-1 col-sm-6 col-xs-12">
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="password"  ID="RequiredFieldValidator3" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>
                          </div>






                            
             <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="confirmpassword">Confirmer<span class="required">*</span>
                        </label>
                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                     <asp:TextBox runat="server" type="text" TextMode="Password" id="confirmpassword" name="confirmpassword" required="required" placeholder="******" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                  </div>

                               <div class="col-md-1 col-sm-6 col-xs-12">

                                   <asp:CompareValidator ID="comparePasswords" runat="server" ControlToCompare="password" ControlToValidate="confirmpassword" ErrorMessage="Your passwords do not match up!" ForeColor="#FF3300">

                                   </asp:CompareValidator>

                            <%--   <asp:RequiredFieldValidator runat="server" ControlToValidate="confirmpassword"  ID="RequiredFieldValidator2" Text="Champ obligatoire !" ValidationGroup="cours"><span style="color:red">*</span>

                            </asp:RequiredFieldValidator>--%>

                                   <%--   <asp:CompareValidator id="comparePasswords" 
                               runat="server"
                               ControlToCompare="password"
                               ControlToValidate="confirmpassword"
                               ErrorMessage="Your passwords do not match up!"
                               Display="Dynamic" Font-Names="Verdana" ForeColor="#666666" />--%>


                          </div>




                            
                        <div class="row alignright" style="margin-right: 15px;">
     <%--   <asp:Button ID="RadBtn_Saveit" runat="server" Text="Sauvegarder" ValidationGroup="cours" CausesValidation="true"
            class="btn btn-success"/>--%>

                               <asp:Button ID="RadBtn_Saveit" runat="server" Text="Sauvegarder" 
           class="btn btn-success" CausesValidation="true"/>




        <asp:Button ID="RadBtn_Cancelit" runat="server" Text="Annuler" CausesValidation="false"
            class="btn btn-primary" />
    </div>



                        











                            </div>











                    
                  </div>






                    
















                    
                </div>
              </div>
            </div>   
          </form>





        </div>



























</asp:Content>

