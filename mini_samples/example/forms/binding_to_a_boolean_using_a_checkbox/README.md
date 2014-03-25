# Binding to a Boolean Using a Checkbox

Use `ng-model` to bind the checked state of an checkbox to a boolean variable 
in scope:

    <input type="checkbox" ng-model="ctrl.show"> Show
    
Setting the boolean to `true` checks the checkbox, and setting it to `false`
unchecks it.