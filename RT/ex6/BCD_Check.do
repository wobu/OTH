restart
force -freeze sim:/BCD_check_register/clk 1 0, 0 50 -repeat 100
force /BCD_check_register/rst_n 0 0, 1 70
force /BCD_check_register/a 0 100, 1 200, 1 300, 0 400, 1 500, 1 600, 1 700, 1 800, 1 900, 0 1000, 0 1100, 1 1200

