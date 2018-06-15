restart
force -freeze sim:/BCD_check_register/clk 1 0, 0 50 -repeat 100
force /BCD_check_register/rst_n 0 0, 1 70
force /BCD_check_register/Eingang(7) 0
force /BCD_check_register/Eingang(6) 0
force /BCD_check_register/Eingang(5) 0
force /BCD_check_register/Eingang(0) 0 100, 1 200, 1 300, 0 400, 1 500, 1 600, 1 700, 1 800, 1 900, 0 1000, 0 1100, 1 1200

