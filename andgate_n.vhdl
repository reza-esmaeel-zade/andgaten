library ieee;
use ieee.std_logic_1164.all;
entity andgate_n is
	generic(
		n:integer
		);
	port (
		a: in std_logic_vector(n-1 downto 0);
		y: out std_logic
		);
end andgate_n;

architecture behavioral of andgate_n is

	begin

		process(a)
			variable temp:std_logic;

			begin
				temp:='1';
				for i in n-1 downto 0 loop
					temp:=temp and a(i);

				end loop;
			y<=temp;
		end process;

end behavioral;


