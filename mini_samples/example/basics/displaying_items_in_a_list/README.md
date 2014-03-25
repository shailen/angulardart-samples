# Displaying Items in a List

Use the `ngRepeat` directive to instantiate a template once per item from a
collection.

Each template instance gets its own scope, where the given loop variable is
set to the current collection item. You can use `$index` to get the item index
or key. For example:

    <div ng-repeat="fruit in ctrl.fruits">{{$index + 1}}: {{fruit}}</div>

Assuming `fruits` is defined as `['Apple','Banana','Kiwi']`, using `ng-repeat`
produces the following output:

    1: Apple
    2: Banana
    3: Kiwi
