// Part 1

function madLib(v, a, n) {
  console.log(`We shall ${v.toUpperCase()} the ${a.toUpperCase()} ${n.toUpperCase()}.`);
}


function isSubstring( search, sub ) {
  if (search.indexOf(sub) >= 0) {
    return true;
  } else {
    return false;
  }
}


function fizzbuzz(array) {
  let result = [];

  array.forEach( function(el) {
    if ( (el % 15 != 0) && (el % 3 == 0 || el % 5 == 0)) result.push(el);
  });
  return result;
 }


function isPrime(num) {
  if (num < 2) return false;
  if (num == 2) return true;
  if (num % 2 == 0) return false;
  for (let i = 2; i <= Math.floor(Math.sqrt(num)); i++) {
    if (num % i == 0) return false;
  }
  return true;
}

function firstNPrimes(num) {
  let result = [];
  let i = 2;
  while (result.length < num) {
    if (isPrime(i)) result.push(i);
    i++;
  }
  return result;
}

function sumOfNPrimes(n) {
  let primes = firstNPrimes(n);
  return primes.reduce( (a ,b ) => a + b , 0);
}

function titleize(names, fun) {
  let titleized = names.map( name => `Mx. ${name} Kingleheimer Schmidt`);
  fun(titleized);
}

function printCallback(array) {
  array.forEach( el => console.log(el));
}


function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRR!!!!!!'`);
};

Elephant.prototype.grow = function() {
  this.height = this.height + 12;
};

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function() {
  console.log(`${this.name} is ${this.tricks[Math.floor(Math.random() * this.tricks.length)]}!`);
};

Elephant.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting by!`)
};


function dinerBreakfast() {
  let order = "cheesy scrambled eggs";
  console.log(`I'd like ${order} please`);
  return function(food) {
    order = order + ' and ' + food;
    console.log(`I'd like ${order} please.`);
    };
}
