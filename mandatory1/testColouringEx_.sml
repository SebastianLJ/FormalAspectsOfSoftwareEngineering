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
    
structure testColouringEx =
    struct
        type Piece_ = RT_Text.t;
        
        type Relation_ = RT_s_2.t;
        
        type Colour_ = RT_s_3.t;
        
        type Colouring_ = RT_s_4.t;
        
        fun areNb'35ED_ (cn1'3657_, cn2'365C_, r'3661_) = (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (17, 7)); (RT_s_2.R_mem ((cn1'3657_, cn2'365C_), r'3661_)) orelse (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (17, 28)); RT_s_2.R_mem ((cn2'365C_, cn1'3657_), r'3661_)));
        
        fun isCorrectColouring'377D_ (cols'37F4_, r'37FA_) = (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (22, 7)); (((RT_s_4.R_all (fn (col'38B0_:RT_s_3.t) => ((RT_s_3.R_all (fn (cn'3916_:RT_Text.t) => ((RT_s_2.R_exists (fn ((cn1'3980_, cn2'3984_):RT_x_1.t) => ((RT_Text.equ (cn'3916_, cn1'3980_)) orelse (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (25, 26)); RT_Text.equ (cn'3916_, cn2'3984_)))) (r'37FA_)))) (col'38B0_)))) (cols'37F4_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (31, 7)); (((RT_s_4.R_all (fn (col1'3C34_:RT_s_3.t) => ((RT_s_4.R_all (fn (col2'3C9A_:RT_s_3.t) => not ((RSL.C_not RT_s_3.equ) (col1'3C34_, col2'3C9A_)) orelse (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (33, 27)); RT_s_3.equ (RT_s_3.R_inter (col1'3C34_, col2'3C9A_), RT_s_3.R_fromList []))) (cols'37F4_)))) (cols'37F4_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (38, 7)); (((RT_s_2.R_all (fn ((cn1'3EF1_, cn2'3EF6_):RT_x_1.t) => ((RT_s_4.R_exists (fn (col1'3F59_:RT_s_3.t) => ((RT_s_4.R_exists (fn (col2'3FBF_:RT_s_3.t) => (RT_s_3.R_mem (cn1'3EF1_, col1'3F59_)) andalso (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (41, 30)); RT_s_3.R_mem (cn2'3EF6_, col2'3FBF_))) (cols'37F4_)))) (cols'37F4_)))) (r'37FA_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (47, 7)); ((RT_s_4.R_all (fn (col'4274_:RT_s_3.t) => ((RT_s_3.R_all (fn (cn1'42DA_:RT_Text.t) => ((RT_s_3.R_all (fn (cn2'4340_:RT_Text.t) => RT_Bool.equ (((areNb'35ED_) (cn1'42DA_, cn2'4340_, r'37FA_)), false)) (col'4274_)))) (col'4274_)))) (cols'37F4_)))))));
        
        fun isRelation'345D_ r'34CC_ = (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (13, 7)); ((RT_s_2.R_all (fn ((cn1'352D_, cn2'3532_):RT_x_1.t) => (((RSL.C_not RT_Text.equ) (cn1'352D_, cn2'3532_)) andalso (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (13, 79)); ((RSL.C_not RT_Text.equ) (cn1'352D_, RT_Text.fromLit "")) andalso (R_coverage.cancel(RT_Text.fromLit "./ColouringBasics.rsl", (13, 92)); (RSL.C_not RT_Text.equ) (cn2'3532_, RT_Text.fromLit ""))))) (r'34CC_))));
        
        fun isValidColour'2DB8_ (col'2E2A_, piece'2E2F_, r'2E36_) = (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (55, 5)); ((RT_s_3.R_all (fn (p'2E86_:RT_Text.t) => RT_Bool.equ (((areNb'35ED_) (p'2E86_, piece'2E2F_, r'2E36_)), false)) (col'2E2A_))));
        
        fun getPieceSet'1D51_ r'1DC1_ = (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (13, 6)); if RT_s_2.equ (r'1DC1_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (14, 13)); RT_s_3.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (16, 8)); let
            val (x'1F4D_, y'1F4F_) = ((RT_s_2.R_hd((r'1DC1_))):RT_x_1.t); 
            val j'1F5B_ = ((RT_s_2.R_diff (r'1DC1_, RT_s_2.R_fromList ([(x'1F4D_, y'1F4F_)]))):RT_s_2.t)
        in
            RT_s_3.R_union (RT_s_3.R_union (RT_s_3.R_fromList ([x'1F4D_]), RT_s_3.R_fromList ([y'1F4F_])), ((getPieceSet'1D51_) (j'1F5B_)))
        end));
        
        fun getValidColour'264D_ (cols'26C0_, piece'26C6_, r'26CD_) = (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (37, 5)); if (RT_s_4.equ (cols'26C0_, RT_s_4.R_fromList [])) then (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (39, 7)); RT_s_3.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (41, 7)); let
            val col'290F_ = ((RT_s_4.R_hd((cols'26C0_))):RT_s_3.t)
        in
            if (((isValidColour'2DB8_) (col'290F_, piece'26C6_, r'26CD_))) then (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (45, 11)); col'290F_) else (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (48, 11)); ((getValidColour'264D_) (RT_s_4.R_diff (cols'26C0_, RT_s_4.R_fromList ([col'290F_])), piece'26C6_, r'26CD_)))
        end));
        
        fun getSolution'20D5_ (pieces'2145_, cols'214C_, r'2152_) = (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (22, 7)); if (RT_s_3.equ (pieces'2145_, RT_s_3.R_fromList [])) then (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (24, 9)); cols'214C_) else (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (26, 9)); let
            val piece'2397_ = ((RT_s_3.R_hd((pieces'2145_))):RT_Text.t); 
            val col'23FB_ = ((((getValidColour'264D_) (cols'214C_, piece'2397_, r'2152_))):RT_s_3.t)
        in
            ((getSolution'20D5_) (RT_s_3.R_diff (pieces'2145_, RT_s_3.R_fromList ([piece'2397_])), RT_s_4.R_union (RT_s_4.R_diff (cols'214C_, RT_s_4.R_fromList ([col'23FB_])), RT_s_4.R_fromList ([RT_s_3.R_union (col'23FB_, RT_s_3.R_fromList ([piece'2397_]))])), r'2152_))
        end));
        
        fun col'1BC1_ r'1C29_ = (R_coverage.cancel(RT_Text.fromLit "./ColouringEx.rsl", (8, 15)); if not(((isRelation'345D_) (r'1C29_))) then raise RSL.RSL_exception ("./ColouringEx.rsl:9:9: Precondition of col" ^ "(" ^ RT_s_2.toString r'1C29_ ^ ")" ^ " not satisfied") else ((getSolution'20D5_) (((getPieceSet'1D51_) (r'1C29_)), RT_s_4.R_fromList [], r'1C29_)));
        
        val col4'7D7_ = RT_s_4.R_fromList ([RT_s_3.R_fromList ([RT_Text.fromLit "P1", RT_Text.fromLit "P9"]), RT_s_3.R_fromList ([RT_Text.fromLit "P5"]), RT_s_3.R_fromList ([RT_Text.fromLit "P3", RT_Text.fromLit "P5", RT_Text.fromLit "P8"]), RT_s_3.R_fromList ([RT_Text.fromLit "P2", RT_Text.fromLit "P7"])]);
        
        val r1'2C3_ = RT_s_2.R_fromList ([(RT_Text.fromLit "P1", RT_Text.fromLit "P2"), (RT_Text.fromLit "P1", RT_Text.fromLit "P3"), (RT_Text.fromLit "P2", RT_Text.fromLit "P3"), (RT_Text.fromLit "P2", RT_Text.fromLit "P4"), (RT_Text.fromLit "P2", RT_Text.fromLit "P5"), (RT_Text.fromLit "P3", RT_Text.fromLit "P6"), (RT_Text.fromLit "P3", RT_Text.fromLit "P5"), (RT_Text.fromLit "P4", RT_Text.fromLit "P5"), (RT_Text.fromLit "P4", RT_Text.fromLit "P9"), (RT_Text.fromLit "P4", RT_Text.fromLit "P8"), (RT_Text.fromLit "P5", RT_Text.fromLit "P9"), (RT_Text.fromLit "P6", RT_Text.fromLit "P9"), (RT_Text.fromLit "P6", RT_Text.fromLit "P7"), (RT_Text.fromLit "P7", RT_Text.fromLit "P9"), (RT_Text.fromLit "P7", RT_Text.fromLit "P8")]);
        
        val col3'773_ = RT_s_4.R_fromList ([RT_s_3.R_fromList ([RT_Text.fromLit "P1", RT_Text.fromLit "P9", RT_Text.fromLit "P3"]), RT_s_3.R_fromList ([RT_Text.fromLit "P5"]), RT_s_3.R_fromList ([RT_Text.fromLit "P3", RT_Text.fromLit "P5", RT_Text.fromLit "P8"]), RT_s_3.R_fromList ([RT_Text.fromLit "P2", RT_Text.fromLit "P7"])]);
        
        val r2'51B_ = RT_s_2.R_fromList ([(RT_Text.fromLit "P1", RT_Text.fromLit "P1")]);
        
        val col2'70F_ = RT_s_4.R_fromList ([RT_s_3.R_fromList ([RT_Text.fromLit "P1", RT_Text.fromLit "P9"]), RT_s_3.R_fromList ([RT_Text.fromLit "P5", RT_Text.fromLit "P4"]), RT_s_3.R_fromList ([RT_Text.fromLit "P3", RT_Text.fromLit "P7"]), RT_s_3.R_fromList ([RT_Text.fromLit "P2", RT_Text.fromLit "P6", RT_Text.fromLit "P8"])]);
        
        val r3'57F_ = RT_s_2.R_fromList ([(RT_Text.fromLit "P1", RT_Text.fromLit "P2")]);
        
        val col1'6AB_ = RT_s_4.R_fromList ([RT_s_3.R_fromList ([RT_Text.fromLit "P1", RT_Text.fromLit "P9", RT_Text.fromLit "P4"]), RT_s_3.R_fromList ([RT_Text.fromLit "P5"]), RT_s_3.R_fromList ([RT_Text.fromLit "P3", RT_Text.fromLit "P7"]), RT_s_3.R_fromList ([RT_Text.fromLit "P2", RT_Text.fromLit "P6", RT_Text.fromLit "P8"])]);
        
        val r4'5E3_ = RT_s_2.R_fromList ([(RT_Text.fromLit "P1", RT_Text.fromLit "")]);
        
    end;
    
open testColouringEx;

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
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (13, 92), (14, 1));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (13, 79), (14, 1));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (13, 7), (14, 3));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (41, 30), (42, 11));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (47, 7), (55, 4));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (33, 27), (34, 9));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (38, 7), (55, 4));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (25, 26), (25, 34));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (31, 7), (55, 4));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (22, 7), (55, 4));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (17, 28), (17, 45));
R_coverage.mark(RT_Text.fromLit "./ColouringBasics.rsl", (17, 7), (17, 45)));
(RSL.C_output "[t01] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isCorrectColouring'377D_) (col1'6AB_, r1'2C3_)), true)));

(RSL.C_output "[t02] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isCorrectColouring'377D_) (col2'70F_, r1'2C3_)), false)));

(RSL.C_output "[t03] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isCorrectColouring'377D_) (col3'773_, r1'2C3_)), false)));

(RSL.C_output "[t04] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isCorrectColouring'377D_) (col4'7D7_, r1'2C3_)), false)));

(RSL.C_output "[t05] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isRelation'345D_) (r1'2C3_)), true)));

(RSL.C_output "[t06] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isRelation'345D_) (r2'51B_)), false)));

(RSL.C_output "[t07] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isRelation'345D_) (r3'57F_)), true)));

(RSL.C_output "[t08] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isRelation'345D_) (r4'5E3_)), false)));

(RSL.C_output "[t09] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areNb'35ED_) (RT_Text.fromLit "P1", RT_Text.fromLit "P2", r1'2C3_)), true)));

(RSL.C_output "[t10] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areNb'35ED_) (RT_Text.fromLit "P1", RT_Text.fromLit "P2", r3'57F_)), true)));

(RSL.C_output "[t11] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areNb'35ED_) (RT_Text.fromLit "P1", RT_Text.fromLit "P5", r1'2C3_)), false)));

(RSL.C_output "[t12] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areNb'35ED_) (RT_Text.fromLit "P1", RT_Text.fromLit "P5", r2'51B_)), false)));

(RSL.C_output "[t13] " RT_s_4.toStringSafe (fn _ => ((col'1BC1_) (r1'2C3_))));

(RSL.C_output "[t14] " RT_s_4.toStringSafe (fn _ => ((col'1BC1_) (r2'51B_))));

(RSL.C_output "[t15] " RT_Bool.toStringSafe (fn _ => RT_s_3.equ (((getPieceSet'1D51_) (r1'2C3_)), RT_s_3.R_fromList ([RT_Text.fromLit "P1", RT_Text.fromLit "P2", RT_Text.fromLit "P3", RT_Text.fromLit "P4", RT_Text.fromLit "P5", RT_Text.fromLit "P6", RT_Text.fromLit "P7", RT_Text.fromLit "P8", RT_Text.fromLit "P9"]))));

(RSL.C_output "[t16] " RT_Bool.toStringSafe (fn _ => RT_s_3.equ (((getPieceSet'1D51_) (r2'51B_)), RT_s_3.R_fromList ([RT_Text.fromLit "P1"]))));

(RSL.C_output "[t17] " RT_Bool.toStringSafe (fn _ => RT_s_3.equ (((getPieceSet'1D51_) (r3'57F_)), RT_s_3.R_fromList ([RT_Text.fromLit "P1", RT_Text.fromLit "P2"]))));

(RSL.C_output "[t18] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isCorrectColouring'377D_) (((getSolution'20D5_) (((getPieceSet'1D51_) (r1'2C3_)), RT_s_4.R_fromList [], r1'2C3_)), r1'2C3_)), true)));

(RSL.C_output "[t19] " RT_Bool.toStringSafe (fn _ => RT_s_3.equ (((getValidColour'264D_) (col1'6AB_, RT_Text.fromLit "P1", r1'2C3_)), RT_s_3.R_fromList ([RT_Text.fromLit "P1", RT_Text.fromLit "P9", RT_Text.fromLit "P4"]))));

(RSL.C_output "[t20] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_s_3.equ) (((getValidColour'264D_) (col1'6AB_, RT_Text.fromLit "P1", r1'2C3_)), RT_s_3.R_fromList ([RT_Text.fromLit "P1"]))));

(RSL.C_output "[t21] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isValidColour'2DB8_) (RT_s_3.R_fromList ([RT_Text.fromLit "P1", RT_Text.fromLit "P9", RT_Text.fromLit "P4"]), RT_Text.fromLit "P1", r1'2C3_)), true)));

(RSL.C_output "[t22] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isValidColour'2DB8_) (RT_s_3.R_fromList ([RT_Text.fromLit "P1", RT_Text.fromLit "P9", RT_Text.fromLit "P4"]), RT_Text.fromLit "P2", r1'2C3_)), false)));

RSL.print_error_count();
R_coverage.save_marked();
