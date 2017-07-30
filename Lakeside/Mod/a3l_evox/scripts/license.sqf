if (local _this) then {
    
	_rnd_license1 = floor random 36;
    _rnd_license2 = floor random 36;
    _rnd_license3 = floor random 36;
    _rnd_license4 = floor random 36;
    _rnd_license5 = floor random 36;
    _rnd_license6 = floor random 36;
    
    _license_array = ["\A3L_LICENSE\One\0_ca.paa",
                      "\A3L_LICENSE\One\1_ca.paa",
                      "\A3L_LICENSE\One\2_ca.paa",
                      "\A3L_LICENSE\One\3_ca.paa",
                      "\A3L_LICENSE\One\4_ca.paa",
                      "\A3L_LICENSE\One\5_ca.paa",
                      "\A3L_LICENSE\One\6_ca.paa",
                      "\A3L_LICENSE\One\7_ca.paa",
                      "\A3L_LICENSE\One\8_ca.paa",
                      "\A3L_LICENSE\One\9_ca.paa",
                      "\A3L_LICENSE\One\a_ca.paa",
                      "\A3L_LICENSE\One\b_ca.paa",
                      "\A3L_LICENSE\One\c_ca.paa",
                      "\A3L_LICENSE\One\d_ca.paa",
                      "\A3L_LICENSE\One\e_ca.paa",
                      "\A3L_LICENSE\One\f_ca.paa",
                      "\A3L_LICENSE\One\g_ca.paa",
                      "\A3L_LICENSE\One\h_ca.paa",
                      "\A3L_LICENSE\One\i_ca.paa",
                      "\A3L_LICENSE\One\j_ca.paa",
                      "\A3L_LICENSE\One\k_ca.paa",
                      "\A3L_LICENSE\One\l_ca.paa",
                      "\A3L_LICENSE\One\m_ca.paa",
                      "\A3L_LICENSE\One\n_ca.paa",
                      "\A3L_LICENSE\One\o_ca.paa",
                      "\A3L_LICENSE\One\p_ca.paa",
                      "\A3L_LICENSE\One\q_ca.paa",
                      "\A3L_LICENSE\One\r_ca.paa",
                      "\A3L_LICENSE\One\s_ca.paa",
                      "\A3L_LICENSE\One\t_ca.paa",
                      "\A3L_LICENSE\One\u_ca.paa",
                      "\A3L_LICENSE\One\v_ca.paa",
                      "\A3L_LICENSE\One\w_ca.paa",
                      "\A3L_LICENSE\One\x_ca.paa",
                      "\A3L_LICENSE\One\y_ca.paa",
                      "\A3L_LICENSE\One\z_ca.paa"];
    
	_this setObjectTextureGlobal [6,  _license_array select _rnd_license1]; 
	_this setObjectTextureGlobal [7,  _license_array select _rnd_license2];
	_this setObjectTextureGlobal [8,  _license_array select _rnd_license3];
	_this setObjectTextureGlobal [9,  _license_array select _rnd_license4]; 
	_this setObjectTextureGlobal [10, _license_array select _rnd_license5];
	_this setObjectTextureGlobal [11, _license_array select _rnd_license6];
};