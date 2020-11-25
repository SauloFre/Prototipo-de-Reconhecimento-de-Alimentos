var totalCalorias = 0.0;
var totalProteinas = 0.0;
var totalCarboidratos = 0.0;
var totalFibras = 0.0;

const STATUS_CODE_OK = 200;

$(document).ready(function(){

  const request = new Request("/all-meals-data");

  const response = request.get();

  response.then(response => {
    var idAnterior = -1;
    
    response.valor.forEach(element => {
      if(element.id !== idAnterior){

        if(idAnterior != -1)
          setTotalInformation(idAnterior);

        totalCalorias = 0.0;
        totalProteinas = 0.0;
        totalCarboidratos = 0.0;
        totalFibras = 0.0;

        createElementMealList(element);
        putFoodsOnCard(element);
        idAnterior = element.id;
      }else{
        putFoodsOnCard(element);
      }
    });

    setTotalInformation(idAnterior);
  
  });

});

function setTotalInformation(idAnterior){

  const totalCaloriasText = document.createTextNode("Total calorias: ".concat(totalCalorias.toString()));
  const totalCaloriasP = document.getElementById('total-kcal-'.concat(idAnterior.toString()));
  if(totalCaloriasP)
    totalCaloriasP.appendChild(totalCaloriasText);

  const totalProteinasText = document.createTextNode("Total proteinas: ".concat(totalProteinas.toString()));
  const totalProteinasP = document.getElementById('total-protein-'.concat(idAnterior.toString()));
  if(totalProteinasP)
    totalProteinasP.appendChild(totalProteinasText);

  const totalCarboidratosText = document.createTextNode("Total carboidratos: ".concat(totalCarboidratos.toString()));
  const totalCarboidratisP = document.getElementById('total-carbohydrate-'.concat(idAnterior.toString()));
  if(totalCarboidratisP)
    totalCarboidratisP.appendChild(totalCarboidratosText);

  const totalFibrasText = document.createTextNode("Total fibras: ".concat(totalFibras.toString()));
  const totalFibrasP = document.getElementById('total-fiber-'.concat(idAnterior.toString()));
  if(totalFibrasP)
    totalFibrasP.appendChild(totalFibrasText);
}

function createElementMealList(element){

  const row = document.getElementById('row');

  const divCol12 = document.createElement('div');
  divCol12.className = "col-12";

  const divBordaLista = document.createElement('div');
  divBordaLista.className = "d-flex bd-highlight bordaLista bordaLista";

  const divBdHighlight = document.createElement('div');
  divBdHighlight.className = "p-2 w-100 bd-highlight";

  const mealName = document.createTextNode(element.meal_name);
  const mealDate = document.createTextNode(constroiData(element.create_time));
  const brTag = document.createElement('br');
  const boldText = document.createElement('b');
  
  boldText.appendChild(mealName);
  divBdHighlight.appendChild(boldText);
  divBdHighlight.appendChild(brTag);
  divBdHighlight.appendChild(mealDate);

  const divModal = document.createElement('div');
  divModal.className = "p-2 flex-shrink-1 bd-highlight";

  const inputOpenModal = document.createElement('input');
  inputOpenModal.type = "image";
  inputOpenModal.className = "button-delete";
  inputOpenModal.id = "button-delete";
  inputOpenModal.alt = "";
  inputOpenModal.src = "../../images/view.png";
  inputOpenModal.setAttribute('data-toggle', 'modal');
  inputOpenModal.setAttribute('data-target', '#ModalLongo'.concat(element.id));

  divModal.appendChild(inputOpenModal);

  //MODAL
  const modal = document.createElement('div');
  modal.className = "modal fade";
  modal.id = "ModalLongo".concat(element.id);
  modal.setAttribute('tabindex', '-1');
  modal.setAttribute('role', 'dialog');
  modal.setAttribute('aria-labelledby', 'TituloModalLongoExemplo');
  modal.setAttribute('aria-hidden', 'true');

  divModal.appendChild(modal);

  //MODAL DIALOG
  const divModalDialog = document.createElement('div');
  divModalDialog.className = "modal-dialog";
  divModalDialog.setAttribute('role', 'document');

  modal.appendChild(divModalDialog);

  //MODAL CONTENT
  const divModalContent = document.createElement('div');
  divModalContent.className = "modal-content";

  divModalDialog.appendChild(divModalContent);

  //HEADER

  const divModalHeader = document.createElement('div');
  divModalHeader.className = "modal-header";

  divModalContent.appendChild(divModalHeader);

  const h5Title = document.createElement('h5');
  h5Title.className = "modal-title";
  h5Title.id = "TituloModalLongoExemplo";

  const tituloModal = document.createTextNode(element.meal_name);

  h5Title.appendChild(tituloModal);

  divModalHeader.appendChild(h5Title);

  const closeButtonModal = document.createElement('button');
  closeButtonModal.type = "button";
  closeButtonModal.className = "close";
  closeButtonModal.setAttribute('data-dismiss', 'modal');
  closeButtonModal.setAttribute('aria-label', 'Fechar');

  const spanCloseButtonModal = document.createElement('span');
  spanCloseButtonModal.setAttribute('aria-hidden', 'true');

  const spanCloseButtonModalText = document.createTextNode("x");

  spanCloseButtonModal.appendChild(spanCloseButtonModalText);
  closeButtonModal.appendChild(spanCloseButtonModal);
  divModalHeader.appendChild(closeButtonModal);

  //BODY

  const modalBody = document.createElement('div');
  modalBody.className = "modal-body";
  modalBody.id = element.id;

  divModalContent.appendChild(modalBody);

  //FOOTER

  const divModalFooter = document.createElement('div');
  divModalFooter.className = "modal-footer";

  const closeButtonFooter = document.createElement('button');
  closeButtonFooter.type = "button";
  closeButtonFooter.className = "btn btn-primary";
  closeButtonFooter.setAttribute('data-dismiss', 'modal');

  const buttonCloseText = document.createTextNode('Fechar');
  closeButtonFooter.appendChild(buttonCloseText);

  divModalFooter.appendChild(closeButtonFooter);

  divModalContent.appendChild(divModalFooter);

  const divDelete = document.createElement('div');
  divDelete.className = "p-2 flex-shrink-1 bd-highlight";

  const inputDelete = document.createElement('input');
  inputDelete.type = "image";
  inputDelete.className = "button-delete";
  inputDelete.id = element.id;
  inputDelete.alt = "";
  inputDelete.src = "https://cdn1.iconfinder.com/data/icons/ui-colored-1/100/UI__1-512.png";
  inputDelete.onclick = function(){

    const request = new Request("/delete-meal");

    const response = request.delete(this.id);

    response.then(response => {
      alert(response.message);
      if(response.statusCode === STATUS_CODE_OK && response.redirectUrl !== undefined){
          window.location.href = response.redirectUrl;
      }
    });

  }

  divDelete.appendChild(inputDelete);

  divBordaLista.appendChild(divBdHighlight);
  divBordaLista.appendChild(divModal);
  divBordaLista.appendChild(divDelete);

  divCol12.appendChild(divBordaLista);

  row.appendChild(divCol12);

}

function constroiData(data){
    
  var meses = ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'];
  
  let date = new Date(data);

  var dia = date.getDate();
  var mesNumerico = date.getMonth();
  var ano = date.getFullYear();
  
  var hora = date.getHours();
  var minuto = date.getMinutes();
  
  if(dia < 10){
      dia = '0' + dia;
  }

  if(hora < 10){
    hora = '0' + hora;
  }

  if(minuto < 10){
    minuto = '0' + minuto;
  }
  
  var mesLetras = meses.filter( (valor, index) => (index === mesNumerico));
  var dataFormatada = dia + ' de ' + mesLetras + ' de ' + ano + ' - ' + hora + ':' + minuto;
  
  return dataFormatada;
}

function putFoodsOnCard(element){

  const modalElement = document.getElementById(element.id.toString());

  const totalKcal = document.createElement('p');
  totalKcal.id = "total-kcal-".concat(element.id.toString());

  const totalProtein = document.createElement('p');
  totalProtein.id = "total-protein-".concat(element.id.toString());

  const totalCarbohydrate = document.createElement('p');
  totalCarbohydrate.id = "total-carbohydrate-".concat(element.id.toString());

  const totalFiber = document.createElement('p');
  totalFiber.id = "total-fiber-".concat(element.id.toString());

  modalElement.appendChild(totalKcal);
  modalElement.appendChild(totalProtein);
  modalElement.appendChild(totalCarbohydrate);
  modalElement.appendChild(totalFiber);

  const divCard = document.createElement('div');
  divCard.className = "card";
  divCard.style = "width: 18rem;";
  
  const foodImage = document.createElement('img');
  foodImage.src = element.image;
  foodImage.className = "card-img-top";
  foodImage.alt = "";

  divCard.appendChild(foodImage);

  const divBodyCard = document.createElement('div');
  divBodyCard.className = "card-body";

  // FOOD NAME

  const pFoodName = document.createElement('p');
  pFoodName.className = "card-text";
  const textFoodName = document.createTextNode("Nome: ".concat(element.food_name));
  pFoodName.appendChild(textFoodName);
  divBodyCard.appendChild(pFoodName);
  divCard.appendChild(divBodyCard);

  // KCAL

  const pKcal = document.createElement('p');
  pKcal.className = "card-text";
  const textKcal = document.createTextNode("Kcal: ".concat(element.kcal));
  pKcal.appendChild(textKcal);
  divBodyCard.appendChild(pKcal);
  divCard.appendChild(divBodyCard);

  totalCalorias += parseFloat(element.kcal);

  // PROTEIN

  const pProtein = document.createElement('p');
  pProtein.className = "card-text";
  const textProtein = document.createTextNode("Proteinas: ".concat(element.protein));
  pProtein.appendChild(textProtein);
  divBodyCard.appendChild(pProtein);
  divCard.appendChild(divBodyCard);

  totalProteinas += parseFloat(element.protein);

  // CARBOHYDRATE

  const pCarbohydrate = document.createElement('p');
  pCarbohydrate.className = "card-text";
  const textCarbohydrate = document.createTextNode("Carboidratos: ".concat(element.carbohydrate));
  pCarbohydrate.appendChild(textCarbohydrate);
  divBodyCard.appendChild(pCarbohydrate);
  divCard.appendChild(divBodyCard);

  totalCarboidratos += parseFloat(element.carbohydrate);

  // FIBER

  const pFiber = document.createElement('p');
  pFiber.className = "card-text";
  const textFiber = document.createTextNode("Fibras: ".concat(element.fiber));
  pFiber.appendChild(textFiber);
  divBodyCard.appendChild(pFiber);
  divCard.appendChild(divBodyCard);

  totalFibras += parseFloat(element.fiber);

  modalElement.appendChild(divCard);

}