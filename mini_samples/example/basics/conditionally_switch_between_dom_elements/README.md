# Conditionally Switching Between DOM Elements

Use the `ngSwitch` directive to conditionally swap template DOM structures
based on a boolean expression. Use `ng-switch-when=` to render elements based
on a condition and `ng-switch-default=` to specify a default:

    <div ng-switch="ctrl.favorite">
      <div ng-switch-when="apple">Keeps the doctor away.</div>
      <div ng-switch-when="mango">The king of all fruits!</div>
      <div ng-switch-default>Fruit is good for you</div>
    </div>

