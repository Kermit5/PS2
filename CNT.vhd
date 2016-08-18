LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

--端口定义
ENTITY CNT IS
	PORT(
		CLK:IN STD_LOGIC;
		COUNT:OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		
	);
END ENTITY CNT;

--实体描述
--这是一个时序逻辑电路，触发信号为时钟
ARCHITECTURE ART OF CNT IS
SIGNAL TEMP: STD_LOGIC_VECTOR(15 DOWNTO 0);
BEGIN
	PROCESS(CLK) IS
	BEGIN
		IF(CLK'EVENT AND CLK='1') THEN
			IF(TEMP="1111111111111111") THEN 
				TEMP<="00000000000000000000";
			ELSE
				TEMP<=TEMP+'1';
			END IF;
		END IF;			
	END PROCESS;
COUNT<=TEMP;	
END ARCHITECTURE ART;
	