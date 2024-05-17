<%@ Page Title="Area" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="IntArea.aspx.cs" Inherits="PlataformaWebGeometryLearn.WebForms.IntArea" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" id="figurasDiv">
        <h2>Figuras Geométricas</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Círculo</h5>
                        <p class="card-text">Calcular el volumen de un círculo.</p>
                        <a href="#" class="btn btn-primary" onclick="toggleFiguras()">Calcular</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Triángulo</h5>
                        <p class="card-text">Calcular el volumen de un triángulo.</p>
                        <a href="#" class="btn btn-primary" onclick="toggleFiguras()">Calcular</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Cuadrado</h5>
                        <p class="card-text">Calcular el volumen de un cuadrado.</p>
                        <a href="#" class="btn btn-primary" onclick="toggleFiguras()">Calcular</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Rectángulo</h5>
                        <p class="card-text">Calcular el volumen de un rectángulo.</p>
                         <a href="#" class="btn btn-primary" onclick="toggleFiguras()">Calcular</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Rombo</h5>
                        <p class="card-text">Calcular el volumen de un rombo.</p>
                         <a href="#" class="btn btn-primary" onclick="toggleFiguras()">Calcular</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Trapecio</h5>
                        <p class="card-text">Calcular el volumen de un trapecio.</p>
                        <a href="#" class="btn btn-primary" onclick="toggleFiguras()">Calcular</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Pentágono</h5>
                        <p class="card-text">Calcular el volumen de un pentágono.</p>
                        <a href="#" class="btn btn-primary" onclick="toggleFiguras()">Calcular</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Hexágono</h5>
                        <p class="card-text">Calcular el volumen de un hexágono.</p>
                        <a href="#" class="btn btn-primary" onclick="toggleFiguras()">Calcular</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Octágono</h5>
                        <p class="card-text">Calcular el volumen de un octágono.</p>
                         <a href="#" class="btn btn-primary" onclick="toggleFiguras()">Calcular</a>
                    </div>
                </div>
            </div>
        </div>

        
    </div>

    <div class="container" id="areaHeader" style="display: none;">
        <h2 onclick="mostrarFiguras()">Calcular Volumen</h2>
    </div>

    <script>
        function toggleFiguras() {
            var figurasDiv = document.getElementById("figurasDiv");
            var areaHeader = document.getElementById("areaHeader");

            if (figurasDiv.style.display === "none") {
                figurasDiv.style.display = "block";
                areaHeader.style.display = "none";
            } else {
                figurasDiv.style.display = "none";
                areaHeader.style.display = "block";
            }

        }
        function mostrarFiguras() {
            var figurasDiv = document.getElementById("figurasDiv");
            var areaHeader = document.getElementById("areaHeader");

            figurasDiv.style.display = "block";
            areaHeader.style.display = "none";
        }
    </script>

</asp:Content>
