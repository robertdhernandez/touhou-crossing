///db_filter_records( category, ["field==", filter_value], ["field>", filter_value], ..)

/***************************************************
  Returns a ds_list of records from a given category, which passes the filters given as arguments.
    
  argument[0] is the category you wish to filter
    
  agument[1-14] are optional filtering rules and must be given in pairs.
    
  Rules are given in pairs, with the first argument consisting of the name of a field and an operator, for example "attack>=" or "name==".
  The second argument in a rule-pair is the value to check against.

  Example 1:
  redFruitsList = db_records_filter( "fruit", "color==", "red");
  //Looks up the category "fruit" and returns all the fruits (records) for which color == "red".
  
  Example 2:
  redFruitsList = db_records_filter( "fruit", "count>=", 5, "count<=", 10, "color==", "red");
  //Returns a list of fruits that we have between 5 and 10 of and which are red
  
  Example 3:
  min = 5;  max = 10;   color = "red";
  redFruitsList = db_records_filter( "fruit", "count>=", min, "count<=", max, "color==", color);
  //Identical to example 2, except the parameters are now passed as variables instead of being hardcoded.
 ***************************************************/

var category = argument[0];

var i, field, operator, filter, str;
for (i=1; i<argument_count; i+=2){
    j = floor(i/2);
    str = argument[i];
    if string_count("==", str) operator[j] = "==";
    else if string_count(">=", str) operator[j] = ">=";
    else if string_count(">", str)  operator[j] = ">";    
    else if string_count("<=", str) operator[j] = "<=";
    else if string_count("<", str)  operator[j] = "<";    
    else if string_count("!=", str)  operator[j] = "!=";
    else if string_count("=", str)  operator[j] = "==";    
    
    field[j] = string_replace(str, operator[j], "");
    filter[j] = argument[i+1];
};
var filter_count = j+1;

var records_list = ds_map_find_value( DB_MAP, category+"_records_list");

var result_list = ds_list_create();

var size = ds_list_size(records_list);
var i, record, value;
for (i=0; i<size; i+=1){
    record = records_list[| i];
    pass = false;
    for (j=0; j<filter_count; j+=1){
        value = db_get( category, record, field[j] );
//        value = string(value);
//        filter[j] = string(filter[j]);
        switch (operator[j]){
            case "==": if value == filter[j] pass = true; break;
            case ">=": if value >= filter[j] pass = true; break;
            case ">": if value > filter[j] pass = true; break;
            case "<=": if value <= filter[j] pass = true; break;
            case "<": if value < filter[j] pass = true; break;            
            case "!=": if value != filter[j] pass = true; break;            
            default: show_debug_message("Operator not recognized in db_records_filter_list: "+operator[j] );
        };
        if not pass break;
    };
    if pass ds_list_add( result_list, record);
};

return result_list;
