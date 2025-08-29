/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


document.addEventListener("DOMContentLoaded", () => {
    const page = document.body.getAttribute("data-page");

    if (page === "read") {
                console.log("Página Read carregada");

                const buttons = document.querySelectorAll(".btn-animal");
                buttons.forEach(btn => {
                    btn.addEventListener("mouseenter", () => {
                        btn.style.transform = "scale(1.05)";
                        btn.style.boxShadow = "0 4px 8px rgba(0,0,0,0.2)";
                    });
                    btn.addEventListener("mouseleave", () => {
                        btn.style.transform = "scale(1)";
                        btn.style.boxShadow = "none";
                    });
                });
            }
});