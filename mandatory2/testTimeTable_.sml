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
        
        fun areDirectlyConnected'F875_ (stopId1'F8EE_, stopId2'F8F7_, (capacityMap'F901_, connectionMap'F90E_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F901_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F90E_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'F8EE_, stopId2'F8F7_, (capacityMap'F901_, connectionMap'F90E_)) ^ " not in subtype") else (RT_m_4.R_mem ((stopId1'F8EE_, stopId2'F8F7_), (connectionMap'F90E_))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (37, 7)); RT_m_4.R_mem ((stopId2'F8F7_, stopId1'F8EE_), (connectionMap'F90E_))));
        
        fun allStopsHaveConnection'10F1D_ (capacityMap'10F98_, connectionMap'10FA5_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (94, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'10F98_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x64_'0_, x65_'0_, x66_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x66_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'10FA5_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:92:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'10F98_, connectionMap'10FA5_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'10FEC_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'110B9_:RT_Text.t) => (((areDirectlyConnected'F875_) (stopId'10FEC_, stopId2'110B9_, (capacityMap'10F98_, connectionMap'10FA5_))))) ((capacityMap'10F98_))))) ((capacityMap'10F98_)))));
        
        fun noSelfConnection'109A5_ (capacityMap'10A1A_, connectionMap'10A27_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'10A1A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x54_'0_, x55_'0_, x56_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x56_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'10A27_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:78:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'10A1A_, connectionMap'10A27_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'10A75_, stopId2'10A7E_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'10A75_, stopId2'10A7E_)) ((connectionMap'10A27_)))));
        
        fun isIn'F555_ (stopId'F5BE_, (capacityMap'F5C7_, connecitonMap'F5D4_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F5C7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'F5D4_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'F5BE_, (capacityMap'F5C7_, connecitonMap'F5D4_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'F5BE_, (capacityMap'F5C7_)));
        
        fun allStopsInConnectionMapAreInCapacityMap'10C61_ (capacityMap'10CED_, connectionMap'10CFA_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (87, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'10CED_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x59_'0_, x60_'0_, x61_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x59_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'10CFA_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:85:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'10CED_, connectionMap'10CFA_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'10D31_, stopId2'10D3A_):RT_x_2.t) => (((isIn'F555_) (stopId1'10D31_, (capacityMap'10CED_, connectionMap'10CFA_)))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (89, 56)); ((isIn'F555_) (stopId2'10D3A_, (capacityMap'10CED_, connectionMap'10CFA_))))) ((connectionMap'10CFA_)))));
        
        fun isWellformed'112A1_ net'11312_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (103, 7)); if not(let
            val (x67_'0_, x68_'0_) = ((net'11312_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x67_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x71_'0_, x72_'0_, x73_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x72_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x68_'0_))))
        end) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:101:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'11312_ ^ ")" ^ " not in subtype") else (((noSelfConnection'109A5_) (net'11312_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (104, 7)); (((allStopsInConnectionMapAreInCapacityMap'10C61_) (net'11312_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (105, 7)); ((allStopsHaveConnection'10F1D_) (net'11312_)))));
        
        fun getConnection'FACD_ (stop1'FB3F_, stop2'FB46_, (capacityMap'FB4E_, connectionMap'FB5B_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (42, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FB4E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FB5B_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:40:5: Argument of getConnection" ^ RT_x_12.toString (stop1'FB3F_, stop2'FB46_, (capacityMap'FB4E_, connectionMap'FB5B_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'FB3F_, stop2'FB46_), (connectionMap'FB5B_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (44, 9)); ((RT_m_4.R_app(connectionMap'FB5B_)) ((stop1'FB3F_, stop2'FB46_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (46, 9)); ((RT_m_4.R_app(connectionMap'FB5B_)) ((stop2'FB46_, stop1'FB3F_)))));
        
        fun minDrivingTime'105BD_ (stopId1'10630_, stopId2'10639_, net'10642_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (70, 7)); if not(let
            val (x45_'0_, x46_'0_) = ((net'10642_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x45_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x49_'0_, x50_'0_, x51_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x51_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x46_'0_))))
        end) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:68:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'10630_, stopId2'10639_, net'10642_) ^ " not in subtype") else let
            val (headway'106EE_, drivingTime'106F7_, capacity'10704_) = ((((getConnection'FACD_) (stopId1'10630_, stopId2'10639_, net'10642_))):RT_x_3.t)
        in
            drivingTime'106F7_
        end);
        
        fun minHeadway'FEB5_ (stopId1'FF24_, stopId2'FF2D_, net'FF36_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (52, 7)); if not(let
            val (x31_'0_, x32_'0_) = ((net'FF36_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x31_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x35_'0_, x36_'0_, x37_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x36_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x37_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x32_'0_))))
        end) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:50:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'FF24_, stopId2'FF2D_, net'FF36_) ^ " not in subtype") else let
            val (headway'FFE6_, drivingTime'FFEF_, capacity'FFFC_) = ((((getConnection'FACD_) (stopId1'FF24_, stopId2'FF2D_, net'FF36_))):RT_x_3.t)
        in
            headway'FFE6_
        end);
        
        fun capacity'F6E5_ (stopId'F753_, (capacityMap'F75B_, connectionMap'F768_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F75B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F768_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'F753_, (capacityMap'F75B_, connectionMap'F768_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'F75B_)) (stopId'F753_)));
        
        fun capacity'10239_ (stopId1'102A6_, stopId2'102AF_, net'102B8_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (61, 7)); if not(let
            val (x38_'0_, x39_'0_) = ((net'102B8_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x38_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x42_'0_, x43_'0_, x44_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x42_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x39_'0_))))
        end) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:59:5: Argument of capacity" ^ RT_x_12.toString (stopId1'102A6_, stopId2'102AF_, net'102B8_) ^ " not in subtype") else let
            val (headway'1036A_, drivingTime'10373_, capacity'10380_) = ((((getConnection'FACD_) (stopId1'102A6_, stopId2'102AF_, net'102B8_))):RT_x_3.t)
        in
            capacity'10380_
        end);
        
        fun addConnection'F361_ (stopId1'F3D3_, stopId2'F3DC_, headway'F3E5_, capacity'F3EE_, drivingTime'F3F8_, (capacityMap'F406_, connectionMap'F413_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'F3E5_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'F3EE_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'F3F8_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F406_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F413_)))))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'F3D3_, stopId2'F3DC_, headway'F3E5_, capacity'F3EE_, drivingTime'F3F8_, (capacityMap'F406_, connectionMap'F413_)) ^ " not in subtype") else (capacityMap'F406_, RT_m_4.R_override (connectionMap'F413_, RT_m_4.R_fromList ([((stopId1'F3D3_, stopId2'F3DC_), (headway'F3E5_, drivingTime'F3F8_, capacity'F3EE_))]))));
        
        val empty'F0A5_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun insertStop'F16D_ (stopId'F1DC_, capacity'F1E4_, (capacityMap'F1EF_, connectionMap'F1FC_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'F1E4_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F1EF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F1FC_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'F1DC_, capacity'F1E4_, (capacityMap'F1EF_, connectionMap'F1FC_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'F1EF_, RT_m_1.R_fromList ([(stopId'F1DC_, capacity'F1E4_)])), connectionMap'F1FC_));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type TramPlanRow_ = RT_x_17.t;
        
        type Plan_ = RT_l_15.t;
        
        fun buildTimesForTramOnStop'9B7D_ (stopid'9BF9_, plan'9C01_, tramid'9C07_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (240, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x128_'0_, x129_'0_, x130_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0"))
        end) (plan'9C01_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:238:5: Argument of buildTimesForTramOnStop" ^ RT_x_30.toString (stopid'9BF9_, plan'9C01_, tramid'9C07_) ^ " not in subtype") else if RT_Nat.R_lt (RT_l_15.R_length(plan'9C01_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (241, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (243, 9)); let
            val (sid'9DDC_, arrt'9DE1_, dept'9DE7_) = ((RT_l_15.R_hd(plan'9C01_)):RT_x_14.t)
        in
            if RT_Text.equ (sid'9DDC_, stopid'9BF9_) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (247, 16)); RT_s_27.R_union (RT_s_27.R_fromList ([(tramid'9C07_, arrt'9DE1_, dept'9DE7_)]), ((buildTimesForTramOnStop'9B7D_) (stopid'9BF9_, RT_l_15.R_tl(plan'9C01_), tramid'9C07_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (248, 16)); ((buildTimesForTramOnStop'9B7D_) (stopid'9BF9_, RT_l_15.R_tl(plan'9C01_), tramid'9C07_)))
        end));
        
        fun buildAllTimesForStop'9605_ (stopid'967E_, trams'9686_, timetable'968D_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (226, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x125_'0_, x126_'0_, x127_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'968D_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:224:5: Argument of buildAllTimesForStop" ^ RT_x_29.toString (stopid'967E_, trams'9686_, timetable'968D_) ^ " not in subtype") else if RT_s_11.equ (trams'9686_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (227, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (229, 9)); let
            val tramid'9863_ = ((RT_s_11.R_hd(trams'9686_)):RT_Text.t)
        in
            RT_s_27.R_union (((buildTimesForTramOnStop'9B7D_) (stopid'967E_, ((RT_m_16.R_app(timetable'968D_)) (tramid'9863_)), tramid'9863_)), ((buildAllTimesForStop'9605_) (stopid'967E_, RT_s_11.R_diff (trams'9686_, RT_s_11.R_fromList ([tramid'9863_])), timetable'968D_)))
        end));
        
        fun countOverlappingTimesForStop'8F61_ (tramid'8FE2_, arrtime'8FE9_, deptime'8FF2_, times'8FFB_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (209, 7)); if not((RT_Nat.R_ge (arrtime'8FE9_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (deptime'8FF2_, RT_Int.fromLit "0")) andalso ((RT_s_27.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x122_'0_, x123_'0_, x124_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x123_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0"))
        end) (times'8FFB_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:207:5: Argument of countOverlappingTimesForStop" ^ RT_x_28.toString (tramid'8FE2_, arrtime'8FE9_, deptime'8FF2_, times'8FFB_) ^ " not in subtype") else if RT_s_27.equ (times'8FFB_, RT_s_27.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (210, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (212, 9)); let
            val (tramid2'91C0_, arrtime2'91C9_, deptime2'91D3_) = ((RT_s_27.R_hd(times'8FFB_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'8FE2_, tramid2'91C0_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (215, 35)); ((((RT_Nat.R_lt (arrtime'8FE9_, arrtime2'91C9_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (215, 59)); RT_Nat.R_lt (arrtime2'91C9_, deptime'8FF2_)))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (215, 81)); ((RT_Nat.R_lt (arrtime'8FE9_, deptime2'91D3_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (216, 4)); RT_Nat.R_lt (deptime2'91D3_, deptime'8FF2_)))))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (216, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'8F61_) (tramid'8FE2_, arrtime'8FE9_, deptime'8FF2_, RT_s_27.R_diff (times'8FFB_, RT_s_27.R_fromList ([(tramid2'91C0_, arrtime2'91C9_, deptime2'91D3_)])))))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (217, 16)); ((countOverlappingTimesForStop'8F61_) (tramid'8FE2_, arrtime'8FE9_, deptime'8FF2_, RT_s_27.R_diff (times'8FFB_, RT_s_27.R_fromList ([(tramid2'91C0_, arrtime2'91C9_, deptime2'91D3_)])))))
        end));
        
        fun stopCapacityIsNotExceeded'CE47_ (stopid'CEC5_, timetable'CECD_, net'CED8_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (370, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x194_'0_, x195_'0_, x196_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x196_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'CECD_)))) andalso (let
            val (x197_'0_, x198_'0_) = ((net'CED8_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x197_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x201_'0_, x202_'0_, x203_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x201_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x202_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x203_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x198_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:368:7: Argument of stopCapacityIsNotExceeded" ^ RT_x_34.toString (stopid'CEC5_, timetable'CECD_, net'CED8_) ^ " not in subtype") else let
            val times'CF77_ = ((((buildAllTimesForStop'9605_) (stopid'CEC5_, RT_m_16.R_dom((timetable'CECD_)), timetable'CECD_))):RT_s_27.t); 
            val capacity'CFDB_ = ((((capacity'F6E5_) (stopid'CEC5_, net'CED8_))):RT_Nat.t)
        in
            ((RT_s_27.R_all (fn ((tramid'D0A9_, arrtime'D0B1_, deptime'D0BA_):RT_x_14.t) => not ((RT_Nat.R_ge (arrtime'D0B1_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (deptime'D0BA_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'8F61_) (tramid'D0A9_, arrtime'D0B1_, deptime'D0BA_, times'CF77_))), capacity'CFDB_)))) (times'CF77_)))
        end);
        
        fun allStopCapacitiesAreNotExceeded'CB27_ (timetable'CBAB_, (capacityMap'CBB7_, connectionMap'CBC3_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (362, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x186_'0_, x187_'0_, x188_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x187_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x188_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'CBAB_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'CBB7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x191_'0_, x192_'0_, x193_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x191_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x192_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x193_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'CBC3_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:360:7: Argument of allStopCapacitiesAreNotExceeded" ^ RT_x_32.toString (timetable'CBAB_, (capacityMap'CBB7_, connectionMap'CBC3_)) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopid'CBF6_:RT_Text.t) => ((stopCapacityIsNotExceeded'CE47_) (stopid'CBF6_, timetable'CBAB_, (capacityMap'CBB7_, connectionMap'CBC3_)))) ((capacityMap'CBB7_)))));
        
        fun timeBetweenStopsIsDrivingTime'A479_ (plan'A4FB_, (capacityMap'A502_, connectionMap'A50F_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (263, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x131_'0_, x132_'0_, x133_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x133_'0_, RT_Int.fromLit "0"))
        end) (plan'A4FB_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'A502_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x136_'0_, x137_'0_, x138_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x136_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x137_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x138_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'A50F_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:261:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_31.toString (plan'A4FB_, (capacityMap'A502_, connectionMap'A50F_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'A4FB_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (264, 9)); let
            val (stopid1'A610_, arrTime1'A619_, depTime1'A623_) = ((RT_l_15.R_hd(plan'A4FB_)):RT_x_14.t); 
            val (stopid2'A674_, arrTime2'A67D_, depTime2'A687_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'A4FB_)))):RT_x_14.t)
        in
            let
                val drivingTime'A7A1_ = ((((minDrivingTime'105BD_) (stopid1'A610_, stopid2'A674_, (capacityMap'A502_, connectionMap'A50F_)))):RT_Nat.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'A67D_, depTime1'A623_), drivingTime'A7A1_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (271, 53)); ((timeBetweenStopsIsDrivingTime'A479_) (RT_l_15.R_tl(plan'A4FB_), (capacityMap'A502_, connectionMap'A50F_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (275, 9)); true));
        
        fun allTimeBetweenStopsIsValidDrivingTime'ABE5_ (t'AC6F_, n'AC72_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (282, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x139_'0_, x140_'0_, x141_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x140_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'AC6F_)))) andalso (let
            val (x142_'0_, x143_'0_) = ((n'AC72_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x142_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x146_'0_, x147_'0_, x148_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x146_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x147_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x148_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x143_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:280:5: Argument of allTimeBetweenStopsIsValidDrivingTime" ^ RT_x_32.toString (t'AC6F_, n'AC72_) ^ " not in subtype") else ((RT_s_19.R_all (fn (plan'ACB4_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x250_'0_, x251_'0_, x252_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x251_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x252_'0_, RT_Int.fromLit "0"))
        end) (plan'ACB4_))) orelse (((timeBetweenStopsIsDrivingTime'A479_) (plan'ACB4_, n'AC72_)))) (RT_m_16.R_ran((t'AC6F_))))));
        
        fun nextStop'4E8B_ (planRow'4EF8_, plan'4F01_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (43, 9)); if not((let
            val (x89_'0_, x90_'0_, x91_'0_) = ((planRow'4EF8_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
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
        
        fun findDepartureRowInPlan'62D9_ (stopid1'6354_, stopid2'635D_, plan'6366_, tram'636C_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (95, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (plan'6366_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:93:5: Argument of findDepartureRowInPlan" ^ RT_x_26.toString (stopid1'6354_, stopid2'635D_, plan'6366_, tram'636C_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'6366_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:111:11: Precondition of findDepartureRowInPlan" ^ RT_x_26.toString (stopid1'6354_, stopid2'635D_, plan'6366_, tram'636C_) ^ " not satisfied") else let
            val (hStopId'640A_, hArrTime'6413_, hDepTime'641D_) = ((RT_l_15.R_hd(plan'6366_)):RT_x_14.t); 
            val (nStopId'646E_, nArrTime'6477_, nDepTime'6481_) = ((((nextStop'4E8B_) (RT_l_15.R_hd(plan'6366_), plan'6366_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'640A_, stopid1'6354_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (99, 33)); RT_Text.equ (nStopId'646E_, stopid2'635D_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (101, 11)); (tram'636C_, hStopId'640A_, hArrTime'6413_, hDepTime'641D_)) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (103, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'6366_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (105, 13)); ((findDepartureRowInPlan'62D9_) (stopid1'6354_, stopid2'635D_, RT_l_15.R_tl(plan'6366_), tram'636C_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (107, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'5DC5_ (stopid1'5E4B_, stopid2'5E54_, trams'5E5D_, timetable'5E64_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (82, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5E64_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:80:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_25.toString (stopid1'5E4B_, stopid2'5E54_, trams'5E5D_, timetable'5E64_) ^ " not in subtype") else if RT_s_11.equ (trams'5E5D_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (83, 12)); RT_s_24.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (85, 9)); let
            val tram'6023_ = ((RT_s_11.R_hd(trams'5E5D_)):RT_Text.t)
        in
            RT_s_24.R_union (RT_s_24.R_fromList ([((findDepartureRowInPlan'62D9_) (stopid1'5E4B_, stopid2'5E54_, ((RT_m_16.R_app(timetable'5E64_)) (tram'6023_)), tram'6023_))]), ((buildAllDeparturesUsingConnection'5DC5_) (stopid1'5E4B_, stopid2'5E54_, RT_s_11.R_diff (trams'5E5D_, RT_s_11.R_fromList ([tram'6023_])), timetable'5E64_)))
        end));
        
        fun getAllDepaturesUsingConnection'5A41_ (stopid1'5AC4_, stopid2'5ACD_, timetable'5AD6_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (73, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5AD6_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:71:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_23.toString (stopid1'5AC4_, stopid2'5ACD_, timetable'5AD6_) ^ " not in subtype") else let
            val allTrams'5B71_ = ((RT_m_16.R_dom(timetable'5AD6_)):RT_s_11.t)
        in
            ((buildAllDeparturesUsingConnection'5DC5_) (stopid1'5AC4_, stopid2'5ACD_, allTrams'5B71_, timetable'5AD6_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'AEA1_ (timetable'AF29_, (capacityMap'AF35_, connectionMap'AF42_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (289, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x149_'0_, x150_'0_, x151_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x150_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x151_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'AF29_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'AF35_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x154_'0_, x155_'0_, x156_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x154_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x155_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x156_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'AF42_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:287:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_32.toString (timetable'AF29_, (capacityMap'AF35_, connectionMap'AF42_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'AF71_, stopid2'AF7A_):RT_x_2.t) => let
            val headway'AFD5_ = ((((minHeadway'FEB5_) (stopid1'AF71_, stopid2'AF7A_, (capacityMap'AF35_, connectionMap'AF42_)))):RT_Nat.t)
        in
            (((RT_s_24.R_all (fn ((tram1'B0A1_, sid1'B0A8_, arrt1'B0AE_, dept1'B0B5_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'B0AE_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'B0B5_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'B107_, sid2'B10E_, arrt2'B114_, dept2'B11B_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'B114_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'B11B_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'B0B5_, dept2'B11B_))), headway'AFD5_)))) (RT_s_24.R_diff (((getAllDepaturesUsingConnection'5A41_) (stopid1'AF71_, stopid2'AF7A_, timetable'AF29_)), RT_s_24.R_fromList ([(tram1'B0A1_, sid1'B0A8_, arrt1'B0AE_, dept1'B0B5_)]))))))) (((getAllDepaturesUsingConnection'5A41_) (stopid1'AF71_, stopid2'AF7A_, timetable'AF29_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (296, 11)); ((RT_s_24.R_all (fn ((tram1'B231_, sid1'B238_, arrt1'B23E_, dept1'B245_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'B23E_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'B245_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'B295_, sid2'B29C_, arrt2'B2A2_, dept2'B2A9_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'B2A2_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'B2A9_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'B245_, dept2'B2A9_))), headway'AFD5_)))) (RT_s_24.R_diff (((getAllDepaturesUsingConnection'5A41_) (stopid2'AF7A_, stopid1'AF71_, timetable'AF29_)), RT_s_24.R_fromList ([(tram1'B231_, sid1'B238_, arrt1'B23E_, dept1'B245_)]))))))) (((getAllDepaturesUsingConnection'5A41_) (stopid2'AF7A_, stopid1'AF71_, timetable'AF29_))))))
        end) ((connectionMap'AF42_)))));
        
        fun buildTimesForTramOnTrack'8859_ (stopid1'88D7_, stopid2'88E0_, plan'88E9_, tramid'88EF_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (191, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x119_'0_, x120_'0_, x121_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x120_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0"))
        end) (plan'88E9_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:189:5: Argument of buildTimesForTramOnTrack" ^ RT_x_26.toString (stopid1'88D7_, stopid2'88E0_, plan'88E9_, tramid'88EF_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'88E9_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (192, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (194, 9)); let
            val (sid'8AB8_, arrt'8ABD_, dept'8AC3_) = ((RT_l_15.R_hd(plan'88E9_)):RT_x_14.t); 
            val (sid2'8B1C_, arrt2'8B22_, dept2'8B29_) = ((((nextStop'4E8B_) ((sid'8AB8_, arrt'8ABD_, dept'8AC3_), plan'88E9_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'8AB8_, stopid1'88D7_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (198, 31)); RT_Text.equ (sid2'8B1C_, stopid2'88E0_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (199, 16)); RT_s_27.R_union (RT_s_27.R_fromList ([(tramid'88EF_, dept'8AC3_, arrt2'8B22_)]), ((buildTimesForTramOnTrack'8859_) (stopid1'88D7_, stopid2'88E0_, RT_l_15.R_tl(plan'88E9_), tramid'88EF_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (200, 16)); ((buildTimesForTramOnTrack'8859_) (stopid1'88D7_, stopid2'88E0_, RT_l_15.R_tl(plan'88E9_), tramid'88EF_)))
        end));
        
        fun buildAllTimesForTrack'82E1_ (stopid1'835B_, stopid2'8364_, trams'836D_, timetable'8374_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (177, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x116_'0_, x117_'0_, x118_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x117_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'8374_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:175:5: Argument of buildAllTimesForTrack" ^ RT_x_25.toString (stopid1'835B_, stopid2'8364_, trams'836D_, timetable'8374_) ^ " not in subtype") else if RT_s_11.equ (trams'836D_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (178, 12)); RT_s_27.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (180, 9)); let
            val tramid'853F_ = ((RT_s_11.R_hd(trams'836D_)):RT_Text.t)
        in
            RT_s_27.R_union (((buildTimesForTramOnTrack'8859_) (stopid1'835B_, stopid2'8364_, ((RT_m_16.R_app(timetable'8374_)) (tramid'853F_)), tramid'853F_)), ((buildAllTimesForTrack'82E1_) (stopid1'835B_, stopid2'8364_, RT_s_11.R_diff (trams'836D_, RT_s_11.R_fromList ([tramid'853F_])), timetable'8374_)))
        end));
        
        fun countOverlappingTimesForTrack'7C3D_ (tramid'7CBF_, deptime'7CC6_, arrtime'7CCF_, times'7CD8_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (160, 7)); if not((RT_Nat.R_ge (deptime'7CC6_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (arrtime'7CCF_, RT_Int.fromLit "0")) andalso ((RT_s_27.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x113_'0_, x114_'0_, x115_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0"))
        end) (times'7CD8_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:158:5: Argument of countOverlappingTimesForTrack" ^ RT_x_28.toString (tramid'7CBF_, deptime'7CC6_, arrtime'7CCF_, times'7CD8_) ^ " not in subtype") else if RT_s_27.equ (times'7CD8_, RT_s_27.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (161, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (163, 9)); let
            val (tramid2'7E9C_, deptime2'7EA5_, arrtime2'7EAF_) = ((RT_s_27.R_hd(times'7CD8_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'7CBF_, tramid2'7E9C_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (166, 35)); ((((RT_Nat.R_lt (deptime'7CC6_, deptime2'7EA5_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (166, 59)); RT_Nat.R_lt (deptime2'7EA5_, arrtime'7CCF_)))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (166, 81)); ((RT_Nat.R_lt (deptime'7CC6_, arrtime2'7EAF_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (167, 4)); RT_Nat.R_lt (arrtime2'7EAF_, arrtime'7CCF_)))))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (167, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7C3D_) (tramid'7CBF_, deptime'7CC6_, arrtime'7CCF_, RT_s_27.R_diff (times'7CD8_, RT_s_27.R_fromList ([(tramid2'7E9C_, deptime2'7EA5_, arrtime2'7EAF_)])))))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (168, 16)); ((countOverlappingTimesForTrack'7C3D_) (tramid'7CBF_, deptime'7CC6_, arrtime'7CCF_, RT_s_27.R_diff (times'7CD8_, RT_s_27.R_fromList ([(tramid2'7E9C_, deptime2'7EA5_, arrtime2'7EAF_)])))))
        end));
        
        fun trackCapacityIsNotExceeded'C4E5_ (stopid1'C564_, stopid2'C56D_, timetable'C576_, net'C581_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (346, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x176_'0_, x177_'0_, x178_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x177_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x178_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C576_)))) andalso (let
            val (x179_'0_, x180_'0_) = ((net'C581_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x179_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x183_'0_, x184_'0_, x185_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x183_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x184_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x185_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x180_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:344:5: Argument of trackCapacityIsNotExceeded" ^ RT_x_33.toString (stopid1'C564_, stopid2'C56D_, timetable'C576_, net'C581_) ^ " not in subtype") else let
            val times1'C616_ = ((((buildAllTimesForTrack'82E1_) (stopid1'C564_, stopid2'C56D_, RT_m_16.R_dom((timetable'C576_)), timetable'C576_))):RT_s_27.t); 
            val times2'C67A_ = ((((buildAllTimesForTrack'82E1_) (stopid2'C56D_, stopid1'C564_, RT_m_16.R_dom((timetable'C576_)), timetable'C576_))):RT_s_27.t); 
            val trackcapacity'C6DE_ = ((((capacity'10239_) (stopid1'C564_, stopid2'C56D_, net'C581_))):RT_Nat.t)
        in
            (((RT_s_27.R_all (fn ((tramid'C7AC_, deptime'C7B4_, arrtime'C7BD_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'C7B4_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'C7BD_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7C3D_) (tramid'C7AC_, deptime'C7B4_, arrtime'C7BD_, times1'C616_))), trackcapacity'C6DE_)))) (times1'C616_)))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (353, 15)); ((RT_s_27.R_all (fn ((tramid'C879_, deptime'C881_, arrtime'C88A_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'C881_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'C88A_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7C3D_) (tramid'C879_, deptime'C881_, arrtime'C88A_, times2'C67A_))), trackcapacity'C6DE_)))) (times2'C67A_))))
        end);
        
        fun allTrackCapacitiesAreNotExceeded'C1C5_ (timetable'C24A_, (capacityMap'C256_, connectionMap'C262_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (338, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x168_'0_, x169_'0_, x170_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x169_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x170_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C24A_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C256_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x173_'0_, x174_'0_, x175_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x173_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x174_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x175_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C262_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:336:5: Argument of allTrackCapacitiesAreNotExceeded" ^ RT_x_32.toString (timetable'C24A_, (capacityMap'C256_, connectionMap'C262_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'C295_, stopid2'C29E_):RT_x_2.t) => ((trackCapacityIsNotExceeded'C4E5_) (stopid1'C295_, stopid2'C29E_, timetable'C24A_, (capacityMap'C256_, connectionMap'C262_)))) ((connectionMap'C262_)))));
        
        fun findArrivalRowInPlan'73A5_ (stopid1'741E_, stopid2'7427_, plan'7430_, tram'7436_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (138, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x110_'0_, x111_'0_, x112_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0"))
        end) (plan'7430_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:136:5: Argument of findArrivalRowInPlan" ^ RT_x_26.toString (stopid1'741E_, stopid2'7427_, plan'7430_, tram'7436_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'7430_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:154:11: Precondition of findArrivalRowInPlan" ^ RT_x_26.toString (stopid1'741E_, stopid2'7427_, plan'7430_, tram'7436_) ^ " not satisfied") else let
            val (hStopId'74D6_, hArrTime'74DF_, hDepTime'74E9_) = ((RT_l_15.R_hd(plan'7430_)):RT_x_14.t); 
            val (nStopId'753A_, nArrTime'7543_, nDepTime'754D_) = ((((nextStop'4E8B_) (RT_l_15.R_hd(plan'7430_), plan'7430_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'74D6_, stopid1'741E_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (142, 33)); RT_Text.equ (nStopId'753A_, stopid2'7427_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (144, 11)); (tram'7436_, nStopId'753A_, nArrTime'7543_, nDepTime'754D_)) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (146, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'7430_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (148, 13)); ((findArrivalRowInPlan'73A5_) (stopid1'741E_, stopid2'7427_, RT_l_15.R_tl(plan'7430_), tram'7436_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (150, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllArrivalsUsingConnection'6E91_ (stopid1'6F15_, stopid2'6F1E_, trams'6F27_, timetable'6F2E_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (125, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x107_'0_, x108_'0_, x109_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6F2E_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:123:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_25.toString (stopid1'6F15_, stopid2'6F1E_, trams'6F27_, timetable'6F2E_) ^ " not in subtype") else if RT_s_11.equ (trams'6F27_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (126, 12)); RT_s_24.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (128, 9)); let
            val tram'70EF_ = ((RT_s_11.R_hd(trams'6F27_)):RT_Text.t)
        in
            RT_s_24.R_union (RT_s_24.R_fromList ([((findArrivalRowInPlan'73A5_) (stopid1'6F15_, stopid2'6F1E_, ((RT_m_16.R_app(timetable'6F2E_)) (tram'70EF_)), tram'70EF_))]), ((buildAllArrivalsUsingConnection'6E91_) (stopid1'6F15_, stopid2'6F1E_, RT_s_11.R_diff (trams'6F27_, RT_s_11.R_fromList ([tram'70EF_])), timetable'6F2E_)))
        end));
        
        fun getAllArrivalsUsingConnection'6B0D_ (stopid1'6B8F_, stopid2'6B98_, timetable'6BA1_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (116, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x104_'0_, x105_'0_, x106_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x105_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6BA1_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:114:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_23.toString (stopid1'6B8F_, stopid2'6B98_, timetable'6BA1_) ^ " not in subtype") else let
            val allTrams'6C3D_ = ((RT_m_16.R_dom(timetable'6BA1_)):RT_s_11.t)
        in
            ((buildAllArrivalsUsingConnection'6E91_) (stopid1'6B8F_, stopid2'6B98_, allTrams'6C3D_, timetable'6BA1_))
        end);
        
        fun timeBetweenArrivalIsValidHeadway'B6D5_ (timetable'B75A_, (capacityMap'B766_, connectionMap'B773_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (310, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x157_'0_, x158_'0_, x159_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x159_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B75A_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'B766_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x162_'0_, x163_'0_, x164_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x162_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x163_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x164_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B773_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:308:5: Argument of timeBetweenArrivalIsValidHeadway" ^ RT_x_32.toString (timetable'B75A_, (capacityMap'B766_, connectionMap'B773_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'B7A5_, stopid2'B7AE_):RT_x_2.t) => let
            val headway'B809_ = ((((minHeadway'FEB5_) (stopid1'B7A5_, stopid2'B7AE_, (capacityMap'B766_, connectionMap'B773_)))):RT_Nat.t)
        in
            (((RT_s_24.R_all (fn ((tram1'B8D5_, sid1'B8DC_, arrt1'B8E2_, dept1'B8E9_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'B8E2_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'B8E9_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'B93B_, sid2'B942_, arrt2'B948_, dept2'B94F_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'B948_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'B94F_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'B8E2_, arrt2'B948_))), headway'B809_)))) (RT_s_24.R_diff (((getAllArrivalsUsingConnection'6B0D_) (stopid1'B7A5_, stopid2'B7AE_, timetable'B75A_)), RT_s_24.R_fromList ([(tram1'B8D5_, sid1'B8DC_, arrt1'B8E2_, dept1'B8E9_)]))))))) (((getAllArrivalsUsingConnection'6B0D_) (stopid1'B7A5_, stopid2'B7AE_, timetable'B75A_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (317, 11)); ((RT_s_24.R_all (fn ((tram1'BA65_, sid1'BA6C_, arrt1'BA72_, dept1'BA79_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'BA72_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'BA79_, RT_Int.fromLit "0"))) orelse (((RT_s_24.R_all (fn ((tram2'BACB_, sid2'BAD2_, arrt2'BAD8_, dept2'BADF_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'BAD8_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'BADF_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'BA72_, arrt2'BAD8_))), headway'B809_)))) (RT_s_24.R_diff (((getAllArrivalsUsingConnection'6B0D_) (stopid2'B7AE_, stopid1'B7A5_, timetable'B75A_)), RT_s_24.R_fromList ([(tram1'BA65_, sid1'BA6C_, arrt1'BA72_, dept1'BA79_)]))))))) (((getAllArrivalsUsingConnection'6B0D_) (stopid2'B7AE_, stopid1'B7A5_, timetable'B75A_))))))
        end) ((connectionMap'B773_)))));
        
        fun tramStopsAtAllStopsItPasses'BD79_ timetable'BDF9_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (327, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x165_'0_, x166_'0_, x167_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x166_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x167_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'BDF9_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:325:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'BDF9_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'BE48_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'BEAF_, arrTime'BEB7_, depTime'BEC0_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'BEB7_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'BEC0_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'BEC0_, arrTime'BEB7_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'BDF9_)) (tramid'BE48_)))))) ((timetable'BDF9_)))));
        
        fun isWellformed'E7AA_ (t'E81B_, n'E81E_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (435, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x240_'0_, x241_'0_, x242_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x241_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x242_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'E81B_)))) andalso (let
            val (x243_'0_, x244_'0_) = ((n'E81E_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x243_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x247_'0_, x248_'0_, x249_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x247_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x248_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x249_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x244_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:433:6: Argument of isWellformed" ^ RT_x_32.toString (t'E81B_, n'E81E_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'BD79_) (t'E81B_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (436, 8)); (((timeBetweenDeparturesIsValidHeadway'AEA1_) (t'E81B_, n'E81E_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (437, 8)); (((timeBetweenArrivalIsValidHeadway'B6D5_) (t'E81B_, n'E81E_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (438, 8)); (((allTimeBetweenStopsIsValidDrivingTime'ABE5_) (t'E81B_, n'E81E_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (439, 8)); (((allTrackCapacitiesAreNotExceeded'C1C5_) (t'E81B_, n'E81E_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (440, 8)); ((allStopCapacitiesAreNotExceeded'CB27_) (t'E81B_, n'E81E_))))))));
        
        fun isIn'4C31_ (tramid'4C9A_, timetable'4CA2_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (37, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4CA2_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:35:5: Argument of isIn" ^ RT_x_18.toString (tramid'4C9A_, timetable'4CA2_) ^ " not in subtype") else RT_m_16.R_mem (tramid'4C9A_, (timetable'4CA2_)));
        
        fun stopsExist'E105_ (plan'E174_, net'E17A_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (418, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x230_'0_, x231_'0_, x232_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x231_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x232_'0_, RT_Int.fromLit "0"))
        end) (plan'E174_))) andalso (let
            val (x233_'0_, x234_'0_) = ((net'E17A_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x233_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x237_'0_, x238_'0_, x239_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x237_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x238_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x239_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x234_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:416:5: Argument of stopsExist" ^ RT_x_31.toString (plan'E174_, net'E17A_) ^ " not in subtype") else if RT_Nat.equ (RT_l_15.R_length(plan'E174_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (419, 12)); true) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (421, 9)); let
            val (sid'E364_, arrt'E369_, dept'E36F_) = ((RT_l_15.R_hd(plan'E174_)):RT_x_14.t)
        in
            if ((isIn'F555_) (sid'E364_, net'E17A_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (425, 16)); ((stopsExist'E105_) (RT_l_15.R_tl(plan'E174_), net'E17A_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (426, 16)); false)
        end));
        
        fun addPlan'4913_ (tramid'497F_, plan'4987_, timetable'498D_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (29, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0"))
        end) (plan'4987_))) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'498D_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:27:7: Argument of addPlan" ^ RT_x_21.toString (tramid'497F_, plan'4987_, timetable'498D_) ^ " not in subtype") else RT_m_16.R_override (timetable'498D_, RT_m_16.R_fromList ([(tramid'497F_, plan'4987_)])));
        
        fun allStopsInPlanExist'DDE5_ (timetable'DE5D_, net'DE68_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (410, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x220_'0_, x221_'0_, x222_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x221_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x222_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'DE5D_)))) andalso (let
            val (x223_'0_, x224_'0_) = ((net'DE68_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x223_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x227_'0_, x228_'0_, x229_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x227_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x228_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x229_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x224_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:408:5: Argument of allStopsInPlanExist" ^ RT_x_32.toString (timetable'DE5D_, net'DE68_) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'DEB4_:RT_Text.t) => ((stopsExist'E105_) (((RT_m_16.R_app(timetable'DE5D_)) (tramid'DEB4_)), net'DE68_))) ((timetable'DE5D_)))));
        
        fun addStop'471F_ (tramid'478B_, stopid'4793_, arrival'479B_, departure'47A4_, timetable'47AF_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (24, 9)); if not((RT_Nat.R_ge (arrival'479B_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'47A4_, RT_Int.fromLit "0")) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x77_'0_, x78_'0_, x79_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x78_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x79_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'47AF_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:22:7: Argument of addStop" ^ RT_x_20.toString (tramid'478B_, stopid'4793_, arrival'479B_, departure'47A4_, timetable'47AF_) ^ " not in subtype") else RT_m_16.R_override (timetable'47AF_, RT_m_16.R_fromList ([(tramid'478B_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'47AF_)) (tramid'478B_)), [(stopid'4793_, arrival'479B_, departure'47A4_)]))])));
        
        fun stopsAreConnected'D6DF_ (plan'D755_, connectionMap'D75B_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (392, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x212_'0_, x213_'0_, x214_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x213_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x214_'0_, RT_Int.fromLit "0"))
        end) (plan'D755_))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x217_'0_, x218_'0_, x219_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x217_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x218_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x219_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D75B_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:390:7: Argument of stopsAreConnected" ^ RT_x_35.toString (plan'D755_, connectionMap'D75B_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'D755_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (393, 14)); true) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (395, 11)); let
            val (sid'D93E_, arrt'D943_, dept'D949_) = ((RT_l_15.R_hd(plan'D755_)):RT_x_14.t); 
            val (sid2'D9A2_, arrt2'D9A8_, dept2'D9AF_) = ((((nextStop'4E8B_) ((sid'D93E_, arrt'D943_, dept'D949_), plan'D755_))):RT_x_14.t)
        in
            if (RT_m_4.R_mem ((sid'D93E_, sid2'D9A2_), (connectionMap'D75B_))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (399, 54)); RT_m_4.R_mem ((sid2'D9A2_, sid'D93E_), (connectionMap'D75B_))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (400, 18)); ((stopsAreConnected'D6DF_) (RT_l_15.R_tl(plan'D755_), connectionMap'D75B_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (401, 18)); false)
        end));
        
        fun addTram'452B_ (tramid'4597_, timetable'459F_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (19, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x74_'0_, x75_'0_, x76_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x75_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'459F_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:17:7: Argument of addTram" ^ RT_x_18.toString (tramid'4597_, timetable'459F_) ^ " not in subtype") else RT_m_16.R_override (timetable'459F_, RT_m_16.R_fromList ([(tramid'4597_, ([]:RT_l_15.t))])));
        
        fun allStopsAreConnected'D3BF_ (timetable'D438_, (capacityMap'D444_, connectionMap'D450_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (384, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x204_'0_, x205_'0_, x206_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x205_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x206_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'D438_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D444_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x209_'0_, x210_'0_, x211_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x209_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x210_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x211_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D450_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:382:7: Argument of allStopsAreConnected" ^ RT_x_32.toString (timetable'D438_, (capacityMap'D444_, connectionMap'D450_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'D48E_:RT_Text.t) => ((stopsAreConnected'D6DF_) (((RT_m_16.R_app(timetable'D438_)) (tramid'D48E_)), connectionMap'D450_))) ((timetable'D438_)))));
        
        val empty'43FF_ = let val z__'4411_ = RT_m_16.R_fromList [] in if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x253_'0_, x254_'0_, x255_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x254_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x255_'0_, RT_Int.fromLit "0"))
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
            val (x256_'0_, x257_'0_, x258_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x257_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x258_'0_, RT_Int.fromLit "0"))
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
(R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (384, 9), (386, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (19, 9), (19, 38));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (399, 54), (400, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (401, 18), (402, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (400, 18), (401, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (395, 11), (404, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (393, 14), (394, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (392, 9), (404, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (24, 9), (24, 86));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (410, 7), (412, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (29, 9), (31, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (426, 16), (427, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (425, 16), (426, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (421, 9), (429, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (419, 12), (420, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (418, 7), (429, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (37, 7), (37, 33));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (440, 8), (441, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (439, 8), (441, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (438, 8), (441, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (437, 8), (441, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (436, 8), (441, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (435, 8), (441, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (327, 7), (331, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (317, 11), (321, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (310, 7), (322, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (116, 7), (120, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (128, 9), (133, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (126, 12), (127, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (125, 7), (133, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (150, 13), (151, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (148, 13), (149, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (142, 33), (143, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (146, 11), (152, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (144, 11), (145, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (138, 7), (154, 23));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (338, 7), (340, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (353, 15), (356, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (346, 8), (356, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (167, 4), (167, 22));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (166, 59), (166, 76));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (166, 81), (167, 23));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (166, 35), (167, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (168, 16), (169, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (167, 16), (168, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (163, 9), (171, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (161, 12), (162, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (160, 7), (171, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (180, 9), (185, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (178, 12), (179, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (177, 7), (185, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (198, 31), (199, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (200, 16), (201, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (199, 16), (200, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (194, 9), (203, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (192, 12), (193, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (191, 7), (203, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (296, 11), (300, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (289, 7), (301, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (73, 7), (77, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (85, 9), (90, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (83, 12), (84, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (82, 7), (90, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (107, 13), (108, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (105, 13), (106, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (99, 33), (100, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (103, 11), (109, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (101, 11), (102, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (95, 7), (111, 23));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (58, 15), (63, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (56, 15), (57, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (54, 13), (64, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (48, 13), (53, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (43, 9), (66, 25));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (282, 7), (283, 48));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (271, 53), (272, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (275, 9), (276, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (264, 9), (274, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (263, 7), (276, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (362, 9), (364, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (370, 9), (377, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (216, 4), (216, 22));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (215, 59), (215, 76));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (215, 81), (216, 23));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (215, 35), (216, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (217, 16), (218, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (216, 16), (217, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (212, 9), (220, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (210, 12), (211, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (209, 7), (220, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (229, 9), (234, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (227, 12), (228, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (226, 7), (234, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (248, 16), (249, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (247, 16), (248, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (243, 9), (251, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (241, 12), (242, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (240, 7), (253, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (18, 7), (18, 59));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (23, 7), (24, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (61, 7), (65, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (32, 7), (32, 26));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (52, 7), (56, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (70, 7), (76, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (46, 9), (47, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (44, 9), (45, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (42, 7), (47, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (105, 7), (106, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (104, 7), (106, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (103, 7), (106, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (89, 56), (89, 99));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (87, 7), (90, 0));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (28, 7), (28, 35));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (80, 7), (82, 28));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (94, 7), (98, 84));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (37, 7), (37, 49));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (36, 7), (37, 49)));
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E7AA_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s2_validDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTimeBetweenStopsIsValidDrivingTime'ABE5_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTimeBetweenStopsIsValidDrivingTime'ABE5_) (timetableInvalidDrivingTime'8A5_, net'4BD_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E7AA_) (timetableInvalidDrivingTime'8A5_, net'4BD_)), false)));

(RSL.C_output "[s3_validHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'AEA1_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'AEA1_) (timetableInvalidDepartureHeadway'9D1_, net'4BD_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E7AA_) (timetableInvalidDepartureHeadway'9D1_, net'4BD_)), false)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'AEA1_) (timetableDuplicateDepartureHeadway'CF1_, net'4BD_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E7AA_) (timetableDuplicateDepartureHeadway'CF1_, net'4BD_)), false)));

(RSL.C_output "[s5_validHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'B6D5_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s5_invalidHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'B6D5_) (((addPlan'4913_) (RT_Text.fromLit "tram3", planTooShortArrivalTime'1011_, timetableWF'715_)), net'4BD_)), false)));

(RSL.C_output "[s5_NotWellFormedArrivalHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E7AA_) (((addPlan'4913_) (RT_Text.fromLit "tram3", planTooShortArrivalTime'1011_, timetableWF'715_)), net'4BD_)), false)));

(RSL.C_output "[s6_tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'BD79_) (timetableWF'715_)), true)));

(RSL.C_output "[s6_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'BD79_) (((addPlan'4913_) (RT_Text.fromLit "tram1", planWithoutStopTime'113D_, empty'43FF_)))), false)));

(RSL.C_output "[s6_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E7AA_) (((addPlan'4913_) (RT_Text.fromLit "tram1", planWithoutStopTime'113D_, empty'43FF_)), net'4BD_)), false)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDontExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'C1C5_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackAlmostExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'C1C5_) (timetableWithAlmostExceededTrackCapacities'1395_, net'4BD_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDoExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'C1C5_) (timetableWithExceededTrackCapacities'1331_, net'4BD_)), false)));

(RSL.C_output "[s8_NumberOfTramsAtStopDontExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'CB27_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s8_NumberOfTramsAtStopDoExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'CB27_) (timeTableWithExceededStopCapacities'1589_, net'4BD_)), false)));

(RSL.C_output "[s9_AllStopsInPlansExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'DDE5_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s9_AllStopsInPlansDoNotExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'DDE5_) (timeTableWithInvalidStop'1719_, net'4BD_)), false)));

(RSL.C_output "[s10_allStopsAreConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'D3BF_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s10_allStopsAreNotConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'D3BF_) (timeTableWithInvalidConnection'190D_, net'4BD_)), false)));

(RSL.C_output "[s12_AddingTram] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addTram'452B_) (tramNotIn'1E85_, timetableWF'715_)), timetableWithAddedTram'1A9D_)));

(RSL.C_output "[s12_addStop] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addStop'471F_) (tramIdA'1DBD_, RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10", timetableWF'715_)), timetableWithAddedStop'1C91_)));

(RSL.C_output "[s13_isinExisting01] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4C31_) (tramIdA'1DBD_, timetableWF'715_)), true)));

(RSL.C_output "[s13_isinExisting02] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4C31_) (tramIdB'1E21_, timetableWF'715_)), true)));

(RSL.C_output "[s13_isNotin] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4C31_) (tramNotIn'1E85_, timetableWF'715_)), false)));

(RSL.C_output "[s14_getConnection] " RT_Bool.toStringSafe (fn _ => RT_x_3.equ (((getConnection'FACD_) (RT_Text.fromLit "A", RT_Text.fromLit "B", net'4BD_)), connectionTest'1FB1_)));

RSL.print_error_count();
R_coverage.save_marked();
