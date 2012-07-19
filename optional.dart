#library("optional");
#import("dart:coreimpl");

class Optional extends RuntimeOptions {
  
  List get(String argument) {
    var next = false;
    var arg = "-${argument}";
    if (argument.length > 1) {
      arg = "-${arg}";
    }
    
    finder(ele) {
      if (next) {
        next = false;
        return true;
      }
      if (ele == arg) {
        next = true;
      }
      return false;
    }
    
    var options = arguments.filter(finder);
    return options;
  }
}