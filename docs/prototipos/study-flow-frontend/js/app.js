const titles={home:"Bom dia, Gustavo!",agenda:"Minha agenda",subjects:"Matérias",goals:"Metas",progress:"Seu progresso",settings:"Configurações"};
const pages=document.querySelectorAll(".page"), nav=document.querySelectorAll("[data-page]"), title=document.querySelector("#title");
function go(id){pages.forEach(p=>p.classList.toggle("active",p.id===id));nav.forEach(n=>n.classList.toggle("active",n.dataset.page===id));title.textContent=titles[id];document.querySelector(".sidebar").classList.remove("open");window.scrollTo({top:0,behavior:"smooth"})}
nav.forEach(n=>n.onclick=()=>go(n.dataset.page));
document.querySelector("#menu").onclick=()=>document.querySelector(".sidebar").classList.toggle("open");
const modal=document.querySelector("#modal"),mt=document.querySelector("#mtitle"),mx=document.querySelector("#mtext"),mi=document.querySelector("#minput");
function openModal(t,x,p){mt.textContent=t;mx.textContent=x;mi.placeholder=p;modal.classList.add("open");mi.focus()}
function close(){modal.classList.remove("open")}
document.querySelector("#close").onclick=close;modal.onclick=e=>{if(e.target===modal)close()};
document.querySelector("#newSession").onclick=()=>openModal("Nova sessão","Adicione uma sessão de estudo à sua agenda.","Ex.: Matemática");
document.querySelector("#newSubject").onclick=()=>openModal("Nova matéria","Crie uma matéria para acompanhar seu progresso.","Ex.: Banco de Dados");
document.querySelector("#newGoal").onclick=()=>openModal("Nova meta","Defina algo que você quer alcançar.","Ex.: 6h por semana");
document.querySelector("#confirm").onclick=()=>{alert(`"${mi.value||"Novo item"}" foi adicionado ao protótipo.`);close()};
document.querySelector("#start").onclick=()=>openModal("Sessão iniciada","O protótipo simulou o início da sessão de Python.","",);
document.querySelector("#bell").onclick=()=>alert("Você não possui novas notificações.");
document.querySelector("#save").onclick=()=>alert("Alterações salvas no protótipo.");
document.querySelectorAll(".event button").forEach(b=>b.onclick=()=>{b.style.background="#5d9278";b.style.color="#fff";b.parentElement.style.opacity=".6"});
