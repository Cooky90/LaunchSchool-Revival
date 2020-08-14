flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

Turn this into an array containing only two elements, Barney's and number

flintstones.select{|k,v| k == "Barney"}.to_a.flatten

OR flintstones.assoc("Barney")