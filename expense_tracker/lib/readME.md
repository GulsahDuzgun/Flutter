- In Dart "Initializer Lists" can be used to initialize class properties(like id) with values that are not received as constructorfunction arguments
- Enum allows us to create custom type which simply is a combination of predefined allowed values.This alloed values defines in {} and list enum values. Dart recognizes this enums and treats these values kind od like string

-Whenever we create a class automatically get a type with same name which simply contains information regarding the shape of th epbjects that will be created

-If we dont know the list items lenght on Flutter dont use Column Widget, use ListView Widget. Because Column tries to get all data at once but the ListView Widget gets a scrollable list which still creates all items immediately when this list is diplayed on the scree.The builder constructor with ListView Widget tells Flutter to create scrollable Widget but create those items only if they are visible or about to become visible

- Getters are basically computed properties.. Properties that are dynamically derived based on other class properties

* Context: Context object is same kind of metadata collection. An object full of metadata managed by Flutter. That belongs to pasific Widget, every widget has its own context object and it contains metadata information related to the widget and the widget position in the overall UI

-"dispose" like initState and "build" is part of a StatefullWidget's lifecycle . It is called automatically by Flutter when the widget & its state are about to be destroyed.

-Only state classes can implement "dispose" -elden çıkarmak- method, StatelessWidget can't.

-On state class we can access with widget object to StatefullWidget class' fields and functions

- Expanded constraints the child to only yake as musch width as available ib the row afteer sizing the other Row children

- Understanding The Widget Size Constraints
  Widgets gets sized based on theirs size preferences and the size constraints applied by their parent widget. For example Column widget takes as much height as possible and width as much as needed by its children. Since the column takes as much as height possible is important the parent widget of column widget has restrict the height otherwise height would go outside of the screen boundaries. That why we have no problem if a column is used directtly a Scaffold widget because it has max device's height and max device width. So a Column widget inside Scaffold widget has max device height and has width depend on its childeren widths. The constraint of the parent widget overwrites the preferences of the child widget. That's how sizing works on Flutter.

  If you add Expanded widget, it does set size constraints to available width or hieght it can get not the infinity amount of height or width. That's why wrapping unconstrained widgets with Expanded makes sure unconstrained widget inside of unconstrained widget doen not cause any problem.

  So Column shıuld have a parent width height constraint and Row should have a parent with width constraint.
