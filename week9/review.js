// PSUEDOCODE:

// 1.  Create a new object called "groceryList"
// 2.  Create a function to add to this list.  Item name is key, item quantity is value.
// 3.  Create a function to delete an item from the list.
// 4.  Create a function to update quantities in the list without changing the key
// 5.  Pretty print the list.


var groceryList = {};

function addItem(item, qty) {
  groceryList[item] = qty;
}

function removeItem(item) {
  delete groceryList[item];
}

function updateQuantity(item, qty) {
  groceryList[item] = qty;
}

function printList(list) {
  for (var property in list) {
    console.log(property + ': ' + list[property]);
  }
}

addItem('apples', 5);
addItem('bread', 1);
addItem('veggies', 20);
addItem('cupcakes', 4);
removeItem('apples');
updateQuantity('bread', 100);
printList(groceryList);

