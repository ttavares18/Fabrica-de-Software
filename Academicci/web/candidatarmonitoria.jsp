<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Cadastro - ACADEMICI</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <script type="text/javascript" src="clockp.js"></script>
        <script type="text/javascript" src="clockh.js"></script> 
        <script type="text/javascript" src="jquery.min.js"></script>
        <script type="text/javascript" src="ddaccordion.js"></script>
        <script type="text/javascript">
            ddaccordion.init({
                headerclass: "submenuheader", //Shared CSS class name of headers group
                contentclass: "submenu", //Shared CSS class name of contents group
                revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
                mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
                collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
                defaultexpanded: [], //index of content(s) open by default [index1, index2, etc] [] denotes no content
                onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
                animatedefault: false, //Should contents open by default be animated into view?
                persiststate: true, //persist state of opened contents within browser session?
                toggleclass: ["", ""], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
                togglehtml: ["suffix", "<img src='images/plus.gif' class='statusicon' />", "<img src='images/minus.gif' class='statusicon' />"], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
                animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
                oninit: function (headers, expandedindices) { //custom code to run when headers have initalized
                    //do nothing
                },
                onopenclose: function (header, index, state, isuseractivated) { //custom code to run whenever a header is opened or closed
                    //do nothing
                }
            })
        </script>

        <script type="text/javascript" src="jconfirmaction.jquery.js"></script>
        <script type="text/javascript">

            $(document).ready(function () {
                $('.ask').jConfirmAction();
            });

        </script>

        <script language="javascript" type="text/javascript" src="niceforms.js"></script>
        <link rel="stylesheet" type="text/css" media="all" href="niceforms-default.css" />

    </head>
    <body>
        <div id="main_container">

            <div class="header">
                <div class="logo"><a href="paginaInicial.jsp"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
                <div class="right_header">Welcome Admin, | <a href="frmmensagens.jsp" class="messages">(1) Messages</a> | <a href="index.jsp" class="logout">Logout</a></div>
            </div>

            <div class="main_content">

                <div class="menu">
                    <ul>

                    </ul>
                </div> 

                <div class="center_content">  

                    <div class="left_content">



                        <div class="sidebarmenu">

                            <a class="menuitem_green" href="paginaInicial.jsp">Página Inicial</a>
                            <a class="menuitem submenuheader" href="">Monitorias</a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="frmmonitorias.jsp">Algoritmo e Programação I</a></li>
                                    <li><a href="frmmonitorias.jsp">Estrutura de Dados II</a></li>
                                </ul>
                            </div>
                            <a class="menuitem submenuheader" href="">Mensagens</a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="frmenviarmensagem.jsp">Enviar Mensagem</a></li>
                                    <li><a href="frmmensagens.jsp">Mensagens Recebidas</a></li>
                                </ul>
                            </div>
                            <a class="menuitem submenuheader" href="#" >Fóruns</a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="frmforum.jsp">Mural</a></li>
                                    <li><a href="frmescreverforum.jsp">Iniciar Fórum</a></li>
                                </ul>
                            </div>
                            <a class="menuitem" href="frmpublicar.jsp">Publicar</a>
                            <a class="menuitem_red" href="candidatarmonitoria.jsp">Candidatar a Monitoria</a>

                        </div>




                    </div>  


                    <div class="right_content">             

                        <h2>Candidatar a Monitoria</h2>

                        <div class="form">
                            <form action="MonitoriaSV" method="POST" class="niceform">



                                <fieldset>

                                    <input type="hidden" name="action" value="salvar" />
                                    <input type="hidden" name="id" value="${objMonitoria.id}" />

                                    <dl>
                                        <dt><label for="matricula">Informe sua Matricula:</label></dt>
                                        <dd><input type="text" name="matricula" id="" size="54" value="${objMonitoria.matricula}" /></dd>
                                    </dl>

                                    <dl>
                                        </br></br></br>
                                        <dd>
                                            AO CLICAR EM "CANDIDATAR" VOCÊ ESTARÁ CONCORDANDO COM O <a href = 'regimento.jsp'>REGIMENTO DA MONITORIA</a>.
                                        </dd>
                                    </dl>

                                    <dl class="submit">
                                        <input type="submit" name="candidatar" value="Candidatar" />
                                    </dl>



                                </fieldset>

                            </form>
                            <fieldset>
                                ${msg}
                            </fieldset>
                        </div>  


                    </div><!-- end of right content-->


                </div>   <!--end of center content -->               




                <div class="clear"></div>
            </div> <!--end of main content-->


            <div class="footer"></div>

        </div>		
    </body>
</html>