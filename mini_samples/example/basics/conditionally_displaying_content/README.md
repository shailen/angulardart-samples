# Conditionally Displaying Content

Use `ng-if` and `ng-unless` to conditionally display content:

    <div>{{ctrl.text}}
      <span ng-if="ctrl.isPalindrome">is a palindrome</span>
    </div>

Elements with an `ng-if` attribute render only if a condition is `true`. 
Conversely, elements with an `ng-unless` render only if a condition is `false`.

Enter a value in the `<input>` and see it diplayed in a `<div>`. If the value is
a palindrome, the `ng-if` `<span>` renders.