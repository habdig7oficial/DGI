/*
	Welcome to DGI (D Gentoo Installer)

	Copyright © 2023, Mateus Felipe da Silveira Vieira


	DGI is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program. If not, see <https://www.gnu.org/licenses/>.


*/

import std.stdio, std.file;

import std.conv;

struct Config{
	bool IsGentooISO;
}

void main(){

	writeln("
    Welcome to DGI (D Gentoo Installer)

    Copyright © 2023, Mateus Felipe da Silveira Vieira


    DGI is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program (Check the COPYING.txt). If not, see <https://www.gnu.org/licenses/>.

    ----------------------------------------------------------------------------------------------

	");

	writeln("1) Start Installation");
	writeln("2) Exit");
	writeln("3) Read License\n");


	bool ok = false;
	do{

		switch(readln()){
			case "1\n": 
				ok = true;
				writeln(`a`);
				break;
			case "2\n": 
				ok = true;
				return;
			case "3\n": 
				ok = true;
				try{
					writeln(readText("COPYING.txt"));
				}
				catch(FileException e){
					writeln("\n>> Sorry but the license archive cannot be read, so check <https://www.gnu.org/licenses/gpl-3.0.txt> to get information about the license.");

					writeln("\n>> Error details: \n", e);
				}

				main();
				break;
			default:
				writeln("\n>> ", `Invalid option; The valid options are "1", "2" "3"`, "\n");
			
		}

	} while(ok == false);
	

	Config hello;

	hello.IsGentooISO = true;

	writeln(hello.IsGentooISO);

}
