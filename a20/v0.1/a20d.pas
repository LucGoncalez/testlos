{===========================================================================
	Este arquivo pertence ao Projeto do Sistema Operacional LuckyOS (LOS).
	--------------------------------------------------------------------------
	Copyright (C) 2013 - Luciano L. Goncalez
	--------------------------------------------------------------------------
	a.k.a.: Master Lucky
	eMail : master.lucky.br@gmail.com
	Home  : http://lucky-labs.blogspot.com.br
============================================================================
	Este programa e software livre; voce pode redistribui-lo e/ou modifica-lo
	sob os termos da Licenca Publica Geral GNU, conforme publicada pela Free
	Software Foundation; na versao 2 da	Licenca.

	Este programa e distribuido na expectativa de ser util, mas SEM QUALQUER
	GARANTIA; sem mesmo a garantia implicita de COMERCIALIZACAO ou de
	ADEQUACAO A QUALQUER PROPOSITO EM PARTICULAR. Consulte a Licenca Publica
	Geral GNU para obter mais detalhes.

	Voce deve ter recebido uma copia da Licenca Publica Geral GNU junto com
	este programa; se nao, escreva para a Free Software Foundation, Inc., 59
	Temple Place, Suite 330, Boston, MA	02111-1307, USA. Ou acesse o site do
	GNU e obtenha sua licenca: http://www.gnu.org/
============================================================================
	Programa A20D.pas
	--------------------------------------------------------------------------
		Este programa eh um utilitario, para teste, que desabilita a A20.
	--------------------------------------------------------------------------
	Versao: 0.1
	Data: 12/04/2013
	--------------------------------------------------------------------------
	Compilar: Compilavel pelo Turbo Pascal 5.5 (Free)
	> tpc /b a20d.pas
	------------------------------------------------------------------------
	Executar: Pode ser executado somente no DOS em Modo Real.
	> a20d.exe
===========================================================================}

program A20D;

uses A20;

begin
	Write('Verificando estado do A20... ');

	if CheckA20 then
	begin
		Writeln('Habilitado');

		Write('Desabilitando A20... ');

		if DisableA20KBC8042 then
			Writeln('OK')
		else
			Writeln('FALHOU');

		Write('Verificando estado do A20 novamente... ');

		if CheckA20 then
		begin
			Writeln('Habilitado');
			Writeln('Nao foi possivel desabilitar o A20!');
		end
		else
		begin
			Writeln('Desabilitado');
			Writeln('A20 desabilitado com sucesso!');
		end;
	end
	else
	begin
		Writeln('Desabilitado');
		Writeln('Nada a fazer, saindo...');
	end;
end.