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
        
        fun areNb'106D_ (cn1'10D7_, cn2'10DC_, r'10E1_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (17, 7)); (RT_s_2.R_mem ((cn1'10D7_, cn2'10DC_), r'10E1_)) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (17, 28)); RT_s_2.R_mem ((cn2'10DC_, cn1'10D7_), r'10E1_)));
        
        fun isCorrectColouring'11FD_ (cols'1274_, r'127A_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (22, 7)); (((RT_s_4.R_all (fn (col'1330_:RT_s_3.t) => ((RT_s_3.R_all (fn (cn'1396_:RT_Text.t) => ((RT_s_2.R_exists (fn ((cn1'1400_, cn2'1404_):RT_x_1.t) => ((RT_Text.equ (cn'1396_, cn1'1400_)) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (25, 26)); RT_Text.equ (cn'1396_, cn2'1404_)))) (r'127A_)))) (col'1330_)))) (cols'1274_)))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (31, 7)); (((RT_s_4.R_all (fn (col1'16B4_:RT_s_3.t) => ((RT_s_4.R_all (fn (col2'171A_:RT_s_3.t) => ((RSL.C_not RT_s_3.equ) (col1'16B4_, col2'171A_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (33, 27)); RT_s_3.equ (RT_s_3.R_inter (col1'16B4_, col2'171A_), RT_s_3.R_fromList []))) (cols'1274_)))) (cols'1274_)))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (38, 7)); (((RT_s_2.R_all (fn ((cn1'1971_, cn2'1976_):RT_x_1.t) => ((RT_s_4.R_exists (fn (col1'19D9_:RT_s_3.t) => ((RT_s_4.R_exists (fn (col2'1A3F_:RT_s_3.t) => (RT_s_3.R_mem (cn1'1971_, col1'19D9_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (41, 30)); RT_s_3.R_mem (cn2'1976_, col2'1A3F_))) (cols'1274_)))) (cols'1274_)))) (r'127A_)))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (47, 7)); ((RT_s_4.R_all (fn (col'1CF4_:RT_s_3.t) => ((RT_s_3.R_all (fn (cn1'1D5A_:RT_Text.t) => ((RT_s_3.R_all (fn (cn2'1DC0_:RT_Text.t) => RT_Bool.equ (((areNb'106D_) (cn1'1D5A_, cn2'1DC0_, r'127A_)), false)) (col'1CF4_)))) (col'1CF4_)))) (cols'1274_)))))));
        
        fun isRelation'EDD_ r'F4C_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (13, 7)); ((RT_s_2.R_all (fn ((cn1'FAD_, cn2'FB2_):RT_x_1.t) => (((RSL.C_not RT_Text.equ) (cn1'FAD_, cn2'FB2_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (13, 79)); ((RSL.C_not RT_Text.equ) (cn1'FAD_, RT_Text.fromLit "")) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringBasics.rsl", (13, 92)); (RSL.C_not RT_Text.equ) (cn2'FB2_, RT_Text.fromLit ""))))) (r'F4C_))));
        
        fun isValidColour'838_ (col'8AA_, piece'8AF_, r'8B6_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (23, 5)); ((RT_s_3.R_all (fn (p'906_:RT_Text.t) => RT_Bool.equ (((areNb'106D_) (p'906_, piece'8AF_, r'8B6_)), false)) (col'8AA_))));
        
        fun getPieceSet'450_ r'4C0_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (13, 5)); if RT_s_2.equ (r'4C0_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (14, 12)); RT_s_3.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (16, 7)); let
            val (x'64C_, y'64E_) = ((RT_s_2.R_hd((r'4C0_))):RT_x_1.t); 
            val j'65A_ = ((RT_s_2.R_diff (r'4C0_, RT_s_2.R_fromList ([(x'64C_, y'64E_)]))):RT_s_2.t)
        in
            RT_s_3.R_union (RT_s_3.R_union (RT_s_3.R_fromList ([x'64C_]), RT_s_3.R_fromList ([y'64E_])), ((getPieceSet'450_) (j'65A_)))
        end));
        
    end;
    
open ColouringEx;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (16, 7), (18, 5));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (14, 12), (15, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (13, 5), (18, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory1/ColouringEx.rsl", (23, 5), (26, 3));
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
