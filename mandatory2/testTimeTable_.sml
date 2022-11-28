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
        
        fun allStopsHaveConnection'EB2D_ (capacityMap'EBA8_, connectionMap'EBB5_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EBA8_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'EBB5_))))) then raise RSL.RSL_exception ("./NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'EBA8_, connectionMap'EBB5_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'EBFC_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'ECC9_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'EBFC_, stopId2'ECC9_), (connectionMap'EBB5_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'ECC9_, stopId'EBFC_), (connectionMap'EBB5_))))) ((capacityMap'EBA8_))))) ((capacityMap'EBA8_)))));
        
        fun noSelfConnection'E5B5_ (capacityMap'E62A_, connectionMap'E637_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E62A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'E637_))))) then raise RSL.RSL_exception ("./NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'E62A_, connectionMap'E637_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'E685_, stopId2'E68E_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'E685_, stopId2'E68E_)) ((connectionMap'E637_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'E871_ (capacityMap'E8FD_, connectionMap'E90A_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E8FD_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'E90A_))))) then raise RSL.RSL_exception ("./NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'E8FD_, connectionMap'E90A_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'E941_, stopId2'E94A_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'E941_, (capacityMap'E8FD_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'E94A_, (capacityMap'E8FD_)))) ((connectionMap'E90A_)))));
        
        fun isWellformed'EF15_ net'EF86_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'EF86_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'EF86_ ^ ")" ^ " not in subtype") else (((noSelfConnection'E5B5_) (net'EF86_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'E871_) (net'EF86_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); ((allStopsHaveConnection'EB2D_) (net'EF86_)))));
        
        val empty'D22D_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'E231_ (stopId1'E2A4_, stopId2'E2AD_, (capacityMap'E2B7_, connectionMap'E2C4_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E2B7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'E2C4_))))) then raise RSL.RSL_exception ("./NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'E2A4_, stopId2'E2AD_, (capacityMap'E2B7_, connectionMap'E2C4_)) ^ " not in subtype") else let
            val (headway'E300_, drivingTime'E309_, capacity'E316_) = ((((RT_m_4.R_app(connectionMap'E2C4_)) (stopId1'E2A4_, stopId2'E2AD_))):RT_x_3.t)
        in
            drivingTime'E309_
        end);
        
        fun insertStop'D2F5_ (stopId'D364_, capacity'D36C_, (capacityMap'D377_, connectionMap'D384_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'D36C_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D377_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D384_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'D364_, capacity'D36C_, (capacityMap'D377_, connectionMap'D384_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'D377_, RT_m_1.R_fromList ([(stopId'D364_, capacity'D36C_)])), connectionMap'D384_));
        
        fun capacity'DF11_ (stopId1'DF7E_, stopId2'DF87_, (capacityMap'DF91_, connectionMap'DF9E_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'DF91_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'DF9E_))))) then raise RSL.RSL_exception ("./NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'DF7E_, stopId2'DF87_, (capacityMap'DF91_, connectionMap'DF9E_)) ^ " not in subtype") else let
            val (headway'DFE0_, drivingTime'DFE9_, capacity'DFF6_) = ((((RT_m_4.R_app(connectionMap'DF9E_)) (stopId1'DF7E_, stopId2'DF87_))):RT_x_3.t)
        in
            capacity'DFF6_
        end);
        
        fun addConnection'D4E9_ (stopId1'D55B_, stopId2'D564_, headway'D56D_, capacity'D576_, drivingTime'D580_, (capacityMap'D58E_, connectionMap'D59B_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'D56D_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'D576_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'D580_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D58E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D59B_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'D55B_, stopId2'D564_, headway'D56D_, capacity'D576_, drivingTime'D580_, (capacityMap'D58E_, connectionMap'D59B_)) ^ " not in subtype") else (capacityMap'D58E_, RT_m_4.R_override (connectionMap'D59B_, RT_m_4.R_fromList ([((stopId1'D55B_, stopId2'D564_), (headway'D56D_, drivingTime'D580_, capacity'D576_))]))));
        
        fun minHeadway'DBF1_ (stopId1'DC60_, stopId2'DC69_, (capacityMap'DC73_, connectionMap'DC80_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'DC73_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'DC80_))))) then raise RSL.RSL_exception ("./NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'DC60_, stopId2'DC69_, (capacityMap'DC73_, connectionMap'DC80_)) ^ " not in subtype") else let
            val (headway'DCC0_, drivingTime'DCC9_, capacity'DCD6_) = ((((RT_m_4.R_app(connectionMap'DC80_)) (stopId1'DC60_, stopId2'DC69_))):RT_x_3.t)
        in
            headway'DCC0_
        end);
        
        fun isIn'D6DD_ (stopId'D746_, (capacityMap'D74F_, connecitonMap'D75C_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D74F_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'D75C_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'D746_, (capacityMap'D74F_, connecitonMap'D75C_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'D746_, (capacityMap'D74F_)));
        
        fun areDirectlyConnected'D9FD_ (stopId1'DA76_, stopId2'DA7F_, (capacityMap'DA89_, connectionMap'DA96_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'DA89_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'DA96_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'DA76_, stopId2'DA7F_, (capacityMap'DA89_, connectionMap'DA96_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'DA76_, stopId2'DA7F_), (connectionMap'DA96_)));
        
        fun capacity'D86D_ (stopId'D8DB_, (capacityMap'D8E3_, connectionMap'D8F0_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D8E3_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D8F0_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'D8DB_, (capacityMap'D8E3_, connectionMap'D8F0_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'D8E3_)) (stopId'D8DB_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type TramPlanRow_ = RT_x_17.t;
        
        type Plan_ = RT_l_15.t;
        
        fun countOverLappingTimesForStop'A1BF_ (tramid'A240_, arrtime'A247_, deptime'A250_, times'A259_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (334, 9)); if not((RT_Nat.R_ge (arrtime'A247_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (deptime'A250_, RT_Int.fromLit "0")) andalso ((RT_s_29.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x164_'0_, x165_'0_, x166_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x165_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x166_'0_, RT_Int.fromLit "0"))
        end) (times'A259_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:332:7: Argument of countOverLappingTimesForStop" ^ RT_x_30.toString (tramid'A240_, arrtime'A247_, deptime'A250_, times'A259_) ^ " not in subtype") else if RT_s_29.equ (times'A259_, RT_s_29.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (335, 14)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (337, 11)); let
            val (tramid2'A41E_, arrtime2'A427_, deptime2'A431_) = ((RT_s_29.R_hd(times'A259_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'A240_, tramid2'A41E_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (340, 37)); ((((RT_Nat.R_le (arrtime'A247_, arrtime2'A427_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (340, 62)); RT_Nat.R_le (arrtime2'A427_, deptime'A250_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (340, 85)); ((RT_Nat.R_le (arrtime'A247_, deptime2'A431_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (341, 9)); RT_Nat.R_le (deptime2'A431_, deptime'A250_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (341, 18)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForStop'A1BF_) (tramid'A240_, arrtime'A247_, deptime'A250_, RT_s_29.R_diff (times'A259_, RT_s_29.R_fromList ([(tramid2'A41E_, arrtime2'A427_, deptime2'A431_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (342, 18)); ((countOverLappingTimesForStop'A1BF_) (tramid'A240_, arrtime'A247_, deptime'A250_, RT_s_29.R_diff (times'A259_, RT_s_29.R_fromList ([(tramid2'A41E_, arrtime2'A427_, deptime2'A431_)])))))
        end));
        
        fun buildTimesForTramOnStop'ADDB_ (stopid'AE57_, plan'AE5F_, tramid'AE65_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (365, 9)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x170_'0_, x171_'0_, x172_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x171_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x172_'0_, RT_Int.fromLit "0"))
        end) (plan'AE5F_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:363:7: Argument of buildTimesForTramOnStop" ^ RT_x_33.toString (stopid'AE57_, plan'AE5F_, tramid'AE65_) ^ " not in subtype") else if RT_Nat.R_lt (RT_l_15.R_length(plan'AE5F_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (366, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (368, 11)); let
            val (sid'B03A_, arrt'B03F_, dept'B045_) = ((RT_l_15.R_hd(plan'AE5F_)):RT_x_14.t)
        in
            if RT_Text.equ (sid'B03A_, stopid'AE57_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (372, 18)); RT_s_29.R_union (RT_s_29.R_fromList ([(tramid'AE65_, arrt'B03F_, dept'B045_)]), ((buildTimesForTramOnStop'ADDB_) (stopid'AE57_, RT_l_15.R_tl(plan'AE5F_), tramid'AE65_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (373, 18)); ((buildTimesForTramOnStop'ADDB_) (stopid'AE57_, RT_l_15.R_tl(plan'AE5F_), tramid'AE65_)))
        end));
        
        fun buildAllTimesForStop'A863_ (stopid'A8DC_, trams'A8E4_, timetable'A8EB_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (351, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x167_'0_, x168_'0_, x169_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x168_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x169_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'A8EB_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:349:7: Argument of buildAllTimesForStop" ^ RT_x_32.toString (stopid'A8DC_, trams'A8E4_, timetable'A8EB_) ^ " not in subtype") else if RT_s_11.equ (trams'A8E4_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (352, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (354, 11)); let
            val tramid'AAC1_ = ((RT_s_11.R_hd(trams'A8E4_)):RT_Text.t)
        in
            RT_s_29.R_union (((buildTimesForTramOnStop'ADDB_) (stopid'A8DC_, ((RT_m_16.R_app(timetable'A8EB_)) (tramid'AAC1_)), tramid'AAC1_)), ((buildAllTimesForStop'A863_) (stopid'A8DC_, RT_s_11.R_diff (trams'A8E4_, RT_s_11.R_fromList ([tramid'AAC1_])), timetable'A8EB_)))
        end));
        
        fun stopCapacityIsNotExceeded'9CAB_ (stopid'9D29_, timetable'9D31_, capacityMap'9D3C_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (321, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x161_'0_, x162_'0_, x163_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x162_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x163_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'9D31_)))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'9D3C_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:319:7: Argument of stopCapacityIsNotExceeded" ^ RT_x_31.toString (stopid'9D29_, timetable'9D31_, capacityMap'9D3C_) ^ " not in subtype") else let
            val times'9DDB_ = ((((buildAllTimesForStop'A863_) (stopid'9D29_, RT_m_16.R_dom((timetable'9D31_)), timetable'9D31_))):RT_s_29.t); 
            val capacity'9E3F_ = ((((RT_m_1.R_app(capacityMap'9D3C_)) (stopid'9D29_))):RT_Nat.t)
        in
            ((RT_s_29.R_all (fn ((tramid'9F0D_, arrtime'9F15_, deptime'9F1E_):RT_x_14.t) => not ((RT_Nat.R_ge (arrtime'9F15_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (deptime'9F1E_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForStop'A1BF_) (tramid'9F0D_, arrtime'9F15_, deptime'9F1E_, times'9DDB_))), capacity'9E3F_)))) (times'9DDB_)))
        end);
        
        fun allStopCapacitiesAreNotExceeded'998B_ (timetable'9A0F_, (capacityMap'9A1B_, connectionMap'9A27_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (313, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x153_'0_, x154_'0_, x155_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x154_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x155_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'9A0F_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'9A1B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x158_'0_, x159_'0_, x160_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x159_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'9A27_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:311:7: Argument of allStopCapacitiesAreNotExceeded" ^ RT_x_27.toString (timetable'9A0F_, (capacityMap'9A1B_, connectionMap'9A27_)) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopid'9A5A_:RT_Text.t) => ((stopCapacityIsNotExceeded'9CAB_) (stopid'9A5A_, timetable'9A0F_, capacityMap'9A1B_))) ((capacityMap'9A1B_)))));
        
        fun countOverLappingTimesForTrack'8603_ (tramid'8685_, deptime'868C_, arrtime'8695_, times'869E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (263, 9)); if not((RT_Nat.R_ge (deptime'868C_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (arrtime'8695_, RT_Int.fromLit "0")) andalso ((RT_s_29.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x144_'0_, x145_'0_, x146_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x145_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x146_'0_, RT_Int.fromLit "0"))
        end) (times'869E_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:261:7: Argument of countOverLappingTimesForTrack" ^ RT_x_30.toString (tramid'8685_, deptime'868C_, arrtime'8695_, times'869E_) ^ " not in subtype") else if RT_s_29.equ (times'869E_, RT_s_29.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (264, 14)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (266, 11)); let
            val (tramid2'8862_, deptime2'886B_, arrtime2'8875_) = ((RT_s_29.R_hd(times'869E_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'8685_, tramid2'8862_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (269, 37)); ((((RT_Nat.R_le (deptime'868C_, deptime2'886B_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (269, 62)); RT_Nat.R_le (deptime2'886B_, arrtime'8695_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (269, 85)); ((RT_Nat.R_le (deptime'868C_, arrtime2'8875_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (270, 9)); RT_Nat.R_le (arrtime2'8875_, arrtime'8695_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (270, 18)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'8603_) (tramid'8685_, deptime'868C_, arrtime'8695_, RT_s_29.R_diff (times'869E_, RT_s_29.R_fromList ([(tramid2'8862_, deptime2'886B_, arrtime2'8875_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (271, 18)); ((countOverLappingTimesForTrack'8603_) (tramid'8685_, deptime'868C_, arrtime'8695_, RT_s_29.R_diff (times'869E_, RT_s_29.R_fromList ([(tramid2'8862_, deptime2'886B_, arrtime2'8875_)])))))
        end));
        
        fun nextStop'2E1F_ (planRow'2E8C_, plan'2E95_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (38, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'2E8C_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'2E95_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:36:7: Argument of nextStop" ^ RT_x_21.toString (planRow'2E8C_, plan'2E95_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'2E95_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:61:13: Precondition of nextStop" ^ RT_x_21.toString (planRow'2E8C_, plan'2E95_) ^ " not satisfied") else let
            val iPlanRow'2F4F_ = ((RT_l_15.R_hd(plan'2E95_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'2F4F_, planRow'2E8C_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (43, 13)); let
                val (sid'3148_, arrt'314D_, dept'3153_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'2E95_)))):RT_x_14.t)
            in
                (sid'3148_, arrt'314D_, dept'3153_)
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (49, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'2E95_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (51, 15)); ((nextStop'2E1F_) (planRow'2E8C_, RT_l_15.R_tl(plan'2E95_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (53, 15)); let
                val (sid'3532_, arrt'3537_, dept'353D_) = ((iPlanRow'2F4F_):RT_x_14.t)
            in
                iPlanRow'2F4F_
            end))
        end);
        
        fun buildTimesForTramOnTrack'9283_ (stopid1'9301_, stopid2'930A_, plan'9313_, tramid'9319_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (295, 9)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x150_'0_, x151_'0_, x152_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x151_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x152_'0_, RT_Int.fromLit "0"))
        end) (plan'9313_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:293:7: Argument of buildTimesForTramOnTrack" ^ RT_x_25.toString (stopid1'9301_, stopid2'930A_, plan'9313_, tramid'9319_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'9313_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (296, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (298, 11)); let
            val (sid'94E2_, arrt'94E7_, dept'94ED_) = ((RT_l_15.R_hd(plan'9313_)):RT_x_14.t); 
            val (sid2'9546_, arrt2'954C_, dept2'9553_) = ((((nextStop'2E1F_) ((sid'94E2_, arrt'94E7_, dept'94ED_), plan'9313_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'94E2_, stopid1'9301_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (302, 33)); RT_Text.equ (sid2'9546_, stopid2'930A_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (303, 18)); RT_s_29.R_union (RT_s_29.R_fromList ([(tramid'9319_, dept'94ED_, arrt2'954C_)]), ((buildTimesForTramOnTrack'9283_) (stopid1'9301_, stopid2'930A_, RT_l_15.R_tl(plan'9313_), tramid'9319_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (304, 18)); ((buildTimesForTramOnTrack'9283_) (stopid1'9301_, stopid2'930A_, RT_l_15.R_tl(plan'9313_), tramid'9319_)))
        end));
        
        fun buildAllTimesForTrack'8CA7_ (stopid1'8D21_, stopid2'8D2A_, trams'8D33_, timetable'8D3A_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (280, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x147_'0_, x148_'0_, x149_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x148_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x149_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'8D3A_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:278:7: Argument of buildAllTimesForTrack" ^ RT_x_24.toString (stopid1'8D21_, stopid2'8D2A_, trams'8D33_, timetable'8D3A_) ^ " not in subtype") else if RT_s_11.equ (trams'8D33_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (281, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (283, 11)); let
            val tramid'8F05_ = ((RT_s_11.R_hd(trams'8D33_)):RT_Text.t)
        in
            RT_s_29.R_union (((buildTimesForTramOnTrack'9283_) (stopid1'8D21_, stopid2'8D2A_, ((RT_m_16.R_app(timetable'8D3A_)) (tramid'8F05_)), tramid'8F05_)), ((buildAllTimesForTrack'8CA7_) (stopid1'8D21_, stopid2'8D2A_, RT_s_11.R_diff (trams'8D33_, RT_s_11.R_fromList ([tramid'8F05_])), timetable'8D3A_)))
        end));
        
        fun trackCapacityIsNotExceeded'7FC1_ (stopid1'8040_, stopid2'8049_, timetable'8052_, connectionMap'805D_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (247, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x136_'0_, x137_'0_, x138_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x137_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x138_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'8052_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x141_'0_, x142_'0_, x143_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x142_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x143_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'805D_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:245:5: Argument of trackCapacityIsNotExceeded" ^ RT_x_28.toString (stopid1'8040_, stopid2'8049_, timetable'8052_, connectionMap'805D_) ^ " not in subtype") else let
            val times1'80F2_ = ((((buildAllTimesForTrack'8CA7_) (stopid1'8040_, stopid2'8049_, RT_m_16.R_dom((timetable'8052_)), timetable'8052_))):RT_s_29.t); 
            val times2'8156_ = ((((buildAllTimesForTrack'8CA7_) (stopid2'8049_, stopid1'8040_, RT_m_16.R_dom((timetable'8052_)), timetable'8052_))):RT_s_29.t); 
            val (headway'81BB_, drivingtime'81C4_, trackcapacity'81D1_) = ((((RT_m_4.R_app(connectionMap'805D_)) (stopid1'8040_, stopid2'8049_))):RT_x_3.t)
        in
            (((RT_s_29.R_all (fn ((tramid'8288_, deptime'8290_, arrtime'8299_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'8290_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'8299_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'8603_) (tramid'8288_, deptime'8290_, arrtime'8299_, times1'80F2_))), trackcapacity'81D1_)))) (times1'80F2_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (254, 15)); ((RT_s_29.R_all (fn ((tramid'8355_, deptime'835D_, arrtime'8366_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'835D_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'8366_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'8603_) (tramid'8355_, deptime'835D_, arrtime'8366_, times2'8156_))), trackcapacity'81D1_)))) (times2'8156_))))
        end);
        
        fun allTrackCapacitiesAreNotExceeded'7CA1_ (timetable'7D26_, (capacityMap'7D32_, connectionMap'7D3E_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (239, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x128_'0_, x129_'0_, x130_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7D26_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7D32_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x133_'0_, x134_'0_, x135_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x133_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x135_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7D3E_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:237:5: Argument of allTrackCapacitiesAreNotExceeded" ^ RT_x_27.toString (timetable'7D26_, (capacityMap'7D32_, connectionMap'7D3E_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'7D71_, stopid2'7D7A_):RT_x_2.t) => ((trackCapacityIsNotExceeded'7FC1_) (stopid1'7D71_, stopid2'7D7A_, timetable'7D26_, connectionMap'7D3E_))) ((connectionMap'7D3E_)))));
        
        fun tramStopsAtAllStopsItPasses'7855_ timetable'78D5_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (228, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x125_'0_, x126_'0_, x127_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'78D5_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:226:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'78D5_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'7924_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'798B_, arrTime'7993_, depTime'799C_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'7993_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'799C_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'799C_, arrTime'7993_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'78D5_)) (tramid'7924_)))))) ((timetable'78D5_)))));
        
        fun getConnection'390F_ (stop1'3981_, stop2'3988_, (capacityMap'3990_, connectionMap'399D_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'3990_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'399D_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:64:7: Argument of getConnection" ^ RT_x_12.toString (stop1'3981_, stop2'3988_, (capacityMap'3990_, connectionMap'399D_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'3981_, stop2'3988_), (connectionMap'399D_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (68, 9)); ((RT_m_4.R_app(connectionMap'399D_)) ((stop1'3981_, stop2'3988_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9)); ((RT_m_4.R_app(connectionMap'399D_)) ((stop2'3988_, stop1'3981_)))));
        
        fun timeBetweenStopsIsDrivingTime'6211_ (plan'6293_, (capacityMap'629A_, connectionMap'62A7_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (171, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (plan'6293_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'629A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x106_'0_, x107_'0_, x108_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'62A7_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:169:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_26.toString (plan'6293_, (capacityMap'629A_, connectionMap'62A7_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'6293_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (172, 9)); let
            val (stopid1'63A8_, arrTime1'63B1_, depTime1'63BB_) = ((RT_l_15.R_hd(plan'6293_)):RT_x_14.t); 
            val (stopid2'640C_, arrTime2'6415_, depTime2'641F_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'6293_)))):RT_x_14.t)
        in
            let
                val (headway'653A_, drivingTime'6542_, capacity'654F_) = ((((getConnection'390F_) (stopid1'63A8_, stopid2'640C_, (capacityMap'629A_, connectionMap'62A7_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'6415_, depTime1'63BB_), drivingTime'6542_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (179, 53)); ((timeBetweenStopsIsDrivingTime'6211_) (RT_l_15.R_tl(plan'6293_), (capacityMap'629A_, connectionMap'62A7_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (183, 9)); true));
        
        fun findDepartureRowInPlan'45F1_ (stopid1'466C_, stopid2'4675_, plan'467E_, tram'4684_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (99, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'467E_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:97:5: Argument of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'466C_, stopid2'4675_, plan'467E_, tram'4684_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'467E_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:115:11: Precondition of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'466C_, stopid2'4675_, plan'467E_, tram'4684_) ^ " not satisfied") else let
            val (hStopId'4722_, hArrTime'472B_, hDepTime'4735_) = ((RT_l_15.R_hd(plan'467E_)):RT_x_14.t); 
            val (nStopId'4786_, nArrTime'478F_, nDepTime'4799_) = ((((nextStop'2E1F_) (RT_l_15.R_hd(plan'467E_), plan'467E_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'4722_, stopid1'466C_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (103, 33)); RT_Text.equ (nStopId'4786_, stopid2'4675_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (105, 11)); (tram'4684_, hStopId'4722_, hArrTime'472B_, hDepTime'4735_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (107, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'467E_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (109, 13)); ((findDepartureRowInPlan'45F1_) (stopid1'466C_, stopid2'4675_, RT_l_15.R_tl(plan'467E_), tram'4684_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (111, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'40DD_ (stopid1'4163_, stopid2'416C_, trams'4175_, timetable'417C_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'417C_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:84:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_24.toString (stopid1'4163_, stopid2'416C_, trams'4175_, timetable'417C_) ^ " not in subtype") else if RT_s_11.equ (trams'4175_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (87, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (89, 9)); let
            val tram'433B_ = ((RT_s_11.R_hd(trams'4175_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findDepartureRowInPlan'45F1_) (stopid1'4163_, stopid2'416C_, ((RT_m_16.R_app(timetable'417C_)) (tram'433B_)), tram'433B_))]), ((buildAllDeparturesUsingConnection'40DD_) (stopid1'4163_, stopid2'416C_, RT_s_11.R_diff (trams'4175_, RT_s_11.R_fromList ([tram'433B_])), timetable'417C_)))
        end));
        
        fun getAllDepaturesUsingConnection'3D59_ (stopid1'3DDC_, stopid2'3DE5_, timetable'3DEE_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (77, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3DEE_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:75:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_22.toString (stopid1'3DDC_, stopid2'3DE5_, timetable'3DEE_) ^ " not in subtype") else let
            val allTrams'3E89_ = ((RT_m_16.R_dom(timetable'3DEE_)):RT_s_11.t)
        in
            ((buildAllDeparturesUsingConnection'40DD_) (stopid1'3DDC_, stopid2'3DE5_, allTrams'3E89_, timetable'3DEE_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'697D_ (timetable'6A05_, (capacityMap'6A11_, connectionMap'6A1E_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (190, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x109_'0_, x110_'0_, x111_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x110_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6A05_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6A11_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x114_'0_, x115_'0_, x116_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x116_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6A1E_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:188:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_27.toString (timetable'6A05_, (capacityMap'6A11_, connectionMap'6A1E_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'6A4D_, stopid2'6A56_):RT_x_2.t) => let
            val (headway'6AB2_, drivingTime'6ABA_, capacity'6AC7_) = ((((RT_m_4.R_app(connectionMap'6A1E_)) ((stopid1'6A4D_, stopid2'6A56_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'6B7D_, sid1'6B84_, arrt1'6B8A_, dept1'6B91_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'6B8A_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'6B91_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'6BE3_, sid2'6BEA_, arrt2'6BF0_, dept2'6BF7_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'6BF0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'6BF7_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'6B91_, dept2'6BF7_))), headway'6AB2_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'3D59_) (stopid1'6A4D_, stopid2'6A56_, timetable'6A05_)), RT_s_23.R_fromList ([(tram1'6B7D_, sid1'6B84_, arrt1'6B8A_, dept1'6B91_)]))))))) (((getAllDepaturesUsingConnection'3D59_) (stopid1'6A4D_, stopid2'6A56_, timetable'6A05_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (197, 11)); ((RT_s_23.R_all (fn ((tram1'6D0D_, sid1'6D14_, arrt1'6D1A_, dept1'6D21_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'6D1A_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'6D21_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'6D71_, sid2'6D78_, arrt2'6D7E_, dept2'6D85_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'6D7E_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'6D85_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'6D21_, dept2'6D85_))), headway'6AB2_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'3D59_) (stopid2'6A56_, stopid1'6A4D_, timetable'6A05_)), RT_s_23.R_fromList ([(tram1'6D0D_, sid1'6D14_, arrt1'6D1A_, dept1'6D21_)]))))))) (((getAllDepaturesUsingConnection'3D59_) (stopid2'6A56_, stopid1'6A4D_, timetable'6A05_))))))
        end) ((connectionMap'6A1E_)))));
        
        fun findArrivalRowInPlan'56BD_ (stopid1'5736_, stopid2'573F_, plan'5748_, tram'574E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (142, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'5748_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:140:5: Argument of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'5736_, stopid2'573F_, plan'5748_, tram'574E_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'5748_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:158:11: Precondition of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'5736_, stopid2'573F_, plan'5748_, tram'574E_) ^ " not satisfied") else let
            val (hStopId'57EE_, hArrTime'57F7_, hDepTime'5801_) = ((RT_l_15.R_hd(plan'5748_)):RT_x_14.t); 
            val (nStopId'5852_, nArrTime'585B_, nDepTime'5865_) = ((((nextStop'2E1F_) (RT_l_15.R_hd(plan'5748_), plan'5748_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'57EE_, stopid1'5736_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (146, 33)); RT_Text.equ (nStopId'5852_, stopid2'573F_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (148, 11)); (tram'574E_, nStopId'5852_, nArrTime'585B_, nDepTime'5865_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (150, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'5748_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (152, 13)); ((findArrivalRowInPlan'56BD_) (stopid1'5736_, stopid2'573F_, RT_l_15.R_tl(plan'5748_), tram'574E_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (154, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllArrivalsUsingConnection'51A9_ (stopid1'522D_, stopid2'5236_, trams'523F_, timetable'5246_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (129, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5246_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:127:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_24.toString (stopid1'522D_, stopid2'5236_, trams'523F_, timetable'5246_) ^ " not in subtype") else if RT_s_11.equ (trams'523F_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (130, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (132, 9)); let
            val tram'5407_ = ((RT_s_11.R_hd(trams'523F_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findArrivalRowInPlan'56BD_) (stopid1'522D_, stopid2'5236_, ((RT_m_16.R_app(timetable'5246_)) (tram'5407_)), tram'5407_))]), ((buildAllArrivalsUsingConnection'51A9_) (stopid1'522D_, stopid2'5236_, RT_s_11.R_diff (trams'523F_, RT_s_11.R_fromList ([tram'5407_])), timetable'5246_)))
        end));
        
        fun getAllArrivalsUsingConnection'4E25_ (stopid1'4EA7_, stopid2'4EB0_, timetable'4EB9_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (120, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4EB9_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:118:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_22.toString (stopid1'4EA7_, stopid2'4EB0_, timetable'4EB9_) ^ " not in subtype") else let
            val allTrams'4F55_ = ((RT_m_16.R_dom(timetable'4EB9_)):RT_s_11.t)
        in
            ((buildAllArrivalsUsingConnection'51A9_) (stopid1'4EA7_, stopid2'4EB0_, allTrams'4F55_, timetable'4EB9_))
        end);
        
        fun timeBetweenArrivalIsValidHeadway'71B1_ (timetable'7236_, (capacityMap'7242_, connectionMap'724F_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (211, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x117_'0_, x118_'0_, x119_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7236_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7242_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x122_'0_, x123_'0_, x124_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x123_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'724F_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:209:5: Argument of timeBetweenArrivalIsValidHeadway" ^ RT_x_27.toString (timetable'7236_, (capacityMap'7242_, connectionMap'724F_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'7281_, stopid2'728A_):RT_x_2.t) => let
            val (headway'72E6_, drivingTime'72EE_, capacity'72FB_) = ((((RT_m_4.R_app(connectionMap'724F_)) ((stopid1'7281_, stopid2'728A_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'73B1_, sid1'73B8_, arrt1'73BE_, dept1'73C5_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'73BE_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'73C5_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'7417_, sid2'741E_, arrt2'7424_, dept2'742B_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'7424_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'742B_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'73BE_, arrt2'7424_))), headway'72E6_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'4E25_) (stopid1'7281_, stopid2'728A_, timetable'7236_)), RT_s_23.R_fromList ([(tram1'73B1_, sid1'73B8_, arrt1'73BE_, dept1'73C5_)]))))))) (((getAllArrivalsUsingConnection'4E25_) (stopid1'7281_, stopid2'728A_, timetable'7236_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (218, 11)); ((RT_s_23.R_all (fn ((tram1'7541_, sid1'7548_, arrt1'754E_, dept1'7555_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'754E_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'7555_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'75A7_, sid2'75AE_, arrt2'75B4_, dept2'75BB_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'75B4_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'75BB_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'754E_, arrt2'75B4_))), headway'72E6_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'4E25_) (stopid2'728A_, stopid1'7281_, timetable'7236_)), RT_s_23.R_fromList ([(tram1'7541_, sid1'7548_, arrt1'754E_, dept1'7555_)]))))))) (((getAllArrivalsUsingConnection'4E25_) (stopid2'728A_, stopid1'7281_, timetable'7236_))))))
        end) ((connectionMap'724F_)))));
        
        fun isWellformed'C86A_ (t'C8DB_, n'C8DE_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (433, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x200_'0_, x201_'0_, x202_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x201_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x202_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'C8DB_)))) andalso (let
            val (x203_'0_, x204_'0_) = ((n'C8DE_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x203_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x207_'0_, x208_'0_, x209_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x207_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x208_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x209_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x204_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:431:6: Argument of isWellformed" ^ RT_x_27.toString (t'C8DB_, n'C8DE_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'7855_) (t'C8DB_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (434, 8)); (((timeBetweenDeparturesIsValidHeadway'697D_) (t'C8DB_, n'C8DE_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (435, 8)); (((timeBetweenArrivalIsValidHeadway'71B1_) (t'C8DB_, n'C8DE_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (436, 8)); (((RT_s_19.R_all (fn (plan'CA65_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x210_'0_, x211_'0_, x212_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x211_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0"))
        end) (plan'CA65_))) orelse (((timeBetweenStopsIsDrivingTime'6211_) (plan'CA65_, n'C8DE_)))) (RT_m_16.R_ran((t'C8DB_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (437, 8)); (((allTrackCapacitiesAreNotExceeded'7CA1_) (t'C8DB_, n'C8DE_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (438, 8)); ((allStopCapacitiesAreNotExceeded'998B_) (t'C8DB_, n'C8DE_))))))));
        
        fun stopsAreConnected'B79F_ (plan'B815_, connectionMap'B81B_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (390, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x181_'0_, x182_'0_, x183_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x182_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x183_'0_, RT_Int.fromLit "0"))
        end) (plan'B815_))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x186_'0_, x187_'0_, x188_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x186_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x187_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x188_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B81B_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:388:7: Argument of stopsAreConnected" ^ RT_x_34.toString (plan'B815_, connectionMap'B81B_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'B815_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (391, 14)); true) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (393, 11)); let
            val (sid'B9FE_, arrt'BA03_, dept'BA09_) = ((RT_l_15.R_hd(plan'B815_)):RT_x_14.t); 
            val (sid2'BA62_, arrt2'BA68_, dept2'BA6F_) = ((((nextStop'2E1F_) ((sid'B9FE_, arrt'BA03_, dept'BA09_), plan'B815_))):RT_x_14.t)
        in
            if (RT_m_4.R_mem ((sid'B9FE_, sid2'BA62_), (connectionMap'B81B_))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (397, 54)); RT_m_4.R_mem ((sid2'BA62_, sid'B9FE_), (connectionMap'B81B_))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (398, 18)); ((stopsAreConnected'B79F_) (RT_l_15.R_tl(plan'B815_), connectionMap'B81B_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (399, 18)); false)
        end));
        
        fun allStopsAreConnected'B47F_ (timetable'B4F8_, (capacityMap'B504_, connectionMap'B510_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (382, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x173_'0_, x174_'0_, x175_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x174_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x175_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B4F8_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'B504_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x178_'0_, x179_'0_, x180_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x178_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x179_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x180_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B510_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:380:7: Argument of allStopsAreConnected" ^ RT_x_27.toString (timetable'B4F8_, (capacityMap'B504_, connectionMap'B510_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'B54E_:RT_Text.t) => ((stopsAreConnected'B79F_) (((RT_m_16.R_app(timetable'B4F8_)) (tramid'B54E_)), connectionMap'B510_))) ((timetable'B4F8_)))));
        
        fun stopsExist'C1C5_ (plan'C234_, capacityMap'C23A_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (416, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x197_'0_, x198_'0_, x199_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x198_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x199_'0_, RT_Int.fromLit "0"))
        end) (plan'C234_))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C23A_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:414:5: Argument of stopsExist" ^ RT_x_35.toString (plan'C234_, capacityMap'C23A_) ^ " not in subtype") else if RT_Nat.equ (RT_l_15.R_length(plan'C234_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (417, 12)); true) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (419, 9)); let
            val (sid'C424_, arrt'C429_, dept'C42F_) = ((RT_l_15.R_hd(plan'C234_)):RT_x_14.t)
        in
            if RT_m_1.R_mem (sid'C424_, (capacityMap'C23A_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (423, 16)); ((stopsExist'C1C5_) (RT_l_15.R_tl(plan'C234_), capacityMap'C23A_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (424, 16)); false)
        end));
        
        fun allStopsInPlanExist'BEA5_ (timetable'BF1D_, (capacityMap'BF29_, connectionMap'BF36_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (408, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x189_'0_, x190_'0_, x191_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x190_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x191_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'BF1D_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'BF29_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x194_'0_, x195_'0_, x196_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x194_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x196_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'BF36_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:406:5: Argument of allStopsInPlanExist" ^ RT_x_27.toString (timetable'BF1D_, (capacityMap'BF29_, connectionMap'BF36_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'BF74_:RT_Text.t) => ((stopsExist'C1C5_) (((RT_m_16.R_app(timetable'BF1D_)) (tramid'BF74_)), capacityMap'BF29_))) ((timetable'BF1D_)))));
        
        fun isIn'2BC5_ (tramid'2C2E_, timetable'2C36_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (32, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'2C36_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:30:5: Argument of isIn" ^ RT_x_18.toString (tramid'2C2E_, timetable'2C36_) ^ " not in subtype") else RT_m_16.R_mem (tramid'2C2E_, (timetable'2C36_)));
        
        val empty'2587_ = let val z__'2599_ = RT_m_16.R_fromList [] in if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x213_'0_, x214_'0_, x215_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x214_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x215_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'2599_)))) then (RSL.add_load_err("./TIMETABLE.rsl:14:25: Value " ^ RT_m_16.toString(z__'2599_) ^ " of empty not in subtype"); z__'2599_) else z__'2599_ end;
        
        fun addStop'28A7_ (tramid'2913_, stopid'291B_, arrival'2923_, departure'292C_, timetable'2937_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (24, 9)); if not((RT_Nat.R_ge (arrival'2923_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'292C_, RT_Int.fromLit "0")) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'2937_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:22:7: Argument of addStop" ^ RT_x_20.toString (tramid'2913_, stopid'291B_, arrival'2923_, departure'292C_, timetable'2937_) ^ " not in subtype") else RT_m_16.R_override (timetable'2937_, RT_m_16.R_fromList ([(tramid'2913_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'2937_)) (tramid'2913_)), [(stopid'291B_, arrival'2923_, departure'292C_)]))])));
        
        fun addTram'26B3_ (tramid'271F_, timetable'2727_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (19, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'2727_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:17:7: Argument of addTram" ^ RT_x_18.toString (tramid'271F_, timetable'2727_) ^ " not in subtype") else RT_m_16.R_override (timetable'2727_, RT_m_16.R_fromList ([(tramid'271F_, ([]:RT_l_15.t))])));
        
        val plan6'12CC_ = [(RT_Text.fromLit "B", RT_Int.fromLit "15", RT_Int.fromLit "17"), (RT_Text.fromLit "A", RT_Int.fromLit "29", RT_Int.fromLit "30"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val plan1'64D_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val plan5'1268_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "31", RT_Int.fromLit "33"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val plan2'6B1_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val timeTableWithExceededStopCapacities'1330_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (RT_Text.fromLit "tram3", plan5'1268_), (RT_Text.fromLit "tram4", plan6'12CC_)]);
        
        val connectionMap'32D_ = RT_m_4.R_fromList ([((RT_Text.fromLit "B", RT_Text.fromLit "D"), (RT_Int.fromLit "2", RT_Int.fromLit "7", RT_Int.fromLit "2")), ((RT_Text.fromLit "A", RT_Text.fromLit "B"), (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1")), ((RT_Text.fromLit "B", RT_Text.fromLit "C"), (RT_Int.fromLit "2", RT_Int.fromLit "12", RT_Int.fromLit "3"))]);
        
        val plan3'1011_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "32", RT_Int.fromLit "34"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timetableWithExceededTrackCapacities'10D9_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (RT_Text.fromLit "tram3", plan3'1011_)]);
        
        val planWithoutStopTime'E81_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "12"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timetableWithoutStopTime'EE5_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", planWithoutStopTime'E81_)]);
        
        val planTooShortArrivalTime'CF1_ = [(RT_Text.fromLit "C", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48")];
        
        val timetableInvalidArrivalHeadway'D55_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (RT_Text.fromLit "tram3", planTooShortArrivalTime'CF1_)]);
        
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
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'C86A_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s2_validDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'6211_) (plan1'64D_, net'4BD_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'6211_) (planInvalidDrivingTime'841_, net'4BD_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'C86A_) (timetableInvalidDrivingTime'8A5_, net'4BD_)), false)));

(RSL.C_output "[s3_validHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'697D_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'697D_) (timetableInvalidDepartureHeadway'A35_, net'4BD_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'C86A_) (timetableInvalidDepartureHeadway'A35_, net'4BD_)), false)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'697D_) (timetableDuplicateDepartureHeadway'BC5_, net'4BD_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'C86A_) (timetableDuplicateDepartureHeadway'BC5_, net'4BD_)), false)));

(RSL.C_output "[s5_validHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'71B1_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s5_invalidHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'71B1_) (timetableInvalidArrivalHeadway'D55_, net'4BD_)), false)));

(RSL.C_output "[s5_NotWellFormedArrivalHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'C86A_) (timetableInvalidArrivalHeadway'D55_, net'4BD_)), false)));

(RSL.C_output "[s5_tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'7855_) (timetableWF'715_)), true)));

(RSL.C_output "[s5_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'7855_) (timetableWithoutStopTime'EE5_)), false)));

(RSL.C_output "[s5_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'C86A_) (timetableWithoutStopTime'EE5_, net'4BD_)), false)));

(RSL.C_output "[s6_NumberOfTrainsOnTrackDontExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'7CA1_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s6_NumberOfTrainsOnTrackDoExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'7CA1_) (timetableWithExceededTrackCapacities'10D9_, net'4BD_)), false)));

(RSL.C_output "[s7_NumberOfTrainsAtStopDontExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'998B_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s7_NumberOfTrainsAtStopDoExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'998B_) (timeTableWithExceededStopCapacities'1330_, net'4BD_)), false)));

RSL.print_error_count();
R_coverage.save_marked();
