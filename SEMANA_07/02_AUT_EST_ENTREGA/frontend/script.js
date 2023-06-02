$(document).ready(function () {
    // Seleciona os elementos HTML correspondentes aos dados de experiência
    const nome = document.querySelector("[data-experiencia-nome]");
    const datainicio = document.querySelector("[data-experiencia-datainicio]");
    const datafim = document.querySelector("[data-experiencia-datafim]");
    const cargo = document.querySelector("[data-experiencia-cargo]");
    const descricao = document.querySelector("[data-experiencia-descricao]");

    // Define a URL da API ou rota do servidor para obter os dados de experiência
    let urlExperiencia = '/experiencia';

    // Requisição AJAX para obter os dados da experiência (nome da empresa)
    $.ajax({
        url: urlExperiencia,
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            let experiencia = data[0];
            nome.innerText = experiencia.nome_empresa; // Insere o nome da empresa no elemento HTML correspondente
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus, errorThrown); // Exibe informações de erro no console
        }
    });

    // Requisição AJAX para obter os dados da experiência (data de início)
    $.ajax({
        url: urlExperiencia,
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            let experiencia = data[0];
            datainicio.innerText = experiencia.data_inicio; // Insere a data de início no elemento HTML correspondente
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus, errorThrown); // Exibe informações de erro no console
        }
    });

    // Requisição AJAX para obter os dados da experiência (data de fim)
    $.ajax({
        url: urlExperiencia,
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            let experiencia = data[0];
            datafim.innerText = experiencia.data_fim; // Insere a data de fim no elemento HTML correspondente
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus, errorThrown); // Exibe informações de erro no console
        }
    });

    // Requisição AJAX para obter os dados da experiência (cargo)
    $.ajax({
        url: urlExperiencia,
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            let experiencia = data[0];
            cargo.innerText = experiencia.cargo; // Insere o cargo no elemento HTML correspondente
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus, errorThrown); // Exibe informações de erro no console
        }
    });

    // Requisição AJAX para obter os dados da experiência (descrição)
    $.ajax({
        url: urlExperiencia,
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            let experiencia = data[0];
            descricao.innerText = experiencia.descricao; // Insere a descrição no elemento HTML correspondente
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus, errorThrown); // Exibe informações de erro no console
        }
    });
});

