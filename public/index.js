/* global axios */

axios.get("/api/products").then(function(response) {
  var products = response.data;

  var cityCard = document.querySelector("#city-card");
  var cityContainer = document.querySelector("#city-container");

  products.forEach(function(product) {
    console.log(products[0].images[2].image_source);
    var cityContent = cityCard.content.cloneNode(true);
    cityContent.querySelector(".card-title").innerText = product.city_name;
    cityContent.querySelector(".card-desc").innerText =
      product.description.slice(0, 80) + "...";
    cityContent.querySelector(".card-pop").innerText =
      "Population: " + product.population;
    if (product.images[0]) {
      cityContent.querySelector(".card-img-top").src =
        product.images[0].image_source;
    } else {
      cityContent.querySelector(".card-img-top").src =
        products[0].images[0].image_source;
    }

    cityContainer.appendChild(cityContent);
  });
});
