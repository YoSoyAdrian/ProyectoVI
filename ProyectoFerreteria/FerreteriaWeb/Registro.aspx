﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="FerreteriaWeb.Registro" %>
<asp:Content ID="formulario" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
    font-family: Arial, Helvetica, sans-serif;
    margin: 0;
   background: url("/Img/Fondo.jpg");
    background-size: cover;
    background-attachment: fixed;
}
* {
    box-sizing: border-box;
}
.contenedor{
    width: 100%;
    padding: 15px;
}
        .formulario {
            background: #fff;
            margin-top: 150px;
            padding: 3px;
        }
h1{
    text-align: center;
    color: #1a2537;
    font-size: 40px;
}
input[type="text"],
input[type="password"]{
    font-size: 20px;
    width: 82%;
    padding: 10px;
    border: none;
}
.input-contenedor{
    margin-bottom: 15px;
    border: 1px solid #aaa;
}
.icon{
    min-width: 50px;
    text-align: center;
    color: #999;
}
.button{
    border: none;
    width: 100%;
    color: white;
    font-size: 20px;
    background:  #1a2537;
    padding: 15px 20px;
    border-radius: 5px;
    cursor: pointer;
}
.button:hover{
    background: cadetblue;
}
p{
    text-align: center;
}
.link{
    text-decoration: none;
      color: #1a2537;
    font-weight: 600;
}
.link:hover{
     color: cadetblue;
}
        @media(min-width:768px) {
            .formulario {
                margin: auto;
                width: 500px;
                margin-top: 150px;
                border-radius: 2%;
            }
        }
   </style>
          
    
</asp:Content>