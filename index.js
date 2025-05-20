document.addEventListener('DOMContentLoaded', () => {
    const slider = document.querySelector('.slider');
    const slides = document.querySelectorAll('.slide');
    const puntosContainer = document.querySelector('.puntos-navegacion');
    let currentIndex = 0;

    // Crear puntos de navegación
    slides.forEach((_, index) => {
        const punto = document.createElement('div');
        punto.classList.add('punto');
        punto.addEventListener('click', () => cambiarSlide(index));
        puntosContainer.appendChild(punto);
    });

    // Iniciar con el primer punto activo
    document.querySelector('.punto').classList.add('activo');

    function cambiarSlide(nuevoIndex) {
        currentIndex = nuevoIndex;
        slider.style.transform = `translateX(-${currentIndex * 100}%)`;
        actualizarPuntos();
    }

    function actualizarPuntos() {
        document.querySelectorAll('.punto').forEach((punto, index) => {
            punto.classList.toggle('activo', index === currentIndex);
        });
    }

    // Event listeners para botones
    document.querySelector('.prev').addEventListener('click', () => {
        currentIndex = (currentIndex - 1 + slides.length) % slides.length;
        cambiarSlide(currentIndex);
    });

    document.querySelector('.next').addEventListener('click', () => {
        currentIndex = (currentIndex + 1) % slides.length;
        cambiarSlide(currentIndex);
    });
});