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
    
structure ColouringBasics =
    struct
        type Piece_ = RT_Text.t;
        
        type Relation_ = RT_s_2.t;
        
        type Colour_ = RT_s_3.t;
        
        type Colouring_ = RT_s_4.t;
        
        fun areNb'5E1_ (cn1'64B_, cn2'650_, r'655_) = (R_coverage.cancel(RT_Text.fromLit "ColouringBasics.rsl", (17, 7)); (RT_s_2.R_mem ((cn1'64B_, cn2'650_), r'655_)) orelse (R_coverage.cancel(RT_Text.fromLit "ColouringBasics.rsl", (17, 28)); RT_s_2.R_mem ((cn2'650_, cn1'64B_), r'655_)));
        
        fun isCorrectColouring'771_ (cols'7E8_, r'7EE_) = (R_coverage.cancel(RT_Text.fromLit "ColouringBasics.rsl", (22, 7)); (((RT_s_4.R_all (fn (col'8A4_:RT_s_3.t) => ((RT_s_3.R_all (fn (cn'90A_:RT_Text.t) => ((RT_s_2.R_exists (fn ((cn1'974_, cn2'978_):RT_x_1.t) => ((RT_Text.equ (cn'90A_, cn1'974_)) orelse (R_coverage.cancel(RT_Text.fromLit "ColouringBasics.rsl", (25, 26)); RT_Text.equ (cn'90A_, cn2'978_)))) (r'7EE_)))) (col'8A4_)))) (cols'7E8_)))) andalso (R_coverage.cancel(RT_Text.fromLit "ColouringBasics.rsl", (31, 7)); (((RT_s_4.R_all (fn (col1'C28_:RT_s_3.t) => ((RT_s_4.R_all (fn (col2'C8E_:RT_s_3.t) => ((RSL.C_not RT_s_3.equ) (col1'C28_, col2'C8E_)) andalso (R_coverage.cancel(RT_Text.fromLit "ColouringBasics.rsl", (33, 27)); RT_s_3.equ (RT_s_3.R_inter (col1'C28_, col2'C8E_), RT_s_3.R_fromList []))) (cols'7E8_)))) (cols'7E8_)))) andalso (R_coverage.cancel(RT_Text.fromLit "ColouringBasics.rsl", (38, 7)); (((RT_s_2.R_all (fn ((cn1'EE5_, cn2'EEA_):RT_x_1.t) => ((RT_s_4.R_exists (fn (col1'F4D_:RT_s_3.t) => ((RT_s_4.R_exists (fn (col2'FB3_:RT_s_3.t) => (RT_s_3.R_mem (cn1'EE5_, col1'F4D_)) andalso (R_coverage.cancel(RT_Text.fromLit "ColouringBasics.rsl", (41, 30)); RT_s_3.R_mem (cn2'EEA_, col2'FB3_))) (cols'7E8_)))) (cols'7E8_)))) (r'7EE_)))) andalso (R_coverage.cancel(RT_Text.fromLit "ColouringBasics.rsl", (47, 7)); ((RT_s_4.R_all (fn (col'1268_:RT_s_3.t) => ((RT_s_3.R_all (fn (cn1'12CE_:RT_Text.t) => ((RT_s_3.R_all (fn (cn2'1334_:RT_Text.t) => RT_Bool.equ (((areNb'5E1_) (cn1'12CE_, cn2'1334_, r'7EE_)), false)) (col'1268_)))) (col'1268_)))) (cols'7E8_)))))));
        
        fun isRelation'451_ r'4C0_ = (R_coverage.cancel(RT_Text.fromLit "ColouringBasics.rsl", (13, 7)); ((RT_s_2.R_all (fn ((cn1'521_, cn2'526_):RT_x_1.t) => (((RSL.C_not RT_Text.equ) (cn1'521_, cn2'526_)) andalso (R_coverage.cancel(RT_Text.fromLit "ColouringBasics.rsl", (13, 79)); ((RSL.C_not RT_Text.equ) (cn1'521_, RT_Text.fromLit "")) andalso (R_coverage.cancel(RT_Text.fromLit "ColouringBasics.rsl", (13, 92)); (RSL.C_not RT_Text.equ) (cn2'526_, RT_Text.fromLit ""))))) (r'4C0_))));
        
    end;
    
open ColouringBasics;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "ColouringBasics.rsl", (13, 92), (14, 1));
R_coverage.mark(RT_Text.fromLit "ColouringBasics.rsl", (13, 79), (14, 1));
R_coverage.mark(RT_Text.fromLit "ColouringBasics.rsl", (13, 7), (14, 3));
R_coverage.mark(RT_Text.fromLit "ColouringBasics.rsl", (41, 30), (42, 11));
R_coverage.mark(RT_Text.fromLit "ColouringBasics.rsl", (47, 7), (54, 4));
R_coverage.mark(RT_Text.fromLit "ColouringBasics.rsl", (33, 27), (34, 9));
R_coverage.mark(RT_Text.fromLit "ColouringBasics.rsl", (38, 7), (54, 4));
R_coverage.mark(RT_Text.fromLit "ColouringBasics.rsl", (25, 26), (25, 34));
R_coverage.mark(RT_Text.fromLit "ColouringBasics.rsl", (31, 7), (54, 4));
R_coverage.mark(RT_Text.fromLit "ColouringBasics.rsl", (22, 7), (54, 4));
R_coverage.mark(RT_Text.fromLit "ColouringBasics.rsl", (17, 28), (17, 45));
R_coverage.mark(RT_Text.fromLit "ColouringBasics.rsl", (17, 7), (17, 45)));
RSL.print_error_count();
R_coverage.save_marked();
