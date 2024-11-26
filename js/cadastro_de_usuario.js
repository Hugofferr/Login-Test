// Função para exibir o formulário de cadastro e ocultar o de pesquisa
function showCadastro() {
    document.querySelector('.form-container').classList.add('active');
    document.querySelector('.pesquisa-container').classList.remove('active');
}

// Função para exibir o formulário de pesquisa e ocultar o de cadastro
function showPesquisa() {
    document.querySelector('.form-container').classList.remove('active');
    document.querySelector('.pesquisa-container').classList.add('active');
}

// Função para editar um usuário
function editarUsuario() {
    const usuario = document.getElementById('pesquisa').value;
    if (usuario) {
        alert(`Usuário ${usuario} editado com sucesso!`);
    } else {
        alert('Por favor, insira o nome do usuário para editar.');
    }
}

// Função para excluir um usuário
function excluirUsuario() {
    const usuario = document.getElementById('pesquisa').value;
    if (usuario) {
        alert(`Usuário ${usuario} excluído com sucesso!`);
    } else {
        alert('Por favor, insira o nome do usuário para excluir.');
    }
}
