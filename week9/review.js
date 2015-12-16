// PSUEDOCODE:

// 1.  Create a new object called "groceryList"
// 2.  Create a function to add to this list.  Item name is key, item quantity is value.
// 3.  Create a function to delete an item from the list.
// 4.  Create a function to update quantities in the list without changing the key
// 5.  Pretty print the list.


function
var groceryList = {};

// function addItem (list, item, quantity) {
//   list.item = quantity;
// }

groceryList.apples = 2;
groceryList.bread = 1;
groceryList.milk = 3;
groceryList.lettuce = 5;
groceryList.cupcakes = 10;

function deleteItem(list, item) {
  delete list.item;
  console.log(item + ' has been deleted from ' + list.name);
}

function updateQuantity(list, item, quantity) {
  list.item = quantity;
}

function printList(list) {
  for (var property in list) {
    console.log(property + ': ' + list[property]);
  }
}

// addItem(groceryList, apples, 5);
// addItem(groceryList, milk, 1);
// addItem(groceryList, bread, 2);
// addItem(groceryList, cheese, 4);
// addItem(groceryList, lettuce, 3);

deleteItem(groceryList, 'apples');
console.log(updateQuantity(groceryList, 'bread', 100));
console.log(printList(groceryList));