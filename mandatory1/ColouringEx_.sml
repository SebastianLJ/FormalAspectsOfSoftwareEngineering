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
        type t = RT_s_3.t * RT_s_4.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_s_3.equ(#1 x, #1 y) andalso 
                             RT_s_4.equ(#2 x, #2 y) andalso 
                             RT_s_2.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_3.toString(#1 x )) ^ "," ^
                             (RT_s_4.toString(#2 x )) ^ "," ^
                             (RT_s_2.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_3.typeToString ()) ^ " >< " ^
                              (RT_s_4.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_8 =
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
    
structure RT_x_9 =
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
        
        fun isCorrectColouringTest'2C29_ (cols'2CA4_, r'2CAA_) = (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (57, 7)); ((RT_s_4.R_all (fn (col'2D5C_:RT_s_3.t) => ((RT_s_3.R_all (fn (cn'2DC2_:RT_Text.t) => ((RT_s_2.R_exists (fn ((cn1'2E2C_, cn2'2E30_):RT_x_1.t) => ((RT_Text.equ (cn'2DC2_, cn1'2E2C_)) orelse (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (60, 26)); RT_Text.equ (cn'2DC2_, cn2'2E30_)))) (r'2CAA_)))) (col'2D5C_)))) (cols'2CA4_))));
        
        fun isRelation'1B5D_ r'1BCC_ = (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (13, 7)); ((RT_s_2.R_all (fn ((cn1'1C2D_, cn2'1C32_):RT_x_1.t) => (((RSL.C_not RT_Text.equ) (cn1'1C2D_, cn2'1C32_)) andalso (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (13, 79)); ((RSL.C_not RT_Text.equ) (cn1'1C2D_, RT_Text.fromLit "")) andalso (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (13, 92)); (RSL.C_not RT_Text.equ) (cn2'1C32_, RT_Text.fromLit ""))))) (r'1BCC_))));
        
        fun areNb'1CED_ (cn1'1D57_, cn2'1D5C_, r'1D61_) = (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (17, 7)); (RT_s_2.R_mem ((cn1'1D57_, cn2'1D5C_), r'1D61_)) orelse (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (17, 28)); RT_s_2.R_mem ((cn2'1D5C_, cn1'1D57_), r'1D61_)));
        
        fun isCorrectColouring'1E7D_ (cols'1EF4_, r'1EFA_) = (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (22, 7)); (((RT_s_4.R_all (fn (col'1FB0_:RT_s_3.t) => ((RT_s_3.R_all (fn (cn'2016_:RT_Text.t) => ((RT_s_2.R_exists (fn ((cn1'2080_, cn2'2084_):RT_x_1.t) => ((RT_Text.equ (cn'2016_, cn1'2080_)) orelse (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (25, 26)); RT_Text.equ (cn'2016_, cn2'2084_)))) (r'1EFA_)))) (col'1FB0_)))) (cols'1EF4_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (31, 7)); (((RT_s_4.R_all (fn (col1'2334_:RT_s_3.t) => ((RT_s_4.R_all (fn (col2'239A_:RT_s_3.t) => ((RSL.C_not RT_s_3.equ) (col1'2334_, col2'239A_)) andalso (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (33, 27)); RT_s_3.equ (RT_s_3.R_inter (col1'2334_, col2'239A_), RT_s_3.R_fromList []))) (cols'1EF4_)))) (cols'1EF4_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (38, 7)); (((RT_s_2.R_all (fn ((cn1'25F1_, cn2'25F6_):RT_x_1.t) => ((RT_s_4.R_exists (fn (col1'2659_:RT_s_3.t) => ((RT_s_4.R_exists (fn (col2'26BF_:RT_s_3.t) => (RT_s_3.R_mem (cn1'25F1_, col1'2659_)) andalso (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (41, 30)); RT_s_3.R_mem (cn2'25F6_, col2'26BF_))) (cols'1EF4_)))) (cols'1EF4_)))) (r'1EFA_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (47, 7)); ((RT_s_4.R_all (fn (col'2974_:RT_s_3.t) => ((RT_s_3.R_all (fn (cn1'29DA_:RT_Text.t) => ((RT_s_3.R_all (fn (cn2'2A40_:RT_Text.t) => RT_Bool.equ (((areNb'1CED_) (cn1'29DA_, cn2'2A40_, r'1EFA_)), false)) (col'2974_)))) (col'2974_)))) (cols'1EF4_)))))));
        
        fun isValidColour'14B8_ (col'152A_, piece'152F_, r'1536_) = (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (55, 5)); ((RT_s_3.R_all (fn (p'1586_:RT_Text.t) => RT_Bool.equ (((areNb'1CED_) (p'1586_, piece'152F_, r'1536_)), false)) (col'152A_))));
        
        fun getPieceSet'451_ r'4C1_ = (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (13, 6)); if RT_s_2.equ (r'4C1_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (14, 13)); RT_s_3.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (16, 8)); let
            val (x'64D_, y'64F_) = ((RT_s_2.R_hd((r'4C1_))):RT_x_1.t); 
            val j'65B_ = ((RT_s_2.R_diff (r'4C1_, RT_s_2.R_fromList ([(x'64D_, y'64F_)]))):RT_s_2.t)
        in
            RT_s_3.R_union (RT_s_3.R_union (RT_s_3.R_fromList ([x'64D_]), RT_s_3.R_fromList ([y'64F_])), ((getPieceSet'451_) (j'65B_)))
        end));
        
        fun getValidColour'D4D_ (cols'DC0_, piece'DC6_, r'DCD_) = (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (37, 5)); if (RT_s_4.equ (cols'DC0_, RT_s_4.R_fromList [])) then (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (39, 7)); RT_s_3.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (41, 7)); let
            val col'100F_ = ((RT_s_4.R_hd((cols'DC0_))):RT_s_3.t)
        in
            if (((isValidColour'14B8_) (col'100F_, piece'DC6_, r'DCD_))) then (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (45, 11)); col'100F_) else (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (48, 11)); ((getValidColour'D4D_) (RT_s_4.R_diff (cols'DC0_, RT_s_4.R_fromList ([col'100F_])), piece'DC6_, r'DCD_)))
        end));
        
        fun getSolution'7D5_ (pieces'845_, cols'84C_, r'852_) = (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (22, 7)); if (RT_s_3.equ (pieces'845_, RT_s_3.R_fromList [])) then (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (24, 9)); cols'84C_) else (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (26, 9)); let
            val piece'A97_ = ((RT_s_3.R_hd((pieces'845_))):RT_Text.t); 
            val col'AFB_ = ((((getValidColour'D4D_) (cols'84C_, piece'A97_, r'852_))):RT_s_3.t)
        in
            ((getSolution'7D5_) (RT_s_3.R_diff (pieces'845_, RT_s_3.R_fromList ([piece'A97_])), RT_s_4.R_union (RT_s_4.R_diff (cols'84C_, RT_s_4.R_fromList ([col'AFB_])), RT_s_4.R_fromList ([RT_s_3.R_union (col'AFB_, RT_s_3.R_fromList ([piece'A97_]))])), r'852_))
        end));
        
        fun col'2C1_ r'329_ = (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (8, 15)); if not(((isRelation'1B5D_) (r'329_))) then raise RSL.RSL_exception ("./ColouringEx.rsl:9:9: Precondition of col" ^ "(" ^ RT_s_2.toString r'329_ ^ ")" ^ " not satisfied") else ((getSolution'7D5_) (((getPieceSet'451_) (r'329_)), RT_s_4.R_fromList [], r'329_)));
        
    end;
    
open ColouringEx;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "./ColouringEx.rsl", (8, 15), (9, 22));
R_coverage.mark(RT_Text.fromLit "./ColouringEx.rsl", (26, 9), (32, 7));
R_coverage.mark(RT_Text.fromLit "./ColouringEx.rsl", (24, 9), (25, 10));
R_coverage.mark(RT_Text.fromLit "./ColouringEx.rsl", (22, 7), (32, 10));
R_coverage.mark(RT_Text.fromLit "./ColouringEx.rsl", (48, 11), (49, 9));
R_coverage.mark(RT_Text.fromLit "./ColouringEx.rsl", (45, 11), (46, 12));
R_coverage.mark(RT_Text.fromLit "./ColouringEx.rsl", (41, 7), (51, 5));
R_coverage.mark(RT_Text.fromLit "./ColouringEx.rsl", (39, 7), (40, 8));
R_coverage.mark(RT_Text.fromLit "./ColouringEx.rsl", (37, 5), (51, 8));
R_coverage.mark(RT_Text.fromLit "./ColouringEx.rsl", (16, 8), (18, 6));
R_coverage.mark(RT_Text.fromLit "./ColouringEx.rsl", (14, 13), (15, 9));
R_coverage.mark(RT_Text.fromLit "./ColouringEx.rsl", (13, 6), (18, 9));
R_coverage.mark(RT_Text.fromLit "./ColouringEx.rsl", (55, 5), (58, 3));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (41, 30), (42, 11));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (47, 7), (53, 8));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (33, 27), (34, 9));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (38, 7), (53, 8));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (25, 26), (25, 34));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (31, 7), (53, 8));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (22, 7), (53, 8));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (17, 28), (17, 45));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (17, 7), (17, 45));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (13, 92), (14, 1));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (13, 79), (14, 1));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (13, 7), (14, 3));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (60, 26), (60, 34));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (57, 7), (65, 4)));
RSL.print_error_count();
R_coverage.save_marked();
