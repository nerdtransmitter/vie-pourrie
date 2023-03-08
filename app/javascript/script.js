function randomCard() {
  var cards = ['ace', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'jack', 'queen', 'king'];
  var suits = ['hearts', 'diamonds', 'clubs', 'spades'];
  var card = cards[Math.floor(Math.random() * cards.length)];
  var suit = suits[Math.floor(Math.random() * suits.length)];
  return card + '_of_' + suit + '.png'; // Nom de l'image de la carte
}

// Créer une classe pour les cartes à jouer
class Card {
  constructor() {
    this.cardImage = randomCard();
    this.x = Math.random() * window.innerWidth; // Position initiale aléatoire
    this.y = -100; // En haut de la page
    this.speed = Math.random() * 5 + 5; // Vitesse de chute aléatoire
    this.element = document.createElement('img');
    this.element.src = this.cardImage;
    this.element.classList.add('card');
    this.element.style.left = this.x + 'px';
    this.element.style.top = this.y + 'px';
    document.body.appendChild(this.element);
  }

  // Fonction pour faire bouger la carte vers le bas
  update() {
    this.y += this.speed;
    this.element.style.top = this.y + 'px';
  }
}

// Créer un tableau pour stocker les instances de cartes
var cards = [];

// Créer une fonction pour ajouter une nouvelle carte à la page
function addCard() {
  var card = new Card();
  cards.push(card);
}

// Boucle de jeu pour animer les cartes
function gameLoop() {
  // Ajouter une nouvelle carte aléatoire toutes les 100ms
  if (Math.random() < 0.1) {
    addCard();
  }

  // Faire bouger chaque carte et la supprimer si elle atteint le bas du canevas
  for (var i = 0; i < cards.length; i++) {
    cards[i].update();
    if (cards[i].y



Regenerate response
