ini_open("datos.ini");
global.volumen = ini_read_real("Ajustes", "Volumen", 1);
global.bmusic = ini_read_real("Ajustes", "BMusic", 1);
global.nombre = ini_read_string("Ajustes", "Nombre", "CHARA");
global.ar = ini_read_real("Ajustes", "AUTORESET", 0);
global.nohit = ini_read_real("Ajustes", "NOHIT", 0);
global.bcolor = ini_read_real("Ajustes", "BCOLOR", c_yellow);
global.contador = ini_read_real("Conteo", "CONTADOR", 1);
ini_close();
