﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ListaCarrito.aspx.cs" Inherits="FerreteriaWeb.ListaCarrito" ClientIDMode="Static" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/sweetalert2.min.css" rel="stylesheet" />
    <div class="row container-md">
        <div class="col-xl-5 text-center ">
            <h2>Carrito de compras</h2>
        </div>
        <div class="col-xl-2 form-group text-center">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning m-2" Text="Limpiar Carrito" />
        </div>

    </div>
    <div class="row ">
        <div class="col-xl-8 col-sm-12 form-group">

            <div class="col-xl-12 col-sm-12 form-group">
                <asp:GridView ID="grvListaCarrito" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered text-center" ItemType="FerreteriaEntidad.DetallePedido" DataKeyNames="idDetalle">

                    <Columns>

                        <asp:ImageField HeaderText="Producto" DataImageUrlFormatString="productos.imagen"></asp:ImageField>
                        <asp:TemplateField HeaderText="Nombre">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblNombre" CssClass="form-control-plaintext" Text='<%# Eval("productos.nombre") %>'></asp:Label>
                                <asp:Button ID="btnEliminar" runat="server" CssClass="btn btn-danger btn-group-sm" Text="Eliminar" OnClick="btnEliminar_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="productos.precio" HeaderText="Precio"></asp:BoundField>
                        <asp:TemplateField HeaderText="SubTotal">
                            <ItemTemplate>

                                <asp:Label runat="server" ID="lblSubTotal" CssClass="form-control-plaintext" Text='<%# Eval("subTotal") %>'></asp:Label>

                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Cantidad">
                            <ItemTemplate>

                                <asp:TextBox runat="server" ID="txtCantidad" CssClass="form-control-plaintext border border-info text-center" Text='<%# Eval("cantidad") %>' AutoPostBack="true" OnTextChanged="txtCantidad_TextChanged"></asp:TextBox>

                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </div>
        </div>
        <div class="col-xl-4">
            <div class="col-xl-11 p-0 text-center">
                <h2>Detalle de Compra</h2>
            </div>
            <div class="col-xl-11">
                <div class="form-group">
                    <asp:Label ID="lblSubTCompra" runat="server" Text="Sub total: "></asp:Label>
                    <asp:TextBox ID="txtSubTotal" AutoPostBack="true" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblDescuento" runat="server" Text="Descuento: "></asp:Label>
                    <asp:TextBox ID="txtDescuento" AutoPostBack="true" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblTotalCompra" runat="server" Text="Total a pagar: "></asp:Label>
                    <asp:TextBox ID="txtTotal" AutoPostBack="true" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Button ID="btnComprar" runat="server" OnClick="btnRegistrar_Click" CssClass="btn btn-primary" Text="Comprar" />
                    <asp:CheckBox ID="ChkCupon" runat="server" OnCheckedChanged="ChkCupon_CheckedChanged" AutoPostBack="true" CssClass="form-check-input ml-5" Text="Cupón de Descuento" />
                </div>

                <div class="form-group">
                    <asp:Label ID="lblCupon" Visible="false" runat="server" Text="Cupón de descuento"></asp:Label>

                </div>
                <div>
                    <asp:DropDownList ID="ddlCupon" runat="server" Visible="false" DataValueField="idCuponCliente" DataTextField="nombre" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlCupon_SelectedIndexChanged"></asp:DropDownList>
                </div>

            </div>
        </div>
    </div>

    <script src="Scripts/mensaje.js"></script>
    <script src="Scripts/sweetalert2.min.js"></script>

</asp:Content>

