Flutter's Stateful Widget Lifecyle

Every Flutter Widget has a build-in lifecycle. A cllloction of methodsa that are automatically executed by Flutter.

There are three extremly important stateful widget lifecycle methods.

- initState() Executed by Flutter when the StatefulWidgets State object is initialized

- build() Executed by Flutter when the Widget is built for the first time and after setState() was calles

- dispose() -elden çıkarmak- Executede by Flutter when the Widget will be deleted

---

- Every class actually defines a type of itself
- Named argument are optional, to make named arguments not optional we should add required keyword in front of that argument, When call the function with named argument place of the argument is not important we already define the argument's name
