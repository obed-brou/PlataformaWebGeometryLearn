<%@ Page Title="Area" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="IntArea.aspx.cs" Inherits="PlataformaWebGeometryLearn.WebForms.IntArea" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="container" id="figurasDiv">
    <h2>Figuras Geométricas</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Círculo</h5>
                    <p class="card-text">Calcular el área de un círculo.</p>
                    <a href="#" class="btn btn-primary" onclick="mostrarModal('modalCirculo')">Calcular</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Triángulo</h5>
                    <p class="card-text">Calcular el área de un triángulo.</p>
                    <a href="#" class="btn btn-primary" onclick="mostrarModal('modalTriangulo')">Calcular</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Cuadrado</h5>
                    <p class="card-text">Calcular el área de un cuadrado.</p>
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
                    <p class="card-text">Calcular el área de un rectángulo.</p>
                     <a href="#" class="btn btn-primary" onclick="mostrarModal('modalRectangulo')">Calcular</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Rombo</h5>
                    <p class="card-text">Calcular el área de un rombo.</p>
                     <a href="#" class="btn btn-primary" onclick="mostrarModal('modalRombo')">Calcularr</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Trapecio</h5>
                    <p class="card-text">Calcular el área de un trapecio.</p>
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
                    <p class="card-text">Calcular el área de un pentágono.</p>
                    <a href="#" class="btn btn-primary" onclick="mostrarModal('modalPentagono')">Calcular</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Hexágono</h5>
                    <p class="card-text">Calcular el área de un hexágono.</p>
                    <a href="#" class="btn btn-primary" onclick="mostrarModal('modalHexagono')">Calcular</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Octágono</h5>
                    <p class="card-text">Calcular el área de un octágono.</p>
                     <a href="#" class="btn btn-primary" onclick="mostrarModal('modalOctagono')">Calcular</a>
                </div>
            </div>
        </div>
    </div>

    <div id="areaHeader" style="display: none;">
        <h2 onclick="mostrarFiguras()">Calcular Area</h2>
    </div>
    
    <div id="modalRectangulo" class="modal" style="display: none;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Calcular Área de Rectángulo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="baseRectangulo" class="form-label">Base:</label>
                        <input type="number" class="form-control" id="baseRectangulo">
                    </div>
                    <div class="mb-3">
                        <label for="alturaRectangulo" class="form-label">Altura:</label>
                        <input type="number" class="form-control" id="alturaRectangulo">
                    </div>
                    <img src="https://aerle.es/wp-content/uploads/2021/09/formula-del-rectangulo.png" alt="Fórmula del rectángulo" style="max-width: 100%;">
                    <p id="lblExplicacionRectangulo"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary" onclick="calcularRectangulo()">Calcular</button>
                </div>
            </div>
        </div>
    </div>
   <!-- Modal para el círculo -->
<div class="modal fade" id="modalCirculo" tabindex="-1" aria-labelledby="modalCirculoLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalCirculoLabel">Área del Círculo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="radioCirculo" class="form-label">Radio:</label>
                    <input type="number" id="radioCirculo">
                </div>
                <img src="https://www.neurochispas.com/wp-content/uploads/2021/03/formula-del-area-de-un-circulo.png" alt="Fórmula del Circulo" style="max-width:100%;">
                <p id="lblExplicacionCirculo"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularCirculo()">Calcular</button>
            </div>
        </div>
    </div>
</div>

    <!-- Modal para el triángulo -->
<div class="modal fade" id="modalTriangulo" tabindex="-1" aria-labelledby="modalTrianguloLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalTrianguloLabel">Área del Triángulo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="baseTriangulo" class="form-label">Base:</label>
                    <input type="number" id="baseTriangulo">
                </div>
                <div class="mb-3">
                    <label for="alturaTriangulo" class="form-label">Altura:</label>
                    <input type="number" id="alturaTriangulo">
                </div>
                <img src="https://www.neurochispas.com/wp-content/uploads/2021/03/formula-del-area-de-un-triangulo-rectangulo.png" alt="Fórmula del Triángulo" style="max-width:100%;">
                <p id="lblExplicacionTriangulo"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularTriangulo()">Calcular</button>
            </div>
        </div>
    </div>
</div>
    <!-- Modal para el cuadrado -->
<div class="modal fade" id="modalCuadrado" tabindex="-1" aria-labelledby="modalCuadradoLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalCuadradoLabel">Área del Cuadrado</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="ladoCuadrado" class="form-label">Lado:</label>
                    <input type="number" id="ladoCuadrado">
                </div>
                <img src="https://www.neurochispas.com/wp-content/uploads/2021/03/formula-del-area-de-un-cuadrado.png" alt="Fórmula del Cuadrado" style="max-width:100%;">
                <p id="lblExplicacionCuadrado"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularCuadrado()">Calcular</button>
            </div>
        </div>
    </div>
</div>
    <!-- Modal para el rombo -->
<div class="modal fade" id="modalRombo" tabindex="-1" aria-labelledby="modalRomboLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalRomboLabel">Área del Rombo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="diagonalMayorRombo" class="form-label">Diagonal Mayor:</label>
                    <input type="number" id="diagonalMayorRombo">
                </div>
                <div class="mb-3">
                    <label for="diagonalMenorRombo" class="form-label">Diagonal Menor:</label>
                    <input type="number" id="diagonalMenorRombo">
                </div>
                <img src="https://www.neurochispas.com/wp-content/uploads/2021/03/formula-del-area-de-un-rombo.png" alt="Fórmula del Rombo" style="max-width:100%;">
                <p id="lblExplicacionRombo"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularRombo()">Calcular</button>
            </div>
        </div>
    </div>
</div>
    <!-- Modal para el trapecio -->
<div class="modal fade" id="modalTrapecio" tabindex="-1" aria-labelledby="modalTrapecioLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalTrapecioLabel">Área del Trapecio</h5>
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
                    <label for="alturaTrapecio" class="form-label">Altura:</label>
                    <input type="number" id="alturaTrapecio">
                </div>
                <img src="https://www.neurochispas.com/wp-content/uploads/2021/03/calcular-el-area-de-un-trapecio.png" alt="Fórmula del Trapecio" style="max-width:100%;">
                <p id="lblExplicacionTrapecio"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularTrapecio()">Calcular</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal para el pentágono -->
<div class="modal fade" id="modalPentagono" tabindex="-1" aria-labelledby="modalPentagonoLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalPentagonoLabel">Área del Pentágono</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="ladoPentagono" class="form-label">Longitud del Lado:</label>
                    <input type="number" id="ladoPentagono">
                </div>
                <div class="mb-3">
                    <label for="apotemaPentagono" class="form-label">Apotema:</label>
                    <input type="number" id="apotemaPentagono">
                </div>
                <img src="https://en.neurochispas.com/wp-content/uploads/2021/07/formula-for-the-area-of-a-pentagon.png" alt="Fórmula del Pentágono" style="max-width:100%;">
                <p id="lblExplicacionPentagono"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularPentagono()">Calcular</button>
            </div>
        </div>
    </div>
</div>
    <!-- Modal para el hexágono -->
<div class="modal fade" id="modalHexagono" tabindex="-1" aria-labelledby="modalHexagonoLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalHexagonoLabel">Área del Hexágono</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="ladoHexagono" class="form-label">Longitud del Lado:</label>
                    <input type="number" id="ladoHexagono">
                </div>
                <img src="https://en.neurochispas.com/wp-content/uploads/2021/07/diagram-of-a-hexagon-with-apothem-480x398.png" alt="Fórmula del Hexágono" style="max-width:100%;">
                <p id="lblExplicacionHexagono"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularHexagono()">Calcular</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal para el octágono -->
<div class="modal fade" id="modalOctagono" tabindex="-1" aria-labelledby="modalOctagonoLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalOctagonoLabel">Área del Octágono</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="ladoOctagono" class="form-label">Longitud del Lado:</label>
                    <input type="number" id="ladoOctagono">
                </div>
                <img src="https://en.neurochispas.com/wp-content/uploads/2021/07/diagram-of-an-octagon-with-apothem.png" alt="Fórmula del Octágono" style="max-width:100%;">
                <p id="lblExplicacionOctagono"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="calcularOctagono()">Calcular</button>
            </div>
        </div>
    </div>
</div>



    
</div>

<script>
   

    function mostrarFiguras() {
        var figurasDiv = document.getElementById("figurasDiv");
        var areaHeader = document.getElementById("areaHeader");

        figurasDiv.style.display = "block";
        areaHeader.style.display = "none";
        // Mostrar el modal del rectángulo
        var modalRectangulo = document.getElementById("modalRectangulo");
        modalRectangulo.style.display = "block";
    }
   
    function calcularRectangulo() {
        var base = parseFloat(document.getElementById("baseRectangulo").value);
        var altura = parseFloat(document.getElementById("alturaRectangulo").value);
        var area = base * altura;
        document.getElementById("lblExplicacionRectangulo").innerText = "Para calcular el área del rectángulo, multiplicamos la longitud de la base por la altura.";
        alert("El área del rectángulo es: " + area);
    }
    function calcularCirculo() {
        var radio = parseFloat(document.getElementById("radioCirculo").value);
        // Realizar el cálculo del área del círculo
        var area = Math.PI * radio * radio;

        // Modificar el contenido del label con la explicación paso a paso
        var explicacion = "Para calcular el área del círculo, utilizamos la fórmula: ";
        explicacion += "Área = π * radio^2, donde π es el valor de pi (aproximadamente 3.14159) ";
        explicacion += "y radio es la longitud del radio del círculo.";

        document.getElementById("lblExplicacionCirculo").innerText = explicacion;

        alert("El área del círculo es: " + area);
    }

    function calcularTriangulo() {
        var base = parseFloat(document.getElementById("baseTriangulo").value);
        var altura = parseFloat(document.getElementById("alturaTriangulo").value);
        var area = (base * altura) / 2;
        document.getElementById("lblExplicacionTriangulo").innerText = "Para calcular el área del triángulo, multiplicamos la longitud de la base por la altura y dividimos el resultado entre 2.";
        alert("El área del triángulo es: " + area);
    }
    function calcularCuadrado() {
        var lado = parseFloat(document.getElementById("ladoCuadrado").value);
        var area = lado * lado;
        document.getElementById("lblExplicacionCuadrado").innerText = "Para calcular el área del cuadrado, elevamos al cuadrado la longitud del lado.";
        alert("El área del cuadrado es: " + area);
    }
    function calcularRombo() {
        var diagonalMayor = parseFloat(document.getElementById("diagonalMayorRombo").value);
        var diagonalMenor = parseFloat(document.getElementById("diagonalMenorRombo").value);
        var area = (diagonalMayor * diagonalMenor) / 2;
        document.getElementById("lblExplicacionRombo").innerText = "Para calcular el área del rombo, multiplicamos las longitudes de las diagonales y dividimos el resultado entre 2.";
        alert("El área del rombo es: " + area);
    }
    
    function calcularTrapecio() {
        var baseMayor = parseFloat(document.getElementById("baseMayorTrapecio").value);
        var baseMenor = parseFloat(document.getElementById("baseMenorTrapecio").value);
        var altura = parseFloat(document.getElementById("alturaTrapecio").value);
        var area = ((baseMayor + baseMenor) * altura) / 2;
        document.getElementById("lblExplicacionTrapecio").innerText = "Para calcular el área del trapecio, sumamos las longitudes de las bases, multiplicamos el resultado por la altura y dividimos entre 2.";
        alert("El área del trapecio es: " + area);
    }

    // Función para calcular el área del pentágono
    function calcularPentagono() {
        var lado = parseFloat(document.getElementById("ladoPentagono").value);
        var apotema = parseFloat(document.getElementById("apotemaPentagono").value);
        var area = (lado * 5 * apotema) / 2;
        document.getElementById("lblExplicacionPentagono").innerText = "Para calcular el área del pentágono, multiplicamos la longitud del lado por 5 y por la apotema, y dividimos el resultado entre 2.";
        alert("El área del pentágono es: " + area);
    }

    function calcularHexagono() {
        var lado = parseFloat(document.getElementById("ladoHexagono").value);
        var area = (3 * Math.sqrt(3) * lado * lado) / 2;
        document.getElementById("lblExplicacionHexagono").innerText = "Para calcular el área del hexágono regular, usamos la fórmula: (3 * √3 * L^2) / 2, donde L es la longitud del lado.";
        alert("El área del hexágono es: " + area);
    }

    function calcularOctagono() {
        var lado = parseFloat(document.getElementById("ladoOctagono").value);
        var area = 2 * (1 + Math.sqrt(2)) * lado * lado;
        document.getElementById("lblExplicacionOctagono").innerText = "Para calcular el área del octágono regular, usamos la fórmula: 2 * (1 + √2) * L^2, donde L es la longitud del lado.";
        alert("El área del octágono es: " + area);
    }

    function mostrarModal(idModal) {
            $('#' + idModal).modal('show');
    }


</script>

</asp:Content>
