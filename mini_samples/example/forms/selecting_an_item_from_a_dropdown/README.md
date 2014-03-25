# Selecting an Element from a Dropdown

Use `ng-bind` to bind a variable in scope to the value of a `<select>`:
    
    <option ng-repeat="fruit in ctrl.fruits" ng-value="fruit">
      {{fruit}}
    </option>

When an option is selected, the controller variable is set to its value.