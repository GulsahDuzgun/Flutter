The Three Trees in Flutter

1. Widget Tree (Configuration/Blueprint)
   Immutable configuration objects
   Created every time build() runs
   Describes what the UI should look like
   Lightweight and disposable

2. Element Tree (Identity/Lifecycle)
   Persistent objects that maintain identity across rebuilds
   Links widgets to render objects
   Manages lifecycle and state
   Decides whether to reuse or recreate widgets

3. Render Tree (Visual Representation)
   Handles layout, painting, and compositing
   Contains actual size, position, and visual properties
   Only created for widgets that need visual representation
   When You Call setState() - Step by Step
   Using your UIUpdatesDemo example, here's what happens when you click "Yes" and setState() is called:

   Step 1: State Change
   setState(() { \_isUnderstood = true; // State changes from false to true});

   Step 2: Mark as Dirty
   Flutter marks the Element associated with \_UIUpdatesDemo as "dirty"
   Schedules a rebuild for the next frame

   Step 3: Build Phase (Widget Tree Recreated)
   build() is called (you'll see "UIUpdatesDemo BUILD called" in console)
   A new Widget Tree is created:
   New Padding widget
   New Center widget
   New Column widget
   New Text widgets
   New conditional Text('Awesome!') widget (because \_isUnderstood is now true)

   Step 4: Element Tree Reconciliation (Diffing)
   Flutter compares the new Widget Tree with the existing Element Tree:
   Same Widget Type + Same Key? → Reuse Element, update it
   Padding → Reuse existing Element
   Center → Reuse existing Element
   Column → Reuse existing Element
   Existing Text widgets → Reuse Elements
   New Widget? → Create new Element
   Text('Awesome!') → New Element created (didn't exist before)
   Widget Removed? → Dispose Element
   (Not applicable in this case)

   Step 5: Render Tree Updates
   Existing Render Objects are updated with new properties if needed
   New Render Object created for the "Awesome!" text
   Layout is recalculated (positions, sizes)
   Paint is scheduled

   Step 6: Frame Rendering
   Render Tree is painted to screen
   You see the "Awesome!" text appear

Key Points
Widgets are rebuilt every frame, but Elements are reused when possible
The Element Tree maintains identity and state across rebuilds
The Render Tree only updates what actually changed
Flutter's diffing algorithm is efficient — it doesn't recreate everything

Why This Matters
Performance: Reusing Elements and Render Objects avoids unnecessary work
State preservation: State is stored in Elements, not Widgets
Efficient updates: Only changed parts of the UI are updated
In your demo, when \_isUnderstood changes, Flutter:
Reuses most Elements (they match the previous widgets)
Creates a new Element for the conditional "Awesome!" text
Updates the Render Tree to show the new text
Avoids recreating the entire UI

- In List all items are same type widgets. Without keys Flutter matches widgets by their position in the list not by their identity. Without keys Flutter just change elemts references, configs. But with key it moves the widget and identify it.

- final variables can create once. Change on this final variable can be done but it cant assing a new value, object in memory

- otherwise var type variables can be assigned to new variable.
- const dont allow to edit the variable behind the scenes. So the array, object type variables cant be add, remove, etc. with const type. Const cant be manipulated. That's why we are able to use const with widget
