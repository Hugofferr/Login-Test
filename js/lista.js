// Remover item ao clicar no botão "X"
const btnRemover = document.querySelectorAll('.btn-remover');
btnRemover.forEach(button => {
    button.addEventListener('click', (event) => {
        const linha = event.target.closest('tr'); // Encontra a linha
        linha.remove(); // Remove a linha
    });
});

// Aprovar item (marcar a linha como aprovada com uma cor de fundo)
const btnAprovar = document.querySelectorAll('.btn-aprovar');
btnAprovar.forEach(button => {
    button.addEventListener('click', (event) => {
        const linha = event.target.closest('tr');
        linha.style.backgroundColor = '#d4edda'; // Marca a linha como aprovada (exemplo visual)
    });
});
