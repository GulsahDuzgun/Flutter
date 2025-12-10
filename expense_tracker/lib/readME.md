- In Dart "Initializer Lists" can be used to initialize class properties(like id) with values that are not received as constructorfunction arguments
- Enum allows us to create custom type which simply is a combination of predefined allowed values.This alloed values defines in {} and list enum values. Dart recognizes this enums and treats these values kind od like string

-Whenever we create a class automatically get a type with same name which simply contains information regarding the shape of th epbjects that will be created

-If we dont know the list items lenght on Flutter dont use Column Widget, use ListView Widget. Because Column tries to get all data at once but the ListView Widget gets a scrollable list which still creates all items immediately when this list is diplayed on the scree.The builder constructor with ListView Widget tells Flutter to create scrollable Widget but create those items only if they are visible or about to become visible
