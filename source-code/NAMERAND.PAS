program RandomizadorDeNombresParaPlanetas;

uses crt; {< El starter pack de cualquier programador de Pascal. Almenos para mi...}

var
   s: array[1..100] of string;  {Silabas}
   t: array[1..12] of string;   {Terminaciones}
   i, cantidad, randomiz, randomiz2, randomizC: integer;
   nombre: string;
   opcionid, opcionmenu, opcionter, opcionfin: char;


procedure CargarST;      {Junto todas las definiciones dentro de un procedure porque son muchas}
begin

     {Preparate para ver la definicion de 10 (+ 2) terminaciones y 100 silabas...}

     {Terminaciones}

     t[1] := 'ax';
     t[2] := 'ion';
     t[3] := 'ag';
     t[4] := 's';
     t[5] := 'on';
     t[6] := 'ox';
     t[7] := 'ux';
     t[8] := 'ia';
     t[9] := 'atus';
     t[10] := 'us';     { Se repite esta terminacion para que tenga mas probabilidad de aparecer. }
     t[11] := 'us';     { En este caso "us" tendra 3/10 posibilidades de aparecer, }
     t[12] := 'us';     { mientras que las demas terminaciones tienen un 1/10 de posibilidad. }

     {Silabas}

     s[1] := 'ba';      { Aca si que ninguna tiene distintas probabilidades, son todas 1/100 de posibilidad. }
     s[2] := 'be';
     s[3] := 'bi';
     s[4] := 'bo';
     s[5] := 'bu';
     s[6] := 'ka';
     s[7] := 'ke';
     s[8] := 'ki';
     s[9] := 'ko';
     s[10] := 'ku';
     s[11] := 'ce';
     s[12] := 'ci';
     s[13] := 'da';
     s[14] := 'de';
     s[15] := 'di';
     s[16] := 'do';
     s[17] := 'du';
     s[18] := 'fe';
     s[19] := 'fo';
     s[20] := 'ga';
     s[21] := 'ge';
     s[22] := 'gi';
     s[23] := 'go';
     s[24] := 'gu';
     s[25] := 'ha';
     s[26] := 'he';
     s[27] := 'ja';
     s[28] := 'je';
     s[29] := 'jo';
     s[30] := 'a';
     s[31] := 'e';
     s[32] := 'i';
     s[33] := 'o';
     s[34] := 'u';
     s[35] := 'la';
     s[36] := 'le';
     s[37] := 'lo';
     s[38] := 'lu';
     s[39] := 'ma';
     s[40] := 'me';
     s[41] := 'mi';
     s[42] := 'mo';
     s[43] := 'mu';
     s[44] := 'na';
     s[45] := 'ne';
     s[46] := 'no';
     s[47] := 'nu';
     s[48] := 'pa';
     s[49] := 'pe';
     s[50] := 'pi';
     s[51] := 'po';
     s[52] := 'pu';
     s[53] := 'ra';
     s[54] := 're';
     s[55] := 'ri';
     s[56] := 'ro';
     s[57] := 'ru';
     s[58] := 'sa';
     s[59] := 'so';
     s[60] := 'su';
     s[61] := 'ta';
     s[62] := 'te';
     s[63] := 'ti';
     s[64] := 'to';
     s[65] := 'tu';
     s[66] := 'va';
     s[67] := 've';
     s[68] := 'vi';
     s[69] := 'vo';
     s[70] := 'vu';
     s[71] := 'wa';
     s[72] := 'wo';
     s[73] := 'xa';
     s[74] := 'xe';
     s[75] := 'xi';
     s[76] := 'xo';
     s[77] := 'xu';
     s[78] := 'ya';
     s[79] := 'ye';
     s[80] := 'yo';
     s[81] := 'za';
     s[82] := 'ze';
     s[83] := 'zi';
     s[84] := 'zo';
     s[85] := 'zu';
     s[86] := 'bra';
     s[87] := 'bro';
     s[88] := 'cha';
     s[89] := 'che';
     s[90] := 'qua';
     s[91] := 'quo';
     s[92] := 'gout';
     s[93] := 'gau';
     s[94] := 'per';
     s[95] := 'mos';
     s[96] := 'mya';
     s[97] := 'bren';
     s[98] := 'gen';
     s[99] := 'saw';
     s[100] := 'baw';

end;

procedure MenuESP;
begin
     clrscr;
     textattr := 9 + (0 * 16); {Violeta azuloso???}
     writeln;
     write('                      Randomizador de Nombres para Planetas                  '); writeln;
     textattr := 8 + (0 * 16); {Gris oscuro}
     write('                   (tambin aplica para lunas, estrellas, etc)                  '); writeln;
     textattr := 15 + (0 * 16); {Blanco}
     write('              ESC: Salir del programa - ENTER: Iniciar randomizador          '); writeln;
     writeln;
     write('      ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป     '); writeln;
     write('      บPor favor seleccion  una de las opciones arriba de este cuadro.  บ     '); writeln;
     write('      บ                                                                 บ     '); writeln;
     write('      ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ     '); writeln;
     write('      Input:');

     opcionmenu := readkey;
     case opcionmenu of
          #27:
          begin
               textattr := 7 + (0 * 16);
               clrscr;
               writeln('Deteniendo...');
               halt;                    {Aca uso halt para parar el programa facilmente, sin complicarme mucho}
          end;
          #13:
          begin {Es aca en donde empieza la randomizacion}
               randomize;

               repeat
               repeat
                     gotoxy(1, 5);      {Proceso de limpieza}
                     clreol;
                     gotoxy(1, 15);
                     clreol;
                     gotoxy(1, 20);
                     clreol;
                     gotoxy(1, 21);
                     clreol;

                     gotoxy(8, 8);      {Para no tener que volver a reescribir la interfaz,}
                     clreol;            {uso este tipo de comandos para editarlos.}
                     write('Especific  el nฃmero de sกlabas para el nombre. (min 1, max 9)   บ');
                     gotoxy(13, 11);
                     readln(cantidad);
               until (cantidad >= 1) and (cantidad <= 9);

               repeat
                     gotoxy(13, 11);
                     clreol;
                     gotoxy(8, 8);
                     clreol;
                     write('Quers que el nombre tenga terminaciones extras? (ej: "...us")   บ');
                     gotoxy(7, 20);
                     write('TIP: Las terminaciones extras hacen que los nombres generados se');
                     gotoxy(7, 21);
                     write('     vean m s "astronขmicos". Obvio, es opcional.');
                     gotoxy(1, 5);
                     clreol;
                     write('                                 S: Si - N: No                               ');
                     gotoxy(13, 11);
                     {Explicare un poco las lineas a continuacion ya que aveces me olvido.}
                     {Para ejecutar lineas de codigo despues de presionar una tecla es asi:}
                     opcionter := readkey;                      {A una variable CHAR se le da el valor "readkey"
                                                                (solo disponible con "uses CRT;")}
                     opcionter := upcase(opcionter);            {Convierte la tecla presionada a mayuscula si es minuscula,
                                                                asi acepta mayusculas y minusculas.}
               until (opcionter = 'S') or (opcionter = 'N');    {Como este es el final de un REPEAT,
                                                                hay que agregarle un UNTIL, y aca se agregan las unicas teclas
                                                                que se pueden apretar.
                                                                (si apreta cualquier otra no hace nada) * }

               nombre := '';     {Hay que darle un valor vacio a esta variable o si no no funcionara.}

               for i := 1 to cantidad do
               begin
                    randomiz := 1 + random(100);        {Esta variable randomizadora tendra un valor de 1 a 100
                                                        (la longitud del array de silabas)}
                    nombre := nombre + s[randomiz];     {El nombre recibe el valor del mismo,
                                                        mas una silaba aleatoria de la lista.}
               end;                  {Este bloque de codigo se repetira las veces que pidio el usuario por el FOR.}

               if opcionter = 'S' then     {* Si el usuario apreto 'S', ejecutara este bloque de codigo.
                                           De lo contrario, si apreto 'N',
                                           simplemente se saltara este bloque y no se ejecutara.}
               begin
                    randomiz2 := 1 + random(12);        {Este bloque es parecido al de las silabas,
                                                        solo que se ejecutara una sola vez.}
                    nombre := nombre + t[randomiz2];
               end;

               nombre[1] := upcase(nombre[1]);          {Convierte la primera letra del nombre a
                                                        mayuscula para mas elegancia. :P }

               randomizC := 1 + random(6);              {Esto solo es para agregar un color aleatorio a un TEXTATTR... *}

               gotoxy(8, 8);
               clreol;
               write('Nombre generado! Generar otro nombre o salir del programa?       บ');
               gotoxy(1, 5);
               clreol;
               write('            ENTER: Generar otro nombre - ESC: Salir del programa             ');
               gotoxy(7, 21);
               clreol;
               gotoxy(7, 20);
               clreol;
               write('TIP: Si no te gusta este nombre, puedes generar otro presionando ENTER,  ');
               write('            o si no tambin modificarlo por tฃ mismo.');
               gotoxy(7, 15);
               write('Nombre generado: ');
               textattr := (randomizC);         {* Este TEXTATTR para ser mas especifico.}
               write('[> ', nombre, ' <]');     {Muestra el valor final del nombre luego de pasar por todo ese proceso.}
               textattr := 15 + (0 * 16);
               gotoxy(13, 11);

               opcionfin := readkey;    {Esta es la ultima variable CHAR que es para el final.}

               until opcionfin = #27;   {#27 = tecla ESC}

               textattr := 7 + (0 * 16);     {Esto se ejecutara si se presiona ESC (osea sigue el codigo).
                                             De lo contrario se repite todo el codigo desde la
                                             parte que te pregunta las silabas.}
               clrscr;
               writeln('Deteniendo...');
               halt;
          end;
     end;
end;     {Fin del procedimiento para el menu espaคol.}

procedure MenuING;      {El menu ingles es muy parecido al espaคol, solo tiene dialogos diferentes.
                        Asi que las mismas guias se aplicaran aca.}
begin
clrscr;
     textattr := 9 + (0 * 16);
     writeln;
     write('                           Name Randomizer for Planets                  '); writeln;
     textattr := 8 + (0 * 16);
     write('                      (also applies for moons, stars, etc)                  '); writeln;
     textattr := 15 + (0 * 16);
     write; writeln;
     write('                   ESC: Quit program - ENTER: Start randomizer          '); writeln;
     writeln;
     write('      ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป     '); writeln;
     write('      บPlease select one of the options above this text box.            บ     '); writeln;
     write('      บ                                                                 บ     '); writeln;
     write('      ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ     '); writeln;
     write('      Input:');
     opcionmenu := readkey;
     case opcionmenu of
          #27:
          begin
               textattr := 7 + (0 * 16);
               clrscr;
               writeln('Halting...');
               halt;
          end;
          #13:
          begin                 {Empieza la randomizacion}
               randomize;

               repeat
               repeat
                     gotoxy(1, 5);
                     clreol;
                     gotoxy(1, 15);
                     clreol;
                     gotoxy(1, 20);
                     clreol;
                     gotoxy(1, 21);
                     clreol;

                     gotoxy(8, 8);
                     clreol;
                     write('Specify the amount of syllables for the name. (min 1, max 9)     บ');
                     gotoxy(13, 11);
                     readln(cantidad);
               until (cantidad >= 1) and (cantidad <= 9);

               repeat
                     gotoxy(13, 11);
                     clreol;
                     gotoxy(8, 8);
                     clreol;
                     write('Do you want the name to have extra endings? (ex: "...us")        บ');
                     gotoxy(7, 20);
                     write('TIP: The extra endings make the names look more "astronomical".');
                     gotoxy(7, 21);
                     write('     Obviously, this is optional.');
                     gotoxy(1, 5);
                     clreol;
                     write('                                Y: Yes - N: No                               ');
                     gotoxy(13, 11);

                     opcionter := readkey;
                     opcionter := upcase(opcionter);
               until (opcionter = 'Y') or (opcionter = 'N');

               nombre := '';

               for i := 1 to cantidad do
               begin
                    randomiz := 1 + random(100);
                    nombre := nombre + s[randomiz];
               end;

               if opcionter = 'Y' then
               begin
                    randomiz2 := 1 + random(12);
                    nombre := nombre + t[randomiz2];
               end;

               nombre[1] := upcase(nombre[1]);

               randomizC := 1 + random(6);

               gotoxy(8, 8);
               clreol;
               write('Name generated successfully! Quit program or generate other name?บ');
               gotoxy(1, 5);
               clreol;
               write('                ENTER: Generate other name - ESC: Quit program             ');
               gotoxy(7, 21);
               clreol;
               gotoxy(7, 20);
               clreol;
               write('TIP: If you dont like this name, you can generate another one');
               gotoxy(12, 21);
               write('by pressing ENTER, but you can also modify it by yourself.');
               gotoxy(7, 15);
               write('Generated name: ');
               textattr := (randomizC);
               write('[> ', nombre, ' <]');
               textattr := 15 + (0 * 16);
               gotoxy(13, 11);

               opcionfin := readkey;

               until opcionfin = #27;

               textattr := 7 + (0 * 16);
               clrscr;
               writeln('Halting...');
               halt;
          end;
     end;
end;     {Fin del procedimiento para el menu ingles.}

begin
     {Esto es lo que se va a ejecutar primero, apenas inicias el programa.}
     {Es un menu de selector de idioma super simple.}

     writeln;
     writeln;
     writeln;

     writeln('Select your language:');
     write; writeln;
     writeln('[A] - English  | American');
     writeln('[B] - Espaคol  | Rioplatense');   {Rioplatense = Argentino O Uruguayo,
                                                en mi caso es argentino porque yo vivo en Argentina.}
     write; writeln;

     opcionid := readkey;
     opcionid := upcase(opcionid);
     case opcionid of
     'A':
     begin
          writeln('Loading syllables and endings, please wait...');
          delay(250);
          CargarST;  {Llama al procedimiento CargarST, que carga y define todas las silabas y terminaciones.}
          writeln('Loading finished. Initializing program...');
          delay(500);
          MenuING;   {Finalmente ejecuta el menu real en ingles}

                     {Casi lo mismo sucedera al apretar B para el menu espaคol.}
     end;
     'B':
     begin
          writeln('Cargando sกlabas y terminaciones, por favor esper ...');
          delay(250);
          CargarST;
          writeln('Carga finalizada. Iniciando programa...');
          delay(500);
          MenuESP;
     end;
     end;
end.