const btnCategorias = document.getElementById('btn-categorias'),
    grid = document.getElementById('grid');
    esDispositivoMovil = () => window.innerWidth <= 800;

btnCategorias.addEventListener('mouseover', () => {
    if(!esDispositivoMovil()){
        grid.classList.add('activo');
    } 
});

grid.addEventListener('mouseleave', () => {
    if(!esDispositivoMovil()){
        grid.classList.remove('activo');
    } 
});


document.querySelectorAll('#menu .categorias a').forEach((elemento) => {
    elemento.addEventListener('mouseenter', (e) =>{
        document.querySelectorAll('#menu .subcategoria').forEach((categorias) => {
           categorias.classList.remove('activo');
           if(categorias.dataset.categorias ==e.target.dataset.categorias){
               categorias.classList.add('activo');
           }
        });
    });
});

