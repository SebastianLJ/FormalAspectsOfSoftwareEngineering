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
        type t = RT_Text.t * RT_Text.t * RT_m_16.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_m_16.equ(#3 x, #3 y) andalso 
                             RT_x_5.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_m_16.toString(#3 x )) ^ "," ^
                             (RT_x_5.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_m_16.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_34 =
    struct
        type t = RT_Text.t * RT_m_16.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_m_16.equ(#2 x, #2 y) andalso 
                             RT_x_5.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_m_16.toString(#2 x )) ^ "," ^
                             (RT_x_5.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_m_16.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
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
        
        fun areDirectlyConnected'FBF9_ (stopId1'FC72_, stopId2'FC7B_, (capacityMap'FC85_, connectionMap'FC92_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FC85_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FC92_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'FC72_, stopId2'FC7B_, (capacityMap'FC85_, connectionMap'FC92_)) ^ " not in subtype") else (RT_m_4.R_mem ((stopId1'FC72_, stopId2'FC7B_), (connectionMap'FC92_))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (37, 7)); RT_m_4.R_mem ((stopId2'FC7B_, stopId1'FC72_), (connectionMap'FC92_))));
        
        fun allStopsHaveConnection'10D8D_ (capacityMap'10E08_, connectionMap'10E15_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (81, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'10E08_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'10E15_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:79:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'10E08_, connectionMap'10E15_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'10E5C_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'10F29_:RT_Text.t) => (((areDirectlyConnected'FBF9_) (stopId'10E5C_, stopId2'10F29_, (capacityMap'10E08_, connectionMap'10E15_))))) ((capacityMap'10E08_))))) ((capacityMap'10E08_)))));
        
        fun noSelfConnection'10815_ (capacityMap'1088A_, connectionMap'10897_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (67, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'1088A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'10897_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:65:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'1088A_, connectionMap'10897_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'108E5_, stopId2'108EE_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'108E5_, stopId2'108EE_)) ((connectionMap'10897_)))));
        
        fun isIn'F8D9_ (stopId'F942_, (capacityMap'F94B_, connecitonMap'F958_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F94B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'F958_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'F942_, (capacityMap'F94B_, connecitonMap'F958_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'F942_, (capacityMap'F94B_)));
        
        fun allStopsInConnectionMapAreInCapacityMap'10AD1_ (capacityMap'10B5D_, connectionMap'10B6A_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (74, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'10B5D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'10B6A_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:72:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'10B5D_, connectionMap'10B6A_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'10BA1_, stopId2'10BAA_):RT_x_2.t) => (((isIn'F8D9_) (stopId1'10BA1_, (capacityMap'10B5D_, connectionMap'10B6A_)))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (76, 56)); ((isIn'F8D9_) (stopId2'10BAA_, (capacityMap'10B5D_, connectionMap'10B6A_))))) ((connectionMap'10B6A_)))));
        
        fun isWellformed'11111_ net'11182_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'11182_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'11182_ ^ ")" ^ " not in subtype") else (((noSelfConnection'10815_) (net'11182_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'10AD1_) (net'11182_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (92, 7)); ((allStopsHaveConnection'10D8D_) (net'11182_)))));
        
        fun minDrivingTime'10491_ (stopId1'10504_, stopId2'1050D_, (capacityMap'10517_, connectionMap'10524_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (58, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'10517_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'10524_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:56:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'10504_, stopId2'1050D_, (capacityMap'10517_, connectionMap'10524_)) ^ " not in subtype") else let
            val (headway'10560_, drivingTime'10569_, capacity'10576_) = ((((RT_m_4.R_app(connectionMap'10524_)) (stopId1'10504_, stopId2'1050D_))):RT_x_3.t)
        in
            drivingTime'10569_
        end);
        
        fun capacity'FA69_ (stopId'FAD7_, (capacityMap'FADF_, connectionMap'FAEC_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FADF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FAEC_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'FAD7_, (capacityMap'FADF_, connectionMap'FAEC_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'FADF_)) (stopId'FAD7_)));
        
        fun capacity'10171_ (stopId1'101DE_, stopId2'101E7_, (capacityMap'101F1_, connectionMap'101FE_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (50, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'101F1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'101FE_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:48:5: Argument of capacity" ^ RT_x_12.toString (stopId1'101DE_, stopId2'101E7_, (capacityMap'101F1_, connectionMap'101FE_)) ^ " not in subtype") else let
            val (headway'10240_, drivingTime'10249_, capacity'10256_) = ((((RT_m_4.R_app(connectionMap'101FE_)) (stopId1'101DE_, stopId2'101E7_))):RT_x_3.t)
        in
            capacity'10256_
        end);
        
        fun addConnection'F6E5_ (stopId1'F757_, stopId2'F760_, headway'F769_, capacity'F772_, drivingTime'F77C_, (capacityMap'F78A_, connectionMap'F797_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'F769_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'F772_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'F77C_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F78A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F797_)))))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'F757_, stopId2'F760_, headway'F769_, capacity'F772_, drivingTime'F77C_, (capacityMap'F78A_, connectionMap'F797_)) ^ " not in subtype") else (capacityMap'F78A_, RT_m_4.R_override (connectionMap'F797_, RT_m_4.R_fromList ([((stopId1'F757_, stopId2'F760_), (headway'F769_, drivingTime'F77C_, capacity'F772_))]))));
        
        fun minHeadway'FE51_ (stopId1'FEC0_, stopId2'FEC9_, (capacityMap'FED3_, connectionMap'FEE0_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (42, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FED3_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FEE0_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:40:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'FEC0_, stopId2'FEC9_, (capacityMap'FED3_, connectionMap'FEE0_)) ^ " not in subtype") else let
            val (headway'FF20_, drivingTime'FF29_, capacity'FF36_) = ((((RT_m_4.R_app(connectionMap'FEE0_)) (stopId1'FEC0_, stopId2'FEC9_))):RT_x_3.t)
        in
            headway'FF20_
        end);
        
        fun insertStop'F4F1_ (stopId'F560_, capacity'F568_, (capacityMap'F573_, connectionMap'F580_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'F568_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F573_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F580_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'F560_, capacity'F568_, (capacityMap'F573_, connectionMap'F580_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'F573_, RT_m_1.R_fromList ([(stopId'F560_, capacity'F568_)])), connectionMap'F580_));
        
        val empty'F429_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type TramPlanRow_ = RT_x_17.t;
        
        type Plan_ = RT_l_15.t;
        
        fun buildTimesForTramOnStop'9F01_ (stopid'9F7D_, plan'9F85_, tramid'9F8B_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (249, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x122_'0_, x123_'0_, x124_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x123_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0"))
        end) (plan'9F85_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:247:5: Argument of buildTimesForTramOnStop" ^ RT_x_30.toString (stopid'9F7D_, plan'9F85_, tramid'9F8B_) ^ " not in subtype") else if RT_Nat.R_lt (RT_l_15.R_length(plan'9F85_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (250, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (252, 9)); let
            val (sid'A160_, arrt'A165_, dept'A16B_) = ((RT_l_15.R_hd(plan'9F85_)):RT_x_14.t)
        in
            if RT_Text.equ (sid'A160_, stopid'9F7D_) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (256, 16)); RT_s_27.R_union (RT_s_27.R_fromList ([(tramid'9F8B_, arrt'A165_, dept'A16B_)]), ((buildTimesForTramOnStop'9F01_) (stopid'9F7D_, RT_l_15.R_tl(plan'9F85_), tramid'9F8B_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (257, 16)); ((buildTimesForTramOnStop'9F01_) (stopid'9F7D_, RT_l_15.R_tl(plan'9F85_), tramid'9F8B_)))
        end));
        
        fun buildAllTimesForStop'9989_ (stopid'9A02_, trams'9A0A_, timetable'9A11_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (235, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x119_'0_, x120_'0_, x121_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x120_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'9A11_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:233:5: Argument of buildAllTimesForStop" ^ RT_x_29.toString (stopid'9A02_, trams'9A0A_, timetable'9A11_) ^ " not in subtype") else if RT_s_11.equ (trams'9A0A_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (236, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (238, 9)); let
            val tramid'9BE7_ = ((RT_s_11.R_hd(trams'9A0A_)):RT_Text.t)
        in
            RT_s_27.R_union (((buildTimesForTramOnStop'9F01_) (stopid'9A02_, ((RT_m_16.R_app(timetable'9A11_)) (tramid'9BE7_)), tramid'9BE7_)), ((buildAllTimesForStop'9989_) (stopid'9A02_, RT_s_11.R_diff (trams'9A0A_, RT_s_11.R_fromList ([tramid'9BE7_])), timetable'9A11_)))
        end));
        
        fun countOverlappingTimesForStop'92E5_ (tramid'9366_, arrtime'936D_, deptime'9376_, times'937F_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (218, 7)); if not((RT_Nat.R_ge (arrtime'936D_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (deptime'9376_, RT_Int.fromLit "0")) andalso ((RT_s_27.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x116_'0_, x117_'0_, x118_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x117_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0"))
        end) (times'937F_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:216:5: Argument of countOverlappingTimesForStop" ^ RT_x_28.toString (tramid'9366_, arrtime'936D_, deptime'9376_, times'937F_) ^ " not in subtype") else if RT_s_27.equ (times'937F_, RT_s_27.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (219, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (221, 9)); let
            val (tramid2'9544_, arrtime2'954D_, deptime2'9557_) = ((RT_s_27.R_hd(times'937F_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'9366_, tramid2'9544_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (224, 35)); ((((RT_Nat.R_lt (arrtime'936D_, arrtime2'954D_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (224, 59)); RT_Nat.R_lt (arrtime2'954D_, deptime'9376_)))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (224, 81)); ((RT_Nat.R_lt (arrtime'936D_, deptime2'9557_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (225, 4)); RT_Nat.R_lt (deptime2'9557_, deptime'9376_)))))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (225, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'92E5_) (tramid'9366_, arrtime'936D_, deptime'9376_, RT_s_27.R_diff (times'937F_, RT_s_27.R_fromList ([(tramid2'9544_, arrtime2'954D_, deptime2'9557_)])))))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (226, 16)); ((countOverlappingTimesForStop'92E5_) (tramid'9366_, arrtime'936D_, deptime'9376_, RT_s_27.R_diff (times'937F_, RT_s_27.R_fromList ([(tramid2'9544_, arrtime2'954D_, deptime2'9557_)])))))
        end));
        
        fun stopCapacityIsNotExceeded'D1CB_ (stopid'D249_, timetable'D251_, net'D25C_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (379, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x188_'0_, x189_'0_, x190_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x189_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x190_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'D251_)))) andalso (let
            val (x191_'0_, x192_'0_) = ((net'D25C_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x191_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x195_'0_, x196_'0_, x197_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x196_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x197_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x192_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:377:7: Argument of stopCapacityIsNotExceeded" ^ RT_x_34.toString (stopid'D249_, timetable'D251_, net'D25C_) ^ " not in subtype") else let
            val times'D2FB_ = ((((buildAllTimesForStop'9989_) (stopid'D249_, RT_m_16.R_dom((timetable'D251_)), timetable'D251_))):RT_s_27.t); 
            val capacity'D35F_ = ((((capacity'FA69_) (stopid'D249_, net'D25C_))):RT_Nat.t)
        in
            ((RT_s_27.R_all (fn ((tramid'D42D_, arrtime'D435_, deptime'D43E_):RT_x_14.t) => not ((RT_Nat.R_ge (arrtime'D435_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (deptime'D43E_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'92E5_) (tramid'D42D_, arrtime'D435_, deptime'D43E_, times'D2FB_))), capacity'D35F_)))) (times'D2FB_)))
        end);
        
        fun allStopCapacitiesAreNotExceeded'CEAB_ (timetable'CF2F_, (capacityMap'CF3B_, connectionMap'CF47_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (371, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x180_'0_, x181_'0_, x182_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x181_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x182_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'CF2F_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'CF3B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x185_'0_, x186_'0_, x187_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x185_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x186_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x187_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'CF47_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:369:7: Argument of allStopCapacitiesAreNotExceeded" ^ RT_x_32.toString (timetable'CF2F_, (capacityMap'CF3B_, connectionMap'CF47_)) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopid'CF7A_:RT_Text.t) => ((stopCapacityIsNotExceeded'D1CB_) (stopid'CF7A_, timetable'CF2F_, (capacityMap'CF3B_, connectionMap'CF47_)))) ((capacityMap'CF3B_)))));
        
        fun timeBetweenStopsIsDrivingTime'A7FD_ (plan'A87F_, (capacityMap'A886_, connectionMap'A893_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (272, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x125_'0_, x126_'0_, x127_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0"))
        end) (plan'A87F_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'A886_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x130_'0_, x131_'0_, x132_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x131_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'A893_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:270:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_31.toString (plan'A87F_, (capacityMap'A886_, connectionMap'A893_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'A87F_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (273, 9)); let
            val (stopid1'A994_, arrTime1'A99D_, depTime1'A9A7_) = ((RT_l_15.R_hd(plan'A87F_)):RT_x_14.t); 
            val (stopid2'A9F8_, arrTime2'AA01_, depTime2'AA0B_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'A87F_)))):RT_x_14.t)
        in
            let
                val drivingTime'AB25_ = ((((minDrivingTime'10491_) (stopid1'A994_, stopid2'A9F8_, (capacityMap'A886_, connectionMap'A893_)))):RT_Nat.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'AA01_, depTime1'A9A7_), drivingTime'AB25_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (280, 53)); ((timeBetweenStopsIsDrivingTime'A7FD_) (RT_l_15.R_tl(plan'A87F_), (capacityMap'A886_, connectionMap'A893_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (284, 9)); true));
        
        fun allTimeBetweenStopsIsValidDrivingTime'AF69_ (t'AFF3_, n'AFF6_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (291, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x133_'0_, x134_'0_, x135_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x135_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'AFF3_)))) andalso (let
            val (x136_'0_, x137_'0_) = ((n'AFF6_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x136_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x140_'0_, x141_'0_, x142_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x140_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x142_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x137_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:289:5: Argument of allTimeBetweenStopsIsValidDrivingTime" ^ RT_x_32.toString (t'AFF3_, n'AFF6_) ^ " not in subtype") else ((RT_s_19.R_all (fn (plan'B038_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x244_'0_, x245_'0_, x246_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x245_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x246_'0_, RT_Int.fromLit "0"))
        end) (plan'B038_))) orelse (((timeBetweenStopsIsDrivingTime'A7FD_) (plan'B038_, n'AFF6_)))) (RT_m_16.R_ran((t'AFF3_))))));
        
        fun nextStop'4E8B_ (planRow'4EF8_, plan'4F01_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (43, 9)); if not((let
            val (x78_'0_, x79_'0_, x80_'0_) = ((planRow'4EF8_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x79_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x81_'0_, x82_'0_, x83_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x83_'0_, RT_Int.fromLit "0"))
        end) (plan'4F01_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:41:7: Argument of nextStop" ^ RT_x_22.toString (planRow'4EF8_, plan'4F01_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'4F01_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:66:13: Precondition of nextStop" ^ RT_x_22.toString (planRow'4EF8_, plan'4F01_) ^ " not satisfied") else let
            val iPlanRow'4FBB_ = ((RT_l_15.R_hd(plan'4F01_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'4FBB_, planRow'4EF8_) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (48, 13)); let
                val (sid'51B4_, arrt'51B9_, dept'51BF_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'4F01_)))):RT_x_14.t)
            in
                (sid'51B4_, arrt'51B9_, dept'51BF_)
            end) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (54, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'4F01_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (56, 15)); ((nextStop'4E8B_) (planRow'4EF8_, RT_l_15.R_tl(plan'4F01_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (58, 15)); let
                val (sid'559E_, arrt'55A3_, dept'55A9_) = ((iPlanRow'4FBB_):RT_x_14.t)
            in
                iPlanRow'4FBB_
            end))
        end);
        
        fun findDepartureRowInPlan'665D_ (stopid1'66D8_, stopid2'66E1_, plan'66EA_, tram'66F0_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (104, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (plan'66EA_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:102:5: Argument of findDepartureRowInPlan" ^ RT_x_26.toString (stopid1'66D8_, stopid2'66E1_, plan'66EA_, tram'66F0_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'66EA_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:120:11: Precondition of findDepartureRowInPlan" ^ RT_x_26.toString (stopid1'66D8_, stopid2'66E1_, plan'66EA_, tram'66F0_) ^ " not satisfied") else let
            val (hStopId'678E_, hArrTime'6797_, hDepTime'67A1_) = ((RT_l_15.R_hd(plan'66EA_)):RT_x_14.t); 
            val (nStopId'67F2_, nArrTime'67FB_, nDepTime'6805_) = ((((nextStop'4E8B_) (RT_l_15.R_hd(plan'66EA_), plan'66EA_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'678E_, stopid1'66D8_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (108, 33)); RT_Text.equ (nStopId'67F2_, stopid2'66E1_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (110, 11)); (tram'66F0_, hStopId'678E_, hArrTime'6797_, hDepTime'67A1_)) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (112, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'66EA_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (114, 13)); ((findDepartureRowInPlan'665D_) (stopid1'66D8_, stopid2'66E1_, RT_l_15.R_tl(plan'66EA_), tram'66F0_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (116, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'6149_ (stopid1'61CF_, stopid2'61D8_, trams'61E1_, timetable'61E8_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (91, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'61E8_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:89:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_25.toString (stopid1'61CF_, stopid2'61D8_, trams'61E1_, timetable'61E8_) ^ " not in subtype") else if RT_s_11.equ (trams'61E1_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (92, 12)); RT_s_24.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (94, 9)); let
            val tram'63A7_ = ((RT_s_11.R_hd(trams'61E1_)):RT_Text.t)
        in
            RT_s_24.R_union (RT_s_24.R_fromList ([((findDepartureRowInPlan'665D_) (stopid1'61CF_, stopid2'61D8_, ((RT_m_16.R_app(timetable'61E8_)) (tram'63A7_)), tram'63A7_))]), ((buildAllDeparturesUsingConnection'6149_) (stopid1'61CF_, stopid2'61D8_, RT_s_11.R_diff (trams'61E1_, RT_s_11.R_fromList ([tram'63A7_])), timetable'61E8_)))
        end));
        
        fun getAllDepaturesUsingConnection'5DC5_ (stopid1'5E48_, stopid2'5E51_, timetable'5E5A_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (82, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5E5A_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:80:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_23.toString (stopid1'5E48_, stopid2'5E51_, timetable'5E5A_) ^ " not in subtype") else let
            val allTrams'5EF5_ = ((RT_m_16.R_dom(timetable'5E5A_)):RT_s_11.t)
        in
            ((buildAllDeparturesUsingConnection'6149_) (stopid1'5E48_, stopid2'5E51_, allTrams'5EF5_, timetable'5E5A_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'B225_ (timetable'B2AD_, (capacityMap'B2B9_, connectionMap'B2C6_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (298, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x143_'0_, x144_'0_, x145_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x144_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x145_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B2AD_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'B2B9_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x148_'0_, x149_'0_, x150_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x148_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x149_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x150_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B2C6_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:296:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_32.toString (timetable'B2AD_, (capacityMap'B2B9_, connectionMap'B2C6_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'B2F5_, stopid2'B2FE_):RT_x_2.t) => let
            val headway'B359_ = ((((minHeadway'FE51_) (stopid1'B2F5_, stopid2'B2FE_, (capacityMap'B2B9_, connectionMap'B2C6_)))):RT_Nat.t)
        in
            (((RT_s_24.R_all (fn ((tram1'B425_, sid1'B42C_, arrt1'B432_, dept1'B439_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'B432_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'B439_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'B48B_, sid2'B492_, arrt2'B498_, dept2'B49F_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'B498_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'B49F_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'B439_, dept2'B49F_))), headway'B359_)))) (RT_s_24.R_diff (((getAllDepaturesUsingConnection'5DC5_) (stopid1'B2F5_, stopid2'B2FE_, timetable'B2AD_)), RT_s_24.R_fromList ([(tram1'B425_, sid1'B42C_, arrt1'B432_, dept1'B439_)]))))))) (((getAllDepaturesUsingConnection'5DC5_) (stopid1'B2F5_, stopid2'B2FE_, timetable'B2AD_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (305, 11)); ((RT_s_24.R_all (fn ((tram1'B5B5_, sid1'B5BC_, arrt1'B5C2_, dept1'B5C9_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'B5C2_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'B5C9_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'B619_, sid2'B620_, arrt2'B626_, dept2'B62D_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'B626_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'B62D_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'B5C9_, dept2'B62D_))), headway'B359_)))) (RT_s_24.R_diff (((getAllDepaturesUsingConnection'5DC5_) (stopid2'B2FE_, stopid1'B2F5_, timetable'B2AD_)), RT_s_24.R_fromList ([(tram1'B5B5_, sid1'B5BC_, arrt1'B5C2_, dept1'B5C9_)]))))))) (((getAllDepaturesUsingConnection'5DC5_) (stopid2'B2FE_, stopid1'B2F5_, timetable'B2AD_))))))
        end) ((connectionMap'B2C6_)))));
        
        fun buildTimesForTramOnTrack'8BDD_ (stopid1'8C5B_, stopid2'8C64_, plan'8C6D_, tramid'8C73_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (200, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x113_'0_, x114_'0_, x115_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0"))
        end) (plan'8C6D_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:198:5: Argument of buildTimesForTramOnTrack" ^ RT_x_26.toString (stopid1'8C5B_, stopid2'8C64_, plan'8C6D_, tramid'8C73_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'8C6D_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (201, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (203, 9)); let
            val (sid'8E3C_, arrt'8E41_, dept'8E47_) = ((RT_l_15.R_hd(plan'8C6D_)):RT_x_14.t); 
            val (sid2'8EA0_, arrt2'8EA6_, dept2'8EAD_) = ((((nextStop'4E8B_) ((sid'8E3C_, arrt'8E41_, dept'8E47_), plan'8C6D_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'8E3C_, stopid1'8C5B_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (207, 31)); RT_Text.equ (sid2'8EA0_, stopid2'8C64_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (208, 16)); RT_s_27.R_union (RT_s_27.R_fromList ([(tramid'8C73_, dept'8E47_, arrt2'8EA6_)]), ((buildTimesForTramOnTrack'8BDD_) (stopid1'8C5B_, stopid2'8C64_, RT_l_15.R_tl(plan'8C6D_), tramid'8C73_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (209, 16)); ((buildTimesForTramOnTrack'8BDD_) (stopid1'8C5B_, stopid2'8C64_, RT_l_15.R_tl(plan'8C6D_), tramid'8C73_)))
        end));
        
        fun buildAllTimesForTrack'8665_ (stopid1'86DF_, stopid2'86E8_, trams'86F1_, timetable'86F8_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (186, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x110_'0_, x111_'0_, x112_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'86F8_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:184:5: Argument of buildAllTimesForTrack" ^ RT_x_25.toString (stopid1'86DF_, stopid2'86E8_, trams'86F1_, timetable'86F8_) ^ " not in subtype") else if RT_s_11.equ (trams'86F1_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (187, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (189, 9)); let
            val tramid'88C3_ = ((RT_s_11.R_hd(trams'86F1_)):RT_Text.t)
        in
            RT_s_27.R_union (((buildTimesForTramOnTrack'8BDD_) (stopid1'86DF_, stopid2'86E8_, ((RT_m_16.R_app(timetable'86F8_)) (tramid'88C3_)), tramid'88C3_)), ((buildAllTimesForTrack'8665_) (stopid1'86DF_, stopid2'86E8_, RT_s_11.R_diff (trams'86F1_, RT_s_11.R_fromList ([tramid'88C3_])), timetable'86F8_)))
        end));
        
        fun countOverlappingTimesForTrack'7FC1_ (tramid'8043_, deptime'804A_, arrtime'8053_, times'805C_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (169, 7)); if not((RT_Nat.R_ge (deptime'804A_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (arrtime'8053_, RT_Int.fromLit "0")) andalso ((RT_s_27.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x107_'0_, x108_'0_, x109_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0"))
        end) (times'805C_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:167:5: Argument of countOverlappingTimesForTrack" ^ RT_x_28.toString (tramid'8043_, deptime'804A_, arrtime'8053_, times'805C_) ^ " not in subtype") else if RT_s_27.equ (times'805C_, RT_s_27.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (170, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (172, 9)); let
            val (tramid2'8220_, deptime2'8229_, arrtime2'8233_) = ((RT_s_27.R_hd(times'805C_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'8043_, tramid2'8220_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (175, 35)); ((((RT_Nat.R_lt (deptime'804A_, deptime2'8229_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (175, 59)); RT_Nat.R_lt (deptime2'8229_, arrtime'8053_)))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (175, 81)); ((RT_Nat.R_lt (deptime'804A_, arrtime2'8233_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (176, 4)); RT_Nat.R_lt (arrtime2'8233_, arrtime'8053_)))))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (176, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7FC1_) (tramid'8043_, deptime'804A_, arrtime'8053_, RT_s_27.R_diff (times'805C_, RT_s_27.R_fromList ([(tramid2'8220_, deptime2'8229_, arrtime2'8233_)])))))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (177, 16)); ((countOverlappingTimesForTrack'7FC1_) (tramid'8043_, deptime'804A_, arrtime'8053_, RT_s_27.R_diff (times'805C_, RT_s_27.R_fromList ([(tramid2'8220_, deptime2'8229_, arrtime2'8233_)])))))
        end));
        
        fun trackCapacityIsNotExceeded'C869_ (stopid1'C8E8_, stopid2'C8F1_, timetable'C8FA_, net'C905_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (355, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x170_'0_, x171_'0_, x172_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x171_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x172_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C8FA_)))) andalso (let
            val (x173_'0_, x174_'0_) = ((net'C905_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x173_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x177_'0_, x178_'0_, x179_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x177_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x178_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x179_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x174_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:353:5: Argument of trackCapacityIsNotExceeded" ^ RT_x_33.toString (stopid1'C8E8_, stopid2'C8F1_, timetable'C8FA_, net'C905_) ^ " not in subtype") else let
            val times1'C99A_ = ((((buildAllTimesForTrack'8665_) (stopid1'C8E8_, stopid2'C8F1_, RT_m_16.R_dom((timetable'C8FA_)), timetable'C8FA_))):RT_s_27.t); 
            val times2'C9FE_ = ((((buildAllTimesForTrack'8665_) (stopid2'C8F1_, stopid1'C8E8_, RT_m_16.R_dom((timetable'C8FA_)), timetable'C8FA_))):RT_s_27.t); 
            val trackcapacity'CA62_ = ((((capacity'10171_) (stopid1'C8E8_, stopid2'C8F1_, net'C905_))):RT_Nat.t)
        in
            (((RT_s_27.R_all (fn ((tramid'CB30_, deptime'CB38_, arrtime'CB41_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'CB38_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'CB41_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7FC1_) (tramid'CB30_, deptime'CB38_, arrtime'CB41_, times1'C99A_))), trackcapacity'CA62_)))) (times1'C99A_)))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (362, 15)); ((RT_s_27.R_all (fn ((tramid'CBFD_, deptime'CC05_, arrtime'CC0E_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'CC05_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'CC0E_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7FC1_) (tramid'CBFD_, deptime'CC05_, arrtime'CC0E_, times2'C9FE_))), trackcapacity'CA62_)))) (times2'C9FE_))))
        end);
        
        fun allTrackCapacitiesAreNotExceeded'C549_ (timetable'C5CE_, (capacityMap'C5DA_, connectionMap'C5E6_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (347, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x162_'0_, x163_'0_, x164_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x163_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x164_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C5CE_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C5DA_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x167_'0_, x168_'0_, x169_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x167_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x168_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x169_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C5E6_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:345:5: Argument of allTrackCapacitiesAreNotExceeded" ^ RT_x_32.toString (timetable'C5CE_, (capacityMap'C5DA_, connectionMap'C5E6_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'C619_, stopid2'C622_):RT_x_2.t) => ((trackCapacityIsNotExceeded'C869_) (stopid1'C619_, stopid2'C622_, timetable'C5CE_, (capacityMap'C5DA_, connectionMap'C5E6_)))) ((connectionMap'C5E6_)))));
        
        fun findArrivalRowInPlan'7729_ (stopid1'77A2_, stopid2'77AB_, plan'77B4_, tram'77BA_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (147, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x104_'0_, x105_'0_, x106_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x105_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0"))
        end) (plan'77B4_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:145:5: Argument of findArrivalRowInPlan" ^ RT_x_26.toString (stopid1'77A2_, stopid2'77AB_, plan'77B4_, tram'77BA_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'77B4_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:163:11: Precondition of findArrivalRowInPlan" ^ RT_x_26.toString (stopid1'77A2_, stopid2'77AB_, plan'77B4_, tram'77BA_) ^ " not satisfied") else let
            val (hStopId'785A_, hArrTime'7863_, hDepTime'786D_) = ((RT_l_15.R_hd(plan'77B4_)):RT_x_14.t); 
            val (nStopId'78BE_, nArrTime'78C7_, nDepTime'78D1_) = ((((nextStop'4E8B_) (RT_l_15.R_hd(plan'77B4_), plan'77B4_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'785A_, stopid1'77A2_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (151, 33)); RT_Text.equ (nStopId'78BE_, stopid2'77AB_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (153, 11)); (tram'77BA_, nStopId'78BE_, nArrTime'78C7_, nDepTime'78D1_)) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (155, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'77B4_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (157, 13)); ((findArrivalRowInPlan'7729_) (stopid1'77A2_, stopid2'77AB_, RT_l_15.R_tl(plan'77B4_), tram'77BA_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (159, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllArrivalsUsingConnection'7215_ (stopid1'7299_, stopid2'72A2_, trams'72AB_, timetable'72B2_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (134, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'72B2_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:132:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_25.toString (stopid1'7299_, stopid2'72A2_, trams'72AB_, timetable'72B2_) ^ " not in subtype") else if RT_s_11.equ (trams'72AB_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (135, 12)); RT_s_24.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (137, 9)); let
            val tram'7473_ = ((RT_s_11.R_hd(trams'72AB_)):RT_Text.t)
        in
            RT_s_24.R_union (RT_s_24.R_fromList ([((findArrivalRowInPlan'7729_) (stopid1'7299_, stopid2'72A2_, ((RT_m_16.R_app(timetable'72B2_)) (tram'7473_)), tram'7473_))]), ((buildAllArrivalsUsingConnection'7215_) (stopid1'7299_, stopid2'72A2_, RT_s_11.R_diff (trams'72AB_, RT_s_11.R_fromList ([tram'7473_])), timetable'72B2_)))
        end));
        
        fun getAllArrivalsUsingConnection'6E91_ (stopid1'6F13_, stopid2'6F1C_, timetable'6F25_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (125, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6F25_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:123:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_23.toString (stopid1'6F13_, stopid2'6F1C_, timetable'6F25_) ^ " not in subtype") else let
            val allTrams'6FC1_ = ((RT_m_16.R_dom(timetable'6F25_)):RT_s_11.t)
        in
            ((buildAllArrivalsUsingConnection'7215_) (stopid1'6F13_, stopid2'6F1C_, allTrams'6FC1_, timetable'6F25_))
        end);
        
        fun timeBetweenArrivalIsValidHeadway'BA59_ (timetable'BADE_, (capacityMap'BAEA_, connectionMap'BAF7_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (319, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x151_'0_, x152_'0_, x153_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x152_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x153_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'BADE_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'BAEA_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x156_'0_, x157_'0_, x158_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x156_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x157_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'BAF7_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:317:5: Argument of timeBetweenArrivalIsValidHeadway" ^ RT_x_32.toString (timetable'BADE_, (capacityMap'BAEA_, connectionMap'BAF7_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'BB29_, stopid2'BB32_):RT_x_2.t) => let
            val headway'BB8D_ = ((((minHeadway'FE51_) (stopid1'BB29_, stopid2'BB32_, (capacityMap'BAEA_, connectionMap'BAF7_)))):RT_Nat.t)
        in
            (((RT_s_24.R_all (fn ((tram1'BC59_, sid1'BC60_, arrt1'BC66_, dept1'BC6D_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'BC66_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'BC6D_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'BCBF_, sid2'BCC6_, arrt2'BCCC_, dept2'BCD3_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'BCCC_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'BCD3_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'BC66_, arrt2'BCCC_))), headway'BB8D_)))) (RT_s_24.R_diff (((getAllArrivalsUsingConnection'6E91_) (stopid1'BB29_, stopid2'BB32_, timetable'BADE_)), RT_s_24.R_fromList ([(tram1'BC59_, sid1'BC60_, arrt1'BC66_, dept1'BC6D_)]))))))) (((getAllArrivalsUsingConnection'6E91_) (stopid1'BB29_, stopid2'BB32_, timetable'BADE_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (326, 11)); ((RT_s_24.R_all (fn ((tram1'BDE9_, sid1'BDF0_, arrt1'BDF6_, dept1'BDFD_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'BDF6_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'BDFD_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'BE4F_, sid2'BE56_, arrt2'BE5C_, dept2'BE63_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'BE5C_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'BE63_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'BDF6_, arrt2'BE5C_))), headway'BB8D_)))) (RT_s_24.R_diff (((getAllArrivalsUsingConnection'6E91_) (stopid2'BB32_, stopid1'BB29_, timetable'BADE_)), RT_s_24.R_fromList ([(tram1'BDE9_, sid1'BDF0_, arrt1'BDF6_, dept1'BDFD_)]))))))) (((getAllArrivalsUsingConnection'6E91_) (stopid2'BB32_, stopid1'BB29_, timetable'BADE_))))))
        end) ((connectionMap'BAF7_)))));
        
        fun tramStopsAtAllStopsItPasses'C0FD_ timetable'C17D_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (336, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x159_'0_, x160_'0_, x161_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x161_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C17D_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:334:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'C17D_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'C1CC_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'C233_, arrTime'C23B_, depTime'C244_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'C23B_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'C244_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'C244_, arrTime'C23B_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'C17D_)) (tramid'C1CC_)))))) ((timetable'C17D_)))));
        
        fun isWellformed'EB2E_ (t'EB9F_, n'EBA2_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (444, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x234_'0_, x235_'0_, x236_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x235_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x236_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'EB9F_)))) andalso (let
            val (x237_'0_, x238_'0_) = ((n'EBA2_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x237_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x241_'0_, x242_'0_, x243_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x241_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x242_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x243_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x238_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:442:6: Argument of isWellformed" ^ RT_x_32.toString (t'EB9F_, n'EBA2_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'C0FD_) (t'EB9F_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (445, 8)); (((timeBetweenDeparturesIsValidHeadway'B225_) (t'EB9F_, n'EBA2_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (446, 8)); (((timeBetweenArrivalIsValidHeadway'BA59_) (t'EB9F_, n'EBA2_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (447, 8)); (((allTimeBetweenStopsIsValidDrivingTime'AF69_) (t'EB9F_, n'EBA2_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (448, 8)); (((allTrackCapacitiesAreNotExceeded'C549_) (t'EB9F_, n'EBA2_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (449, 8)); ((allStopCapacitiesAreNotExceeded'CEAB_) (t'EB9F_, n'EBA2_))))))));
        
        fun getConnection'597B_ (stop1'59ED_, stop2'59F4_, (capacityMap'59FC_, connectionMap'5A09_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (71, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'59FC_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x86_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5A09_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:69:7: Argument of getConnection" ^ RT_x_12.toString (stop1'59ED_, stop2'59F4_, (capacityMap'59FC_, connectionMap'5A09_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'59ED_, stop2'59F4_), (connectionMap'5A09_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (73, 9)); ((RT_m_4.R_app(connectionMap'5A09_)) ((stop1'59ED_, stop2'59F4_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (75, 9)); ((RT_m_4.R_app(connectionMap'5A09_)) ((stop2'59F4_, stop1'59ED_)))));
        
        fun stopsExist'E489_ (plan'E4F8_, net'E4FE_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (427, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x224_'0_, x225_'0_, x226_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x225_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x226_'0_, RT_Int.fromLit "0"))
        end) (plan'E4F8_))) andalso (let
            val (x227_'0_, x228_'0_) = ((net'E4FE_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x227_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x231_'0_, x232_'0_, x233_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x231_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x232_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x233_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x228_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:425:5: Argument of stopsExist" ^ RT_x_31.toString (plan'E4F8_, net'E4FE_) ^ " not in subtype") else if RT_Nat.equ (RT_l_15.R_length(plan'E4F8_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (428, 12)); true) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (430, 9)); let
            val (sid'E6E8_, arrt'E6ED_, dept'E6F3_) = ((RT_l_15.R_hd(plan'E4F8_)):RT_x_14.t)
        in
            if ((isIn'F8D9_) (sid'E6E8_, net'E4FE_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (434, 16)); ((stopsExist'E489_) (RT_l_15.R_tl(plan'E4F8_), net'E4FE_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (435, 16)); false)
        end));
        
        fun isIn'4C31_ (tramid'4C9A_, timetable'4CA2_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (37, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4CA2_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:35:5: Argument of isIn" ^ RT_x_18.toString (tramid'4C9A_, timetable'4CA2_) ^ " not in subtype") else RT_m_16.R_mem (tramid'4C9A_, (timetable'4CA2_)));
        
        fun allStopsInPlanExist'E169_ (timetable'E1E1_, net'E1EC_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (419, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x214_'0_, x215_'0_, x216_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x215_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x216_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'E1E1_)))) andalso (let
            val (x217_'0_, x218_'0_) = ((net'E1EC_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x217_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x221_'0_, x222_'0_, x223_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x221_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x222_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x223_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x218_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:417:5: Argument of allStopsInPlanExist" ^ RT_x_32.toString (timetable'E1E1_, net'E1EC_) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'E238_:RT_Text.t) => ((stopsExist'E489_) (((RT_m_16.R_app(timetable'E1E1_)) (tramid'E238_)), net'E1EC_))) ((timetable'E1E1_)))));
        
        fun addPlan'4913_ (tramid'497F_, plan'4987_, timetable'498D_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (29, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (plan'4987_))) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x72_'0_, x73_'0_, x74_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'498D_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:27:7: Argument of addPlan" ^ RT_x_21.toString (tramid'497F_, plan'4987_, timetable'498D_) ^ " not in subtype") else RT_m_16.R_override (timetable'498D_, RT_m_16.R_fromList ([(tramid'497F_, plan'4987_)])));
        
        fun stopsAreConnected'DA63_ (plan'DAD9_, connectionMap'DADF_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (401, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x206_'0_, x207_'0_, x208_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x207_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x208_'0_, RT_Int.fromLit "0"))
        end) (plan'DAD9_))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x211_'0_, x212_'0_, x213_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x211_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x213_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'DADF_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:399:7: Argument of stopsAreConnected" ^ RT_x_35.toString (plan'DAD9_, connectionMap'DADF_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'DAD9_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (402, 14)); true) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (404, 11)); let
            val (sid'DCC2_, arrt'DCC7_, dept'DCCD_) = ((RT_l_15.R_hd(plan'DAD9_)):RT_x_14.t); 
            val (sid2'DD26_, arrt2'DD2C_, dept2'DD33_) = ((((nextStop'4E8B_) ((sid'DCC2_, arrt'DCC7_, dept'DCCD_), plan'DAD9_))):RT_x_14.t)
        in
            if (RT_m_4.R_mem ((sid'DCC2_, sid2'DD26_), (connectionMap'DADF_))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (408, 54)); RT_m_4.R_mem ((sid2'DD26_, sid'DCC2_), (connectionMap'DADF_))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (409, 18)); ((stopsAreConnected'DA63_) (RT_l_15.R_tl(plan'DAD9_), connectionMap'DADF_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (410, 18)); false)
        end));
        
        fun addStop'471F_ (tramid'478B_, stopid'4793_, arrival'479B_, departure'47A4_, timetable'47AF_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (24, 9)); if not((RT_Nat.R_ge (arrival'479B_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'47A4_, RT_Int.fromLit "0")) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'47AF_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:22:7: Argument of addStop" ^ RT_x_20.toString (tramid'478B_, stopid'4793_, arrival'479B_, departure'47A4_, timetable'47AF_) ^ " not in subtype") else RT_m_16.R_override (timetable'47AF_, RT_m_16.R_fromList ([(tramid'478B_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'47AF_)) (tramid'478B_)), [(stopid'4793_, arrival'479B_, departure'47A4_)]))])));
        
        fun allStopsAreConnected'D743_ (timetable'D7BC_, (capacityMap'D7C8_, connectionMap'D7D4_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (393, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x198_'0_, x199_'0_, x200_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x199_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x200_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'D7BC_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D7C8_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x203_'0_, x204_'0_, x205_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x203_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x204_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x205_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D7D4_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:391:7: Argument of allStopsAreConnected" ^ RT_x_32.toString (timetable'D7BC_, (capacityMap'D7C8_, connectionMap'D7D4_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'D812_:RT_Text.t) => ((stopsAreConnected'DA63_) (((RT_m_16.R_app(timetable'D7BC_)) (tramid'D812_)), connectionMap'D7D4_))) ((timetable'D7BC_)))));
        
        fun addTram'452B_ (tramid'4597_, timetable'459F_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (19, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'459F_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:17:7: Argument of addTram" ^ RT_x_18.toString (tramid'4597_, timetable'459F_) ^ " not in subtype") else RT_m_16.R_override (timetable'459F_, RT_m_16.R_fromList ([(tramid'4597_, ([]:RT_l_15.t))])));
        
        val empty'43FF_ = let val z__'4411_ = RT_m_16.R_fromList [] in if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x247_'0_, x248_'0_, x249_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x248_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x249_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'4411_)))) then (RSL.add_load_err("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:14:25: Value " ^ RT_m_16.toString(z__'4411_) ^ " of empty not in subtype"); z__'4411_) else z__'4411_ end;
        
        val connectionTest'1FB1_ = (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1");
        
        val connectionMap'32D_ = RT_m_4.R_fromList ([((RT_Text.fromLit "B", RT_Text.fromLit "D"), (RT_Int.fromLit "2", RT_Int.fromLit "7", RT_Int.fromLit "2")), ((RT_Text.fromLit "A", RT_Text.fromLit "B"), (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1")), ((RT_Text.fromLit "B", RT_Text.fromLit "C"), (RT_Int.fromLit "2", RT_Int.fromLit "12", RT_Int.fromLit "3"))]);
        
        val tramNotIn'1E85_ = RT_Text.fromLit "tramG";
        
        val stopCapacity'391_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2")]);
        
        val tramIdB'1E21_ = RT_Text.fromLit "tram2";
        
        val net'4BD_ = (stopCapacity'391_, connectionMap'32D_);
        
        val tramIdA'1DBD_ = RT_Text.fromLit "tram1";
        
        val plan1'64D_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val plan13'1C2D_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan12'1BC9_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60"), (RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10")];
        
        val timetableWithAddedStop'1C91_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan12'1BC9_), (RT_Text.fromLit "tram2", plan13'1C2D_)]);
        
        val plan11'1A39_ = let val z__'1A47_ = ([]:RT_l_15.t) in if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x250_'0_, x251_'0_, x252_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x251_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x252_'0_, RT_Int.fromLit "0"))
        end) (z__'1A47_))) then (RSL.add_load_err("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/testTimeTable.rsl:67:27: Value " ^ RT_l_15.toString(z__'1A47_) ^ " of plan11 not in subtype"); z__'1A47_) else z__'1A47_ end;
        
        val plan2'6B1_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val timetableWithAddedTram'1A9D_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (tramNotIn'1E85_, plan11'1A39_)]);
        
        val timetableWF'715_ = ((addPlan'4913_) (RT_Text.fromLit "tram2", plan2'6B1_, ((addPlan'4913_) (RT_Text.fromLit "tram1", plan1'64D_, empty'43FF_))));
        
        val plan9'18A9_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timeTableWithInvalidConnection'190D_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan9'18A9_)]);
        
        val plan7'16B5_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "Q", RT_Int.fromLit "31", RT_Int.fromLit "33")];
        
        val timeTableWithInvalidStop'1719_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan7'16B5_)]);
        
        val plan6'1525_ = [(RT_Text.fromLit "B", RT_Int.fromLit "15", RT_Int.fromLit "17"), (RT_Text.fromLit "A", RT_Int.fromLit "29", RT_Int.fromLit "30"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val plan5'14C1_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "31", RT_Int.fromLit "33"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timeTableWithExceededStopCapacities'1589_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (RT_Text.fromLit "tram3", plan5'14C1_), (RT_Text.fromLit "tram4", plan6'1525_)]);
        
        val plan4'12CD_ = [(RT_Text.fromLit "B", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "48", RT_Int.fromLit "50")];
        
        val timetableWithAlmostExceededTrackCapacities'1395_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (RT_Text.fromLit "tram4", plan4'12CD_)]);
        
        val plan3'1269_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "32", RT_Int.fromLit "34"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timetableWithExceededTrackCapacities'1331_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (RT_Text.fromLit "tram3", plan3'1269_)]);
        
        val planWithoutStopTime'113D_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "12"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val planInvalidDrivingTime'841_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "8", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val planTooShortArrivalTime'1011_ = [(RT_Text.fromLit "C", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48")];
        
        val timetableInvalidDrivingTime'8A5_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", planInvalidDrivingTime'841_)]);
        
        val timetableDuplicateDepartureHeadway'CF1_ = ((addStop'471F_) (RT_Text.fromLit "tram3", RT_Text.fromLit "B", RT_Int.fromLit "14", RT_Int.fromLit "16", ((addStop'471F_) (RT_Text.fromLit "tram3", RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1", ((addTram'452B_) (RT_Text.fromLit "tram3", timetableWF'715_))))));
        
        val timetableInvalidDepartureHeadway'9D1_ = ((addStop'471F_) (RT_Text.fromLit "tram3", RT_Text.fromLit "C", RT_Int.fromLit "30", RT_Int.fromLit "60", ((addStop'471F_) (RT_Text.fromLit "tram3", RT_Text.fromLit "B", RT_Int.fromLit "0", RT_Int.fromLit "14", ((addTram'452B_) (RT_Text.fromLit "tram3", timetableWF'715_))))));
        
    end;
    
open testTimeTable;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (19, 9), (19, 38));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (393, 9), (395, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (24, 9), (24, 86));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (408, 54), (409, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (410, 18), (411, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (409, 18), (410, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (404, 11), (413, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (402, 14), (403, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (401, 9), (413, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (29, 9), (31, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (419, 7), (421, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (37, 7), (37, 33));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (435, 16), (436, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (434, 16), (435, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (430, 9), (438, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (428, 12), (429, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (427, 7), (438, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (75, 9), (76, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (73, 9), (74, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (71, 7), (76, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (449, 8), (450, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (448, 8), (450, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (447, 8), (450, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (446, 8), (450, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (445, 8), (450, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (444, 8), (450, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (336, 7), (340, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (326, 11), (330, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (319, 7), (331, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (125, 7), (129, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (137, 9), (142, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (135, 12), (136, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (134, 7), (142, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (159, 13), (160, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (157, 13), (158, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (151, 33), (152, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (155, 11), (161, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (153, 11), (154, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (147, 7), (163, 23));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (347, 7), (349, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (362, 15), (365, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (355, 8), (365, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (176, 4), (176, 22));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (175, 59), (175, 76));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (175, 81), (176, 23));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (175, 35), (176, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (177, 16), (178, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (176, 16), (177, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (172, 9), (180, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (170, 12), (171, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (169, 7), (180, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (189, 9), (194, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (187, 12), (188, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (186, 7), (194, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (207, 31), (208, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (209, 16), (210, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (208, 16), (209, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (203, 9), (212, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (201, 12), (202, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (200, 7), (212, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (305, 11), (309, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (298, 7), (310, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (82, 7), (86, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (94, 9), (99, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (92, 12), (93, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (91, 7), (99, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (116, 13), (117, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (114, 13), (115, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (108, 33), (109, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (112, 11), (118, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (110, 11), (111, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (104, 7), (120, 23));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (58, 15), (63, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (56, 15), (57, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (54, 13), (64, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (48, 13), (53, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (43, 9), (66, 25));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (291, 7), (292, 48));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (280, 53), (281, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (284, 9), (285, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (273, 9), (283, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (272, 7), (285, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (371, 9), (373, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (379, 9), (386, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (225, 4), (225, 22));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (224, 59), (224, 76));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (224, 81), (225, 23));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (224, 35), (225, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (226, 16), (227, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (225, 16), (226, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (221, 9), (229, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (219, 12), (220, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (218, 7), (229, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (238, 9), (243, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (236, 12), (237, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (235, 7), (243, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (257, 16), (258, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (256, 16), (257, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (252, 9), (260, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (250, 12), (251, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (249, 7), (262, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (18, 7), (18, 59));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (42, 7), (45, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (23, 7), (24, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (50, 7), (53, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (32, 7), (32, 26));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (58, 7), (63, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (92, 7), (93, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (91, 7), (93, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (90, 7), (93, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (76, 56), (76, 99));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (74, 7), (77, 0));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (28, 7), (28, 35));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (67, 7), (69, 28));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (81, 7), (85, 84));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (37, 7), (37, 49));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (36, 7), (37, 49)));
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'EB2E_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s2_validDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTimeBetweenStopsIsValidDrivingTime'AF69_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTimeBetweenStopsIsValidDrivingTime'AF69_) (timetableInvalidDrivingTime'8A5_, net'4BD_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'EB2E_) (timetableInvalidDrivingTime'8A5_, net'4BD_)), false)));

(RSL.C_output "[s3_validHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'B225_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'B225_) (timetableInvalidDepartureHeadway'9D1_, net'4BD_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'EB2E_) (timetableInvalidDepartureHeadway'9D1_, net'4BD_)), false)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'B225_) (timetableDuplicateDepartureHeadway'CF1_, net'4BD_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'EB2E_) (timetableDuplicateDepartureHeadway'CF1_, net'4BD_)), false)));

(RSL.C_output "[s5_validHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'BA59_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s5_invalidHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'BA59_) (((addPlan'4913_) (RT_Text.fromLit "tram3", planTooShortArrivalTime'1011_, timetableWF'715_)), net'4BD_)), false)));

(RSL.C_output "[s5_NotWellFormedArrivalHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'EB2E_) (((addPlan'4913_) (RT_Text.fromLit "tram3", planTooShortArrivalTime'1011_, timetableWF'715_)), net'4BD_)), false)));

(RSL.C_output "[s6_tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'C0FD_) (timetableWF'715_)), true)));

(RSL.C_output "[s6_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'C0FD_) (((addPlan'4913_) (RT_Text.fromLit "tram1", planWithoutStopTime'113D_, empty'43FF_)))), false)));

(RSL.C_output "[s6_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'EB2E_) (((addPlan'4913_) (RT_Text.fromLit "tram1", planWithoutStopTime'113D_, empty'43FF_)), net'4BD_)), false)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDontExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'C549_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackAlmostExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'C549_) (timetableWithAlmostExceededTrackCapacities'1395_, net'4BD_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDoExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'C549_) (timetableWithExceededTrackCapacities'1331_, net'4BD_)), false)));

(RSL.C_output "[s8_NumberOfTramsAtStopDontExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'CEAB_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s8_NumberOfTramsAtStopDoExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'CEAB_) (timeTableWithExceededStopCapacities'1589_, net'4BD_)), false)));

(RSL.C_output "[s9_AllStopsInPlansExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'E169_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s9_AllStopsInPlansDoNotExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'E169_) (timeTableWithInvalidStop'1719_, net'4BD_)), false)));

(RSL.C_output "[s10_allStopsAreConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'D743_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s10_allStopsAreNotConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'D743_) (timeTableWithInvalidConnection'190D_, net'4BD_)), false)));

(RSL.C_output "[s12_AddingTram] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addTram'452B_) (tramNotIn'1E85_, timetableWF'715_)), timetableWithAddedTram'1A9D_)));

(RSL.C_output "[s12_addStop] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addStop'471F_) (tramIdA'1DBD_, RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10", timetableWF'715_)), timetableWithAddedStop'1C91_)));

(RSL.C_output "[s13_isinExisting01] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4C31_) (tramIdA'1DBD_, timetableWF'715_)), true)));

(RSL.C_output "[s13_isinExisting02] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4C31_) (tramIdB'1E21_, timetableWF'715_)), true)));

(RSL.C_output "[s13_isNotin] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4C31_) (tramNotIn'1E85_, timetableWF'715_)), false)));

(RSL.C_output "[s14_getConnection] " RT_Bool.toStringSafe (fn _ => RT_x_3.equ (((getConnection'597B_) (RT_Text.fromLit "A", RT_Text.fromLit "B", net'4BD_)), connectionTest'1FB1_)));

RSL.print_error_count();
R_coverage.save_marked();
