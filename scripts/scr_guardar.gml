ini_open("datos.ini");
ini_write_real("Ajustes", "Volumen", global.volumen);
ini_write_real("Ajustes", "BMusic", global.bmusic);
ini_write_string("Ajustes", "Nombre", global.nombre);
ini_write_real("Ajustes", "AUTORESET", global.ar);
ini_write_real("Ajustes", "NOHIT", global.nohit);
ini_write_real("Ajustes", "BCOLOR", global.bcolor);
ini_write_real("Conteo", "CONTADOR", global.contador);
ini_close();