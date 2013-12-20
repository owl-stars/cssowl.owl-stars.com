/*
---------------------------------------------------------------------------------------------------
hbs.registerHelper "join", (val, delimiter) ->
  arry = [].concat(val)
  delimiter = ((if typeof delimiter is "string" then delimiter else ","))
  arry.join delimiter

hbs.registerHelper "indent", (val, indent=1) ->
  val = val.trim().split("\n")
  for value, key in val
    continue if key is 0
    for i in [0...indent]
      val[key] = "  #{val[key]}"
  return val.join("\n")
---------------------------------------------------------------------------------------------------
*/

hbs.registerHelper("join", function(val, delimiter) {
  var arry;
  arry = [].concat(val);
  delimiter = (typeof delimiter === "string" ? delimiter : ",");
  return arry.join(delimiter);
});

hbs.registerHelper("indent", function(val, indent) {
  var i, key, value, _i, _j, _len;
  if (indent == null) {
    indent = 1;
  }
  val = val.trim().split("\n");
  for (key = _i = 0, _len = val.length; _i < _len; key = ++_i) {
    value = val[key];
    if (key === 0) {
      continue;
    }
    for (i = _j = 0; 0 <= indent ? _j < indent : _j > indent; i = 0 <= indent ? ++_j : --_j) {
      val[key] = "  " + val[key];
    }
  }
  return val.join("\n");
});