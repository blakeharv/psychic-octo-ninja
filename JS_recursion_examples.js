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
