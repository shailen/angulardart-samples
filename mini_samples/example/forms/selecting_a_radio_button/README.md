# Selecting a Radio Button

Use `ng-model` to bind the selected radio button value to a variable in scope: 

    <div ng-repeat="fruit in ctrl.fruits">
      <input type="radio"
          name="fruits"
          value="{{fruit}}"
          ng-model="ctrl.favorite">
      {{fruit}}
    </div>
    
This example uses `ng-repeat` to iterate over a list, using each item as the
value of a radio input.

Setting the value of the bound variable (in this example `ctrl.favorite`) to
an item in the collection selects the radio with that value.