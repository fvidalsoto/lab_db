<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PetroFAI</title>
    <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- Estilos CSS -->
    <link rel="stylesheet" type="text/css" href="./css/estilos.min.css">
</head>

<body>
    <div class="app">
        <div class="container">
            <h1 class="pt-5 text-white">Laboratorio de BD</h1>
            <p class="pt-3">Inserción de 1.000.000 de tuplas</p>
            <div class="row">
                <div class="col-6">
                    <form class="col-12 col-lg-8" action="" method="POST" id="form-insert">
                        <div class="d-block">
                            <select class="form-select text-center" aria-label="" name="opcion" id="opcion">
                                <option selected disabled value="0">-- Seleccionar SGBD --</option>
                                <option value="1">MySQL</option>
                                <option value="2">PostgreSQL</option>
                            </select>
                            <select class="form-select mt-2 text-center" aria-label="" name="opcion2" id="opcion2">
                                <option selected disabled value="0">-- Seleccionar tabla --</option>
                                <option value="1">Actividad (Indice Arbol-B)</option>
                                <option value="2">Sistema de Extraccion (Indice Hash)</option>
                            </select>
                        </div>
                        <button type="submit" id="insertar" class="btn btn-primary" id="btn-submit">Insertar tuplas</button>
                    </form>
                    <div class="py-3">
                        <div class="sk-chase mr-4 spinner d-none">
                            <div class="sk-chase-dot"></div>
                            <div class="sk-chase-dot"></div>
                            <div class="sk-chase-dot"></div>
                            <div class="sk-chase-dot"></div>
                            <div class="sk-chase-dot"></div>
                            <div class="sk-chase-dot"></div>
                        </div>
                    </div>
                </div>
                <div class="col-6" id="cont_tiempo">

                </div>
            </div>

        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script src="./plugins/sweetalert2/sweetalert2.all.min.js"></script>
    <script type="text/javascript" src="./js/funciones.js"></script>
</body>

</html>