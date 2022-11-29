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
        
        fun allStopsHaveConnection'10685_ (capacityMap'10700_, connectionMap'1070D_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (81, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'10700_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'1070D_))))) then raise RSL.RSL_exception ("./NET.rsl:79:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'10700_, connectionMap'1070D_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'10754_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'10821_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'10754_, stopId2'10821_), (connectionMap'1070D_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (86, 13)); RT_m_4.R_mem ((stopId2'10821_, stopId'10754_), (connectionMap'1070D_))))) ((capacityMap'10700_))))) ((capacityMap'10700_)))));
        
        fun noSelfConnection'1010D_ (capacityMap'10182_, connectionMap'1018F_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (67, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'10182_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'1018F_))))) then raise RSL.RSL_exception ("./NET.rsl:65:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'10182_, connectionMap'1018F_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'101DD_, stopId2'101E6_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'101DD_, stopId2'101E6_)) ((connectionMap'1018F_)))));
        
        fun isIn'F1D1_ (stopId'F23A_, (capacityMap'F243_, connecitonMap'F250_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F243_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'F250_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'F23A_, (capacityMap'F243_, connecitonMap'F250_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'F23A_, (capacityMap'F243_)));
        
        fun allStopsInConnectionMapAreInCapacityMap'103C9_ (capacityMap'10455_, connectionMap'10462_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (74, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'10455_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'10462_))))) then raise RSL.RSL_exception ("./NET.rsl:72:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'10455_, connectionMap'10462_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'10499_, stopId2'104A2_):RT_x_2.t) => (((isIn'F1D1_) (stopId1'10499_, (capacityMap'10455_, connectionMap'10462_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (76, 56)); ((isIn'F1D1_) (stopId2'104A2_, (capacityMap'10455_, connectionMap'10462_))))) ((connectionMap'10462_)))));
        
        fun isWellformed'10A6D_ net'10ADE_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'10ADE_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:89:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'10ADE_ ^ ")" ^ " not in subtype") else (((noSelfConnection'1010D_) (net'10ADE_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); (((allStopsInConnectionMapAreInCapacityMap'103C9_) (net'10ADE_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (93, 7)); ((allStopsHaveConnection'10685_) (net'10ADE_)))));
        
        fun minDrivingTime'FD89_ (stopId1'FDFC_, stopId2'FE05_, (capacityMap'FE0F_, connectionMap'FE1C_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (58, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FE0F_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FE1C_))))) then raise RSL.RSL_exception ("./NET.rsl:56:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'FDFC_, stopId2'FE05_, (capacityMap'FE0F_, connectionMap'FE1C_)) ^ " not in subtype") else let
            val (headway'FE58_, drivingTime'FE61_, capacity'FE6E_) = ((((RT_m_4.R_app(connectionMap'FE1C_)) (stopId1'FDFC_, stopId2'FE05_))):RT_x_3.t)
        in
            drivingTime'FE61_
        end);
        
        fun addConnection'EFDD_ (stopId1'F04F_, stopId2'F058_, headway'F061_, capacity'F06A_, drivingTime'F074_, (capacityMap'F082_, connectionMap'F08F_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'F061_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'F06A_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'F074_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F082_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F08F_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'F04F_, stopId2'F058_, headway'F061_, capacity'F06A_, drivingTime'F074_, (capacityMap'F082_, connectionMap'F08F_)) ^ " not in subtype") else (capacityMap'F082_, RT_m_4.R_override (connectionMap'F08F_, RT_m_4.R_fromList ([((stopId1'F04F_, stopId2'F058_), (headway'F061_, drivingTime'F074_, capacity'F06A_))]))));
        
        fun capacity'FA69_ (stopId1'FAD6_, stopId2'FADF_, (capacityMap'FAE9_, connectionMap'FAF6_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (50, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FAE9_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FAF6_))))) then raise RSL.RSL_exception ("./NET.rsl:48:5: Argument of capacity" ^ RT_x_12.toString (stopId1'FAD6_, stopId2'FADF_, (capacityMap'FAE9_, connectionMap'FAF6_)) ^ " not in subtype") else let
            val (headway'FB38_, drivingTime'FB41_, capacity'FB4E_) = ((((RT_m_4.R_app(connectionMap'FAF6_)) (stopId1'FAD6_, stopId2'FADF_))):RT_x_3.t)
        in
            capacity'FB4E_
        end);
        
        fun insertStop'EDE9_ (stopId'EE58_, capacity'EE60_, (capacityMap'EE6B_, connectionMap'EE78_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'EE60_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EE6B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'EE78_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'EE58_, capacity'EE60_, (capacityMap'EE6B_, connectionMap'EE78_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'EE6B_, RT_m_1.R_fromList ([(stopId'EE58_, capacity'EE60_)])), connectionMap'EE78_));
        
        fun minHeadway'F749_ (stopId1'F7B8_, stopId2'F7C1_, (capacityMap'F7CB_, connectionMap'F7D8_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (42, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F7CB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F7D8_))))) then raise RSL.RSL_exception ("./NET.rsl:40:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'F7B8_, stopId2'F7C1_, (capacityMap'F7CB_, connectionMap'F7D8_)) ^ " not in subtype") else let
            val (headway'F818_, drivingTime'F821_, capacity'F82E_) = ((((RT_m_4.R_app(connectionMap'F7D8_)) (stopId1'F7B8_, stopId2'F7C1_))):RT_x_3.t)
        in
            headway'F818_
        end);
        
        val empty'ED21_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun areDirectlyConnected'F4F1_ (stopId1'F56A_, stopId2'F573_, (capacityMap'F57D_, connectionMap'F58A_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F57D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F58A_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'F56A_, stopId2'F573_, (capacityMap'F57D_, connectionMap'F58A_)) ^ " not in subtype") else (RT_m_4.R_mem ((stopId1'F56A_, stopId2'F573_), (connectionMap'F58A_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (37, 7)); RT_m_4.R_mem ((stopId2'F573_, stopId1'F56A_), (connectionMap'F58A_))));
        
        fun capacity'F361_ (stopId'F3CF_, (capacityMap'F3D7_, connectionMap'F3E4_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F3D7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F3E4_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'F3CF_, (capacityMap'F3D7_, connectionMap'F3E4_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'F3D7_)) (stopId'F3CF_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type TramPlanRow_ = RT_x_17.t;
        
        type Plan_ = RT_l_15.t;
        
        fun buildTimesForTramOnStop'9731_ (stopid'97AD_, plan'97B5_, tramid'97BB_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (249, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x122_'0_, x123_'0_, x124_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x123_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0"))
        end) (plan'97B5_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:247:5: Argument of buildTimesForTramOnStop" ^ RT_x_30.toString (stopid'97AD_, plan'97B5_, tramid'97BB_) ^ " not in subtype") else if RT_Nat.R_lt (RT_l_15.R_length(plan'97B5_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (250, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (252, 9)); let
            val (sid'9990_, arrt'9995_, dept'999B_) = ((RT_l_15.R_hd(plan'97B5_)):RT_x_14.t)
        in
            if RT_Text.equ (sid'9990_, stopid'97AD_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (256, 16)); RT_s_27.R_union (RT_s_27.R_fromList ([(tramid'97BB_, arrt'9995_, dept'999B_)]), ((buildTimesForTramOnStop'9731_) (stopid'97AD_, RT_l_15.R_tl(plan'97B5_), tramid'97BB_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (257, 16)); ((buildTimesForTramOnStop'9731_) (stopid'97AD_, RT_l_15.R_tl(plan'97B5_), tramid'97BB_)))
        end));
        
        fun buildAllTimesForStop'91B9_ (stopid'9232_, trams'923A_, timetable'9241_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (235, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x119_'0_, x120_'0_, x121_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x120_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'9241_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:233:5: Argument of buildAllTimesForStop" ^ RT_x_29.toString (stopid'9232_, trams'923A_, timetable'9241_) ^ " not in subtype") else if RT_s_11.equ (trams'923A_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (236, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (238, 9)); let
            val tramid'9417_ = ((RT_s_11.R_hd(trams'923A_)):RT_Text.t)
        in
            RT_s_27.R_union (((buildTimesForTramOnStop'9731_) (stopid'9232_, ((RT_m_16.R_app(timetable'9241_)) (tramid'9417_)), tramid'9417_)), ((buildAllTimesForStop'91B9_) (stopid'9232_, RT_s_11.R_diff (trams'923A_, RT_s_11.R_fromList ([tramid'9417_])), timetable'9241_)))
        end));
        
        fun countOverlappingTimesForStop'8B15_ (tramid'8B96_, arrtime'8B9D_, deptime'8BA6_, times'8BAF_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (218, 7)); if not((RT_Nat.R_ge (arrtime'8B9D_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (deptime'8BA6_, RT_Int.fromLit "0")) andalso ((RT_s_27.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x116_'0_, x117_'0_, x118_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x117_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0"))
        end) (times'8BAF_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:216:5: Argument of countOverlappingTimesForStop" ^ RT_x_28.toString (tramid'8B96_, arrtime'8B9D_, deptime'8BA6_, times'8BAF_) ^ " not in subtype") else if RT_s_27.equ (times'8BAF_, RT_s_27.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (221, 9)); let
            val (tramid2'8D74_, arrtime2'8D7D_, deptime2'8D87_) = ((RT_s_27.R_hd(times'8BAF_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'8B96_, tramid2'8D74_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (224, 35)); ((((RT_Nat.R_lt (arrtime'8B9D_, arrtime2'8D7D_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (224, 59)); RT_Nat.R_lt (arrtime2'8D7D_, deptime'8BA6_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (224, 81)); ((RT_Nat.R_lt (arrtime'8B9D_, deptime2'8D87_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (225, 4)); RT_Nat.R_lt (deptime2'8D87_, deptime'8BA6_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (225, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'8B15_) (tramid'8B96_, arrtime'8B9D_, deptime'8BA6_, RT_s_27.R_diff (times'8BAF_, RT_s_27.R_fromList ([(tramid2'8D74_, arrtime2'8D7D_, deptime2'8D87_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (226, 16)); ((countOverlappingTimesForStop'8B15_) (tramid'8B96_, arrtime'8B9D_, deptime'8BA6_, RT_s_27.R_diff (times'8BAF_, RT_s_27.R_fromList ([(tramid2'8D74_, arrtime2'8D7D_, deptime2'8D87_)])))))
        end));
        
        fun stopCapacityIsNotExceeded'C9FB_ (stopid'CA79_, timetable'CA81_, capacityMap'CA8C_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (379, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x186_'0_, x187_'0_, x188_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x187_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x188_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'CA81_)))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'CA8C_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:377:7: Argument of stopCapacityIsNotExceeded" ^ RT_x_34.toString (stopid'CA79_, timetable'CA81_, capacityMap'CA8C_) ^ " not in subtype") else let
            val times'CB2B_ = ((((buildAllTimesForStop'91B9_) (stopid'CA79_, RT_m_16.R_dom((timetable'CA81_)), timetable'CA81_))):RT_s_27.t); 
            val capacity'CB8F_ = ((((RT_m_1.R_app(capacityMap'CA8C_)) (stopid'CA79_))):RT_Nat.t)
        in
            ((RT_s_27.R_all (fn ((tramid'CC5D_, arrtime'CC65_, deptime'CC6E_):RT_x_14.t) => not ((RT_Nat.R_ge (arrtime'CC65_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (deptime'CC6E_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'8B15_) (tramid'CC5D_, arrtime'CC65_, deptime'CC6E_, times'CB2B_))), capacity'CB8F_)))) (times'CB2B_)))
        end);
        
        fun allStopCapacitiesAreNotExceeded'C6DB_ (timetable'C75F_, (capacityMap'C76B_, connectionMap'C777_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (371, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x178_'0_, x179_'0_, x180_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x179_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x180_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C75F_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C76B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x183_'0_, x184_'0_, x185_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x183_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x184_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x185_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C777_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:369:7: Argument of allStopCapacitiesAreNotExceeded" ^ RT_x_32.toString (timetable'C75F_, (capacityMap'C76B_, connectionMap'C777_)) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopid'C7AA_:RT_Text.t) => ((stopCapacityIsNotExceeded'C9FB_) (stopid'C7AA_, timetable'C75F_, capacityMap'C76B_))) ((capacityMap'C76B_)))));
        
        fun getConnection'51AB_ (stop1'521D_, stop2'5224_, (capacityMap'522C_, connectionMap'5239_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (71, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'522C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x86_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5239_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:69:7: Argument of getConnection" ^ RT_x_12.toString (stop1'521D_, stop2'5224_, (capacityMap'522C_, connectionMap'5239_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'521D_, stop2'5224_), (connectionMap'5239_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (73, 9)); ((RT_m_4.R_app(connectionMap'5239_)) ((stop1'521D_, stop2'5224_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (75, 9)); ((RT_m_4.R_app(connectionMap'5239_)) ((stop2'5224_, stop1'521D_)))));
        
        fun timeBetweenStopsIsDrivingTime'A02D_ (plan'A0AF_, (capacityMap'A0B6_, connectionMap'A0C3_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (272, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x125_'0_, x126_'0_, x127_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0"))
        end) (plan'A0AF_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'A0B6_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x130_'0_, x131_'0_, x132_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x131_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'A0C3_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:270:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_31.toString (plan'A0AF_, (capacityMap'A0B6_, connectionMap'A0C3_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'A0AF_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (273, 9)); let
            val (stopid1'A1C4_, arrTime1'A1CD_, depTime1'A1D7_) = ((RT_l_15.R_hd(plan'A0AF_)):RT_x_14.t); 
            val (stopid2'A228_, arrTime2'A231_, depTime2'A23B_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'A0AF_)))):RT_x_14.t)
        in
            let
                val (headway'A356_, drivingTime'A35E_, capacity'A36B_) = ((((getConnection'51AB_) (stopid1'A1C4_, stopid2'A228_, (capacityMap'A0B6_, connectionMap'A0C3_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'A231_, depTime1'A1D7_), drivingTime'A35E_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (280, 53)); ((timeBetweenStopsIsDrivingTime'A02D_) (RT_l_15.R_tl(plan'A0AF_), (capacityMap'A0B6_, connectionMap'A0C3_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (284, 9)); true));
        
        fun allTimeBetweenStopsIsValidDrivingTime'A799_ (t'A823_, n'A826_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (291, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x133_'0_, x134_'0_, x135_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x135_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'A823_)))) andalso (let
            val (x136_'0_, x137_'0_) = ((n'A826_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x136_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x140_'0_, x141_'0_, x142_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x140_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x142_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x137_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:289:5: Argument of allTimeBetweenStopsIsValidDrivingTime" ^ RT_x_32.toString (t'A823_, n'A826_) ^ " not in subtype") else ((RT_s_19.R_all (fn (plan'A868_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x226_'0_, x227_'0_, x228_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x227_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x228_'0_, RT_Int.fromLit "0"))
        end) (plan'A868_))) orelse (((timeBetweenStopsIsDrivingTime'A02D_) (plan'A868_, n'A826_)))) (RT_m_16.R_ran((t'A823_))))));
        
        fun nextStop'46BB_ (planRow'4728_, plan'4731_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (43, 9)); if not((let
            val (x78_'0_, x79_'0_, x80_'0_) = ((planRow'4728_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x79_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x81_'0_, x82_'0_, x83_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x83_'0_, RT_Int.fromLit "0"))
        end) (plan'4731_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:41:7: Argument of nextStop" ^ RT_x_22.toString (planRow'4728_, plan'4731_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'4731_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:66:13: Precondition of nextStop" ^ RT_x_22.toString (planRow'4728_, plan'4731_) ^ " not satisfied") else let
            val iPlanRow'47EB_ = ((RT_l_15.R_hd(plan'4731_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'47EB_, planRow'4728_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (48, 13)); let
                val (sid'49E4_, arrt'49E9_, dept'49EF_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'4731_)))):RT_x_14.t)
            in
                (sid'49E4_, arrt'49E9_, dept'49EF_)
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (54, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'4731_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (56, 15)); ((nextStop'46BB_) (planRow'4728_, RT_l_15.R_tl(plan'4731_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (58, 15)); let
                val (sid'4DCE_, arrt'4DD3_, dept'4DD9_) = ((iPlanRow'47EB_):RT_x_14.t)
            in
                iPlanRow'47EB_
            end))
        end);
        
        fun buildTimesForTramOnTrack'840D_ (stopid1'848B_, stopid2'8494_, plan'849D_, tramid'84A3_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (200, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x113_'0_, x114_'0_, x115_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0"))
        end) (plan'849D_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:198:5: Argument of buildTimesForTramOnTrack" ^ RT_x_26.toString (stopid1'848B_, stopid2'8494_, plan'849D_, tramid'84A3_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'849D_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (201, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (203, 9)); let
            val (sid'866C_, arrt'8671_, dept'8677_) = ((RT_l_15.R_hd(plan'849D_)):RT_x_14.t); 
            val (sid2'86D0_, arrt2'86D6_, dept2'86DD_) = ((((nextStop'46BB_) ((sid'866C_, arrt'8671_, dept'8677_), plan'849D_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'866C_, stopid1'848B_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (207, 31)); RT_Text.equ (sid2'86D0_, stopid2'8494_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (208, 16)); RT_s_27.R_union (RT_s_27.R_fromList ([(tramid'84A3_, dept'8677_, arrt2'86D6_)]), ((buildTimesForTramOnTrack'840D_) (stopid1'848B_, stopid2'8494_, RT_l_15.R_tl(plan'849D_), tramid'84A3_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (209, 16)); ((buildTimesForTramOnTrack'840D_) (stopid1'848B_, stopid2'8494_, RT_l_15.R_tl(plan'849D_), tramid'84A3_)))
        end));
        
        fun buildAllTimesForTrack'7E95_ (stopid1'7F0F_, stopid2'7F18_, trams'7F21_, timetable'7F28_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (186, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x110_'0_, x111_'0_, x112_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7F28_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:184:5: Argument of buildAllTimesForTrack" ^ RT_x_25.toString (stopid1'7F0F_, stopid2'7F18_, trams'7F21_, timetable'7F28_) ^ " not in subtype") else if RT_s_11.equ (trams'7F21_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (187, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (189, 9)); let
            val tramid'80F3_ = ((RT_s_11.R_hd(trams'7F21_)):RT_Text.t)
        in
            RT_s_27.R_union (((buildTimesForTramOnTrack'840D_) (stopid1'7F0F_, stopid2'7F18_, ((RT_m_16.R_app(timetable'7F28_)) (tramid'80F3_)), tramid'80F3_)), ((buildAllTimesForTrack'7E95_) (stopid1'7F0F_, stopid2'7F18_, RT_s_11.R_diff (trams'7F21_, RT_s_11.R_fromList ([tramid'80F3_])), timetable'7F28_)))
        end));
        
        fun countOverlappingTimesForTrack'77F1_ (tramid'7873_, deptime'787A_, arrtime'7883_, times'788C_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (169, 7)); if not((RT_Nat.R_ge (deptime'787A_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (arrtime'7883_, RT_Int.fromLit "0")) andalso ((RT_s_27.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x107_'0_, x108_'0_, x109_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0"))
        end) (times'788C_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:167:5: Argument of countOverlappingTimesForTrack" ^ RT_x_28.toString (tramid'7873_, deptime'787A_, arrtime'7883_, times'788C_) ^ " not in subtype") else if RT_s_27.equ (times'788C_, RT_s_27.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (170, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (172, 9)); let
            val (tramid2'7A50_, deptime2'7A59_, arrtime2'7A63_) = ((RT_s_27.R_hd(times'788C_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'7873_, tramid2'7A50_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (175, 35)); ((((RT_Nat.R_lt (deptime'787A_, deptime2'7A59_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (175, 59)); RT_Nat.R_lt (deptime2'7A59_, arrtime'7883_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (175, 81)); ((RT_Nat.R_lt (deptime'787A_, arrtime2'7A63_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (176, 4)); RT_Nat.R_lt (arrtime2'7A63_, arrtime'7883_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (176, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'77F1_) (tramid'7873_, deptime'787A_, arrtime'7883_, RT_s_27.R_diff (times'788C_, RT_s_27.R_fromList ([(tramid2'7A50_, deptime2'7A59_, arrtime2'7A63_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (177, 16)); ((countOverlappingTimesForTrack'77F1_) (tramid'7873_, deptime'787A_, arrtime'7883_, RT_s_27.R_diff (times'788C_, RT_s_27.R_fromList ([(tramid2'7A50_, deptime2'7A59_, arrtime2'7A63_)])))))
        end));
        
        fun trackCapacityIsNotExceeded'C099_ (stopid1'C118_, stopid2'C121_, timetable'C12A_, connectionMap'C135_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (355, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x170_'0_, x171_'0_, x172_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x171_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x172_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C12A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x175_'0_, x176_'0_, x177_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x175_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x176_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x177_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C135_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:353:5: Argument of trackCapacityIsNotExceeded" ^ RT_x_33.toString (stopid1'C118_, stopid2'C121_, timetable'C12A_, connectionMap'C135_) ^ " not in subtype") else let
            val times1'C1CA_ = ((((buildAllTimesForTrack'7E95_) (stopid1'C118_, stopid2'C121_, RT_m_16.R_dom((timetable'C12A_)), timetable'C12A_))):RT_s_27.t); 
            val times2'C22E_ = ((((buildAllTimesForTrack'7E95_) (stopid2'C121_, stopid1'C118_, RT_m_16.R_dom((timetable'C12A_)), timetable'C12A_))):RT_s_27.t); 
            val (headway'C293_, drivingtime'C29C_, trackcapacity'C2A9_) = ((((RT_m_4.R_app(connectionMap'C135_)) (stopid1'C118_, stopid2'C121_))):RT_x_3.t)
        in
            (((RT_s_27.R_all (fn ((tramid'C360_, deptime'C368_, arrtime'C371_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'C368_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'C371_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'77F1_) (tramid'C360_, deptime'C368_, arrtime'C371_, times1'C1CA_))), trackcapacity'C2A9_)))) (times1'C1CA_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (362, 15)); ((RT_s_27.R_all (fn ((tramid'C42D_, deptime'C435_, arrtime'C43E_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'C435_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'C43E_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'77F1_) (tramid'C42D_, deptime'C435_, arrtime'C43E_, times2'C22E_))), trackcapacity'C2A9_)))) (times2'C22E_))))
        end);
        
        fun allTrackCapacitiesAreNotExceeded'BD79_ (timetable'BDFE_, (capacityMap'BE0A_, connectionMap'BE16_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (347, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x162_'0_, x163_'0_, x164_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x163_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x164_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'BDFE_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'BE0A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x167_'0_, x168_'0_, x169_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x167_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x168_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x169_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'BE16_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:345:5: Argument of allTrackCapacitiesAreNotExceeded" ^ RT_x_32.toString (timetable'BDFE_, (capacityMap'BE0A_, connectionMap'BE16_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'BE49_, stopid2'BE52_):RT_x_2.t) => ((trackCapacityIsNotExceeded'C099_) (stopid1'BE49_, stopid2'BE52_, timetable'BDFE_, connectionMap'BE16_))) ((connectionMap'BE16_)))));
        
        fun findDepartureRowInPlan'5E8D_ (stopid1'5F08_, stopid2'5F11_, plan'5F1A_, tram'5F20_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (104, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (plan'5F1A_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:102:5: Argument of findDepartureRowInPlan" ^ RT_x_26.toString (stopid1'5F08_, stopid2'5F11_, plan'5F1A_, tram'5F20_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'5F1A_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:120:11: Precondition of findDepartureRowInPlan" ^ RT_x_26.toString (stopid1'5F08_, stopid2'5F11_, plan'5F1A_, tram'5F20_) ^ " not satisfied") else let
            val (hStopId'5FBE_, hArrTime'5FC7_, hDepTime'5FD1_) = ((RT_l_15.R_hd(plan'5F1A_)):RT_x_14.t); 
            val (nStopId'6022_, nArrTime'602B_, nDepTime'6035_) = ((((nextStop'46BB_) (RT_l_15.R_hd(plan'5F1A_), plan'5F1A_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'5FBE_, stopid1'5F08_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (108, 33)); RT_Text.equ (nStopId'6022_, stopid2'5F11_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (110, 11)); (tram'5F20_, hStopId'5FBE_, hArrTime'5FC7_, hDepTime'5FD1_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (112, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'5F1A_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (114, 13)); ((findDepartureRowInPlan'5E8D_) (stopid1'5F08_, stopid2'5F11_, RT_l_15.R_tl(plan'5F1A_), tram'5F20_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (116, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'5979_ (stopid1'59FF_, stopid2'5A08_, trams'5A11_, timetable'5A18_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (91, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5A18_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:89:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_25.toString (stopid1'59FF_, stopid2'5A08_, trams'5A11_, timetable'5A18_) ^ " not in subtype") else if RT_s_11.equ (trams'5A11_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (92, 12)); RT_s_24.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (94, 9)); let
            val tram'5BD7_ = ((RT_s_11.R_hd(trams'5A11_)):RT_Text.t)
        in
            RT_s_24.R_union (RT_s_24.R_fromList ([((findDepartureRowInPlan'5E8D_) (stopid1'59FF_, stopid2'5A08_, ((RT_m_16.R_app(timetable'5A18_)) (tram'5BD7_)), tram'5BD7_))]), ((buildAllDeparturesUsingConnection'5979_) (stopid1'59FF_, stopid2'5A08_, RT_s_11.R_diff (trams'5A11_, RT_s_11.R_fromList ([tram'5BD7_])), timetable'5A18_)))
        end));
        
        fun getAllDepaturesUsingConnection'55F5_ (stopid1'5678_, stopid2'5681_, timetable'568A_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (82, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'568A_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:80:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_23.toString (stopid1'5678_, stopid2'5681_, timetable'568A_) ^ " not in subtype") else let
            val allTrams'5725_ = ((RT_m_16.R_dom(timetable'568A_)):RT_s_11.t)
        in
            ((buildAllDeparturesUsingConnection'5979_) (stopid1'5678_, stopid2'5681_, allTrams'5725_, timetable'568A_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'AA55_ (timetable'AADD_, (capacityMap'AAE9_, connectionMap'AAF6_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (298, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x143_'0_, x144_'0_, x145_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x144_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x145_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'AADD_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'AAE9_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x148_'0_, x149_'0_, x150_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x148_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x149_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x150_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'AAF6_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:296:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_32.toString (timetable'AADD_, (capacityMap'AAE9_, connectionMap'AAF6_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'AB25_, stopid2'AB2E_):RT_x_2.t) => let
            val (headway'AB8A_, drivingTime'AB92_, capacity'AB9F_) = ((((RT_m_4.R_app(connectionMap'AAF6_)) ((stopid1'AB25_, stopid2'AB2E_)))):RT_x_3.t)
        in
            (((RT_s_24.R_all (fn ((tram1'AC55_, sid1'AC5C_, arrt1'AC62_, dept1'AC69_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'AC62_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'AC69_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'ACBB_, sid2'ACC2_, arrt2'ACC8_, dept2'ACCF_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'ACC8_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'ACCF_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'AC69_, dept2'ACCF_))), headway'AB8A_)))) (RT_s_24.R_diff (((getAllDepaturesUsingConnection'55F5_) (stopid1'AB25_, stopid2'AB2E_, timetable'AADD_)), RT_s_24.R_fromList ([(tram1'AC55_, sid1'AC5C_, arrt1'AC62_, dept1'AC69_)]))))))) (((getAllDepaturesUsingConnection'55F5_) (stopid1'AB25_, stopid2'AB2E_, timetable'AADD_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (305, 11)); ((RT_s_24.R_all (fn ((tram1'ADE5_, sid1'ADEC_, arrt1'ADF2_, dept1'ADF9_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'ADF2_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'ADF9_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'AE49_, sid2'AE50_, arrt2'AE56_, dept2'AE5D_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'AE56_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'AE5D_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'ADF9_, dept2'AE5D_))), headway'AB8A_)))) (RT_s_24.R_diff (((getAllDepaturesUsingConnection'55F5_) (stopid2'AB2E_, stopid1'AB25_, timetable'AADD_)), RT_s_24.R_fromList ([(tram1'ADE5_, sid1'ADEC_, arrt1'ADF2_, dept1'ADF9_)]))))))) (((getAllDepaturesUsingConnection'55F5_) (stopid2'AB2E_, stopid1'AB25_, timetable'AADD_))))))
        end) ((connectionMap'AAF6_)))));
        
        fun tramStopsAtAllStopsItPasses'B92D_ timetable'B9AD_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (336, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x159_'0_, x160_'0_, x161_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x161_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B9AD_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:334:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'B9AD_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'B9FC_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'BA63_, arrTime'BA6B_, depTime'BA74_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'BA6B_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'BA74_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'BA74_, arrTime'BA6B_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'B9AD_)) (tramid'B9FC_)))))) ((timetable'B9AD_)))));
        
        fun findArrivalRowInPlan'6F59_ (stopid1'6FD2_, stopid2'6FDB_, plan'6FE4_, tram'6FEA_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (147, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x104_'0_, x105_'0_, x106_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x105_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0"))
        end) (plan'6FE4_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:145:5: Argument of findArrivalRowInPlan" ^ RT_x_26.toString (stopid1'6FD2_, stopid2'6FDB_, plan'6FE4_, tram'6FEA_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'6FE4_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:163:11: Precondition of findArrivalRowInPlan" ^ RT_x_26.toString (stopid1'6FD2_, stopid2'6FDB_, plan'6FE4_, tram'6FEA_) ^ " not satisfied") else let
            val (hStopId'708A_, hArrTime'7093_, hDepTime'709D_) = ((RT_l_15.R_hd(plan'6FE4_)):RT_x_14.t); 
            val (nStopId'70EE_, nArrTime'70F7_, nDepTime'7101_) = ((((nextStop'46BB_) (RT_l_15.R_hd(plan'6FE4_), plan'6FE4_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'708A_, stopid1'6FD2_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (151, 33)); RT_Text.equ (nStopId'70EE_, stopid2'6FDB_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (153, 11)); (tram'6FEA_, nStopId'70EE_, nArrTime'70F7_, nDepTime'7101_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (155, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'6FE4_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (157, 13)); ((findArrivalRowInPlan'6F59_) (stopid1'6FD2_, stopid2'6FDB_, RT_l_15.R_tl(plan'6FE4_), tram'6FEA_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (159, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllArrivalsUsingConnection'6A45_ (stopid1'6AC9_, stopid2'6AD2_, trams'6ADB_, timetable'6AE2_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (134, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6AE2_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:132:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_25.toString (stopid1'6AC9_, stopid2'6AD2_, trams'6ADB_, timetable'6AE2_) ^ " not in subtype") else if RT_s_11.equ (trams'6ADB_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (135, 12)); RT_s_24.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (137, 9)); let
            val tram'6CA3_ = ((RT_s_11.R_hd(trams'6ADB_)):RT_Text.t)
        in
            RT_s_24.R_union (RT_s_24.R_fromList ([((findArrivalRowInPlan'6F59_) (stopid1'6AC9_, stopid2'6AD2_, ((RT_m_16.R_app(timetable'6AE2_)) (tram'6CA3_)), tram'6CA3_))]), ((buildAllArrivalsUsingConnection'6A45_) (stopid1'6AC9_, stopid2'6AD2_, RT_s_11.R_diff (trams'6ADB_, RT_s_11.R_fromList ([tram'6CA3_])), timetable'6AE2_)))
        end));
        
        fun getAllArrivalsUsingConnection'66C1_ (stopid1'6743_, stopid2'674C_, timetable'6755_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (125, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6755_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:123:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_23.toString (stopid1'6743_, stopid2'674C_, timetable'6755_) ^ " not in subtype") else let
            val allTrams'67F1_ = ((RT_m_16.R_dom(timetable'6755_)):RT_s_11.t)
        in
            ((buildAllArrivalsUsingConnection'6A45_) (stopid1'6743_, stopid2'674C_, allTrams'67F1_, timetable'6755_))
        end);
        
        fun timeBetweenArrivalIsValidHeadway'B289_ (timetable'B30E_, (capacityMap'B31A_, connectionMap'B327_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (319, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x151_'0_, x152_'0_, x153_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x152_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x153_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B30E_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'B31A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x156_'0_, x157_'0_, x158_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x156_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x157_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B327_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:317:5: Argument of timeBetweenArrivalIsValidHeadway" ^ RT_x_32.toString (timetable'B30E_, (capacityMap'B31A_, connectionMap'B327_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'B359_, stopid2'B362_):RT_x_2.t) => let
            val (headway'B3BE_, drivingTime'B3C6_, capacity'B3D3_) = ((((RT_m_4.R_app(connectionMap'B327_)) ((stopid1'B359_, stopid2'B362_)))):RT_x_3.t)
        in
            (((RT_s_24.R_all (fn ((tram1'B489_, sid1'B490_, arrt1'B496_, dept1'B49D_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'B496_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'B49D_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'B4EF_, sid2'B4F6_, arrt2'B4FC_, dept2'B503_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'B4FC_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'B503_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'B496_, arrt2'B4FC_))), headway'B3BE_)))) (RT_s_24.R_diff (((getAllArrivalsUsingConnection'66C1_) (stopid1'B359_, stopid2'B362_, timetable'B30E_)), RT_s_24.R_fromList ([(tram1'B489_, sid1'B490_, arrt1'B496_, dept1'B49D_)]))))))) (((getAllArrivalsUsingConnection'66C1_) (stopid1'B359_, stopid2'B362_, timetable'B30E_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (326, 11)); ((RT_s_24.R_all (fn ((tram1'B619_, sid1'B620_, arrt1'B626_, dept1'B62D_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'B626_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'B62D_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'B67F_, sid2'B686_, arrt2'B68C_, dept2'B693_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'B68C_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'B693_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'B626_, arrt2'B68C_))), headway'B3BE_)))) (RT_s_24.R_diff (((getAllArrivalsUsingConnection'66C1_) (stopid2'B362_, stopid1'B359_, timetable'B30E_)), RT_s_24.R_fromList ([(tram1'B619_, sid1'B620_, arrt1'B626_, dept1'B62D_)]))))))) (((getAllArrivalsUsingConnection'66C1_) (stopid2'B362_, stopid1'B359_, timetable'B30E_))))))
        end) ((connectionMap'B327_)))));
        
        fun isWellformed'E35E_ (t'E3CF_, n'E3D2_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (444, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x216_'0_, x217_'0_, x218_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x217_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x218_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'E3CF_)))) andalso (let
            val (x219_'0_, x220_'0_) = ((n'E3D2_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x219_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x223_'0_, x224_'0_, x225_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x223_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x224_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x225_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x220_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:442:6: Argument of isWellformed" ^ RT_x_32.toString (t'E3CF_, n'E3D2_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'B92D_) (t'E3CF_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (445, 8)); (((timeBetweenDeparturesIsValidHeadway'AA55_) (t'E3CF_, n'E3D2_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (446, 8)); (((timeBetweenArrivalIsValidHeadway'B289_) (t'E3CF_, n'E3D2_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (447, 8)); (((allTimeBetweenStopsIsValidDrivingTime'A799_) (t'E3CF_, n'E3D2_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (448, 8)); (((allTrackCapacitiesAreNotExceeded'BD79_) (t'E3CF_, n'E3D2_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (449, 8)); ((allStopCapacitiesAreNotExceeded'C6DB_) (t'E3CF_, n'E3D2_))))))));
        
        fun stopsAreConnected'D293_ (plan'D309_, connectionMap'D30F_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (401, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x197_'0_, x198_'0_, x199_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x198_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x199_'0_, RT_Int.fromLit "0"))
        end) (plan'D309_))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x202_'0_, x203_'0_, x204_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x202_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x203_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x204_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D30F_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:399:7: Argument of stopsAreConnected" ^ RT_x_35.toString (plan'D309_, connectionMap'D30F_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'D309_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (402, 14)); true) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (404, 11)); let
            val (sid'D4F2_, arrt'D4F7_, dept'D4FD_) = ((RT_l_15.R_hd(plan'D309_)):RT_x_14.t); 
            val (sid2'D556_, arrt2'D55C_, dept2'D563_) = ((((nextStop'46BB_) ((sid'D4F2_, arrt'D4F7_, dept'D4FD_), plan'D309_))):RT_x_14.t)
        in
            if (RT_m_4.R_mem ((sid'D4F2_, sid2'D556_), (connectionMap'D30F_))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (408, 54)); RT_m_4.R_mem ((sid2'D556_, sid'D4F2_), (connectionMap'D30F_))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (409, 18)); ((stopsAreConnected'D293_) (RT_l_15.R_tl(plan'D309_), connectionMap'D30F_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (410, 18)); false)
        end));
        
        fun allStopsAreConnected'CF73_ (timetable'CFEC_, (capacityMap'CFF8_, connectionMap'D004_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (393, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x189_'0_, x190_'0_, x191_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x190_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x191_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'CFEC_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'CFF8_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x194_'0_, x195_'0_, x196_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x194_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x196_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D004_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:391:7: Argument of allStopsAreConnected" ^ RT_x_32.toString (timetable'CFEC_, (capacityMap'CFF8_, connectionMap'D004_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'D042_:RT_Text.t) => ((stopsAreConnected'D293_) (((RT_m_16.R_app(timetable'CFEC_)) (tramid'D042_)), connectionMap'D004_))) ((timetable'CFEC_)))));
        
        fun stopsExist'DCB9_ (plan'DD28_, capacityMap'DD2E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (427, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x213_'0_, x214_'0_, x215_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x214_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x215_'0_, RT_Int.fromLit "0"))
        end) (plan'DD28_))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'DD2E_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:425:5: Argument of stopsExist" ^ RT_x_36.toString (plan'DD28_, capacityMap'DD2E_) ^ " not in subtype") else if RT_Nat.equ (RT_l_15.R_length(plan'DD28_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (428, 12)); true) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (430, 9)); let
            val (sid'DF18_, arrt'DF1D_, dept'DF23_) = ((RT_l_15.R_hd(plan'DD28_)):RT_x_14.t)
        in
            if RT_m_1.R_mem (sid'DF18_, (capacityMap'DD2E_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (434, 16)); ((stopsExist'DCB9_) (RT_l_15.R_tl(plan'DD28_), capacityMap'DD2E_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (435, 16)); false)
        end));
        
        fun allStopsInPlanExist'D999_ (timetable'DA11_, (capacityMap'DA1D_, connectionMap'DA2A_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (419, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x205_'0_, x206_'0_, x207_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x206_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x207_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'DA11_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'DA1D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x210_'0_, x211_'0_, x212_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x210_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x211_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'DA2A_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:417:5: Argument of allStopsInPlanExist" ^ RT_x_32.toString (timetable'DA11_, (capacityMap'DA1D_, connectionMap'DA2A_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'DA68_:RT_Text.t) => ((stopsExist'DCB9_) (((RT_m_16.R_app(timetable'DA11_)) (tramid'DA68_)), capacityMap'DA1D_))) ((timetable'DA11_)))));
        
        fun isIn'4461_ (tramid'44CA_, timetable'44D2_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (37, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'44D2_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:35:5: Argument of isIn" ^ RT_x_18.toString (tramid'44CA_, timetable'44D2_) ^ " not in subtype") else RT_m_16.R_mem (tramid'44CA_, (timetable'44D2_)));
        
        val empty'3C2F_ = let val z__'3C41_ = RT_m_16.R_fromList [] in if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x229_'0_, x230_'0_, x231_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x230_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x231_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'3C41_)))) then (RSL.add_load_err("./TIMETABLE.rsl:14:25: Value " ^ RT_m_16.toString(z__'3C41_) ^ " of empty not in subtype"); z__'3C41_) else z__'3C41_ end;
        
        fun addPlan'4143_ (tramid'41AF_, plan'41B7_, timetable'41BD_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (29, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (plan'41B7_))) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x72_'0_, x73_'0_, x74_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'41BD_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:27:7: Argument of addPlan" ^ RT_x_21.toString (tramid'41AF_, plan'41B7_, timetable'41BD_) ^ " not in subtype") else RT_m_16.R_override (timetable'41BD_, RT_m_16.R_fromList ([(tramid'41AF_, plan'41B7_)])));
        
        fun addTram'3D5B_ (tramid'3DC7_, timetable'3DCF_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (19, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3DCF_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:17:7: Argument of addTram" ^ RT_x_18.toString (tramid'3DC7_, timetable'3DCF_) ^ " not in subtype") else RT_m_16.R_override (timetable'3DCF_, RT_m_16.R_fromList ([(tramid'3DC7_, ([]:RT_l_15.t))])));
        
        fun addStop'3F4F_ (tramid'3FBB_, stopid'3FC3_, arrival'3FCB_, departure'3FD4_, timetable'3FDF_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (24, 9)); if not((RT_Nat.R_ge (arrival'3FCB_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'3FD4_, RT_Int.fromLit "0")) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3FDF_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:22:7: Argument of addStop" ^ RT_x_20.toString (tramid'3FBB_, stopid'3FC3_, arrival'3FCB_, departure'3FD4_, timetable'3FDF_) ^ " not in subtype") else RT_m_16.R_override (timetable'3FDF_, RT_m_16.R_fromList ([(tramid'3FBB_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'3FDF_)) (tramid'3FBB_)), [(stopid'3FC3_, arrival'3FCB_, departure'3FD4_)]))])));
        
        val connectionTest'226E_ = (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1");
        
        val tramIdA'32D_ = RT_Text.fromLit "tram1";
        
        val stopCapacitywithAddedStop'2016_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2"), (RT_Text.fromLit "E", RT_Int.fromLit "2")]);
        
        val connectionMap'521_ = RT_m_4.R_fromList ([((RT_Text.fromLit "B", RT_Text.fromLit "D"), (RT_Int.fromLit "2", RT_Int.fromLit "7", RT_Int.fromLit "2")), ((RT_Text.fromLit "A", RT_Text.fromLit "B"), (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1")), ((RT_Text.fromLit "B", RT_Text.fromLit "C"), (RT_Int.fromLit "2", RT_Int.fromLit "12", RT_Int.fromLit "3"))]);
        
        val netWithAddedStop'2142_ = (stopCapacitywithAddedStop'2016_, connectionMap'521_);
        
        val tramNotIn'3F5_ = RT_Text.fromLit "tramG";
        
        val plan13'1E85_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan12'1E21_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60"), (RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10")];
        
        val timetableWithAddedStop'1EE9_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan12'1E21_), (RT_Text.fromLit "tram2", plan13'1E85_)]);
        
        val plan11'1C90_ = let val z__'1C9E_ = ([]:RT_l_15.t) in if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x232_'0_, x233_'0_, x234_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x233_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x234_'0_, RT_Int.fromLit "0"))
        end) (z__'1C9E_))) then (RSL.add_load_err("./testTimeTable.rsl:73:26: Value " ^ RT_l_15.toString(z__'1C9E_) ^ " of plan11 not in subtype"); z__'1C9E_) else z__'1C9E_ end;
        
        val plan1'841_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val plan2'8A5_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val timetableWithAddedTram'1CF4_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (tramNotIn'3F5_, plan11'1C90_)]);
        
        val timetableWF'909_ = ((addPlan'4143_) (RT_Text.fromLit "tram2", plan2'8A5_, ((addPlan'4143_) (RT_Text.fromLit "tram1", plan1'841_, empty'3C2F_))));
        
        val stopCapacity'585_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2")]);
        
        val net'6B1_ = (stopCapacity'585_, connectionMap'521_);
        
        val tramIdB'391_ = RT_Text.fromLit "tram2";
        
        val planInvalidDrivingTime'A35_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "8", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan9'1B00_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timeTableWithInvalidConnection'1B64_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan9'1B00_)]);
        
        val plan7'190C_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "Q", RT_Int.fromLit "31", RT_Int.fromLit "33")];
        
        val timeTableWithInvalidStop'1970_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan7'190C_)]);
        
        val plan6'177C_ = [(RT_Text.fromLit "B", RT_Int.fromLit "15", RT_Int.fromLit "17"), (RT_Text.fromLit "A", RT_Int.fromLit "29", RT_Int.fromLit "30"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val plan5'1718_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "31", RT_Int.fromLit "33"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timeTableWithExceededStopCapacities'17E0_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", plan5'1718_), (RT_Text.fromLit "tram4", plan6'177C_)]);
        
        val plan4'1525_ = [(RT_Text.fromLit "B", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "48", RT_Int.fromLit "50")];
        
        val timetableWithAlmostExceededTrackCapacities'15ED_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram4", plan4'1525_)]);
        
        val plan3'14C1_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "32", RT_Int.fromLit "34"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timetableWithExceededTrackCapacities'1589_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", plan3'14C1_)]);
        
        val planWithoutStopTime'1331_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "12"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timetableWithoutStopTime'1395_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", planWithoutStopTime'1331_)]);
        
        val planTooShortArrivalTime'1205_ = [(RT_Text.fromLit "C", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48")];
        
        val timetableInvalidDrivingTime'A99_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", planInvalidDrivingTime'A35_)]);
        
        val timetableDuplicateDepartureHeadway'EE5_ = ((addStop'3F4F_) (RT_Text.fromLit "tram3", RT_Text.fromLit "B", RT_Int.fromLit "14", RT_Int.fromLit "16", ((addStop'3F4F_) (RT_Text.fromLit "tram3", RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1", ((addTram'3D5B_) (RT_Text.fromLit "tram3", timetableWF'909_))))));
        
        val timetableInvalidDepartureHeadway'BC5_ = ((addStop'3F4F_) (RT_Text.fromLit "tram3", RT_Text.fromLit "C", RT_Int.fromLit "30", RT_Int.fromLit "60", ((addStop'3F4F_) (RT_Text.fromLit "tram3", RT_Text.fromLit "B", RT_Int.fromLit "0", RT_Int.fromLit "14", ((addTram'3D5B_) (RT_Text.fromLit "tram3", timetableWF'909_))))));
        
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
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E35E_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s2_validDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTimeBetweenStopsIsValidDrivingTime'A799_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTimeBetweenStopsIsValidDrivingTime'A799_) (timetableInvalidDrivingTime'A99_, net'6B1_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E35E_) (timetableInvalidDrivingTime'A99_, net'6B1_)), false)));

(RSL.C_output "[s3_validHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'AA55_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'AA55_) (timetableInvalidDepartureHeadway'BC5_, net'6B1_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E35E_) (timetableInvalidDepartureHeadway'BC5_, net'6B1_)), false)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'AA55_) (timetableDuplicateDepartureHeadway'EE5_, net'6B1_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E35E_) (timetableDuplicateDepartureHeadway'EE5_, net'6B1_)), false)));

(RSL.C_output "[s5_validHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'B289_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s5_invalidHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'B289_) (((addPlan'4143_) (RT_Text.fromLit "tram3", planTooShortArrivalTime'1205_, timetableWF'909_)), net'6B1_)), false)));

(RSL.C_output "[s5_NotWellFormedArrivalHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E35E_) (((addPlan'4143_) (RT_Text.fromLit "tram3", planTooShortArrivalTime'1205_, timetableWF'909_)), net'6B1_)), false)));

(RSL.C_output "[s6_tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'B92D_) (timetableWF'909_)), true)));

(RSL.C_output "[s6_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'B92D_) (timetableWithoutStopTime'1395_)), false)));

(RSL.C_output "[s6_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E35E_) (timetableWithoutStopTime'1395_, net'6B1_)), false)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDontExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'BD79_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackAlmostExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'BD79_) (timetableWithAlmostExceededTrackCapacities'15ED_, net'6B1_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDoExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'BD79_) (timetableWithExceededTrackCapacities'1589_, net'6B1_)), false)));

(RSL.C_output "[s8_NumberOfTramsAtStopDontExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'C6DB_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s8_NumberOfTramsAtStopDoExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'C6DB_) (timeTableWithExceededStopCapacities'17E0_, net'6B1_)), false)));

(RSL.C_output "[s9_AllStopsInPlansExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'D999_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s9_AllStopsInPlansDoNotExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'D999_) (timeTableWithInvalidStop'1970_, net'6B1_)), false)));

(RSL.C_output "[s10_allStopsAreConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'CF73_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s10_allStopsAreNotConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'CF73_) (timeTableWithInvalidConnection'1B64_, net'6B1_)), false)));

(RSL.C_output "[s12_AddingTram] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addTram'3D5B_) (tramNotIn'3F5_, timetableWF'909_)), timetableWithAddedTram'1CF4_)));

(RSL.C_output "[s12_addStop] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addStop'3F4F_) (tramIdA'32D_, RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10", timetableWF'909_)), timetableWithAddedStop'1EE9_)));

(RSL.C_output "[s13_isinExisting01] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4461_) (tramIdA'32D_, timetableWF'909_)), true)));

(RSL.C_output "[s13_isinExisting02] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4461_) (tramIdB'391_, timetableWF'909_)), true)));

(RSL.C_output "[s13_isNotin] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4461_) (tramNotIn'3F5_, timetableWF'909_)), false)));

(RSL.C_output "[s16_getConnection] " RT_Bool.toStringSafe (fn _ => RT_x_3.equ (((getConnection'51AB_) (RT_Text.fromLit "A", RT_Text.fromLit "B", net'6B1_)), connectionTest'226E_)));

RSL.print_error_count();
R_coverage.save_marked();
