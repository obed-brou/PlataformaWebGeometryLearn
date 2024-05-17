<%@ Page Title="Perímetro" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="IntPerimetro.aspx.cs" Inherits="PlataformaWebGeometryLearn.WebForms.IntPerimetro" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" id="figurasDiv">
        <h2>Figuras Geométricas</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Círculo</h5>
                        <p class="card-text">Calcular el perímetro de un círculo.</p>
                        <a href="#" class="btn btn-primary" onclick="mostrarModal('modalCirculo')">Calcular</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Triángulo</h5>
                        <p class="card-text">Calcular el perímetro de un triángulo.</p>
                        <a href="#" class="btn btn-primary" onclick="mostrarModal('modalTriangulo')">Calcular</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Cuadrado</h5>
                        <p class="card-text">Calcular el perímetro de un cuadrado.</p>
                        <a href="#" class="btn btn-primary" onclick="mostrarModal('modalCuadrado')">Calcular</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Rectángulo</h5>
                        <p class="card-text">Calcular el perímetro de un rectángulo.</p>
                        <a href="#" class="btn btn-primary" onclick="mostrarModal('modalRectangulo')">Calcular</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Rombo</h5>
                        <p class="card-text">Calcular el perímetro de un rombo.</p>
                        <a href="#" class="btn btn-primary" onclick="mostrarModal('modalRombo')">Calcular</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Trapecio</h5>
                        <p class="card-text">Calcular el perímetro de un trapecio.</p>
                        <a href="#" class="btn btn-primary" onclick="mostrarModal('modalTrapecio')">Calcular</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Pentágono</h5>
                        <p class="card-text">Calcular el perímetro de un pentágono.</p>
                        <a href="#" class="btn btn-primary" onclick="mostrarModal('modalPentagono')">Calcular</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Hexágono</h5>
                        <p class="card-text">Calcular el perímetro de un hexágono.</p>
                        <a href="#" class="btn btn-primary" onclick="mostrarModal('modalHexagono')">Calcular</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Octágono</h5>
                        <p class="card-text">Calcular el perímetro de un octágono.</p>
                        <a href="#" class="btn btn-primary" onclick="mostrarModal('modalOctagono')">Calcular</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modales para cada figura -->
    <!-- Modal para el círculo -->
    <div class="modal fade" id="modalCirculo" tabindex="-1" aria-labelledby="modalCirculoLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalCirculoLabel">Perímetro del Círculo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="radioCirculo" class="form-label">Radio:</label>
                        <input type="number" id="radioCirculo">
                    </div>
                </div>
                <img src="https://www.neurochispas.com/wp-content/uploads/2021/03/formula-del-area-de-un-circulo.png" alt="Fórmula del Circulo" style="max-width:100%;">
                <p id="lblExplicacionCirculo"></p>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary" onclick="calcularPerimetroCirculo()">Calcular</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal para el rectángulo -->
<div class="modal fade" id="modalRectangulo" tabindex="-1" aria-labelledby="modalRectanguloLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalRectanguloLabel">Perímetro del Rectángulo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="lado1Rectangulo" class="form-label">Lado 1:</label>
                    <input type="number" id="lado1Rectangulo">
                </div>
                <div class="mb-3">
                    <label for="lado2Rectangulo" class="form-label">Lado 2:</label>
                    <input type="number" id="lado2Rectangulo">
                </div>
                <img src="https://www.neurochispas.com/wp-content/uploads/2021/03/formula-del-perimetro-de-un-triangulo-equilatero.png" alt="Fórmula del Rectangulo" style="max-width:100%;">
                <p id="lblExplicacionRectangulo"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularPerimetroRectangulo()">Calcular</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal para el cuadrado -->
<div class="modal fade" id="modalCuadrado" tabindex="-1" aria-labelledby="modalCuadradoLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalCuadradoLabel">Perímetro del Cuadrado</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="ladoCuadrado" class="form-label">Lado:</label>
                    <input type="number" id="ladoCuadrado">
                </div>
                <img src="https://www.neurochispas.com/wp-content/uploads/2021/03/formula-del-perimetro-de-un-triangulo-equilatero.png" alt="Fórmula del Rectangulo" style="max-width:100%;">
                 <p id="lblExplicacionCuadrado"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularPerimetroCuadrado()">Calcular</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal para el triángulo -->
<div class="modal fade" id="modalTriangulo" tabindex="-1" aria-labelledby="modalTrianguloLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalTrianguloLabel">Perímetro del Triángulo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="lado1Triangulo" class="form-label">Lado 1:</label>
                    <input type="number" id="lado1Triangulo">
                </div>
                <div class="mb-3">
                    <label for="lado2Triangulo" class="form-label">Lado 2:</label>
                    <input type="number" id="lado2Triangulo">
                </div>
                <div class="mb-3">
                    <label for="lado3Triangulo" class="form-label">Lado 3:</label>
                    <input type="number" id="lado3Triangulo">
                </div>
                <p id="lblExplicacionTriangulo"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularPerimetroTriangulo()">Calcular</button>
            </div>
        </div>
    </div>
</div>
    <!-- Modal para el trapecio -->
<div class="modal fade" id="modalTrapecio" tabindex="-1" aria-labelledby="modalTrapecioLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalTrapecioLabel">Perímetro del Trapecio</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="baseMayorTrapecio" class="form-label">Base Mayor:</label>
                    <input type="number" id="baseMayorTrapecio">
                </div>
                <div class="mb-3">
                    <label for="baseMenorTrapecio" class="form-label">Base Menor:</label>
                    <input type="number" id="baseMenorTrapecio">
                </div>
                <div class="mb-3">
                    <label for="lado1Trapecio" class="form-label">Lado 1:</label>
                    <input type="number" id="lado1Trapecio">
                </div>
                <div class="mb-3">
                    <label for="lado2Trapecio" class="form-label">Lado 2:</label>
                    <input type="number" id="lado2Trapecio">
                </div>
                <p id="lblExplicacionTrapecio"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularPerimetroTrapecio()">Calcular</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal para el rombo -->
<div class="modal fade" id="modalRombo" tabindex="-1" aria-labelledby="modalRomboLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalRomboLabel">Perímetro del Rombo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="ladoRombo" class="form-label">Lado:</label>
                    <input type="number" id="ladoRombo">
                </div>
                <p id="lblExplicacionRombo"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularPerimetroRombo()">Calcular</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal para el pentágono -->
<div class="modal fade" id="modalPentagono" tabindex="-1" aria-labelledby="modalPentagonoLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalPentagonoLabel">Perímetro del Pentágono</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="ladoPentagono" class="form-label">Lado:</label>
                    <input type="number" id="ladoPentagono">
                </div>
                <p id="lblExplicacionPentagono"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularPerimetroPentagono()">Calcular</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal para el hexágono -->
<div class="modal fade" id="modalHexagono" tabindex="-1" aria-labelledby="modalHexagonoLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalHexagonoLabel">Perímetro del Hexágono</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="ladoHexagono" class="form-label">Lado:</label>
                    <input type="number" id="ladoHexagono">
                </div>
                <p id="lblExplicacionHexagono"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularPerimetroHexagono()">Calcular</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal para el octágono -->
<div class="modal fade" id="modalOctagono" tabindex="-1" aria-labelledby="modalOctagonoLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalOctagonoLabel">Perímetro del Octágono</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="ladoOctagono" class="form-label">Lado:</label>
                    <input type="number" id="ladoOctagono">
                </div>
                <p id="lblExplicacionOctagono"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularPerimetroOctagono()">Calcular</button>
            </div>
        </div>
    </div>
</div>

<!-- Funciones de cálculo de perímetro para cada figura -->
<script>
    // Función de cálculo de perímetro para el círculo
    function calcularPerimetroCirculo() {
        var radio = parseFloat(document.getElementById("radioCirculo").value);
        var perimetro = 2 * Math.PI * radio;
        alert("El perímetro del círculo es: " + perimetro);
        document.getElementById("lblExplicacionCirculo").innerText = "El perímetro de un círculo se calcula multiplicando su radio por 2π: P = 2π * radio.";
    }

    // Función de cálculo de perímetro para el rectángulo
    function calcularPerimetroRectangulo() {
        var lado1 = parseFloat(document.getElementById("lado1Rectangulo").value);
        var lado2 = parseFloat(document.getElementById("lado2Rectangulo").value);
        var perimetro = 2 * (lado1 + lado2);
        alert("El perímetro del rectángulo es: " + perimetro);
        document.getElementById("lblExplicacionRectangulo").innerText = "El perímetro de un rectángulo se calcula sumando el doble de sus lados: P = 2(lado1 + lado2).";
    }

    // Función de cálculo de perímetro para el cuadrado
    function calcularPerimetroCuadrado() {
        var lado = parseFloat(document.getElementById("ladoCuadrado").value);
        var perimetro = 4 * lado;
        alert("El perímetro del cuadrado es: " + perimetro);
        document.getElementById("lblExplicacionCuadrado").innerText = "El perímetro de un cuadrado se calcula multiplicando la longitud de uno de sus lados por 4: P = 4(lado).";
    }

    // Función de cálculo de perímetro para el triángulo
    function calcularPerimetroTriangulo() {
        var lado1 = parseFloat(document.getElementById("lado1Triangulo").value);
        var lado2 = parseFloat(document.getElementById("lado2Triangulo").value);
        var lado3 = parseFloat(document.getElementById("lado3Triangulo").value);
        var perimetro = lado1 + lado2 + lado3;
        alert("El perímetro del triángulo es: " + perimetro);
        document.getElementById("lblExplicacionTriangulo").innerText = "El perímetro de un triángulo se calcula sumando la longitud de sus tres lados: P = lado1 + lado2 + lado3.";
    }

    // Función de cálculo de perímetro para el trapecio
    function calcularPerimetroTrapecio() {
        var baseMayor = parseFloat(document.getElementById("baseMayorTrapecio").value);
        var baseMenor = parseFloat(document.getElementById("baseMenorTrapecio").value);
        var lado1 = parseFloat(document.getElementById("lado1Trapecio").value);
        var lado2 = parseFloat(document.getElementById("lado2Trapecio").value);
        var perimetro = baseMayor + baseMenor + lado1 + lado2;
        alert("El perímetro del trapecio es: " + perimetro);
        document.getElementById("lblExplicacionTrapecio").innerText = "El perímetro de un trapecio se calcula sumando todas sus longitudes de lado: P = baseMayor + baseMenor + lado1 + lado2.";
    }

    // Función de cálculo de perímetro para el rombo
    function calcularPerimetroRombo() {
        var lado = parseFloat(document.getElementById("ladoRombo").value);
        var perimetro = 4 * lado;
        alert("El perímetro del rombo es: " + perimetro);
        document.getElementById("lblExplicacionRombo").innerText = "El perímetro de un rombo se calcula multiplicando la longitud de uno de sus lados por cuatro: P = 4(lado).";
    }

    // Función de cálculo de perímetro para el pentágono
    function calcularPerimetroPentagono() {
        var lado = parseFloat(document.getElementById("ladoPentagono").value);
        var perimetro = 5 * lado;
        alert("El perímetro del pentágono es: " + perimetro);
        document.getElementById("lblExplicacionPentagono").innerText = "El perímetro de un pentágono se calcula multiplicando la longitud de uno de sus lados por cinco: P = 5(lado).";
    }

    // Función de cálculo de perímetro para el hexágono
    function calcularPerimetroHexagono() {
        var lado = parseFloat(document.getElementById("ladoHexagono").value);
        var perimetro = 6 * lado;
        alert("El perímetro del hexágono es: " + perimetro);
        document.getElementById("lblExplicacionHexagono").innerText = "El perímetro de un hexágono se calcula multiplicando la longitud de uno de sus lados por seis: P = 6(lado).";
    }

    // Función de cálculo de perímetro para el octágono
    function calcularPerimetroOctagono() {
        var lado = parseFloat(document.getElementById("ladoOctagono").value);
        var perimetro = 8 * lado;
        alert("El perímetro del octágono es: " + perimetro);
        document.getElementById("lblExplicacionOctagono").innerText = "El perímetro de un octágono se calcula multiplicando la longitud de uno de sus lados por ocho: P = 8(lado).";
    }


        // Función para mostrar el modal correspondiente
        function mostrarModal(idModal) {
            $('#' + idModal).modal('show');
        }
</script>
</asp:Content>


