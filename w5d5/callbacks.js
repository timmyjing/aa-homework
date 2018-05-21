// window.setTimeout( () => alert("HAMMERTIME!"), 5000 );
//
//
// function hammerTime(time) {
//
//   setTimeout( () => alert(`${time} is hammertime!`), time);
// }

//
// const readline = require('readline');
//
// const reader = readline.createInterface( {
//   input: process.stdin,
//   output: process.stdout
// });
//
//
// function teaAndBiscuits () {
//   let first, second;
//
//   reader.question('Would you like some tea? ', (res) => {
//     first = res;
//     reader.question('Would you like some biscuits? ', (res) => {
//       second = res;
//       const firstRes = (first === 'yes') ? 'do' : 'don\'t';
//       const secondRes = (second === 'yes') ? 'do' : 'don\'t';
//       console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
//       reader.close();
//     });
//   });
//
// }

// teaAndBiscuits();
function Cat () {
  this.name = 'Markov';
  this.age = 3;
}

function Dog () {
  this.name = 'Noodles';
  this.age = 4;
}

Dog.prototype.chase = function (cat) {
  console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
};

const Markov = new Cat ();
const Noodles = new Dog ();

Noodles.chase(Markov);

Noodles.chase.call(Markov, Noodles);
Noodles.chase.apply(Markov, [Noodles]);
