extends Node
var names = ["Alice","Brittany","Diamond","John",
			"Mike","Nathan","Sally","Zafar"]

func get_name(i):
	return names[i]

func set_name(i,name):
	names.remove(i)
	names.insert(i,str(name))