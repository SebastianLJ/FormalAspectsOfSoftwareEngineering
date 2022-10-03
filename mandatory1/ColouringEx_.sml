structure RT_Text = RT_Text;

structure RT_x_1 =
    struct
        type t = RT_Text.t * RT_Text.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^
                              ")";
    end;
    
structure RT_s_2 = RT_Set(structure Elem = RT_x_1);

structure RT_s_3 = RT_Set(structure Elem = RT_Text);

structure RT_s_4 = RT_Set(structure Elem = RT_s_3);

structure RT_Bool = RT_Bool;

structure RT_x_5 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_s_2.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_s_2.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_6 =
    struct
        type t = RT_s_4.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_s_4.equ(#1 x, #1 y) andalso 
                             RT_s_2.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_4.toString(#1 x )) ^ "," ^
                             (RT_s_2.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_4.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_7 =
    struct
        type t = RT_s_4.t * RT_Text.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_s_4.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_s_2.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_4.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_s_2.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_4.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_8 =
    struct
        type t = RT_s_3.t * RT_Text.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_s_3.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_s_2.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_3.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_s_2.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_3.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure ColouringEx =
    struct
        type Piece_ = RT_Text.t;
        
        type Relation_ = RT_s_2.t;
        
        type Colour_ = RT_s_3.t;
        
        type Colouring_ = RT_s_4.t;
        
        fun areNb'1775_ (cn1'17DF_, cn2'17E4_, r'17E9_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (17, 7)); (RT_s_2.R_mem ((cn1'17DF_, cn2'17E4_), r'17E9_)) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (17, 28)); RT_s_2.R_mem ((cn2'17E4_, cn1'17DF_), r'17E9_)));
        
        fun isCorrectColouring'1905_ (cols'197C_, r'1982_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (22, 7)); (((RT_s_4.R_all (fn (col'1A38_:RT_s_3.t) => ((RT_s_3.R_all (fn (cn'1A9E_:RT_Text.t) => ((RT_s_2.R_exists (fn ((cn1'1B08_, cn2'1B0C_):RT_x_1.t) => ((RT_Text.equ (cn'1A9E_, cn1'1B08_)) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (25, 26)); RT_Text.equ (cn'1A9E_, cn2'1B0C_)))) (r'1982_)))) (col'1A38_)))) (cols'197C_)))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (31, 7)); (((RT_s_4.R_all (fn (col1'1DBC_:RT_s_3.t) => ((RT_s_4.R_all (fn (col2'1E22_:RT_s_3.t) => ((RSL.C_not RT_s_3.equ) (col1'1DBC_, col2'1E22_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (33, 27)); RT_s_3.equ (RT_s_3.R_inter (col1'1DBC_, col2'1E22_), RT_s_3.R_fromList []))) (cols'197C_)))) (cols'197C_)))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (38, 7)); (((RT_s_2.R_all (fn ((cn1'2079_, cn2'207E_):RT_x_1.t) => ((RT_s_4.R_exists (fn (col1'20E1_:RT_s_3.t) => ((RT_s_4.R_exists (fn (col2'2147_:RT_s_3.t) => (RT_s_3.R_mem (cn1'2079_, col1'20E1_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (41, 30)); RT_s_3.R_mem (cn2'207E_, col2'2147_))) (cols'197C_)))) (cols'197C_)))) (r'1982_)))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (47, 7)); ((RT_s_4.R_all (fn (col'23FC_:RT_s_3.t) => ((RT_s_3.R_all (fn (cn1'2462_:RT_Text.t) => ((RT_s_3.R_all (fn (cn2'24C8_:RT_Text.t) => RT_Bool.equ (((areNb'1775_) (cn1'2462_, cn2'24C8_, r'1982_)), false)) (col'23FC_)))) (col'23FC_)))) (cols'197C_)))))));
        
        fun isRelation'15E5_ r'1654_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (13, 7)); ((RT_s_2.R_all (fn ((cn1'16B5_, cn2'16BA_):RT_x_1.t) => (((RSL.C_not RT_Text.equ) (cn1'16B5_, cn2'16BA_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (13, 79)); ((RSL.C_not RT_Text.equ) (cn1'16B5_, RT_Text.fromLit "")) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (13, 92)); (RSL.C_not RT_Text.equ) (cn2'16BA_, RT_Text.fromLit ""))))) (r'1654_))));
        
        fun isValidColour'F40_ (col'FB2_, piece'FB7_, r'FBE_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (41, 5)); ((RT_s_3.R_all (fn (p'100E_:RT_Text.t) => RT_Bool.equ (((areNb'1775_) (p'100E_, piece'FB7_, r'FBE_)), false)) (col'FB2_))));
        
        fun getPieceSet'450_ r'4C0_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (13, 5)); if RT_s_2.equ (r'4C0_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (14, 12)); RT_s_3.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (16, 7)); let
            val (x'64C_, y'64E_) = ((RT_s_2.R_hd((r'4C0_))):RT_x_1.t); 
            val j'65A_ = ((RT_s_2.R_diff (r'4C0_, RT_s_2.R_fromList ([(x'64C_, y'64E_)]))):RT_s_2.t)
        in
            RT_s_3.R_union (RT_s_3.R_union (RT_s_3.R_fromList ([x'64C_]), RT_s_3.R_fromList ([y'64E_])), ((getPieceSet'450_) (j'65A_)))
        end));
        
        fun getValidColour'7D5_ (cols'848_, piece'84E_, r'855_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (23, 5)); if (RT_s_4.equ (cols'848_, RT_s_4.R_fromList [])) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (25, 7)); RT_s_3.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (27, 7)); let
            val col'A97_ = ((RT_s_4.R_hd((cols'848_))):RT_s_3.t)
        in
            if (((isValidColour'F40_) (col'A97_, piece'84E_, r'855_))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (31, 11)); col'A97_) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (34, 11)); ((getValidColour'7D5_) (RT_s_4.R_diff (cols'848_, RT_s_4.R_fromList ([col'A97_])), piece'84E_, r'855_)))
        end));
        
    end;
    
open ColouringEx;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (34, 11), (35, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (31, 11), (32, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (27, 7), (37, 5));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (25, 7), (26, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (23, 5), (37, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (16, 7), (18, 5));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (14, 12), (15, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (13, 5), (18, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (41, 5), (44, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (13, 92), (14, 1));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (13, 79), (14, 1));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (13, 7), (14, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (41, 30), (42, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (47, 7), (54, 4));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (33, 27), (34, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (38, 7), (54, 4));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (25, 26), (25, 34));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (31, 7), (54, 4));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (22, 7), (54, 4));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (17, 28), (17, 45));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (17, 7), (17, 45)));
RSL.print_error_count();
R_coverage.save_marked();
