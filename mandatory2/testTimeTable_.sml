structure RT_Text = RT_Text;

structure RT_Nat = RT_Nat;

structure RT_m_1 = RT_Map(structure DomainElem = RT_Text structure RangeElem = RT_Nat);

structure RT_x_2 =
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
    
structure RT_x_3 =
    struct
        type t = RT_Nat.t * RT_Nat.t * RT_Nat.t;
        
        fun equ (x:t, y:t) = RT_Nat.equ(#1 x, #1 y) andalso 
                             RT_Nat.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Nat.toString(#1 x )) ^ "," ^
                             (RT_Nat.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^
                              ")";
    end;
    
structure RT_m_4 = RT_Map(structure DomainElem = RT_x_2 structure RangeElem = RT_x_3);

structure RT_x_5 =
    struct
        type t = RT_m_1.t * RT_m_4.t;
        
        fun equ (x:t, y:t) = RT_m_1.equ(#1 x, #1 y) andalso 
                             RT_m_4.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_m_1.toString(#1 x )) ^ "," ^
                             (RT_m_4.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_m_1.typeToString ()) ^ " >< " ^
                              (RT_m_4.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_6 =
    struct
        type t = RT_Text.t * RT_Nat.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Nat.equ(#2 x, #2 y) andalso 
                             RT_x_5.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Nat.toString(#2 x )) ^ "," ^
                             (RT_x_5.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_Bool = RT_Bool;

structure RT_s_7 = RT_Set(structure Elem = RT_Nat);

structure RT_s_8 = RT_Set(structure Elem = RT_x_3);

structure RT_x_9 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_Nat.t * RT_Nat.t * RT_Nat.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_Nat.equ(#4 x, #4 y) andalso 
                             RT_Nat.equ(#5 x, #5 y) andalso 
                             RT_x_5.equ(#6 x, #6 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_Nat.toString(#4 x )) ^ "," ^
                             (RT_Nat.toString(#5 x )) ^ "," ^
                             (RT_x_5.toString(#6 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_10 =
    struct
        type t = RT_Text.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_x_5.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_x_5.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_s_11 = RT_Set(structure Elem = RT_Text);

structure RT_x_12 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_x_5.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_x_5.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_s_13 = RT_Set(structure Elem = RT_x_2);

structure RT_x_14 =
    struct
        type t = RT_Text.t * RT_Nat.t * RT_Nat.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Nat.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Nat.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^
                              ")";
    end;
    
structure RT_l_15 = RT_List(structure Elem = RT_x_14);

structure RT_m_16 = RT_Map(structure DomainElem = RT_Text structure RangeElem = RT_l_15);

structure RT_x_17 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_Nat.t * RT_Nat.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_Nat.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_Nat.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_18 =
    struct
        type t = RT_Text.t * RT_m_16.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_m_16.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_m_16.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_m_16.typeToString ()) ^
                              ")";
    end;
    
structure RT_s_19 = RT_Set(structure Elem = RT_l_15);

structure RT_x_20 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_Nat.t * RT_Nat.t * RT_m_16.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_Nat.equ(#4 x, #4 y) andalso 
                             RT_m_16.equ(#5 x, #5 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_Nat.toString(#4 x )) ^ "," ^
                             (RT_m_16.toString(#5 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_m_16.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_21 =
    struct
        type t = RT_Text.t * RT_l_15.t * RT_m_16.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_l_15.equ(#2 x, #2 y) andalso 
                             RT_m_16.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_l_15.toString(#2 x )) ^ "," ^
                             (RT_m_16.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_l_15.typeToString ()) ^ " >< " ^
                              (RT_m_16.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_22 =
    struct
        type t = RT_x_14.t * RT_l_15.t;
        
        fun equ (x:t, y:t) = RT_x_14.equ(#1 x, #1 y) andalso 
                             RT_l_15.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_x_14.toString(#1 x )) ^ "," ^
                             (RT_l_15.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_x_14.typeToString ()) ^ " >< " ^
                              (RT_l_15.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_23 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_m_16.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_m_16.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_m_16.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_m_16.typeToString ()) ^
                              ")";
    end;
    
structure RT_s_24 = RT_Set(structure Elem = RT_x_17);

structure RT_x_25 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_s_11.t * RT_m_16.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_s_11.equ(#3 x, #3 y) andalso 
                             RT_m_16.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_s_11.toString(#3 x )) ^ "," ^
                             (RT_m_16.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_11.typeToString ()) ^ " >< " ^
                              (RT_m_16.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_26 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_l_15.t * RT_Text.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_l_15.equ(#3 x, #3 y) andalso 
                             RT_Text.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_l_15.toString(#3 x )) ^ "," ^
                             (RT_Text.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_l_15.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^
                              ")";
    end;
    
structure RT_s_27 = RT_Set(structure Elem = RT_x_14);

structure RT_x_28 =
    struct
        type t = RT_Text.t * RT_Nat.t * RT_Nat.t * RT_s_27.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Nat.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_s_27.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Nat.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_s_27.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_s_27.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_29 =
    struct
        type t = RT_Text.t * RT_s_11.t * RT_m_16.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_s_11.equ(#2 x, #2 y) andalso 
                             RT_m_16.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_s_11.toString(#2 x )) ^ "," ^
                             (RT_m_16.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_11.typeToString ()) ^ " >< " ^
                              (RT_m_16.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_30 =
    struct
        type t = RT_Text.t * RT_l_15.t * RT_Text.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_l_15.equ(#2 x, #2 y) andalso 
                             RT_Text.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_l_15.toString(#2 x )) ^ "," ^
                             (RT_Text.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_l_15.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_31 =
    struct
        type t = RT_l_15.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_l_15.equ(#1 x, #1 y) andalso 
                             RT_x_5.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_l_15.toString(#1 x )) ^ "," ^
                             (RT_x_5.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_l_15.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_32 =
    struct
        type t = RT_m_16.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_m_16.equ(#1 x, #1 y) andalso 
                             RT_x_5.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_m_16.toString(#1 x )) ^ "," ^
                             (RT_x_5.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_m_16.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_33 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_m_16.t * RT_m_4.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_m_16.equ(#3 x, #3 y) andalso 
                             RT_m_4.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_m_16.toString(#3 x )) ^ "," ^
                             (RT_m_4.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_m_16.typeToString ()) ^ " >< " ^
                              (RT_m_4.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_34 =
    struct
        type t = RT_Text.t * RT_m_16.t * RT_m_1.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_m_16.equ(#2 x, #2 y) andalso 
                             RT_m_1.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_m_16.toString(#2 x )) ^ "," ^
                             (RT_m_1.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_m_16.typeToString ()) ^ " >< " ^
                              (RT_m_1.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_35 =
    struct
        type t = RT_l_15.t * RT_m_4.t;
        
        fun equ (x:t, y:t) = RT_l_15.equ(#1 x, #1 y) andalso 
                             RT_m_4.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_l_15.toString(#1 x )) ^ "," ^
                             (RT_m_4.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_l_15.typeToString ()) ^ " >< " ^
                              (RT_m_4.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_36 =
    struct
        type t = RT_l_15.t * RT_m_1.t;
        
        fun equ (x:t, y:t) = RT_l_15.equ(#1 x, #1 y) andalso 
                             RT_m_1.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_l_15.toString(#1 x )) ^ "," ^
                             (RT_m_1.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_l_15.typeToString ()) ^ " >< " ^
                              (RT_m_1.typeToString ()) ^
                              ")";
    end;
    
structure testTimeTable =
    struct
        type Net_ = RT_x_5.t;
        
        type Headway_ = RT_Nat.t;
        
        type DrivingTime_ = RT_Nat.t;
        
        type Time_ = RT_Nat.t;
        
        type Capacity_ = RT_Nat.t;
        
        type StopId_ = RT_Text.t;
        
        type CapacityMap_ = RT_m_1.t;
        
        type Connection_ = RT_x_3.t;
        
        type ConnectionMap_ = RT_m_4.t;
        
        fun allStopsHaveConnection'111D9_ (capacityMap'11254_, connectionMap'11261_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (81, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'11254_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'11261_))))) then raise RSL.RSL_exception ("./NET.rsl:79:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'11254_, connectionMap'11261_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'112A8_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'11375_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'112A8_, stopId2'11375_), (connectionMap'11261_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (86, 13)); RT_m_4.R_mem ((stopId2'11375_, stopId'112A8_), (connectionMap'11261_))))) ((capacityMap'11254_))))) ((capacityMap'11254_)))));
        
        fun noSelfConnection'10C61_ (capacityMap'10CD6_, connectionMap'10CE3_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (67, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'10CD6_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'10CE3_))))) then raise RSL.RSL_exception ("./NET.rsl:65:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'10CD6_, connectionMap'10CE3_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'10D31_, stopId2'10D3A_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'10D31_, stopId2'10D3A_)) ((connectionMap'10CE3_)))));
        
        fun isIn'FD25_ (stopId'FD8E_, (capacityMap'FD97_, connecitonMap'FDA4_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FD97_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'FDA4_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'FD8E_, (capacityMap'FD97_, connecitonMap'FDA4_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'FD8E_, (capacityMap'FD97_)));
        
        fun allStopsInConnectionMapAreInCapacityMap'10F1D_ (capacityMap'10FA9_, connectionMap'10FB6_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (74, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'10FA9_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'10FB6_))))) then raise RSL.RSL_exception ("./NET.rsl:72:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'10FA9_, connectionMap'10FB6_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'10FED_, stopId2'10FF6_):RT_x_2.t) => (((isIn'FD25_) (stopId1'10FED_, (capacityMap'10FA9_, connectionMap'10FB6_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (76, 56)); ((isIn'FD25_) (stopId2'10FF6_, (capacityMap'10FA9_, connectionMap'10FB6_))))) ((connectionMap'10FB6_)))));
        
        fun isWellformed'115C1_ net'11632_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'11632_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:89:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'11632_ ^ ")" ^ " not in subtype") else (((noSelfConnection'10C61_) (net'11632_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); (((allStopsInConnectionMapAreInCapacityMap'10F1D_) (net'11632_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (93, 7)); ((allStopsHaveConnection'111D9_) (net'11632_)))));
        
        fun minDrivingTime'108DD_ (stopId1'10950_, stopId2'10959_, (capacityMap'10963_, connectionMap'10970_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (58, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'10963_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'10970_))))) then raise RSL.RSL_exception ("./NET.rsl:56:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'10950_, stopId2'10959_, (capacityMap'10963_, connectionMap'10970_)) ^ " not in subtype") else let
            val (headway'109AC_, drivingTime'109B5_, capacity'109C2_) = ((((RT_m_4.R_app(connectionMap'10970_)) (stopId1'10950_, stopId2'10959_))):RT_x_3.t)
        in
            drivingTime'109B5_
        end);
        
        fun addConnection'FB31_ (stopId1'FBA3_, stopId2'FBAC_, headway'FBB5_, capacity'FBBE_, drivingTime'FBC8_, (capacityMap'FBD6_, connectionMap'FBE3_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'FBB5_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'FBBE_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'FBC8_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FBD6_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FBE3_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'FBA3_, stopId2'FBAC_, headway'FBB5_, capacity'FBBE_, drivingTime'FBC8_, (capacityMap'FBD6_, connectionMap'FBE3_)) ^ " not in subtype") else (capacityMap'FBD6_, RT_m_4.R_override (connectionMap'FBE3_, RT_m_4.R_fromList ([((stopId1'FBA3_, stopId2'FBAC_), (headway'FBB5_, drivingTime'FBC8_, capacity'FBBE_))]))));
        
        fun capacity'105BD_ (stopId1'1062A_, stopId2'10633_, (capacityMap'1063D_, connectionMap'1064A_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (50, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'1063D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'1064A_))))) then raise RSL.RSL_exception ("./NET.rsl:48:5: Argument of capacity" ^ RT_x_12.toString (stopId1'1062A_, stopId2'10633_, (capacityMap'1063D_, connectionMap'1064A_)) ^ " not in subtype") else let
            val (headway'1068C_, drivingTime'10695_, capacity'106A2_) = ((((RT_m_4.R_app(connectionMap'1064A_)) (stopId1'1062A_, stopId2'10633_))):RT_x_3.t)
        in
            capacity'106A2_
        end);
        
        fun insertStop'F93D_ (stopId'F9AC_, capacity'F9B4_, (capacityMap'F9BF_, connectionMap'F9CC_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'F9B4_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F9BF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F9CC_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'F9AC_, capacity'F9B4_, (capacityMap'F9BF_, connectionMap'F9CC_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'F9BF_, RT_m_1.R_fromList ([(stopId'F9AC_, capacity'F9B4_)])), connectionMap'F9CC_));
        
        fun minHeadway'1029D_ (stopId1'1030C_, stopId2'10315_, (capacityMap'1031F_, connectionMap'1032C_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (42, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'1031F_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'1032C_))))) then raise RSL.RSL_exception ("./NET.rsl:40:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'1030C_, stopId2'10315_, (capacityMap'1031F_, connectionMap'1032C_)) ^ " not in subtype") else let
            val (headway'1036C_, drivingTime'10375_, capacity'10382_) = ((((RT_m_4.R_app(connectionMap'1032C_)) (stopId1'1030C_, stopId2'10315_))):RT_x_3.t)
        in
            headway'1036C_
        end);
        
        val empty'F875_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun areDirectlyConnected'10045_ (stopId1'100BE_, stopId2'100C7_, (capacityMap'100D1_, connectionMap'100DE_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'100D1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'100DE_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'100BE_, stopId2'100C7_, (capacityMap'100D1_, connectionMap'100DE_)) ^ " not in subtype") else (RT_m_4.R_mem ((stopId1'100BE_, stopId2'100C7_), (connectionMap'100DE_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (37, 7)); RT_m_4.R_mem ((stopId2'100C7_, stopId1'100BE_), (connectionMap'100DE_))));
        
        fun capacity'FEB5_ (stopId'FF23_, (capacityMap'FF2B_, connectionMap'FF38_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FF2B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FF38_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'FF23_, (capacityMap'FF2B_, connectionMap'FF38_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'FF2B_)) (stopId'FF23_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type TramPlanRow_ = RT_x_17.t;
        
        type Plan_ = RT_l_15.t;
        
        fun buildTimesForTramOnStop'A285_ (stopid'A301_, plan'A309_, tramid'A30F_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (249, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x122_'0_, x123_'0_, x124_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x123_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0"))
        end) (plan'A309_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:247:5: Argument of buildTimesForTramOnStop" ^ RT_x_30.toString (stopid'A301_, plan'A309_, tramid'A30F_) ^ " not in subtype") else if RT_Nat.R_lt (RT_l_15.R_length(plan'A309_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (250, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (252, 9)); let
            val (sid'A4E4_, arrt'A4E9_, dept'A4EF_) = ((RT_l_15.R_hd(plan'A309_)):RT_x_14.t)
        in
            if RT_Text.equ (sid'A4E4_, stopid'A301_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (256, 16)); RT_s_27.R_union (RT_s_27.R_fromList ([(tramid'A30F_, arrt'A4E9_, dept'A4EF_)]), ((buildTimesForTramOnStop'A285_) (stopid'A301_, RT_l_15.R_tl(plan'A309_), tramid'A30F_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (257, 16)); ((buildTimesForTramOnStop'A285_) (stopid'A301_, RT_l_15.R_tl(plan'A309_), tramid'A30F_)))
        end));
        
        fun buildAllTimesForStop'9D0D_ (stopid'9D86_, trams'9D8E_, timetable'9D95_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (235, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x119_'0_, x120_'0_, x121_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x120_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'9D95_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:233:5: Argument of buildAllTimesForStop" ^ RT_x_29.toString (stopid'9D86_, trams'9D8E_, timetable'9D95_) ^ " not in subtype") else if RT_s_11.equ (trams'9D8E_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (236, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (238, 9)); let
            val tramid'9F6B_ = ((RT_s_11.R_hd(trams'9D8E_)):RT_Text.t)
        in
            RT_s_27.R_union (((buildTimesForTramOnStop'A285_) (stopid'9D86_, ((RT_m_16.R_app(timetable'9D95_)) (tramid'9F6B_)), tramid'9F6B_)), ((buildAllTimesForStop'9D0D_) (stopid'9D86_, RT_s_11.R_diff (trams'9D8E_, RT_s_11.R_fromList ([tramid'9F6B_])), timetable'9D95_)))
        end));
        
        fun countOverlappingTimesForStop'9669_ (tramid'96EA_, arrtime'96F1_, deptime'96FA_, times'9703_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (218, 7)); if not((RT_Nat.R_ge (arrtime'96F1_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (deptime'96FA_, RT_Int.fromLit "0")) andalso ((RT_s_27.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x116_'0_, x117_'0_, x118_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x117_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0"))
        end) (times'9703_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:216:5: Argument of countOverlappingTimesForStop" ^ RT_x_28.toString (tramid'96EA_, arrtime'96F1_, deptime'96FA_, times'9703_) ^ " not in subtype") else if RT_s_27.equ (times'9703_, RT_s_27.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (221, 9)); let
            val (tramid2'98C8_, arrtime2'98D1_, deptime2'98DB_) = ((RT_s_27.R_hd(times'9703_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'96EA_, tramid2'98C8_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (224, 35)); ((((RT_Nat.R_lt (arrtime'96F1_, arrtime2'98D1_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (224, 59)); RT_Nat.R_lt (arrtime2'98D1_, deptime'96FA_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (224, 81)); ((RT_Nat.R_lt (arrtime'96F1_, deptime2'98DB_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (225, 4)); RT_Nat.R_lt (deptime2'98DB_, deptime'96FA_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (225, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'9669_) (tramid'96EA_, arrtime'96F1_, deptime'96FA_, RT_s_27.R_diff (times'9703_, RT_s_27.R_fromList ([(tramid2'98C8_, arrtime2'98D1_, deptime2'98DB_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (226, 16)); ((countOverlappingTimesForStop'9669_) (tramid'96EA_, arrtime'96F1_, deptime'96FA_, RT_s_27.R_diff (times'9703_, RT_s_27.R_fromList ([(tramid2'98C8_, arrtime2'98D1_, deptime2'98DB_)])))))
        end));
        
        fun stopCapacityIsNotExceeded'D54F_ (stopid'D5CD_, timetable'D5D5_, capacityMap'D5E0_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (379, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x186_'0_, x187_'0_, x188_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x187_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x188_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'D5D5_)))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D5E0_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:377:7: Argument of stopCapacityIsNotExceeded" ^ RT_x_34.toString (stopid'D5CD_, timetable'D5D5_, capacityMap'D5E0_) ^ " not in subtype") else let
            val times'D67F_ = ((((buildAllTimesForStop'9D0D_) (stopid'D5CD_, RT_m_16.R_dom((timetable'D5D5_)), timetable'D5D5_))):RT_s_27.t); 
            val capacity'D6E3_ = ((((RT_m_1.R_app(capacityMap'D5E0_)) (stopid'D5CD_))):RT_Nat.t)
        in
            ((RT_s_27.R_all (fn ((tramid'D7B1_, arrtime'D7B9_, deptime'D7C2_):RT_x_14.t) => not ((RT_Nat.R_ge (arrtime'D7B9_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (deptime'D7C2_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'9669_) (tramid'D7B1_, arrtime'D7B9_, deptime'D7C2_, times'D67F_))), capacity'D6E3_)))) (times'D67F_)))
        end);
        
        fun allStopCapacitiesAreNotExceeded'D22F_ (timetable'D2B3_, (capacityMap'D2BF_, connectionMap'D2CB_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (371, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x178_'0_, x179_'0_, x180_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x179_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x180_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'D2B3_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D2BF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x183_'0_, x184_'0_, x185_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x183_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x184_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x185_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D2CB_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:369:7: Argument of allStopCapacitiesAreNotExceeded" ^ RT_x_32.toString (timetable'D2B3_, (capacityMap'D2BF_, connectionMap'D2CB_)) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopid'D2FE_:RT_Text.t) => ((stopCapacityIsNotExceeded'D54F_) (stopid'D2FE_, timetable'D2B3_, capacityMap'D2BF_))) ((capacityMap'D2BF_)))));
        
        fun getConnection'5CFF_ (stop1'5D71_, stop2'5D78_, (capacityMap'5D80_, connectionMap'5D8D_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (71, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'5D80_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x86_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5D8D_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:69:7: Argument of getConnection" ^ RT_x_12.toString (stop1'5D71_, stop2'5D78_, (capacityMap'5D80_, connectionMap'5D8D_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'5D71_, stop2'5D78_), (connectionMap'5D8D_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (73, 9)); ((RT_m_4.R_app(connectionMap'5D8D_)) ((stop1'5D71_, stop2'5D78_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (75, 9)); ((RT_m_4.R_app(connectionMap'5D8D_)) ((stop2'5D78_, stop1'5D71_)))));
        
        fun timeBetweenStopsIsDrivingTime'AB81_ (plan'AC03_, (capacityMap'AC0A_, connectionMap'AC17_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (272, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x125_'0_, x126_'0_, x127_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0"))
        end) (plan'AC03_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'AC0A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x130_'0_, x131_'0_, x132_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x131_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'AC17_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:270:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_31.toString (plan'AC03_, (capacityMap'AC0A_, connectionMap'AC17_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'AC03_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (273, 9)); let
            val (stopid1'AD18_, arrTime1'AD21_, depTime1'AD2B_) = ((RT_l_15.R_hd(plan'AC03_)):RT_x_14.t); 
            val (stopid2'AD7C_, arrTime2'AD85_, depTime2'AD8F_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'AC03_)))):RT_x_14.t)
        in
            let
                val (headway'AEAA_, drivingTime'AEB2_, capacity'AEBF_) = ((((getConnection'5CFF_) (stopid1'AD18_, stopid2'AD7C_, (capacityMap'AC0A_, connectionMap'AC17_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'AD85_, depTime1'AD2B_), drivingTime'AEB2_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (280, 53)); ((timeBetweenStopsIsDrivingTime'AB81_) (RT_l_15.R_tl(plan'AC03_), (capacityMap'AC0A_, connectionMap'AC17_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (284, 9)); true));
        
        fun allTimeBetweenStopsIsValidDrivingTime'B2ED_ (t'B377_, n'B37A_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (291, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x133_'0_, x134_'0_, x135_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x135_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'B377_)))) andalso (let
            val (x136_'0_, x137_'0_) = ((n'B37A_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x136_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x140_'0_, x141_'0_, x142_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x140_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x142_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x137_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:289:5: Argument of allTimeBetweenStopsIsValidDrivingTime" ^ RT_x_32.toString (t'B377_, n'B37A_) ^ " not in subtype") else ((RT_s_19.R_all (fn (plan'B3BC_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x226_'0_, x227_'0_, x228_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x227_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x228_'0_, RT_Int.fromLit "0"))
        end) (plan'B3BC_))) orelse (((timeBetweenStopsIsDrivingTime'AB81_) (plan'B3BC_, n'B37A_)))) (RT_m_16.R_ran((t'B377_))))));
        
        fun nextStop'520F_ (planRow'527C_, plan'5285_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (43, 9)); if not((let
            val (x78_'0_, x79_'0_, x80_'0_) = ((planRow'527C_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x79_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x81_'0_, x82_'0_, x83_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x83_'0_, RT_Int.fromLit "0"))
        end) (plan'5285_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:41:7: Argument of nextStop" ^ RT_x_22.toString (planRow'527C_, plan'5285_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'5285_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:66:13: Precondition of nextStop" ^ RT_x_22.toString (planRow'527C_, plan'5285_) ^ " not satisfied") else let
            val iPlanRow'533F_ = ((RT_l_15.R_hd(plan'5285_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'533F_, planRow'527C_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (48, 13)); let
                val (sid'5538_, arrt'553D_, dept'5543_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'5285_)))):RT_x_14.t)
            in
                (sid'5538_, arrt'553D_, dept'5543_)
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (54, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'5285_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (56, 15)); ((nextStop'520F_) (planRow'527C_, RT_l_15.R_tl(plan'5285_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (58, 15)); let
                val (sid'5922_, arrt'5927_, dept'592D_) = ((iPlanRow'533F_):RT_x_14.t)
            in
                iPlanRow'533F_
            end))
        end);
        
        fun buildTimesForTramOnTrack'8F61_ (stopid1'8FDF_, stopid2'8FE8_, plan'8FF1_, tramid'8FF7_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (200, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x113_'0_, x114_'0_, x115_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0"))
        end) (plan'8FF1_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:198:5: Argument of buildTimesForTramOnTrack" ^ RT_x_26.toString (stopid1'8FDF_, stopid2'8FE8_, plan'8FF1_, tramid'8FF7_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'8FF1_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (201, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (203, 9)); let
            val (sid'91C0_, arrt'91C5_, dept'91CB_) = ((RT_l_15.R_hd(plan'8FF1_)):RT_x_14.t); 
            val (sid2'9224_, arrt2'922A_, dept2'9231_) = ((((nextStop'520F_) ((sid'91C0_, arrt'91C5_, dept'91CB_), plan'8FF1_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'91C0_, stopid1'8FDF_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (207, 31)); RT_Text.equ (sid2'9224_, stopid2'8FE8_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (208, 16)); RT_s_27.R_union (RT_s_27.R_fromList ([(tramid'8FF7_, dept'91CB_, arrt2'922A_)]), ((buildTimesForTramOnTrack'8F61_) (stopid1'8FDF_, stopid2'8FE8_, RT_l_15.R_tl(plan'8FF1_), tramid'8FF7_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (209, 16)); ((buildTimesForTramOnTrack'8F61_) (stopid1'8FDF_, stopid2'8FE8_, RT_l_15.R_tl(plan'8FF1_), tramid'8FF7_)))
        end));
        
        fun buildAllTimesForTrack'89E9_ (stopid1'8A63_, stopid2'8A6C_, trams'8A75_, timetable'8A7C_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (186, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x110_'0_, x111_'0_, x112_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'8A7C_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:184:5: Argument of buildAllTimesForTrack" ^ RT_x_25.toString (stopid1'8A63_, stopid2'8A6C_, trams'8A75_, timetable'8A7C_) ^ " not in subtype") else if RT_s_11.equ (trams'8A75_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (187, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (189, 9)); let
            val tramid'8C47_ = ((RT_s_11.R_hd(trams'8A75_)):RT_Text.t)
        in
            RT_s_27.R_union (((buildTimesForTramOnTrack'8F61_) (stopid1'8A63_, stopid2'8A6C_, ((RT_m_16.R_app(timetable'8A7C_)) (tramid'8C47_)), tramid'8C47_)), ((buildAllTimesForTrack'89E9_) (stopid1'8A63_, stopid2'8A6C_, RT_s_11.R_diff (trams'8A75_, RT_s_11.R_fromList ([tramid'8C47_])), timetable'8A7C_)))
        end));
        
        fun countOverlappingTimesForTrack'8345_ (tramid'83C7_, deptime'83CE_, arrtime'83D7_, times'83E0_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (169, 7)); if not((RT_Nat.R_ge (deptime'83CE_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (arrtime'83D7_, RT_Int.fromLit "0")) andalso ((RT_s_27.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x107_'0_, x108_'0_, x109_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0"))
        end) (times'83E0_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:167:5: Argument of countOverlappingTimesForTrack" ^ RT_x_28.toString (tramid'83C7_, deptime'83CE_, arrtime'83D7_, times'83E0_) ^ " not in subtype") else if RT_s_27.equ (times'83E0_, RT_s_27.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (170, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (172, 9)); let
            val (tramid2'85A4_, deptime2'85AD_, arrtime2'85B7_) = ((RT_s_27.R_hd(times'83E0_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'83C7_, tramid2'85A4_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (175, 35)); ((((RT_Nat.R_lt (deptime'83CE_, deptime2'85AD_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (175, 59)); RT_Nat.R_lt (deptime2'85AD_, arrtime'83D7_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (175, 81)); ((RT_Nat.R_lt (deptime'83CE_, arrtime2'85B7_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (176, 4)); RT_Nat.R_lt (arrtime2'85B7_, arrtime'83D7_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (176, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'8345_) (tramid'83C7_, deptime'83CE_, arrtime'83D7_, RT_s_27.R_diff (times'83E0_, RT_s_27.R_fromList ([(tramid2'85A4_, deptime2'85AD_, arrtime2'85B7_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (177, 16)); ((countOverlappingTimesForTrack'8345_) (tramid'83C7_, deptime'83CE_, arrtime'83D7_, RT_s_27.R_diff (times'83E0_, RT_s_27.R_fromList ([(tramid2'85A4_, deptime2'85AD_, arrtime2'85B7_)])))))
        end));
        
        fun trackCapacityIsNotExceeded'CBED_ (stopid1'CC6C_, stopid2'CC75_, timetable'CC7E_, connectionMap'CC89_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (355, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x170_'0_, x171_'0_, x172_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x171_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x172_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'CC7E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x175_'0_, x176_'0_, x177_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x175_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x176_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x177_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'CC89_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:353:5: Argument of trackCapacityIsNotExceeded" ^ RT_x_33.toString (stopid1'CC6C_, stopid2'CC75_, timetable'CC7E_, connectionMap'CC89_) ^ " not in subtype") else let
            val times1'CD1E_ = ((((buildAllTimesForTrack'89E9_) (stopid1'CC6C_, stopid2'CC75_, RT_m_16.R_dom((timetable'CC7E_)), timetable'CC7E_))):RT_s_27.t); 
            val times2'CD82_ = ((((buildAllTimesForTrack'89E9_) (stopid2'CC75_, stopid1'CC6C_, RT_m_16.R_dom((timetable'CC7E_)), timetable'CC7E_))):RT_s_27.t); 
            val (headway'CDE7_, drivingtime'CDF0_, trackcapacity'CDFD_) = ((((RT_m_4.R_app(connectionMap'CC89_)) (stopid1'CC6C_, stopid2'CC75_))):RT_x_3.t)
        in
            (((RT_s_27.R_all (fn ((tramid'CEB4_, deptime'CEBC_, arrtime'CEC5_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'CEBC_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'CEC5_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'8345_) (tramid'CEB4_, deptime'CEBC_, arrtime'CEC5_, times1'CD1E_))), trackcapacity'CDFD_)))) (times1'CD1E_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (362, 15)); ((RT_s_27.R_all (fn ((tramid'CF81_, deptime'CF89_, arrtime'CF92_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'CF89_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'CF92_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'8345_) (tramid'CF81_, deptime'CF89_, arrtime'CF92_, times2'CD82_))), trackcapacity'CDFD_)))) (times2'CD82_))))
        end);
        
        fun allTrackCapacitiesAreNotExceeded'C8CD_ (timetable'C952_, (capacityMap'C95E_, connectionMap'C96A_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (347, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x162_'0_, x163_'0_, x164_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x163_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x164_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C952_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C95E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x167_'0_, x168_'0_, x169_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x167_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x168_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x169_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C96A_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:345:5: Argument of allTrackCapacitiesAreNotExceeded" ^ RT_x_32.toString (timetable'C952_, (capacityMap'C95E_, connectionMap'C96A_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'C99D_, stopid2'C9A6_):RT_x_2.t) => ((trackCapacityIsNotExceeded'CBED_) (stopid1'C99D_, stopid2'C9A6_, timetable'C952_, connectionMap'C96A_))) ((connectionMap'C96A_)))));
        
        fun findDepartureRowInPlan'69E1_ (stopid1'6A5C_, stopid2'6A65_, plan'6A6E_, tram'6A74_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (104, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (plan'6A6E_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:102:5: Argument of findDepartureRowInPlan" ^ RT_x_26.toString (stopid1'6A5C_, stopid2'6A65_, plan'6A6E_, tram'6A74_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'6A6E_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:120:11: Precondition of findDepartureRowInPlan" ^ RT_x_26.toString (stopid1'6A5C_, stopid2'6A65_, plan'6A6E_, tram'6A74_) ^ " not satisfied") else let
            val (hStopId'6B12_, hArrTime'6B1B_, hDepTime'6B25_) = ((RT_l_15.R_hd(plan'6A6E_)):RT_x_14.t); 
            val (nStopId'6B76_, nArrTime'6B7F_, nDepTime'6B89_) = ((((nextStop'520F_) (RT_l_15.R_hd(plan'6A6E_), plan'6A6E_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'6B12_, stopid1'6A5C_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (108, 33)); RT_Text.equ (nStopId'6B76_, stopid2'6A65_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (110, 11)); (tram'6A74_, hStopId'6B12_, hArrTime'6B1B_, hDepTime'6B25_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (112, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'6A6E_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (114, 13)); ((findDepartureRowInPlan'69E1_) (stopid1'6A5C_, stopid2'6A65_, RT_l_15.R_tl(plan'6A6E_), tram'6A74_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (116, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'64CD_ (stopid1'6553_, stopid2'655C_, trams'6565_, timetable'656C_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (91, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'656C_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:89:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_25.toString (stopid1'6553_, stopid2'655C_, trams'6565_, timetable'656C_) ^ " not in subtype") else if RT_s_11.equ (trams'6565_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (92, 12)); RT_s_24.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (94, 9)); let
            val tram'672B_ = ((RT_s_11.R_hd(trams'6565_)):RT_Text.t)
        in
            RT_s_24.R_union (RT_s_24.R_fromList ([((findDepartureRowInPlan'69E1_) (stopid1'6553_, stopid2'655C_, ((RT_m_16.R_app(timetable'656C_)) (tram'672B_)), tram'672B_))]), ((buildAllDeparturesUsingConnection'64CD_) (stopid1'6553_, stopid2'655C_, RT_s_11.R_diff (trams'6565_, RT_s_11.R_fromList ([tram'672B_])), timetable'656C_)))
        end));
        
        fun getAllDepaturesUsingConnection'6149_ (stopid1'61CC_, stopid2'61D5_, timetable'61DE_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (82, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'61DE_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:80:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_23.toString (stopid1'61CC_, stopid2'61D5_, timetable'61DE_) ^ " not in subtype") else let
            val allTrams'6279_ = ((RT_m_16.R_dom(timetable'61DE_)):RT_s_11.t)
        in
            ((buildAllDeparturesUsingConnection'64CD_) (stopid1'61CC_, stopid2'61D5_, allTrams'6279_, timetable'61DE_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'B5A9_ (timetable'B631_, (capacityMap'B63D_, connectionMap'B64A_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (298, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x143_'0_, x144_'0_, x145_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x144_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x145_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B631_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'B63D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x148_'0_, x149_'0_, x150_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x148_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x149_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x150_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B64A_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:296:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_32.toString (timetable'B631_, (capacityMap'B63D_, connectionMap'B64A_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'B679_, stopid2'B682_):RT_x_2.t) => let
            val (headway'B6DE_, drivingTime'B6E6_, capacity'B6F3_) = ((((RT_m_4.R_app(connectionMap'B64A_)) ((stopid1'B679_, stopid2'B682_)))):RT_x_3.t)
        in
            (((RT_s_24.R_all (fn ((tram1'B7A9_, sid1'B7B0_, arrt1'B7B6_, dept1'B7BD_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'B7B6_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'B7BD_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'B80F_, sid2'B816_, arrt2'B81C_, dept2'B823_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'B81C_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'B823_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'B7BD_, dept2'B823_))), headway'B6DE_)))) (RT_s_24.R_diff (((getAllDepaturesUsingConnection'6149_) (stopid1'B679_, stopid2'B682_, timetable'B631_)), RT_s_24.R_fromList ([(tram1'B7A9_, sid1'B7B0_, arrt1'B7B6_, dept1'B7BD_)]))))))) (((getAllDepaturesUsingConnection'6149_) (stopid1'B679_, stopid2'B682_, timetable'B631_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (305, 11)); ((RT_s_24.R_all (fn ((tram1'B939_, sid1'B940_, arrt1'B946_, dept1'B94D_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'B946_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'B94D_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'B99D_, sid2'B9A4_, arrt2'B9AA_, dept2'B9B1_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'B9AA_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'B9B1_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'B94D_, dept2'B9B1_))), headway'B6DE_)))) (RT_s_24.R_diff (((getAllDepaturesUsingConnection'6149_) (stopid2'B682_, stopid1'B679_, timetable'B631_)), RT_s_24.R_fromList ([(tram1'B939_, sid1'B940_, arrt1'B946_, dept1'B94D_)]))))))) (((getAllDepaturesUsingConnection'6149_) (stopid2'B682_, stopid1'B679_, timetable'B631_))))))
        end) ((connectionMap'B64A_)))));
        
        fun tramStopsAtAllStopsItPasses'C481_ timetable'C501_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (336, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x159_'0_, x160_'0_, x161_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x161_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C501_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:334:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'C501_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'C550_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'C5B7_, arrTime'C5BF_, depTime'C5C8_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'C5BF_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'C5C8_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'C5C8_, arrTime'C5BF_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'C501_)) (tramid'C550_)))))) ((timetable'C501_)))));
        
        fun findArrivalRowInPlan'7AAD_ (stopid1'7B26_, stopid2'7B2F_, plan'7B38_, tram'7B3E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (147, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x104_'0_, x105_'0_, x106_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x105_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0"))
        end) (plan'7B38_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:145:5: Argument of findArrivalRowInPlan" ^ RT_x_26.toString (stopid1'7B26_, stopid2'7B2F_, plan'7B38_, tram'7B3E_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'7B38_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:163:11: Precondition of findArrivalRowInPlan" ^ RT_x_26.toString (stopid1'7B26_, stopid2'7B2F_, plan'7B38_, tram'7B3E_) ^ " not satisfied") else let
            val (hStopId'7BDE_, hArrTime'7BE7_, hDepTime'7BF1_) = ((RT_l_15.R_hd(plan'7B38_)):RT_x_14.t); 
            val (nStopId'7C42_, nArrTime'7C4B_, nDepTime'7C55_) = ((((nextStop'520F_) (RT_l_15.R_hd(plan'7B38_), plan'7B38_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'7BDE_, stopid1'7B26_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (151, 33)); RT_Text.equ (nStopId'7C42_, stopid2'7B2F_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (153, 11)); (tram'7B3E_, nStopId'7C42_, nArrTime'7C4B_, nDepTime'7C55_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (155, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'7B38_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (157, 13)); ((findArrivalRowInPlan'7AAD_) (stopid1'7B26_, stopid2'7B2F_, RT_l_15.R_tl(plan'7B38_), tram'7B3E_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (159, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllArrivalsUsingConnection'7599_ (stopid1'761D_, stopid2'7626_, trams'762F_, timetable'7636_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (134, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7636_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:132:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_25.toString (stopid1'761D_, stopid2'7626_, trams'762F_, timetable'7636_) ^ " not in subtype") else if RT_s_11.equ (trams'762F_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (135, 12)); RT_s_24.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (137, 9)); let
            val tram'77F7_ = ((RT_s_11.R_hd(trams'762F_)):RT_Text.t)
        in
            RT_s_24.R_union (RT_s_24.R_fromList ([((findArrivalRowInPlan'7AAD_) (stopid1'761D_, stopid2'7626_, ((RT_m_16.R_app(timetable'7636_)) (tram'77F7_)), tram'77F7_))]), ((buildAllArrivalsUsingConnection'7599_) (stopid1'761D_, stopid2'7626_, RT_s_11.R_diff (trams'762F_, RT_s_11.R_fromList ([tram'77F7_])), timetable'7636_)))
        end));
        
        fun getAllArrivalsUsingConnection'7215_ (stopid1'7297_, stopid2'72A0_, timetable'72A9_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (125, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'72A9_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:123:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_23.toString (stopid1'7297_, stopid2'72A0_, timetable'72A9_) ^ " not in subtype") else let
            val allTrams'7345_ = ((RT_m_16.R_dom(timetable'72A9_)):RT_s_11.t)
        in
            ((buildAllArrivalsUsingConnection'7599_) (stopid1'7297_, stopid2'72A0_, allTrams'7345_, timetable'72A9_))
        end);
        
        fun timeBetweenArrivalIsValidHeadway'BDDD_ (timetable'BE62_, (capacityMap'BE6E_, connectionMap'BE7B_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (319, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x151_'0_, x152_'0_, x153_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x152_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x153_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'BE62_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'BE6E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x156_'0_, x157_'0_, x158_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x156_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x157_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'BE7B_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:317:5: Argument of timeBetweenArrivalIsValidHeadway" ^ RT_x_32.toString (timetable'BE62_, (capacityMap'BE6E_, connectionMap'BE7B_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'BEAD_, stopid2'BEB6_):RT_x_2.t) => let
            val (headway'BF12_, drivingTime'BF1A_, capacity'BF27_) = ((((RT_m_4.R_app(connectionMap'BE7B_)) ((stopid1'BEAD_, stopid2'BEB6_)))):RT_x_3.t)
        in
            (((RT_s_24.R_all (fn ((tram1'BFDD_, sid1'BFE4_, arrt1'BFEA_, dept1'BFF1_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'BFEA_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'BFF1_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'C043_, sid2'C04A_, arrt2'C050_, dept2'C057_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'C050_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'C057_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'BFEA_, arrt2'C050_))), headway'BF12_)))) (RT_s_24.R_diff (((getAllArrivalsUsingConnection'7215_) (stopid1'BEAD_, stopid2'BEB6_, timetable'BE62_)), RT_s_24.R_fromList ([(tram1'BFDD_, sid1'BFE4_, arrt1'BFEA_, dept1'BFF1_)]))))))) (((getAllArrivalsUsingConnection'7215_) (stopid1'BEAD_, stopid2'BEB6_, timetable'BE62_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (326, 11)); ((RT_s_24.R_all (fn ((tram1'C16D_, sid1'C174_, arrt1'C17A_, dept1'C181_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'C17A_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'C181_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'C1D3_, sid2'C1DA_, arrt2'C1E0_, dept2'C1E7_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'C1E0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'C1E7_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'C17A_, arrt2'C1E0_))), headway'BF12_)))) (RT_s_24.R_diff (((getAllArrivalsUsingConnection'7215_) (stopid2'BEB6_, stopid1'BEAD_, timetable'BE62_)), RT_s_24.R_fromList ([(tram1'C16D_, sid1'C174_, arrt1'C17A_, dept1'C181_)]))))))) (((getAllArrivalsUsingConnection'7215_) (stopid2'BEB6_, stopid1'BEAD_, timetable'BE62_))))))
        end) ((connectionMap'BE7B_)))));
        
        fun isWellformed'EEB2_ (t'EF23_, n'EF26_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (444, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x216_'0_, x217_'0_, x218_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x217_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x218_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'EF23_)))) andalso (let
            val (x219_'0_, x220_'0_) = ((n'EF26_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x219_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x223_'0_, x224_'0_, x225_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x223_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x224_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x225_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x220_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:442:6: Argument of isWellformed" ^ RT_x_32.toString (t'EF23_, n'EF26_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'C481_) (t'EF23_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (445, 8)); (((timeBetweenDeparturesIsValidHeadway'B5A9_) (t'EF23_, n'EF26_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (446, 8)); (((timeBetweenArrivalIsValidHeadway'BDDD_) (t'EF23_, n'EF26_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (447, 8)); (((allTimeBetweenStopsIsValidDrivingTime'B2ED_) (t'EF23_, n'EF26_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (448, 8)); (((allTrackCapacitiesAreNotExceeded'C8CD_) (t'EF23_, n'EF26_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (449, 8)); ((allStopCapacitiesAreNotExceeded'D22F_) (t'EF23_, n'EF26_))))))));
        
        fun stopsAreConnected'DDE7_ (plan'DE5D_, connectionMap'DE63_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (401, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x197_'0_, x198_'0_, x199_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x198_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x199_'0_, RT_Int.fromLit "0"))
        end) (plan'DE5D_))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x202_'0_, x203_'0_, x204_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x202_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x203_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x204_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'DE63_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:399:7: Argument of stopsAreConnected" ^ RT_x_35.toString (plan'DE5D_, connectionMap'DE63_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'DE5D_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (402, 14)); true) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (404, 11)); let
            val (sid'E046_, arrt'E04B_, dept'E051_) = ((RT_l_15.R_hd(plan'DE5D_)):RT_x_14.t); 
            val (sid2'E0AA_, arrt2'E0B0_, dept2'E0B7_) = ((((nextStop'520F_) ((sid'E046_, arrt'E04B_, dept'E051_), plan'DE5D_))):RT_x_14.t)
        in
            if (RT_m_4.R_mem ((sid'E046_, sid2'E0AA_), (connectionMap'DE63_))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (408, 54)); RT_m_4.R_mem ((sid2'E0AA_, sid'E046_), (connectionMap'DE63_))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (409, 18)); ((stopsAreConnected'DDE7_) (RT_l_15.R_tl(plan'DE5D_), connectionMap'DE63_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (410, 18)); false)
        end));
        
        fun allStopsAreConnected'DAC7_ (timetable'DB40_, (capacityMap'DB4C_, connectionMap'DB58_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (393, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x189_'0_, x190_'0_, x191_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x190_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x191_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'DB40_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'DB4C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x194_'0_, x195_'0_, x196_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x194_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x196_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'DB58_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:391:7: Argument of allStopsAreConnected" ^ RT_x_32.toString (timetable'DB40_, (capacityMap'DB4C_, connectionMap'DB58_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'DB96_:RT_Text.t) => ((stopsAreConnected'DDE7_) (((RT_m_16.R_app(timetable'DB40_)) (tramid'DB96_)), connectionMap'DB58_))) ((timetable'DB40_)))));
        
        fun stopsExist'E80D_ (plan'E87C_, capacityMap'E882_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (427, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x213_'0_, x214_'0_, x215_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x214_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x215_'0_, RT_Int.fromLit "0"))
        end) (plan'E87C_))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E882_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:425:5: Argument of stopsExist" ^ RT_x_36.toString (plan'E87C_, capacityMap'E882_) ^ " not in subtype") else if RT_Nat.equ (RT_l_15.R_length(plan'E87C_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (428, 12)); true) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (430, 9)); let
            val (sid'EA6C_, arrt'EA71_, dept'EA77_) = ((RT_l_15.R_hd(plan'E87C_)):RT_x_14.t)
        in
            if RT_m_1.R_mem (sid'EA6C_, (capacityMap'E882_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (434, 16)); ((stopsExist'E80D_) (RT_l_15.R_tl(plan'E87C_), capacityMap'E882_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (435, 16)); false)
        end));
        
        fun allStopsInPlanExist'E4ED_ (timetable'E565_, (capacityMap'E571_, connectionMap'E57E_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (419, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x205_'0_, x206_'0_, x207_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x206_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x207_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'E565_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E571_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x210_'0_, x211_'0_, x212_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x210_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x211_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'E57E_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:417:5: Argument of allStopsInPlanExist" ^ RT_x_32.toString (timetable'E565_, (capacityMap'E571_, connectionMap'E57E_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'E5BC_:RT_Text.t) => ((stopsExist'E80D_) (((RT_m_16.R_app(timetable'E565_)) (tramid'E5BC_)), capacityMap'E571_))) ((timetable'E565_)))));
        
        fun isIn'4FB5_ (tramid'501E_, timetable'5026_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (37, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5026_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:35:5: Argument of isIn" ^ RT_x_18.toString (tramid'501E_, timetable'5026_) ^ " not in subtype") else RT_m_16.R_mem (tramid'501E_, (timetable'5026_)));
        
        val empty'4783_ = let val z__'4795_ = RT_m_16.R_fromList [] in if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x229_'0_, x230_'0_, x231_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x230_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x231_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'4795_)))) then (RSL.add_load_err("./TIMETABLE.rsl:14:25: Value " ^ RT_m_16.toString(z__'4795_) ^ " of empty not in subtype"); z__'4795_) else z__'4795_ end;
        
        fun addPlan'4C97_ (tramid'4D03_, plan'4D0B_, timetable'4D11_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (29, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (plan'4D0B_))) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x72_'0_, x73_'0_, x74_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4D11_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:27:7: Argument of addPlan" ^ RT_x_21.toString (tramid'4D03_, plan'4D0B_, timetable'4D11_) ^ " not in subtype") else RT_m_16.R_override (timetable'4D11_, RT_m_16.R_fromList ([(tramid'4D03_, plan'4D0B_)])));
        
        fun addTram'48AF_ (tramid'491B_, timetable'4923_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (19, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4923_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:17:7: Argument of addTram" ^ RT_x_18.toString (tramid'491B_, timetable'4923_) ^ " not in subtype") else RT_m_16.R_override (timetable'4923_, RT_m_16.R_fromList ([(tramid'491B_, ([]:RT_l_15.t))])));
        
        fun addStop'4AA3_ (tramid'4B0F_, stopid'4B17_, arrival'4B1F_, departure'4B28_, timetable'4B33_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (24, 9)); if not((RT_Nat.R_ge (arrival'4B1F_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'4B28_, RT_Int.fromLit "0")) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4B33_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:22:7: Argument of addStop" ^ RT_x_20.toString (tramid'4B0F_, stopid'4B17_, arrival'4B1F_, departure'4B28_, timetable'4B33_) ^ " not in subtype") else RT_m_16.R_override (timetable'4B33_, RT_m_16.R_fromList ([(tramid'4B0F_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'4B33_)) (tramid'4B0F_)), [(stopid'4B17_, arrival'4B1F_, departure'4B28_)]))])));
        
        val connectionTest'220A_ = (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1");
        
        val tramIdA'32D_ = RT_Text.fromLit "tram1";
        
        val stopCapacitywithAddedStop'1FB2_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2"), (RT_Text.fromLit "E", RT_Int.fromLit "2")]);
        
        val connectionMap'521_ = RT_m_4.R_fromList ([((RT_Text.fromLit "B", RT_Text.fromLit "D"), (RT_Int.fromLit "2", RT_Int.fromLit "7", RT_Int.fromLit "2")), ((RT_Text.fromLit "A", RT_Text.fromLit "B"), (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1")), ((RT_Text.fromLit "B", RT_Text.fromLit "C"), (RT_Int.fromLit "2", RT_Int.fromLit "12", RT_Int.fromLit "3"))]);
        
        val netWithAddedStop'20DE_ = (stopCapacitywithAddedStop'1FB2_, connectionMap'521_);
        
        val tramNotIn'3F5_ = RT_Text.fromLit "tramG";
        
        val plan13'1E21_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan12'1DBD_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60"), (RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10")];
        
        val timetableWithAddedStop'1E85_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan12'1DBD_), (RT_Text.fromLit "tram2", plan13'1E21_)]);
        
        val plan11'1C2C_ = let val z__'1C3A_ = ([]:RT_l_15.t) in if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x232_'0_, x233_'0_, x234_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x233_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x234_'0_, RT_Int.fromLit "0"))
        end) (z__'1C3A_))) then (RSL.add_load_err("./testTimeTable.rsl:72:26: Value " ^ RT_l_15.toString(z__'1C3A_) ^ " of plan11 not in subtype"); z__'1C3A_) else z__'1C3A_ end;
        
        val plan1'841_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val plan2'8A5_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val timetableWithAddedTram'1C90_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (tramNotIn'3F5_, plan11'1C2C_)]);
        
        val timetableWF'909_ = ((addPlan'4C97_) (RT_Text.fromLit "tram2", plan2'8A5_, ((addPlan'4C97_) (RT_Text.fromLit "tram1", plan1'841_, empty'4783_))));
        
        val stopCapacity'585_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2")]);
        
        val net'6B1_ = (stopCapacity'585_, connectionMap'521_);
        
        val tramIdB'391_ = RT_Text.fromLit "tram2";
        
        val planInvalidDrivingTime'A35_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "8", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan9'1A9C_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timeTableWithInvalidConnection'1B00_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan9'1A9C_)]);
        
        val plan7'18A8_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "Q", RT_Int.fromLit "31", RT_Int.fromLit "33")];
        
        val timeTableWithInvalidStop'190C_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan7'18A8_)]);
        
        val plan6'1718_ = [(RT_Text.fromLit "B", RT_Int.fromLit "15", RT_Int.fromLit "17"), (RT_Text.fromLit "A", RT_Int.fromLit "29", RT_Int.fromLit "30"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val plan5'16B4_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "31", RT_Int.fromLit "33"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timeTableWithExceededStopCapacities'177C_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", plan5'16B4_), (RT_Text.fromLit "tram4", plan6'1718_)]);
        
        val plan4'14C1_ = [(RT_Text.fromLit "B", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "48", RT_Int.fromLit "50")];
        
        val timetableWithAlmostExceededTrackCapacities'1589_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram4", plan4'14C1_)]);
        
        val plan3'145D_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "32", RT_Int.fromLit "34"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timetableWithExceededTrackCapacities'1525_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", plan3'145D_)]);
        
        val planWithoutStopTime'1331_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "12"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timetableInvalidDrivingTime'A99_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", planInvalidDrivingTime'A35_)]);
        
        val planTooShortArrivalTime'1205_ = [(RT_Text.fromLit "C", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48")];
        
        val timetableInvalidDepartureHeadway'BC5_ = ((addStop'4AA3_) (RT_Text.fromLit "tram3", RT_Text.fromLit "C", RT_Int.fromLit "30", RT_Int.fromLit "60", ((addStop'4AA3_) (RT_Text.fromLit "tram3", RT_Text.fromLit "B", RT_Int.fromLit "0", RT_Int.fromLit "14", ((addTram'48AF_) (RT_Text.fromLit "tram3", timetableWF'909_))))));
        
        val timetableDuplicateDepartureHeadway'EE5_ = ((addStop'4AA3_) (RT_Text.fromLit "tram3", RT_Text.fromLit "B", RT_Int.fromLit "14", RT_Int.fromLit "16", ((addStop'4AA3_) (RT_Text.fromLit "tram3", RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1", ((addTram'48AF_) (RT_Text.fromLit "tram3", timetableWF'909_))))));
        
    end;
    
open testTimeTable;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (24, 9), (24, 86));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (19, 9), (19, 38));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (29, 9), (31, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (37, 7), (37, 33));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (419, 7), (421, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (435, 16), (436, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (434, 16), (435, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (430, 9), (438, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (428, 12), (429, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (427, 7), (438, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (393, 9), (395, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (408, 54), (409, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (410, 18), (411, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (409, 18), (410, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (404, 11), (413, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (402, 14), (403, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (401, 9), (413, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (449, 8), (452, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (448, 8), (452, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (447, 8), (452, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (446, 8), (452, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (445, 8), (452, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (444, 8), (452, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (326, 11), (330, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (319, 7), (331, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (125, 7), (129, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (137, 9), (142, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (135, 12), (136, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (134, 7), (142, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (159, 13), (160, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (157, 13), (158, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (151, 33), (152, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (155, 11), (161, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (153, 11), (154, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (147, 7), (163, 23));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (336, 7), (340, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (305, 11), (309, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (298, 7), (310, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (82, 7), (86, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (94, 9), (99, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (92, 12), (93, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (91, 7), (99, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (116, 13), (117, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (114, 13), (115, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (108, 33), (109, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (112, 11), (118, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (110, 11), (111, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (104, 7), (120, 23));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (347, 7), (349, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (362, 15), (365, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (355, 8), (365, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (176, 4), (176, 22));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (175, 59), (175, 76));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (175, 81), (176, 23));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (175, 35), (176, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (177, 16), (178, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (176, 16), (177, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (172, 9), (180, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (170, 12), (171, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (169, 7), (180, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (189, 9), (194, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (187, 12), (188, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (186, 7), (194, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (207, 31), (208, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (209, 16), (210, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (208, 16), (209, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (203, 9), (212, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (201, 12), (202, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (200, 7), (212, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (58, 15), (63, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (56, 15), (57, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (54, 13), (64, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (48, 13), (53, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (43, 9), (66, 25));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (291, 7), (292, 48));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (280, 53), (281, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (284, 9), (285, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (273, 9), (283, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (272, 7), (285, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (75, 9), (76, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (73, 9), (74, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (71, 7), (76, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (371, 9), (373, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (379, 9), (386, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (225, 4), (225, 22));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (224, 59), (224, 76));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (224, 81), (225, 23));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (224, 35), (225, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (226, 16), (227, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (225, 16), (226, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (221, 9), (229, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (219, 12), (220, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (218, 7), (229, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (238, 9), (243, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (236, 12), (237, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (235, 7), (243, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (257, 16), (258, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (256, 16), (257, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (252, 9), (260, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (250, 12), (251, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (249, 7), (262, 7));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (32, 7), (32, 26));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (37, 7), (37, 49));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (36, 7), (37, 49));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (42, 7), (45, 10));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (18, 7), (18, 59));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (50, 7), (53, 10));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (23, 7), (24, 7));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (58, 7), (63, 7));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (93, 7), (94, 3));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (92, 7), (94, 3));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (91, 7), (94, 3));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (76, 56), (76, 99));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (74, 7), (77, 0));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (28, 7), (28, 35));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (67, 7), (69, 28));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (86, 13), (86, 54));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (81, 7), (86, 57)));
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'EEB2_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s2_validDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTimeBetweenStopsIsValidDrivingTime'B2ED_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTimeBetweenStopsIsValidDrivingTime'B2ED_) (timetableInvalidDrivingTime'A99_, net'6B1_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'EEB2_) (timetableInvalidDrivingTime'A99_, net'6B1_)), false)));

(RSL.C_output "[s3_validHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'B5A9_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'B5A9_) (timetableInvalidDepartureHeadway'BC5_, net'6B1_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'EEB2_) (timetableInvalidDepartureHeadway'BC5_, net'6B1_)), false)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'B5A9_) (timetableDuplicateDepartureHeadway'EE5_, net'6B1_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'EEB2_) (timetableDuplicateDepartureHeadway'EE5_, net'6B1_)), false)));

(RSL.C_output "[s5_validHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'BDDD_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s5_invalidHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'BDDD_) (((addPlan'4C97_) (RT_Text.fromLit "tram3", planTooShortArrivalTime'1205_, timetableWF'909_)), net'6B1_)), false)));

(RSL.C_output "[s5_NotWellFormedArrivalHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'EEB2_) (((addPlan'4C97_) (RT_Text.fromLit "tram3", planTooShortArrivalTime'1205_, timetableWF'909_)), net'6B1_)), false)));

(RSL.C_output "[s6_tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'C481_) (timetableWF'909_)), true)));

(RSL.C_output "[s6_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'C481_) (((addPlan'4C97_) (RT_Text.fromLit "tram1", planWithoutStopTime'1331_, empty'4783_)))), false)));

(RSL.C_output "[s6_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'EEB2_) (((addPlan'4C97_) (RT_Text.fromLit "tram1", planWithoutStopTime'1331_, empty'4783_)), net'6B1_)), false)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDontExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'C8CD_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackAlmostExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'C8CD_) (timetableWithAlmostExceededTrackCapacities'1589_, net'6B1_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDoExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'C8CD_) (timetableWithExceededTrackCapacities'1525_, net'6B1_)), false)));

(RSL.C_output "[s8_NumberOfTramsAtStopDontExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'D22F_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s8_NumberOfTramsAtStopDoExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'D22F_) (timeTableWithExceededStopCapacities'177C_, net'6B1_)), false)));

(RSL.C_output "[s9_AllStopsInPlansExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'E4ED_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s9_AllStopsInPlansDoNotExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'E4ED_) (timeTableWithInvalidStop'190C_, net'6B1_)), false)));

(RSL.C_output "[s10_allStopsAreConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'DAC7_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s10_allStopsAreNotConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'DAC7_) (timeTableWithInvalidConnection'1B00_, net'6B1_)), false)));

(RSL.C_output "[s12_AddingTram] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addTram'48AF_) (tramNotIn'3F5_, timetableWF'909_)), timetableWithAddedTram'1C90_)));

(RSL.C_output "[s12_addStop] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addStop'4AA3_) (tramIdA'32D_, RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10", timetableWF'909_)), timetableWithAddedStop'1E85_)));

(RSL.C_output "[s13_isinExisting01] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4FB5_) (tramIdA'32D_, timetableWF'909_)), true)));

(RSL.C_output "[s13_isinExisting02] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4FB5_) (tramIdB'391_, timetableWF'909_)), true)));

(RSL.C_output "[s13_isNotin] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4FB5_) (tramNotIn'3F5_, timetableWF'909_)), false)));

(RSL.C_output "[s16_getConnection] " RT_Bool.toStringSafe (fn _ => RT_x_3.equ (((getConnection'5CFF_) (RT_Text.fromLit "A", RT_Text.fromLit "B", net'6B1_)), connectionTest'220A_)));

RSL.print_error_count();
R_coverage.save_marked();
