// Função para alternar a visibilidade da senha
function togglePassword() {
    const passwordField = document.getElementById("password");
    const eyeIcon = document.querySelector(".toggle-password");

    // Verifica o tipo do campo de senha e alterna entre 'password' e 'text'
    if (passwordField.type === "password") {
        passwordField.type = "text"; // Torna a senha visível
        eyeIcon.style.transform = "translateY(-3px)"; // Move o ícone para cima (leve "piscada")
        eyeIcon.style.opacity = "0.12"; // Torna o ícone um pouco mais transparente
        setTimeout(() => {
            eyeIcon.src = "/png/visivel.png";  // Substitui a imagem pelo ícone de olho fechado
            eyeIcon.style.transform = "translateY(0)"; // Restaura a posição original
            eyeIcon.style.opacity = "1"; // Restaura a opacidade para 100%
        }, 300); // Espera a animação de movimento e opacidade terminar antes de trocar a imagem
    } else {
        passwordField.type = "password"; // Torna a senha oculta
        eyeIcon.style.transform = "translateY(-3px)"; // Move o ícone para cima (leve "piscada")
        eyeIcon.style.opacity = "0.12"; // Torna o ícone um pouco mais transparente
        setTimeout(() => {
            eyeIcon.src = "/png/nao_visivel.png"; // Substitui a imagem pelo ícone de olho aberto
            eyeIcon.style.transform = "translateY(0)"; // Restaura a posição original
            eyeIcon.style.opacity = "1"; // Restaura a opacidade para 100%
        }, 300); // Espera a animação de movimento e opacidade terminar antes de trocar a imagem
    }
}

window.addEventListener('load', function() {
    const loginContainer = document.querySelector('.login-container');
    const title = document.querySelector('h2');
    const inputGroups = document.querySelectorAll('.input-group');
    const button = document.querySelector('button');
    const registerLink = document.querySelector('.register-link'); // Adicionando o link de registro

    // Função para adicionar animação
    const animateElement = (element, delay) => {
        setTimeout(() => {
            element.style.opacity = '1';
            element.style.transform = 'translateY(0)';
        }, delay);
    };

    // Animação do login container
    animateElement(loginContainer, 0);

    // Animação do título
    animateElement(title, 300);

    // Animação dos campos de entrada
    inputGroups.forEach((inputGroup, index) => {
        animateElement(inputGroup, 600 + (index * 100));
    });

    // Animação do botão
    animateElement(button, 900);

    // Animação do link de registro
    animateElement(registerLink, 1200);
});
