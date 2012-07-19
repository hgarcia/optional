#library("optional");
#import("dart:coreimpl");

class Optional {
  Options _options;
  Optional(this._options);
  
  List get(String key) {
    var next = false;
    var arg = "-$key";
    if (key.length > 1) {
      arg = "-$arg";
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
    
    var options = _options.arguments.filter(finder);
    return options;
  }
}