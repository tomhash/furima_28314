function priceCalculator(){
   const priceInput = document.getElementById("price")
    priceInput.addEventListener('change', function(event){
      event.preventDefault();
      const price = document.getElementById("price").value;
      const tax_price = document.getElementById("add-tax-price")
      const add_tax_price = Math.floor(price / 10);
      tax_price.innerHTML = add_tax_price;
     
      const sum = price - add_tax_price;
      const profit= document.getElementById("profit")
      profit.innerHTML = sum;

    })


}
window.addEventListener('load',priceCalculator);