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
    
structure RT_x_22 =
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
    
structure RT_s_23 = RT_Set(structure Elem = RT_x_17);

structure RT_x_24 =
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
    
structure RT_x_25 =
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
    
structure RT_x_26 =
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
    
structure RT_x_27 =
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
    
structure RT_x_28 =
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
    
structure RT_s_29 = RT_Set(structure Elem = RT_x_14);

structure RT_x_30 =
    struct
        type t = RT_Text.t * RT_Nat.t * RT_Nat.t * RT_s_29.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Nat.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_s_29.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Nat.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_s_29.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_s_29.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_31 =
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
    
structure RT_x_32 =
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
    
structure RT_x_33 =
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
    
structure RT_x_34 =
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
    
structure RT_x_35 =
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
        
        fun allStopsHaveConnection'E8D5_ (capacityMap'E950_, connectionMap'E95D_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E950_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'E95D_))))) then raise RSL.RSL_exception ("./NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'E950_, connectionMap'E95D_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'E9A4_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'EA71_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'E9A4_, stopId2'EA71_), (connectionMap'E95D_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'EA71_, stopId'E9A4_), (connectionMap'E95D_))))) ((capacityMap'E950_))))) ((capacityMap'E950_)))));
        
        fun noSelfConnection'E35D_ (capacityMap'E3D2_, connectionMap'E3DF_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E3D2_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'E3DF_))))) then raise RSL.RSL_exception ("./NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'E3D2_, connectionMap'E3DF_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'E42D_, stopId2'E436_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'E42D_, stopId2'E436_)) ((connectionMap'E3DF_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'E619_ (capacityMap'E6A5_, connectionMap'E6B2_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E6A5_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'E6B2_))))) then raise RSL.RSL_exception ("./NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'E6A5_, connectionMap'E6B2_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'E6E9_, stopId2'E6F2_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'E6E9_, (capacityMap'E6A5_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'E6F2_, (capacityMap'E6A5_)))) ((connectionMap'E6B2_)))));
        
        fun isWellformed'ECBD_ net'ED2E_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'ED2E_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'ED2E_ ^ ")" ^ " not in subtype") else (((noSelfConnection'E35D_) (net'ED2E_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'E619_) (net'ED2E_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); ((allStopsHaveConnection'E8D5_) (net'ED2E_)))));
        
        val empty'CFD5_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'DFD9_ (stopId1'E04C_, stopId2'E055_, (capacityMap'E05F_, connectionMap'E06C_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E05F_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'E06C_))))) then raise RSL.RSL_exception ("./NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'E04C_, stopId2'E055_, (capacityMap'E05F_, connectionMap'E06C_)) ^ " not in subtype") else let
            val (headway'E0A8_, drivingTime'E0B1_, capacity'E0BE_) = ((((RT_m_4.R_app(connectionMap'E06C_)) (stopId1'E04C_, stopId2'E055_))):RT_x_3.t)
        in
            drivingTime'E0B1_
        end);
        
        fun insertStop'D09D_ (stopId'D10C_, capacity'D114_, (capacityMap'D11F_, connectionMap'D12C_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'D114_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D11F_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D12C_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'D10C_, capacity'D114_, (capacityMap'D11F_, connectionMap'D12C_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'D11F_, RT_m_1.R_fromList ([(stopId'D10C_, capacity'D114_)])), connectionMap'D12C_));
        
        fun capacity'DCB9_ (stopId1'DD26_, stopId2'DD2F_, (capacityMap'DD39_, connectionMap'DD46_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'DD39_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'DD46_))))) then raise RSL.RSL_exception ("./NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'DD26_, stopId2'DD2F_, (capacityMap'DD39_, connectionMap'DD46_)) ^ " not in subtype") else let
            val (headway'DD88_, drivingTime'DD91_, capacity'DD9E_) = ((((RT_m_4.R_app(connectionMap'DD46_)) (stopId1'DD26_, stopId2'DD2F_))):RT_x_3.t)
        in
            capacity'DD9E_
        end);
        
        fun addConnection'D291_ (stopId1'D303_, stopId2'D30C_, headway'D315_, capacity'D31E_, drivingTime'D328_, (capacityMap'D336_, connectionMap'D343_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'D315_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'D31E_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'D328_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D336_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D343_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'D303_, stopId2'D30C_, headway'D315_, capacity'D31E_, drivingTime'D328_, (capacityMap'D336_, connectionMap'D343_)) ^ " not in subtype") else (capacityMap'D336_, RT_m_4.R_override (connectionMap'D343_, RT_m_4.R_fromList ([((stopId1'D303_, stopId2'D30C_), (headway'D315_, drivingTime'D328_, capacity'D31E_))]))));
        
        fun minHeadway'D999_ (stopId1'DA08_, stopId2'DA11_, (capacityMap'DA1B_, connectionMap'DA28_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'DA1B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'DA28_))))) then raise RSL.RSL_exception ("./NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'DA08_, stopId2'DA11_, (capacityMap'DA1B_, connectionMap'DA28_)) ^ " not in subtype") else let
            val (headway'DA68_, drivingTime'DA71_, capacity'DA7E_) = ((((RT_m_4.R_app(connectionMap'DA28_)) (stopId1'DA08_, stopId2'DA11_))):RT_x_3.t)
        in
            headway'DA68_
        end);
        
        fun isIn'D485_ (stopId'D4EE_, (capacityMap'D4F7_, connecitonMap'D504_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D4F7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'D504_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'D4EE_, (capacityMap'D4F7_, connecitonMap'D504_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'D4EE_, (capacityMap'D4F7_)));
        
        fun areDirectlyConnected'D7A5_ (stopId1'D81E_, stopId2'D827_, (capacityMap'D831_, connectionMap'D83E_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D831_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D83E_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'D81E_, stopId2'D827_, (capacityMap'D831_, connectionMap'D83E_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'D81E_, stopId2'D827_), (connectionMap'D83E_)));
        
        fun capacity'D615_ (stopId'D683_, (capacityMap'D68B_, connectionMap'D698_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D68B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D698_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'D683_, (capacityMap'D68B_, connectionMap'D698_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'D68B_)) (stopId'D683_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type TramPlanRow_ = RT_x_17.t;
        
        type Plan_ = RT_l_15.t;
        
        fun countOverLappingTimesForStop'9F67_ (tramid'9FE8_, arrtime'9FEF_, deptime'9FF8_, times'A001_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (334, 9)); if not((RT_Nat.R_ge (arrtime'9FEF_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (deptime'9FF8_, RT_Int.fromLit "0")) andalso ((RT_s_29.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x164_'0_, x165_'0_, x166_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x165_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x166_'0_, RT_Int.fromLit "0"))
        end) (times'A001_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:332:7: Argument of countOverLappingTimesForStop" ^ RT_x_30.toString (tramid'9FE8_, arrtime'9FEF_, deptime'9FF8_, times'A001_) ^ " not in subtype") else if RT_s_29.equ (times'A001_, RT_s_29.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (335, 14)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (337, 11)); let
            val (tramid2'A1C6_, arrtime2'A1CF_, deptime2'A1D9_) = ((RT_s_29.R_hd(times'A001_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'9FE8_, tramid2'A1C6_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (340, 37)); ((((RT_Nat.R_le (arrtime'9FEF_, arrtime2'A1CF_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (340, 62)); RT_Nat.R_le (arrtime2'A1CF_, deptime'9FF8_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (340, 85)); ((RT_Nat.R_le (arrtime'9FEF_, deptime2'A1D9_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (341, 9)); RT_Nat.R_le (deptime2'A1D9_, deptime'9FF8_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (341, 18)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForStop'9F67_) (tramid'9FE8_, arrtime'9FEF_, deptime'9FF8_, RT_s_29.R_diff (times'A001_, RT_s_29.R_fromList ([(tramid2'A1C6_, arrtime2'A1CF_, deptime2'A1D9_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (342, 18)); ((countOverLappingTimesForStop'9F67_) (tramid'9FE8_, arrtime'9FEF_, deptime'9FF8_, RT_s_29.R_diff (times'A001_, RT_s_29.R_fromList ([(tramid2'A1C6_, arrtime2'A1CF_, deptime2'A1D9_)])))))
        end));
        
        fun buildTimesForTramOnStop'AB83_ (stopid'ABFF_, plan'AC07_, tramid'AC0D_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (365, 9)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x170_'0_, x171_'0_, x172_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x171_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x172_'0_, RT_Int.fromLit "0"))
        end) (plan'AC07_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:363:7: Argument of buildTimesForTramOnStop" ^ RT_x_33.toString (stopid'ABFF_, plan'AC07_, tramid'AC0D_) ^ " not in subtype") else if RT_Nat.R_lt (RT_l_15.R_length(plan'AC07_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (366, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (368, 11)); let
            val (sid'ADE2_, arrt'ADE7_, dept'ADED_) = ((RT_l_15.R_hd(plan'AC07_)):RT_x_14.t)
        in
            if RT_Text.equ (sid'ADE2_, stopid'ABFF_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (372, 18)); RT_s_29.R_union (RT_s_29.R_fromList ([(tramid'AC0D_, arrt'ADE7_, dept'ADED_)]), ((buildTimesForTramOnStop'AB83_) (stopid'ABFF_, RT_l_15.R_tl(plan'AC07_), tramid'AC0D_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (373, 18)); ((buildTimesForTramOnStop'AB83_) (stopid'ABFF_, RT_l_15.R_tl(plan'AC07_), tramid'AC0D_)))
        end));
        
        fun buildAllTimesForStop'A60B_ (stopid'A684_, trams'A68C_, timetable'A693_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (351, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x167_'0_, x168_'0_, x169_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x168_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x169_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'A693_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:349:7: Argument of buildAllTimesForStop" ^ RT_x_32.toString (stopid'A684_, trams'A68C_, timetable'A693_) ^ " not in subtype") else if RT_s_11.equ (trams'A68C_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (352, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (354, 11)); let
            val tramid'A869_ = ((RT_s_11.R_hd(trams'A68C_)):RT_Text.t)
        in
            RT_s_29.R_union (((buildTimesForTramOnStop'AB83_) (stopid'A684_, ((RT_m_16.R_app(timetable'A693_)) (tramid'A869_)), tramid'A869_)), ((buildAllTimesForStop'A60B_) (stopid'A684_, RT_s_11.R_diff (trams'A68C_, RT_s_11.R_fromList ([tramid'A869_])), timetable'A693_)))
        end));
        
        fun stopCapacityIsNotExceeded'9A53_ (stopid'9AD1_, timetable'9AD9_, capacityMap'9AE4_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (321, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x161_'0_, x162_'0_, x163_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x162_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x163_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'9AD9_)))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'9AE4_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:319:7: Argument of stopCapacityIsNotExceeded" ^ RT_x_31.toString (stopid'9AD1_, timetable'9AD9_, capacityMap'9AE4_) ^ " not in subtype") else let
            val times'9B83_ = ((((buildAllTimesForStop'A60B_) (stopid'9AD1_, RT_m_16.R_dom((timetable'9AD9_)), timetable'9AD9_))):RT_s_29.t); 
            val capacity'9BE7_ = ((((RT_m_1.R_app(capacityMap'9AE4_)) (stopid'9AD1_))):RT_Nat.t)
        in
            ((RT_s_29.R_all (fn ((tramid'9CB5_, arrtime'9CBD_, deptime'9CC6_):RT_x_14.t) => not ((RT_Nat.R_ge (arrtime'9CBD_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (deptime'9CC6_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForStop'9F67_) (tramid'9CB5_, arrtime'9CBD_, deptime'9CC6_, times'9B83_))), capacity'9BE7_)))) (times'9B83_)))
        end);
        
        fun allStopCapacitiesAreNotExceeded'9733_ (timetable'97B7_, (capacityMap'97C3_, connectionMap'97CF_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (313, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x153_'0_, x154_'0_, x155_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x154_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x155_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'97B7_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'97C3_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x158_'0_, x159_'0_, x160_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x159_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'97CF_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:311:7: Argument of allStopCapacitiesAreNotExceeded" ^ RT_x_27.toString (timetable'97B7_, (capacityMap'97C3_, connectionMap'97CF_)) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopid'9802_:RT_Text.t) => ((stopCapacityIsNotExceeded'9A53_) (stopid'9802_, timetable'97B7_, capacityMap'97C3_))) ((capacityMap'97C3_)))));
        
        fun countOverLappingTimesForTrack'83AB_ (tramid'842D_, deptime'8434_, arrtime'843D_, times'8446_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (263, 9)); if not((RT_Nat.R_ge (deptime'8434_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (arrtime'843D_, RT_Int.fromLit "0")) andalso ((RT_s_29.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x144_'0_, x145_'0_, x146_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x145_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x146_'0_, RT_Int.fromLit "0"))
        end) (times'8446_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:261:7: Argument of countOverLappingTimesForTrack" ^ RT_x_30.toString (tramid'842D_, deptime'8434_, arrtime'843D_, times'8446_) ^ " not in subtype") else if RT_s_29.equ (times'8446_, RT_s_29.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (264, 14)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (266, 11)); let
            val (tramid2'860A_, deptime2'8613_, arrtime2'861D_) = ((RT_s_29.R_hd(times'8446_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'842D_, tramid2'860A_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (269, 37)); ((((RT_Nat.R_le (deptime'8434_, deptime2'8613_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (269, 62)); RT_Nat.R_le (deptime2'8613_, arrtime'843D_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (269, 85)); ((RT_Nat.R_le (deptime'8434_, arrtime2'861D_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (270, 9)); RT_Nat.R_le (arrtime2'861D_, arrtime'843D_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (270, 18)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'83AB_) (tramid'842D_, deptime'8434_, arrtime'843D_, RT_s_29.R_diff (times'8446_, RT_s_29.R_fromList ([(tramid2'860A_, deptime2'8613_, arrtime2'861D_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (271, 18)); ((countOverLappingTimesForTrack'83AB_) (tramid'842D_, deptime'8434_, arrtime'843D_, RT_s_29.R_diff (times'8446_, RT_s_29.R_fromList ([(tramid2'860A_, deptime2'8613_, arrtime2'861D_)])))))
        end));
        
        fun nextStop'2BC7_ (planRow'2C34_, plan'2C3D_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (38, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'2C34_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'2C3D_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:36:7: Argument of nextStop" ^ RT_x_21.toString (planRow'2C34_, plan'2C3D_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'2C3D_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:61:13: Precondition of nextStop" ^ RT_x_21.toString (planRow'2C34_, plan'2C3D_) ^ " not satisfied") else let
            val iPlanRow'2CF7_ = ((RT_l_15.R_hd(plan'2C3D_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'2CF7_, planRow'2C34_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (43, 13)); let
                val (sid'2EF0_, arrt'2EF5_, dept'2EFB_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'2C3D_)))):RT_x_14.t)
            in
                (sid'2EF0_, arrt'2EF5_, dept'2EFB_)
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (49, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'2C3D_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (51, 15)); ((nextStop'2BC7_) (planRow'2C34_, RT_l_15.R_tl(plan'2C3D_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (53, 15)); let
                val (sid'32DA_, arrt'32DF_, dept'32E5_) = ((iPlanRow'2CF7_):RT_x_14.t)
            in
                iPlanRow'2CF7_
            end))
        end);
        
        fun buildTimesForTramOnTrack'902B_ (stopid1'90A9_, stopid2'90B2_, plan'90BB_, tramid'90C1_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (295, 9)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x150_'0_, x151_'0_, x152_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x151_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x152_'0_, RT_Int.fromLit "0"))
        end) (plan'90BB_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:293:7: Argument of buildTimesForTramOnTrack" ^ RT_x_25.toString (stopid1'90A9_, stopid2'90B2_, plan'90BB_, tramid'90C1_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'90BB_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (296, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (298, 11)); let
            val (sid'928A_, arrt'928F_, dept'9295_) = ((RT_l_15.R_hd(plan'90BB_)):RT_x_14.t); 
            val (sid2'92EE_, arrt2'92F4_, dept2'92FB_) = ((((nextStop'2BC7_) ((sid'928A_, arrt'928F_, dept'9295_), plan'90BB_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'928A_, stopid1'90A9_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (302, 33)); RT_Text.equ (sid2'92EE_, stopid2'90B2_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (303, 18)); RT_s_29.R_union (RT_s_29.R_fromList ([(tramid'90C1_, dept'9295_, arrt2'92F4_)]), ((buildTimesForTramOnTrack'902B_) (stopid1'90A9_, stopid2'90B2_, RT_l_15.R_tl(plan'90BB_), tramid'90C1_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (304, 18)); ((buildTimesForTramOnTrack'902B_) (stopid1'90A9_, stopid2'90B2_, RT_l_15.R_tl(plan'90BB_), tramid'90C1_)))
        end));
        
        fun buildAllTimesForTrack'8A4F_ (stopid1'8AC9_, stopid2'8AD2_, trams'8ADB_, timetable'8AE2_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (280, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x147_'0_, x148_'0_, x149_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x148_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x149_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'8AE2_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:278:7: Argument of buildAllTimesForTrack" ^ RT_x_24.toString (stopid1'8AC9_, stopid2'8AD2_, trams'8ADB_, timetable'8AE2_) ^ " not in subtype") else if RT_s_11.equ (trams'8ADB_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (281, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (283, 11)); let
            val tramid'8CAD_ = ((RT_s_11.R_hd(trams'8ADB_)):RT_Text.t)
        in
            RT_s_29.R_union (((buildTimesForTramOnTrack'902B_) (stopid1'8AC9_, stopid2'8AD2_, ((RT_m_16.R_app(timetable'8AE2_)) (tramid'8CAD_)), tramid'8CAD_)), ((buildAllTimesForTrack'8A4F_) (stopid1'8AC9_, stopid2'8AD2_, RT_s_11.R_diff (trams'8ADB_, RT_s_11.R_fromList ([tramid'8CAD_])), timetable'8AE2_)))
        end));
        
        fun trackCapacityIsNotExceeded'7D69_ (stopid1'7DE8_, stopid2'7DF1_, timetable'7DFA_, connectionMap'7E05_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (247, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x136_'0_, x137_'0_, x138_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x137_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x138_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7DFA_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x141_'0_, x142_'0_, x143_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x142_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x143_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7E05_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:245:5: Argument of trackCapacityIsNotExceeded" ^ RT_x_28.toString (stopid1'7DE8_, stopid2'7DF1_, timetable'7DFA_, connectionMap'7E05_) ^ " not in subtype") else let
            val times1'7E9A_ = ((((buildAllTimesForTrack'8A4F_) (stopid1'7DE8_, stopid2'7DF1_, RT_m_16.R_dom((timetable'7DFA_)), timetable'7DFA_))):RT_s_29.t); 
            val times2'7EFE_ = ((((buildAllTimesForTrack'8A4F_) (stopid2'7DF1_, stopid1'7DE8_, RT_m_16.R_dom((timetable'7DFA_)), timetable'7DFA_))):RT_s_29.t); 
            val (headway'7F63_, drivingtime'7F6C_, trackcapacity'7F79_) = ((((RT_m_4.R_app(connectionMap'7E05_)) (stopid1'7DE8_, stopid2'7DF1_))):RT_x_3.t)
        in
            (((RT_s_29.R_all (fn ((tramid'8030_, deptime'8038_, arrtime'8041_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'8038_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'8041_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'83AB_) (tramid'8030_, deptime'8038_, arrtime'8041_, times1'7E9A_))), trackcapacity'7F79_)))) (times1'7E9A_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (254, 15)); ((RT_s_29.R_all (fn ((tramid'80FD_, deptime'8105_, arrtime'810E_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'8105_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'810E_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'83AB_) (tramid'80FD_, deptime'8105_, arrtime'810E_, times2'7EFE_))), trackcapacity'7F79_)))) (times2'7EFE_))))
        end);
        
        fun allTrackCapacitiesAreNotExceeded'7A49_ (timetable'7ACE_, (capacityMap'7ADA_, connectionMap'7AE6_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (239, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x128_'0_, x129_'0_, x130_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7ACE_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7ADA_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x133_'0_, x134_'0_, x135_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x133_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x135_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7AE6_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:237:5: Argument of allTrackCapacitiesAreNotExceeded" ^ RT_x_27.toString (timetable'7ACE_, (capacityMap'7ADA_, connectionMap'7AE6_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'7B19_, stopid2'7B22_):RT_x_2.t) => ((trackCapacityIsNotExceeded'7D69_) (stopid1'7B19_, stopid2'7B22_, timetable'7ACE_, connectionMap'7AE6_))) ((connectionMap'7AE6_)))));
        
        fun tramStopsAtAllStopsItPasses'75FD_ timetable'767D_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (228, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x125_'0_, x126_'0_, x127_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'767D_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:226:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'767D_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'76CC_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'7733_, arrTime'773B_, depTime'7744_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'773B_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'7744_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'7744_, arrTime'773B_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'767D_)) (tramid'76CC_)))))) ((timetable'767D_)))));
        
        fun getConnection'36B7_ (stop1'3729_, stop2'3730_, (capacityMap'3738_, connectionMap'3745_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'3738_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'3745_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:64:7: Argument of getConnection" ^ RT_x_12.toString (stop1'3729_, stop2'3730_, (capacityMap'3738_, connectionMap'3745_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'3729_, stop2'3730_), (connectionMap'3745_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (68, 9)); ((RT_m_4.R_app(connectionMap'3745_)) ((stop1'3729_, stop2'3730_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9)); ((RT_m_4.R_app(connectionMap'3745_)) ((stop2'3730_, stop1'3729_)))));
        
        fun timeBetweenStopsIsDrivingTime'5FB9_ (plan'603B_, (capacityMap'6042_, connectionMap'604F_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (171, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (plan'603B_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6042_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x106_'0_, x107_'0_, x108_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'604F_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:169:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_26.toString (plan'603B_, (capacityMap'6042_, connectionMap'604F_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'603B_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (172, 9)); let
            val (stopid1'6150_, arrTime1'6159_, depTime1'6163_) = ((RT_l_15.R_hd(plan'603B_)):RT_x_14.t); 
            val (stopid2'61B4_, arrTime2'61BD_, depTime2'61C7_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'603B_)))):RT_x_14.t)
        in
            let
                val (headway'62E2_, drivingTime'62EA_, capacity'62F7_) = ((((getConnection'36B7_) (stopid1'6150_, stopid2'61B4_, (capacityMap'6042_, connectionMap'604F_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'61BD_, depTime1'6163_), drivingTime'62EA_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (179, 53)); ((timeBetweenStopsIsDrivingTime'5FB9_) (RT_l_15.R_tl(plan'603B_), (capacityMap'6042_, connectionMap'604F_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (183, 9)); true));
        
        fun findDepartureRowInPlan'4399_ (stopid1'4414_, stopid2'441D_, plan'4426_, tram'442C_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (99, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'4426_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:97:5: Argument of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'4414_, stopid2'441D_, plan'4426_, tram'442C_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'4426_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:115:11: Precondition of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'4414_, stopid2'441D_, plan'4426_, tram'442C_) ^ " not satisfied") else let
            val (hStopId'44CA_, hArrTime'44D3_, hDepTime'44DD_) = ((RT_l_15.R_hd(plan'4426_)):RT_x_14.t); 
            val (nStopId'452E_, nArrTime'4537_, nDepTime'4541_) = ((((nextStop'2BC7_) (RT_l_15.R_hd(plan'4426_), plan'4426_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'44CA_, stopid1'4414_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (103, 33)); RT_Text.equ (nStopId'452E_, stopid2'441D_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (105, 11)); (tram'442C_, hStopId'44CA_, hArrTime'44D3_, hDepTime'44DD_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (107, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'4426_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (109, 13)); ((findDepartureRowInPlan'4399_) (stopid1'4414_, stopid2'441D_, RT_l_15.R_tl(plan'4426_), tram'442C_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (111, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'3E85_ (stopid1'3F0B_, stopid2'3F14_, trams'3F1D_, timetable'3F24_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3F24_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:84:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_24.toString (stopid1'3F0B_, stopid2'3F14_, trams'3F1D_, timetable'3F24_) ^ " not in subtype") else if RT_s_11.equ (trams'3F1D_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (87, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (89, 9)); let
            val tram'40E3_ = ((RT_s_11.R_hd(trams'3F1D_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findDepartureRowInPlan'4399_) (stopid1'3F0B_, stopid2'3F14_, ((RT_m_16.R_app(timetable'3F24_)) (tram'40E3_)), tram'40E3_))]), ((buildAllDeparturesUsingConnection'3E85_) (stopid1'3F0B_, stopid2'3F14_, RT_s_11.R_diff (trams'3F1D_, RT_s_11.R_fromList ([tram'40E3_])), timetable'3F24_)))
        end));
        
        fun getAllDepaturesUsingConnection'3B01_ (stopid1'3B84_, stopid2'3B8D_, timetable'3B96_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (77, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3B96_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:75:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_22.toString (stopid1'3B84_, stopid2'3B8D_, timetable'3B96_) ^ " not in subtype") else let
            val allTrams'3C31_ = ((RT_m_16.R_dom(timetable'3B96_)):RT_s_11.t)
        in
            ((buildAllDeparturesUsingConnection'3E85_) (stopid1'3B84_, stopid2'3B8D_, allTrams'3C31_, timetable'3B96_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'6725_ (timetable'67AD_, (capacityMap'67B9_, connectionMap'67C6_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (190, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x109_'0_, x110_'0_, x111_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x110_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'67AD_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'67B9_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x114_'0_, x115_'0_, x116_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x116_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'67C6_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:188:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_27.toString (timetable'67AD_, (capacityMap'67B9_, connectionMap'67C6_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'67F5_, stopid2'67FE_):RT_x_2.t) => let
            val (headway'685A_, drivingTime'6862_, capacity'686F_) = ((((RT_m_4.R_app(connectionMap'67C6_)) ((stopid1'67F5_, stopid2'67FE_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'6925_, sid1'692C_, arrt1'6932_, dept1'6939_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'6932_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'6939_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'698B_, sid2'6992_, arrt2'6998_, dept2'699F_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'6998_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'699F_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'6939_, dept2'699F_))), headway'685A_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'3B01_) (stopid1'67F5_, stopid2'67FE_, timetable'67AD_)), RT_s_23.R_fromList ([(tram1'6925_, sid1'692C_, arrt1'6932_, dept1'6939_)]))))))) (((getAllDepaturesUsingConnection'3B01_) (stopid1'67F5_, stopid2'67FE_, timetable'67AD_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (197, 11)); ((RT_s_23.R_all (fn ((tram1'6AB5_, sid1'6ABC_, arrt1'6AC2_, dept1'6AC9_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'6AC2_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'6AC9_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'6B19_, sid2'6B20_, arrt2'6B26_, dept2'6B2D_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'6B26_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'6B2D_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'6AC9_, dept2'6B2D_))), headway'685A_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'3B01_) (stopid2'67FE_, stopid1'67F5_, timetable'67AD_)), RT_s_23.R_fromList ([(tram1'6AB5_, sid1'6ABC_, arrt1'6AC2_, dept1'6AC9_)]))))))) (((getAllDepaturesUsingConnection'3B01_) (stopid2'67FE_, stopid1'67F5_, timetable'67AD_))))))
        end) ((connectionMap'67C6_)))));
        
        fun findArrivalRowInPlan'5465_ (stopid1'54DE_, stopid2'54E7_, plan'54F0_, tram'54F6_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (142, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'54F0_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:140:5: Argument of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'54DE_, stopid2'54E7_, plan'54F0_, tram'54F6_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'54F0_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:158:11: Precondition of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'54DE_, stopid2'54E7_, plan'54F0_, tram'54F6_) ^ " not satisfied") else let
            val (hStopId'5596_, hArrTime'559F_, hDepTime'55A9_) = ((RT_l_15.R_hd(plan'54F0_)):RT_x_14.t); 
            val (nStopId'55FA_, nArrTime'5603_, nDepTime'560D_) = ((((nextStop'2BC7_) (RT_l_15.R_hd(plan'54F0_), plan'54F0_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'5596_, stopid1'54DE_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (146, 33)); RT_Text.equ (nStopId'55FA_, stopid2'54E7_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (148, 11)); (tram'54F6_, nStopId'55FA_, nArrTime'5603_, nDepTime'560D_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (150, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'54F0_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (152, 13)); ((findArrivalRowInPlan'5465_) (stopid1'54DE_, stopid2'54E7_, RT_l_15.R_tl(plan'54F0_), tram'54F6_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (154, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllArrivalsUsingConnection'4F51_ (stopid1'4FD5_, stopid2'4FDE_, trams'4FE7_, timetable'4FEE_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (129, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4FEE_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:127:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_24.toString (stopid1'4FD5_, stopid2'4FDE_, trams'4FE7_, timetable'4FEE_) ^ " not in subtype") else if RT_s_11.equ (trams'4FE7_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (130, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (132, 9)); let
            val tram'51AF_ = ((RT_s_11.R_hd(trams'4FE7_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findArrivalRowInPlan'5465_) (stopid1'4FD5_, stopid2'4FDE_, ((RT_m_16.R_app(timetable'4FEE_)) (tram'51AF_)), tram'51AF_))]), ((buildAllArrivalsUsingConnection'4F51_) (stopid1'4FD5_, stopid2'4FDE_, RT_s_11.R_diff (trams'4FE7_, RT_s_11.R_fromList ([tram'51AF_])), timetable'4FEE_)))
        end));
        
        fun getAllArrivalsUsingConnection'4BCD_ (stopid1'4C4F_, stopid2'4C58_, timetable'4C61_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (120, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4C61_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:118:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_22.toString (stopid1'4C4F_, stopid2'4C58_, timetable'4C61_) ^ " not in subtype") else let
            val allTrams'4CFD_ = ((RT_m_16.R_dom(timetable'4C61_)):RT_s_11.t)
        in
            ((buildAllArrivalsUsingConnection'4F51_) (stopid1'4C4F_, stopid2'4C58_, allTrams'4CFD_, timetable'4C61_))
        end);
        
        fun timeBetweenArrivalIsValidHeadway'6F59_ (timetable'6FDE_, (capacityMap'6FEA_, connectionMap'6FF7_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (211, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x117_'0_, x118_'0_, x119_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6FDE_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6FEA_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x122_'0_, x123_'0_, x124_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x123_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6FF7_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:209:5: Argument of timeBetweenArrivalIsValidHeadway" ^ RT_x_27.toString (timetable'6FDE_, (capacityMap'6FEA_, connectionMap'6FF7_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'7029_, stopid2'7032_):RT_x_2.t) => let
            val (headway'708E_, drivingTime'7096_, capacity'70A3_) = ((((RT_m_4.R_app(connectionMap'6FF7_)) ((stopid1'7029_, stopid2'7032_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'7159_, sid1'7160_, arrt1'7166_, dept1'716D_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'7166_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'716D_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'71BF_, sid2'71C6_, arrt2'71CC_, dept2'71D3_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'71CC_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'71D3_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'7166_, arrt2'71CC_))), headway'708E_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'4BCD_) (stopid1'7029_, stopid2'7032_, timetable'6FDE_)), RT_s_23.R_fromList ([(tram1'7159_, sid1'7160_, arrt1'7166_, dept1'716D_)]))))))) (((getAllArrivalsUsingConnection'4BCD_) (stopid1'7029_, stopid2'7032_, timetable'6FDE_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (218, 11)); ((RT_s_23.R_all (fn ((tram1'72E9_, sid1'72F0_, arrt1'72F6_, dept1'72FD_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'72F6_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'72FD_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'734F_, sid2'7356_, arrt2'735C_, dept2'7363_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'735C_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'7363_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'72F6_, arrt2'735C_))), headway'708E_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'4BCD_) (stopid2'7032_, stopid1'7029_, timetable'6FDE_)), RT_s_23.R_fromList ([(tram1'72E9_, sid1'72F0_, arrt1'72F6_, dept1'72FD_)]))))))) (((getAllArrivalsUsingConnection'4BCD_) (stopid2'7032_, stopid1'7029_, timetable'6FDE_))))))
        end) ((connectionMap'6FF7_)))));
        
        fun isWellformed'C612_ (t'C683_, n'C686_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (433, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x200_'0_, x201_'0_, x202_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x201_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x202_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'C683_)))) andalso (let
            val (x203_'0_, x204_'0_) = ((n'C686_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x203_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x207_'0_, x208_'0_, x209_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x207_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x208_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x209_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x204_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:431:6: Argument of isWellformed" ^ RT_x_27.toString (t'C683_, n'C686_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'75FD_) (t'C683_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (434, 8)); (((timeBetweenDeparturesIsValidHeadway'6725_) (t'C683_, n'C686_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (435, 8)); (((timeBetweenArrivalIsValidHeadway'6F59_) (t'C683_, n'C686_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (436, 8)); (((RT_s_19.R_all (fn (plan'C80D_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x210_'0_, x211_'0_, x212_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x211_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0"))
        end) (plan'C80D_))) orelse (((timeBetweenStopsIsDrivingTime'5FB9_) (plan'C80D_, n'C686_)))) (RT_m_16.R_ran((t'C683_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (437, 8)); (((allTrackCapacitiesAreNotExceeded'7A49_) (t'C683_, n'C686_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (438, 8)); ((allStopCapacitiesAreNotExceeded'9733_) (t'C683_, n'C686_))))))));
        
        fun stopsAreConnected'B547_ (plan'B5BD_, connectionMap'B5C3_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (390, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x181_'0_, x182_'0_, x183_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x182_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x183_'0_, RT_Int.fromLit "0"))
        end) (plan'B5BD_))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x186_'0_, x187_'0_, x188_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x186_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x187_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x188_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B5C3_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:388:7: Argument of stopsAreConnected" ^ RT_x_34.toString (plan'B5BD_, connectionMap'B5C3_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'B5BD_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (391, 14)); true) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (393, 11)); let
            val (sid'B7A6_, arrt'B7AB_, dept'B7B1_) = ((RT_l_15.R_hd(plan'B5BD_)):RT_x_14.t); 
            val (sid2'B80A_, arrt2'B810_, dept2'B817_) = ((((nextStop'2BC7_) ((sid'B7A6_, arrt'B7AB_, dept'B7B1_), plan'B5BD_))):RT_x_14.t)
        in
            if (RT_m_4.R_mem ((sid'B7A6_, sid2'B80A_), (connectionMap'B5C3_))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (397, 54)); RT_m_4.R_mem ((sid2'B80A_, sid'B7A6_), (connectionMap'B5C3_))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (398, 18)); ((stopsAreConnected'B547_) (RT_l_15.R_tl(plan'B5BD_), connectionMap'B5C3_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (399, 18)); false)
        end));
        
        fun allStopsAreConnected'B227_ (timetable'B2A0_, (capacityMap'B2AC_, connectionMap'B2B8_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (382, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x173_'0_, x174_'0_, x175_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x174_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x175_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B2A0_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'B2AC_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x178_'0_, x179_'0_, x180_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x178_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x179_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x180_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B2B8_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:380:7: Argument of allStopsAreConnected" ^ RT_x_27.toString (timetable'B2A0_, (capacityMap'B2AC_, connectionMap'B2B8_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'B2F6_:RT_Text.t) => ((stopsAreConnected'B547_) (((RT_m_16.R_app(timetable'B2A0_)) (tramid'B2F6_)), connectionMap'B2B8_))) ((timetable'B2A0_)))));
        
        fun stopsExist'BF6D_ (plan'BFDC_, capacityMap'BFE2_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (416, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x197_'0_, x198_'0_, x199_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x198_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x199_'0_, RT_Int.fromLit "0"))
        end) (plan'BFDC_))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'BFE2_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:414:5: Argument of stopsExist" ^ RT_x_35.toString (plan'BFDC_, capacityMap'BFE2_) ^ " not in subtype") else if RT_Nat.equ (RT_l_15.R_length(plan'BFDC_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (417, 12)); true) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (419, 9)); let
            val (sid'C1CC_, arrt'C1D1_, dept'C1D7_) = ((RT_l_15.R_hd(plan'BFDC_)):RT_x_14.t)
        in
            if RT_m_1.R_mem (sid'C1CC_, (capacityMap'BFE2_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (423, 16)); ((stopsExist'BF6D_) (RT_l_15.R_tl(plan'BFDC_), capacityMap'BFE2_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (424, 16)); false)
        end));
        
        fun allStopsInPlanExist'BC4D_ (timetable'BCC5_, (capacityMap'BCD1_, connectionMap'BCDE_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (408, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x189_'0_, x190_'0_, x191_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x190_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x191_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'BCC5_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'BCD1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x194_'0_, x195_'0_, x196_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x194_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x196_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'BCDE_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:406:5: Argument of allStopsInPlanExist" ^ RT_x_27.toString (timetable'BCC5_, (capacityMap'BCD1_, connectionMap'BCDE_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'BD1C_:RT_Text.t) => ((stopsExist'BF6D_) (((RT_m_16.R_app(timetable'BCC5_)) (tramid'BD1C_)), capacityMap'BCD1_))) ((timetable'BCC5_)))));
        
        fun isIn'296D_ (tramid'29D6_, timetable'29DE_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (32, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'29DE_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:30:5: Argument of isIn" ^ RT_x_18.toString (tramid'29D6_, timetable'29DE_) ^ " not in subtype") else RT_m_16.R_mem (tramid'29D6_, (timetable'29DE_)));
        
        val empty'232F_ = let val z__'2341_ = RT_m_16.R_fromList [] in if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x213_'0_, x214_'0_, x215_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x214_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x215_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'2341_)))) then (RSL.add_load_err("./TIMETABLE.rsl:14:25: Value " ^ RT_m_16.toString(z__'2341_) ^ " of empty not in subtype"); z__'2341_) else z__'2341_ end;
        
        fun addStop'264F_ (tramid'26BB_, stopid'26C3_, arrival'26CB_, departure'26D4_, timetable'26DF_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (24, 9)); if not((RT_Nat.R_ge (arrival'26CB_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'26D4_, RT_Int.fromLit "0")) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'26DF_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:22:7: Argument of addStop" ^ RT_x_20.toString (tramid'26BB_, stopid'26C3_, arrival'26CB_, departure'26D4_, timetable'26DF_) ^ " not in subtype") else RT_m_16.R_override (timetable'26DF_, RT_m_16.R_fromList ([(tramid'26BB_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'26DF_)) (tramid'26BB_)), [(stopid'26C3_, arrival'26CB_, departure'26D4_)]))])));
        
        fun addTram'245B_ (tramid'24C7_, timetable'24CF_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (19, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'24CF_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:17:7: Argument of addTram" ^ RT_x_18.toString (tramid'24C7_, timetable'24CF_) ^ " not in subtype") else RT_m_16.R_override (timetable'24CF_, RT_m_16.R_fromList ([(tramid'24C7_, ([]:RT_l_15.t))])));
        
        val plan6'113C_ = [(RT_Text.fromLit "B", RT_Int.fromLit "15", RT_Int.fromLit "17"), (RT_Text.fromLit "A", RT_Int.fromLit "29", RT_Int.fromLit "30"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val plan1'64D_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val plan5'10D8_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "31", RT_Int.fromLit "33"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val plan2'6B1_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val timeTableWithExceededStopCapacities'11A0_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (RT_Text.fromLit "tram3", plan5'10D8_), (RT_Text.fromLit "tram4", plan6'113C_)]);
        
        val connectionMap'32D_ = RT_m_4.R_fromList ([((RT_Text.fromLit "B", RT_Text.fromLit "D"), (RT_Int.fromLit "2", RT_Int.fromLit "7", RT_Int.fromLit "2")), ((RT_Text.fromLit "A", RT_Text.fromLit "B"), (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1")), ((RT_Text.fromLit "B", RT_Text.fromLit "C"), (RT_Int.fromLit "2", RT_Int.fromLit "12", RT_Int.fromLit "3"))]);
        
        val plan4'EE5_ = [(RT_Text.fromLit "B", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "48", RT_Int.fromLit "50")];
        
        val timetableWithWhenTramDepartsAsTrainArrives'FAD_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (RT_Text.fromLit "tram4", plan4'EE5_)]);
        
        val plan3'E81_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "32", RT_Int.fromLit "34"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timetableWithExceededTrackCapacities'F49_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (RT_Text.fromLit "tram3", plan3'E81_)]);
        
        val planWithoutStopTime'CF1_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "12"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timetableWithoutStopTime'D55_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", planWithoutStopTime'CF1_)]);
        
        val planDuplicateDepartureHeadway'B61_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "14", RT_Int.fromLit "16")];
        
        val timetableDuplicateDepartureHeadway'BC5_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (RT_Text.fromLit "tram3", planDuplicateDepartureHeadway'B61_)]);
        
        val planShortDepartureHeadway'9D1_ = [(RT_Text.fromLit "B", RT_Int.fromLit "0", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "30", RT_Int.fromLit "60")];
        
        val timetableInvalidDepartureHeadway'A35_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (RT_Text.fromLit "tram3", planShortDepartureHeadway'9D1_)]);
        
        val planInvalidDrivingTime'841_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "8", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val timetableInvalidDrivingTime'8A5_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", planInvalidDrivingTime'841_)]);
        
        val timetableWF'715_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_)]);
        
        val stopCapacity'391_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2")]);
        
        val net'4BD_ = (stopCapacity'391_, connectionMap'32D_);
        
    end;
    
open testTimeTable;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (19, 9), (19, 38));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (24, 9), (26, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (32, 7), (32, 33));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (408, 7), (410, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (424, 16), (425, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (423, 16), (424, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (419, 9), (427, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (417, 12), (418, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (416, 7), (427, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (382, 9), (384, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (397, 54), (398, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (399, 18), (400, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (398, 18), (399, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (393, 11), (402, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (391, 14), (392, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (390, 9), (402, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (438, 8), (441, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (437, 8), (441, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (436, 8), (441, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (435, 8), (441, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (434, 8), (441, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (433, 8), (441, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (218, 11), (222, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (211, 7), (223, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (120, 7), (124, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (132, 9), (137, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (130, 12), (131, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (129, 7), (137, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (154, 13), (155, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (152, 13), (153, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (146, 33), (147, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (150, 11), (156, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (148, 11), (149, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (142, 7), (161, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (197, 11), (201, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (190, 7), (202, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (77, 7), (81, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (89, 9), (94, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (87, 12), (88, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (86, 7), (94, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (111, 13), (112, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (109, 13), (110, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (103, 33), (104, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (107, 11), (113, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (105, 11), (106, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (99, 7), (115, 23));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (179, 53), (180, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (183, 9), (184, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (172, 9), (182, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (171, 7), (184, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9), (71, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (68, 9), (69, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (66, 7), (71, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (228, 7), (232, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (239, 7), (241, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (254, 15), (257, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (247, 8), (257, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (283, 11), (288, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (281, 14), (282, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (280, 9), (288, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (302, 33), (303, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (304, 18), (305, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (303, 18), (304, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (298, 11), (307, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (296, 14), (297, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (295, 9), (307, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (53, 15), (58, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (51, 15), (52, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (49, 13), (59, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (43, 13), (48, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (38, 9), (61, 25));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (270, 9), (270, 28));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (269, 62), (269, 80));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (269, 85), (270, 29));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (269, 37), (270, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (271, 18), (272, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (270, 18), (271, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (266, 11), (274, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (264, 14), (265, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (263, 9), (274, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (313, 9), (315, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (321, 9), (328, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (354, 11), (359, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (352, 14), (353, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (351, 9), (359, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (373, 18), (374, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (372, 18), (373, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (368, 11), (376, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (366, 14), (367, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (365, 9), (376, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (341, 9), (341, 28));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (340, 62), (340, 80));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (340, 85), (341, 29));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (340, 37), (341, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (342, 18), (343, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (341, 18), (342, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (337, 11), (345, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (335, 14), (336, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (334, 9), (345, 12));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (32, 7), (32, 26));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (36, 7), (36, 49));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (28, 7), (28, 35));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (41, 7), (44, 10));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (23, 7), (24, 7));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (49, 7), (52, 10));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (18, 7), (18, 59));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (57, 7), (62, 7));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (92, 7), (93, 3));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (91, 7), (93, 3));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (90, 7), (93, 3));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (75, 42), (75, 71));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (73, 7), (75, 72));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (66, 7), (68, 28));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (85, 13), (85, 54));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (80, 7), (85, 57)));
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'C612_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s2_validDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'5FB9_) (plan1'64D_, net'4BD_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'5FB9_) (planInvalidDrivingTime'841_, net'4BD_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'C612_) (timetableInvalidDrivingTime'8A5_, net'4BD_)), false)));

(RSL.C_output "[s3_validHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'6725_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'6725_) (timetableInvalidDepartureHeadway'A35_, net'4BD_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'C612_) (timetableInvalidDepartureHeadway'A35_, net'4BD_)), false)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'6725_) (timetableDuplicateDepartureHeadway'BC5_, net'4BD_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'C612_) (timetableDuplicateDepartureHeadway'BC5_, net'4BD_)), false)));

(RSL.C_output "[s5_tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'75FD_) (timetableWF'715_)), true)));

(RSL.C_output "[s5_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'75FD_) (timetableWithoutStopTime'D55_)), false)));

(RSL.C_output "[s5_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'C612_) (timetableWithoutStopTime'D55_, net'4BD_)), false)));

(RSL.C_output "[s6_NumberOfTrainsOnTrackDontExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'7A49_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s6_NumberOfTrainsOnTrackDontExceedTrackCapacityWhenArrivalIsEqualToDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'7A49_) (timetableWithWhenTramDepartsAsTrainArrives'FAD_, net'4BD_)), false)));

(RSL.C_output "[s6_NumberOfTrainsOnTrackDoExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'7A49_) (timetableWithExceededTrackCapacities'F49_, net'4BD_)), false)));

(RSL.C_output "[s7_NumberOfTrainsAtStopDontExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'9733_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s7_NumberOfTrainsAtStopDoExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'9733_) (timeTableWithExceededStopCapacities'11A0_, net'4BD_)), false)));

RSL.print_error_count();
R_coverage.save_marked();
