// Iterative
var teststring = 'abcdedcba';
function IsPalindromeIteration(str){
    var len = str.length, i=0, result = true;
    if (len &lt;= 1) return true;
    while(i != len - i - 1){
        var start = str.charAt(i),
        end = str.charAt(len - i - 1);
        if (start != end){
            return false;
        }
        i++;
    }
    return result;              
}

// Recursive
var teststring = 'abcdedcba';
function IsPalindromeRecursion(str){
    var len = str.length, i=0, result = true;
    if (len <= 1) return true;
    if (str.charAt(i) != str.charAt(len - i - 1)){
        return false;
      }else{
        i++;
        IsPalindromeRecursion(str.substr(1,str.length -2));                 
      }
      return result;                        
}

// http://ujjaini.wordpress.com/2013/07/17/checking-if-a-string-is-a-palindrome-using-javascript/


// Iterative
function factorial(num)
{
    // If the number is less than 0, reject it.
    if (num < 0) {
        return -1;
    }
    // If the number is 0, its factorial is 1.
    else if (num == 0) {
        return 1;
    }
    var tmp = num;
    while (num-- > 2) {
        tmp *= num;
    }
    return tmp;
}

var result = factorial(8);
document.write(result);

// Output: 4032

// Recursive
function factorial(num)
{
    // If the number is less than 0, reject it.
    if (num < 0) {
        return -1;
    }
    // If the number is 0, its factorial is 1.
    else if (num == 0) {
        return 1;
    }
    // Otherwise, call this recursive procedure again.
    else {
        return (num * factorial(num - 1));
    }
}

var result = factorial(8);
document.write(result);

// http://msdn.microsoft.com/en-us/library/ie/wwbyhkx4(v=vs.94).aspx

// Output: 40320
