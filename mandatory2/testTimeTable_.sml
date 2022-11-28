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
    
structure RT_s_26 = RT_Set(structure Elem = RT_x_14);

structure RT_x_27 =
    struct
        type t = RT_Text.t * RT_Nat.t * RT_Nat.t * RT_s_26.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Nat.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_s_26.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Nat.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_s_26.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_s_26.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_28 =
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
    
structure RT_x_29 =
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
    
structure RT_x_30 =
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
    
structure RT_x_31 =
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
    
structure RT_x_32 =
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
    
structure RT_x_33 =
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
        
        fun allStopsHaveConnection'FEB5_ (capacityMap'FF30_, connectionMap'FF3D_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FF30_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FF3D_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'FF30_, connectionMap'FF3D_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'FF84_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'10051_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'FF84_, stopId2'10051_), (connectionMap'FF3D_))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'10051_, stopId'FF84_), (connectionMap'FF3D_))))) ((capacityMap'FF30_))))) ((capacityMap'FF30_)))));
        
        fun noSelfConnection'F93D_ (capacityMap'F9B2_, connectionMap'F9BF_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F9B2_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F9BF_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'F9B2_, connectionMap'F9BF_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'FA0D_, stopId2'FA16_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'FA0D_, stopId2'FA16_)) ((connectionMap'F9BF_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'FBF9_ (capacityMap'FC85_, connectionMap'FC92_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FC85_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FC92_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'FC85_, connectionMap'FC92_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'FCC9_, stopId2'FCD2_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'FCC9_, (capacityMap'FC85_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'FCD2_, (capacityMap'FC85_)))) ((connectionMap'FC92_)))));
        
        fun isWellformed'1029D_ net'1030E_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'1030E_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'1030E_ ^ ")" ^ " not in subtype") else (((noSelfConnection'F93D_) (net'1030E_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'FBF9_) (net'1030E_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (92, 7)); ((allStopsHaveConnection'FEB5_) (net'1030E_)))));
        
        val empty'E5B5_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'F5B9_ (stopId1'F62C_, stopId2'F635_, (capacityMap'F63F_, connectionMap'F64C_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F63F_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F64C_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'F62C_, stopId2'F635_, (capacityMap'F63F_, connectionMap'F64C_)) ^ " not in subtype") else let
            val (headway'F688_, drivingTime'F691_, capacity'F69E_) = ((((RT_m_4.R_app(connectionMap'F64C_)) (stopId1'F62C_, stopId2'F635_))):RT_x_3.t)
        in
            drivingTime'F691_
        end);
        
        fun insertStop'E67D_ (stopId'E6EC_, capacity'E6F4_, (capacityMap'E6FF_, connectionMap'E70C_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'E6F4_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E6FF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'E70C_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'E6EC_, capacity'E6F4_, (capacityMap'E6FF_, connectionMap'E70C_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'E6FF_, RT_m_1.R_fromList ([(stopId'E6EC_, capacity'E6F4_)])), connectionMap'E70C_));
        
        fun capacity'F299_ (stopId1'F306_, stopId2'F30F_, (capacityMap'F319_, connectionMap'F326_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F319_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F326_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'F306_, stopId2'F30F_, (capacityMap'F319_, connectionMap'F326_)) ^ " not in subtype") else let
            val (headway'F368_, drivingTime'F371_, capacity'F37E_) = ((((RT_m_4.R_app(connectionMap'F326_)) (stopId1'F306_, stopId2'F30F_))):RT_x_3.t)
        in
            capacity'F37E_
        end);
        
        fun addConnection'E871_ (stopId1'E8E3_, stopId2'E8EC_, headway'E8F5_, capacity'E8FE_, drivingTime'E908_, (capacityMap'E916_, connectionMap'E923_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'E8F5_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'E8FE_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'E908_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E916_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'E923_)))))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'E8E3_, stopId2'E8EC_, headway'E8F5_, capacity'E8FE_, drivingTime'E908_, (capacityMap'E916_, connectionMap'E923_)) ^ " not in subtype") else (capacityMap'E916_, RT_m_4.R_override (connectionMap'E923_, RT_m_4.R_fromList ([((stopId1'E8E3_, stopId2'E8EC_), (headway'E8F5_, drivingTime'E908_, capacity'E8FE_))]))));
        
        fun minHeadway'EF79_ (stopId1'EFE8_, stopId2'EFF1_, (capacityMap'EFFB_, connectionMap'F008_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EFFB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F008_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'EFE8_, stopId2'EFF1_, (capacityMap'EFFB_, connectionMap'F008_)) ^ " not in subtype") else let
            val (headway'F048_, drivingTime'F051_, capacity'F05E_) = ((((RT_m_4.R_app(connectionMap'F008_)) (stopId1'EFE8_, stopId2'EFF1_))):RT_x_3.t)
        in
            headway'F048_
        end);
        
        fun isIn'EA65_ (stopId'EACE_, (capacityMap'EAD7_, connecitonMap'EAE4_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EAD7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'EAE4_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'EACE_, (capacityMap'EAD7_, connecitonMap'EAE4_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'EACE_, (capacityMap'EAD7_)));
        
        fun areDirectlyConnected'ED85_ (stopId1'EDFE_, stopId2'EE07_, (capacityMap'EE11_, connectionMap'EE1E_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EE11_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'EE1E_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'EDFE_, stopId2'EE07_, (capacityMap'EE11_, connectionMap'EE1E_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'EDFE_, stopId2'EE07_), (connectionMap'EE1E_)));
        
        fun capacity'EBF5_ (stopId'EC63_, (capacityMap'EC6B_, connectionMap'EC78_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EC6B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'EC78_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'EC63_, (capacityMap'EC6B_, connectionMap'EC78_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'EC6B_)) (stopId'EC63_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type TramPlanRow_ = RT_x_17.t;
        
        type Plan_ = RT_l_15.t;
        
        fun buildTimesForTramOnStop'9281_ (stopid'92FD_, plan'9305_, tramid'930B_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (244, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x116_'0_, x117_'0_, x118_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x117_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0"))
        end) (plan'9305_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:242:5: Argument of buildTimesForTramOnStop" ^ RT_x_29.toString (stopid'92FD_, plan'9305_, tramid'930B_) ^ " not in subtype") else if RT_Nat.R_lt (RT_l_15.R_length(plan'9305_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (245, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (247, 9)); let
            val (sid'94E0_, arrt'94E5_, dept'94EB_) = ((RT_l_15.R_hd(plan'9305_)):RT_x_14.t)
        in
            if RT_Text.equ (sid'94E0_, stopid'92FD_) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (251, 16)); RT_s_26.R_union (RT_s_26.R_fromList ([(tramid'930B_, arrt'94E5_, dept'94EB_)]), ((buildTimesForTramOnStop'9281_) (stopid'92FD_, RT_l_15.R_tl(plan'9305_), tramid'930B_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (252, 16)); ((buildTimesForTramOnStop'9281_) (stopid'92FD_, RT_l_15.R_tl(plan'9305_), tramid'930B_)))
        end));
        
        fun buildAllTimesForStop'8D09_ (stopid'8D82_, trams'8D8A_, timetable'8D91_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (230, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x113_'0_, x114_'0_, x115_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'8D91_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:228:5: Argument of buildAllTimesForStop" ^ RT_x_28.toString (stopid'8D82_, trams'8D8A_, timetable'8D91_) ^ " not in subtype") else if RT_s_11.equ (trams'8D8A_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (231, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (233, 9)); let
            val tramid'8F67_ = ((RT_s_11.R_hd(trams'8D8A_)):RT_Text.t)
        in
            RT_s_26.R_union (((buildTimesForTramOnStop'9281_) (stopid'8D82_, ((RT_m_16.R_app(timetable'8D91_)) (tramid'8F67_)), tramid'8F67_)), ((buildAllTimesForStop'8D09_) (stopid'8D82_, RT_s_11.R_diff (trams'8D8A_, RT_s_11.R_fromList ([tramid'8F67_])), timetable'8D91_)))
        end));
        
        fun countOverlappingTimesForStop'8665_ (tramid'86E6_, arrtime'86ED_, deptime'86F6_, times'86FF_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (213, 7)); if not((RT_Nat.R_ge (arrtime'86ED_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (deptime'86F6_, RT_Int.fromLit "0")) andalso ((RT_s_26.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x110_'0_, x111_'0_, x112_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0"))
        end) (times'86FF_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:211:5: Argument of countOverlappingTimesForStop" ^ RT_x_27.toString (tramid'86E6_, arrtime'86ED_, deptime'86F6_, times'86FF_) ^ " not in subtype") else if RT_s_26.equ (times'86FF_, RT_s_26.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (214, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (216, 9)); let
            val (tramid2'88C4_, arrtime2'88CD_, deptime2'88D7_) = ((RT_s_26.R_hd(times'86FF_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'86E6_, tramid2'88C4_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (219, 35)); ((((RT_Nat.R_lt (arrtime'86ED_, arrtime2'88CD_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (219, 59)); RT_Nat.R_lt (arrtime2'88CD_, deptime'86F6_)))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (219, 81)); ((RT_Nat.R_lt (arrtime'86ED_, deptime2'88D7_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (220, 4)); RT_Nat.R_lt (deptime2'88D7_, deptime'86F6_)))))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (220, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'8665_) (tramid'86E6_, arrtime'86ED_, deptime'86F6_, RT_s_26.R_diff (times'86FF_, RT_s_26.R_fromList ([(tramid2'88C4_, arrtime2'88CD_, deptime2'88D7_)])))))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (221, 16)); ((countOverlappingTimesForStop'8665_) (tramid'86E6_, arrtime'86ED_, deptime'86F6_, RT_s_26.R_diff (times'86FF_, RT_s_26.R_fromList ([(tramid2'88C4_, arrtime2'88CD_, deptime2'88D7_)])))))
        end));
        
        fun stopCapacityIsNotExceeded'C28F_ (stopid'C30D_, timetable'C315_, capacityMap'C320_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (367, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x170_'0_, x171_'0_, x172_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x171_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x172_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C315_)))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C320_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:365:7: Argument of stopCapacityIsNotExceeded" ^ RT_x_33.toString (stopid'C30D_, timetable'C315_, capacityMap'C320_) ^ " not in subtype") else let
            val times'C3BF_ = ((((buildAllTimesForStop'8D09_) (stopid'C30D_, RT_m_16.R_dom((timetable'C315_)), timetable'C315_))):RT_s_26.t); 
            val capacity'C423_ = ((((RT_m_1.R_app(capacityMap'C320_)) (stopid'C30D_))):RT_Nat.t)
        in
            ((RT_s_26.R_all (fn ((tramid'C4F1_, arrtime'C4F9_, deptime'C502_):RT_x_14.t) => not ((RT_Nat.R_ge (arrtime'C4F9_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (deptime'C502_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'8665_) (tramid'C4F1_, arrtime'C4F9_, deptime'C502_, times'C3BF_))), capacity'C423_)))) (times'C3BF_)))
        end);
        
        fun allStopCapacitiesAreNotExceeded'BF6F_ (timetable'BFF3_, (capacityMap'BFFF_, connectionMap'C00B_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (359, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x162_'0_, x163_'0_, x164_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x163_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x164_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'BFF3_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'BFFF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x167_'0_, x168_'0_, x169_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x167_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x168_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x169_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C00B_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:357:7: Argument of allStopCapacitiesAreNotExceeded" ^ RT_x_31.toString (timetable'BFF3_, (capacityMap'BFFF_, connectionMap'C00B_)) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopid'C03E_:RT_Text.t) => ((stopCapacityIsNotExceeded'C28F_) (stopid'C03E_, timetable'BFF3_, capacityMap'BFFF_))) ((capacityMap'BFFF_)))));
        
        fun getConnection'4CFB_ (stop1'4D6D_, stop2'4D74_, (capacityMap'4D7C_, connectionMap'4D89_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4D7C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4D89_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:64:7: Argument of getConnection" ^ RT_x_12.toString (stop1'4D6D_, stop2'4D74_, (capacityMap'4D7C_, connectionMap'4D89_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'4D6D_, stop2'4D74_), (connectionMap'4D89_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (68, 9)); ((RT_m_4.R_app(connectionMap'4D89_)) ((stop1'4D6D_, stop2'4D74_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (70, 9)); ((RT_m_4.R_app(connectionMap'4D89_)) ((stop2'4D74_, stop1'4D6D_)))));
        
        fun timeBetweenStopsIsDrivingTime'9B7D_ (plan'9BFF_, (capacityMap'9C06_, connectionMap'9C13_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (267, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x119_'0_, x120_'0_, x121_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x120_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0"))
        end) (plan'9BFF_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'9C06_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x124_'0_, x125_'0_, x126_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x125_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'9C13_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:265:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_30.toString (plan'9BFF_, (capacityMap'9C06_, connectionMap'9C13_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'9BFF_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (268, 9)); let
            val (stopid1'9D14_, arrTime1'9D1D_, depTime1'9D27_) = ((RT_l_15.R_hd(plan'9BFF_)):RT_x_14.t); 
            val (stopid2'9D78_, arrTime2'9D81_, depTime2'9D8B_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'9BFF_)))):RT_x_14.t)
        in
            let
                val (headway'9EA6_, drivingTime'9EAE_, capacity'9EBB_) = ((((getConnection'4CFB_) (stopid1'9D14_, stopid2'9D78_, (capacityMap'9C06_, connectionMap'9C13_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'9D81_, depTime1'9D27_), drivingTime'9EAE_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (275, 53)); ((timeBetweenStopsIsDrivingTime'9B7D_) (RT_l_15.R_tl(plan'9BFF_), (capacityMap'9C06_, connectionMap'9C13_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (279, 9)); true));
        
        fun nextStop'420B_ (planRow'4278_, plan'4281_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (38, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'4278_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'4281_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:36:7: Argument of nextStop" ^ RT_x_21.toString (planRow'4278_, plan'4281_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'4281_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:61:13: Precondition of nextStop" ^ RT_x_21.toString (planRow'4278_, plan'4281_) ^ " not satisfied") else let
            val iPlanRow'433B_ = ((RT_l_15.R_hd(plan'4281_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'433B_, planRow'4278_) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (43, 13)); let
                val (sid'4534_, arrt'4539_, dept'453F_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'4281_)))):RT_x_14.t)
            in
                (sid'4534_, arrt'4539_, dept'453F_)
            end) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (49, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'4281_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (51, 15)); ((nextStop'420B_) (planRow'4278_, RT_l_15.R_tl(plan'4281_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (53, 15)); let
                val (sid'491E_, arrt'4923_, dept'4929_) = ((iPlanRow'433B_):RT_x_14.t)
            in
                iPlanRow'433B_
            end))
        end);
        
        fun findDepartureRowInPlan'59DD_ (stopid1'5A58_, stopid2'5A61_, plan'5A6A_, tram'5A70_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (99, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'5A6A_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:97:5: Argument of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'5A58_, stopid2'5A61_, plan'5A6A_, tram'5A70_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'5A6A_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:115:11: Precondition of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'5A58_, stopid2'5A61_, plan'5A6A_, tram'5A70_) ^ " not satisfied") else let
            val (hStopId'5B0E_, hArrTime'5B17_, hDepTime'5B21_) = ((RT_l_15.R_hd(plan'5A6A_)):RT_x_14.t); 
            val (nStopId'5B72_, nArrTime'5B7B_, nDepTime'5B85_) = ((((nextStop'420B_) (RT_l_15.R_hd(plan'5A6A_), plan'5A6A_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'5B0E_, stopid1'5A58_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (103, 33)); RT_Text.equ (nStopId'5B72_, stopid2'5A61_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (105, 11)); (tram'5A70_, hStopId'5B0E_, hArrTime'5B17_, hDepTime'5B21_)) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (107, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'5A6A_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (109, 13)); ((findDepartureRowInPlan'59DD_) (stopid1'5A58_, stopid2'5A61_, RT_l_15.R_tl(plan'5A6A_), tram'5A70_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (111, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'54C9_ (stopid1'554F_, stopid2'5558_, trams'5561_, timetable'5568_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (86, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5568_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:84:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_24.toString (stopid1'554F_, stopid2'5558_, trams'5561_, timetable'5568_) ^ " not in subtype") else if RT_s_11.equ (trams'5561_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (87, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (89, 9)); let
            val tram'5727_ = ((RT_s_11.R_hd(trams'5561_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findDepartureRowInPlan'59DD_) (stopid1'554F_, stopid2'5558_, ((RT_m_16.R_app(timetable'5568_)) (tram'5727_)), tram'5727_))]), ((buildAllDeparturesUsingConnection'54C9_) (stopid1'554F_, stopid2'5558_, RT_s_11.R_diff (trams'5561_, RT_s_11.R_fromList ([tram'5727_])), timetable'5568_)))
        end));
        
        fun getAllDepaturesUsingConnection'5145_ (stopid1'51C8_, stopid2'51D1_, timetable'51DA_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (77, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'51DA_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:75:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_22.toString (stopid1'51C8_, stopid2'51D1_, timetable'51DA_) ^ " not in subtype") else let
            val allTrams'5275_ = ((RT_m_16.R_dom(timetable'51DA_)):RT_s_11.t)
        in
            ((buildAllDeparturesUsingConnection'54C9_) (stopid1'51C8_, stopid2'51D1_, allTrams'5275_, timetable'51DA_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'A2E9_ (timetable'A371_, (capacityMap'A37D_, connectionMap'A38A_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (286, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x127_'0_, x128_'0_, x129_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'A371_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'A37D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x132_'0_, x133_'0_, x134_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x133_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'A38A_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:284:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_31.toString (timetable'A371_, (capacityMap'A37D_, connectionMap'A38A_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'A3B9_, stopid2'A3C2_):RT_x_2.t) => let
            val (headway'A41E_, drivingTime'A426_, capacity'A433_) = ((((RT_m_4.R_app(connectionMap'A38A_)) ((stopid1'A3B9_, stopid2'A3C2_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'A4E9_, sid1'A4F0_, arrt1'A4F6_, dept1'A4FD_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'A4F6_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'A4FD_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'A54F_, sid2'A556_, arrt2'A55C_, dept2'A563_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'A55C_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'A563_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'A4FD_, dept2'A563_))), headway'A41E_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'5145_) (stopid1'A3B9_, stopid2'A3C2_, timetable'A371_)), RT_s_23.R_fromList ([(tram1'A4E9_, sid1'A4F0_, arrt1'A4F6_, dept1'A4FD_)]))))))) (((getAllDepaturesUsingConnection'5145_) (stopid1'A3B9_, stopid2'A3C2_, timetable'A371_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (293, 11)); ((RT_s_23.R_all (fn ((tram1'A679_, sid1'A680_, arrt1'A686_, dept1'A68D_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'A686_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'A68D_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'A6DD_, sid2'A6E4_, arrt2'A6EA_, dept2'A6F1_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'A6EA_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'A6F1_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'A68D_, dept2'A6F1_))), headway'A41E_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'5145_) (stopid2'A3C2_, stopid1'A3B9_, timetable'A371_)), RT_s_23.R_fromList ([(tram1'A679_, sid1'A680_, arrt1'A686_, dept1'A68D_)]))))))) (((getAllDepaturesUsingConnection'5145_) (stopid2'A3C2_, stopid1'A3B9_, timetable'A371_))))))
        end) ((connectionMap'A38A_)))));
        
        fun countOverlappingTimesForTrack'7341_ (tramid'73C3_, deptime'73CA_, arrtime'73D3_, times'73DC_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (164, 7)); if not((RT_Nat.R_ge (deptime'73CA_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (arrtime'73D3_, RT_Int.fromLit "0")) andalso ((RT_s_26.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (times'73DC_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:162:5: Argument of countOverlappingTimesForTrack" ^ RT_x_27.toString (tramid'73C3_, deptime'73CA_, arrtime'73D3_, times'73DC_) ^ " not in subtype") else if RT_s_26.equ (times'73DC_, RT_s_26.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (165, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (167, 9)); let
            val (tramid2'75A0_, deptime2'75A9_, arrtime2'75B3_) = ((RT_s_26.R_hd(times'73DC_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'73C3_, tramid2'75A0_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (170, 35)); ((((RT_Nat.R_lt (deptime'73CA_, deptime2'75A9_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (170, 59)); RT_Nat.R_lt (deptime2'75A9_, arrtime'73D3_)))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (170, 81)); ((RT_Nat.R_lt (deptime'73CA_, arrtime2'75B3_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (171, 4)); RT_Nat.R_lt (arrtime2'75B3_, arrtime'73D3_)))))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (171, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7341_) (tramid'73C3_, deptime'73CA_, arrtime'73D3_, RT_s_26.R_diff (times'73DC_, RT_s_26.R_fromList ([(tramid2'75A0_, deptime2'75A9_, arrtime2'75B3_)])))))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (172, 16)); ((countOverlappingTimesForTrack'7341_) (tramid'73C3_, deptime'73CA_, arrtime'73D3_, RT_s_26.R_diff (times'73DC_, RT_s_26.R_fromList ([(tramid2'75A0_, deptime2'75A9_, arrtime2'75B3_)])))))
        end));
        
        fun buildTimesForTramOnTrack'7F5D_ (stopid1'7FDB_, stopid2'7FE4_, plan'7FED_, tramid'7FF3_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (195, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x107_'0_, x108_'0_, x109_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0"))
        end) (plan'7FED_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:193:5: Argument of buildTimesForTramOnTrack" ^ RT_x_25.toString (stopid1'7FDB_, stopid2'7FE4_, plan'7FED_, tramid'7FF3_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'7FED_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (196, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (198, 9)); let
            val (sid'81BC_, arrt'81C1_, dept'81C7_) = ((RT_l_15.R_hd(plan'7FED_)):RT_x_14.t); 
            val (sid2'8220_, arrt2'8226_, dept2'822D_) = ((((nextStop'420B_) ((sid'81BC_, arrt'81C1_, dept'81C7_), plan'7FED_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'81BC_, stopid1'7FDB_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (202, 31)); RT_Text.equ (sid2'8220_, stopid2'7FE4_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (203, 16)); RT_s_26.R_union (RT_s_26.R_fromList ([(tramid'7FF3_, dept'81C7_, arrt2'8226_)]), ((buildTimesForTramOnTrack'7F5D_) (stopid1'7FDB_, stopid2'7FE4_, RT_l_15.R_tl(plan'7FED_), tramid'7FF3_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (204, 16)); ((buildTimesForTramOnTrack'7F5D_) (stopid1'7FDB_, stopid2'7FE4_, RT_l_15.R_tl(plan'7FED_), tramid'7FF3_)))
        end));
        
        fun buildAllTimesForTrack'79E5_ (stopid1'7A5F_, stopid2'7A68_, trams'7A71_, timetable'7A78_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (181, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x104_'0_, x105_'0_, x106_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x105_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7A78_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:179:5: Argument of buildAllTimesForTrack" ^ RT_x_24.toString (stopid1'7A5F_, stopid2'7A68_, trams'7A71_, timetable'7A78_) ^ " not in subtype") else if RT_s_11.equ (trams'7A71_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (182, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (184, 9)); let
            val tramid'7C43_ = ((RT_s_11.R_hd(trams'7A71_)):RT_Text.t)
        in
            RT_s_26.R_union (((buildTimesForTramOnTrack'7F5D_) (stopid1'7A5F_, stopid2'7A68_, ((RT_m_16.R_app(timetable'7A78_)) (tramid'7C43_)), tramid'7C43_)), ((buildAllTimesForTrack'79E5_) (stopid1'7A5F_, stopid2'7A68_, RT_s_11.R_diff (trams'7A71_, RT_s_11.R_fromList ([tramid'7C43_])), timetable'7A78_)))
        end));
        
        fun trackCapacityIsNotExceeded'B92D_ (stopid1'B9AC_, stopid2'B9B5_, timetable'B9BE_, connectionMap'B9C9_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (343, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x154_'0_, x155_'0_, x156_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x155_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x156_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B9BE_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x159_'0_, x160_'0_, x161_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x159_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x161_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B9C9_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:341:5: Argument of trackCapacityIsNotExceeded" ^ RT_x_32.toString (stopid1'B9AC_, stopid2'B9B5_, timetable'B9BE_, connectionMap'B9C9_) ^ " not in subtype") else let
            val times1'BA5E_ = ((((buildAllTimesForTrack'79E5_) (stopid1'B9AC_, stopid2'B9B5_, RT_m_16.R_dom((timetable'B9BE_)), timetable'B9BE_))):RT_s_26.t); 
            val times2'BAC2_ = ((((buildAllTimesForTrack'79E5_) (stopid2'B9B5_, stopid1'B9AC_, RT_m_16.R_dom((timetable'B9BE_)), timetable'B9BE_))):RT_s_26.t); 
            val (headway'BB27_, drivingtime'BB30_, trackcapacity'BB3D_) = ((((RT_m_4.R_app(connectionMap'B9C9_)) (stopid1'B9AC_, stopid2'B9B5_))):RT_x_3.t)
        in
            (((RT_s_26.R_all (fn ((tramid'BBF4_, deptime'BBFC_, arrtime'BC05_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'BBFC_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'BC05_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7341_) (tramid'BBF4_, deptime'BBFC_, arrtime'BC05_, times1'BA5E_))), trackcapacity'BB3D_)))) (times1'BA5E_)))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (350, 15)); ((RT_s_26.R_all (fn ((tramid'BCC1_, deptime'BCC9_, arrtime'BCD2_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'BCC9_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'BCD2_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7341_) (tramid'BCC1_, deptime'BCC9_, arrtime'BCD2_, times2'BAC2_))), trackcapacity'BB3D_)))) (times2'BAC2_))))
        end);
        
        fun allTrackCapacitiesAreNotExceeded'B60D_ (timetable'B692_, (capacityMap'B69E_, connectionMap'B6AA_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (335, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x146_'0_, x147_'0_, x148_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x147_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x148_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B692_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'B69E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x151_'0_, x152_'0_, x153_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x151_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x152_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x153_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B6AA_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:333:5: Argument of allTrackCapacitiesAreNotExceeded" ^ RT_x_31.toString (timetable'B692_, (capacityMap'B69E_, connectionMap'B6AA_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'B6DD_, stopid2'B6E6_):RT_x_2.t) => ((trackCapacityIsNotExceeded'B92D_) (stopid1'B6DD_, stopid2'B6E6_, timetable'B692_, connectionMap'B6AA_))) ((connectionMap'B6AA_)))));
        
        fun tramStopsAtAllStopsItPasses'B1C1_ timetable'B241_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (324, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x143_'0_, x144_'0_, x145_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x144_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x145_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B241_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:322:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'B241_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'B290_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'B2F7_, arrTime'B2FF_, depTime'B308_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'B2FF_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'B308_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'B308_, arrTime'B2FF_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'B241_)) (tramid'B290_)))))) ((timetable'B241_)))));
        
        fun findArrivalRowInPlan'6AA9_ (stopid1'6B22_, stopid2'6B2B_, plan'6B34_, tram'6B3A_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (142, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'6B34_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:140:5: Argument of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'6B22_, stopid2'6B2B_, plan'6B34_, tram'6B3A_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'6B34_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:158:11: Precondition of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'6B22_, stopid2'6B2B_, plan'6B34_, tram'6B3A_) ^ " not satisfied") else let
            val (hStopId'6BDA_, hArrTime'6BE3_, hDepTime'6BED_) = ((RT_l_15.R_hd(plan'6B34_)):RT_x_14.t); 
            val (nStopId'6C3E_, nArrTime'6C47_, nDepTime'6C51_) = ((((nextStop'420B_) (RT_l_15.R_hd(plan'6B34_), plan'6B34_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'6BDA_, stopid1'6B22_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (146, 33)); RT_Text.equ (nStopId'6C3E_, stopid2'6B2B_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (148, 11)); (tram'6B3A_, nStopId'6C3E_, nArrTime'6C47_, nDepTime'6C51_)) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (150, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'6B34_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (152, 13)); ((findArrivalRowInPlan'6AA9_) (stopid1'6B22_, stopid2'6B2B_, RT_l_15.R_tl(plan'6B34_), tram'6B3A_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (154, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllArrivalsUsingConnection'6595_ (stopid1'6619_, stopid2'6622_, trams'662B_, timetable'6632_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (129, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6632_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:127:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_24.toString (stopid1'6619_, stopid2'6622_, trams'662B_, timetable'6632_) ^ " not in subtype") else if RT_s_11.equ (trams'662B_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (130, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (132, 9)); let
            val tram'67F3_ = ((RT_s_11.R_hd(trams'662B_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findArrivalRowInPlan'6AA9_) (stopid1'6619_, stopid2'6622_, ((RT_m_16.R_app(timetable'6632_)) (tram'67F3_)), tram'67F3_))]), ((buildAllArrivalsUsingConnection'6595_) (stopid1'6619_, stopid2'6622_, RT_s_11.R_diff (trams'662B_, RT_s_11.R_fromList ([tram'67F3_])), timetable'6632_)))
        end));
        
        fun getAllArrivalsUsingConnection'6211_ (stopid1'6293_, stopid2'629C_, timetable'62A5_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (120, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'62A5_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:118:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_22.toString (stopid1'6293_, stopid2'629C_, timetable'62A5_) ^ " not in subtype") else let
            val allTrams'6341_ = ((RT_m_16.R_dom(timetable'62A5_)):RT_s_11.t)
        in
            ((buildAllArrivalsUsingConnection'6595_) (stopid1'6293_, stopid2'629C_, allTrams'6341_, timetable'62A5_))
        end);
        
        fun timeBetweenArrivalIsValidHeadway'AB1D_ (timetable'ABA2_, (capacityMap'ABAE_, connectionMap'ABBB_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (307, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x135_'0_, x136_'0_, x137_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x136_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x137_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'ABA2_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'ABAE_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x140_'0_, x141_'0_, x142_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x140_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x142_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'ABBB_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:305:5: Argument of timeBetweenArrivalIsValidHeadway" ^ RT_x_31.toString (timetable'ABA2_, (capacityMap'ABAE_, connectionMap'ABBB_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'ABED_, stopid2'ABF6_):RT_x_2.t) => let
            val (headway'AC52_, drivingTime'AC5A_, capacity'AC67_) = ((((RT_m_4.R_app(connectionMap'ABBB_)) ((stopid1'ABED_, stopid2'ABF6_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'AD1D_, sid1'AD24_, arrt1'AD2A_, dept1'AD31_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'AD2A_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'AD31_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'AD83_, sid2'AD8A_, arrt2'AD90_, dept2'AD97_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'AD90_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'AD97_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'AD2A_, arrt2'AD90_))), headway'AC52_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'6211_) (stopid1'ABED_, stopid2'ABF6_, timetable'ABA2_)), RT_s_23.R_fromList ([(tram1'AD1D_, sid1'AD24_, arrt1'AD2A_, dept1'AD31_)]))))))) (((getAllArrivalsUsingConnection'6211_) (stopid1'ABED_, stopid2'ABF6_, timetable'ABA2_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (314, 11)); ((RT_s_23.R_all (fn ((tram1'AEAD_, sid1'AEB4_, arrt1'AEBA_, dept1'AEC1_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'AEBA_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'AEC1_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'AF13_, sid2'AF1A_, arrt2'AF20_, dept2'AF27_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'AF20_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'AF27_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'AEBA_, arrt2'AF20_))), headway'AC52_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'6211_) (stopid2'ABF6_, stopid1'ABED_, timetable'ABA2_)), RT_s_23.R_fromList ([(tram1'AEAD_, sid1'AEB4_, arrt1'AEBA_, dept1'AEC1_)]))))))) (((getAllArrivalsUsingConnection'6211_) (stopid2'ABF6_, stopid1'ABED_, timetable'ABA2_))))))
        end) ((connectionMap'ABBB_)))));
        
        fun isWellformed'DBF2_ (t'DC63_, n'DC66_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (432, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x200_'0_, x201_'0_, x202_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x201_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x202_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'DC63_)))) andalso (let
            val (x203_'0_, x204_'0_) = ((n'DC66_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x203_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x207_'0_, x208_'0_, x209_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x207_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x208_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x209_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x204_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:430:6: Argument of isWellformed" ^ RT_x_31.toString (t'DC63_, n'DC66_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'B1C1_) (t'DC63_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (433, 8)); (((timeBetweenDeparturesIsValidHeadway'A2E9_) (t'DC63_, n'DC66_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (434, 8)); (((timeBetweenArrivalIsValidHeadway'AB1D_) (t'DC63_, n'DC66_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (435, 8)); (((RT_s_19.R_all (fn (plan'DDED_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x210_'0_, x211_'0_, x212_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x211_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0"))
        end) (plan'DDED_))) orelse (((timeBetweenStopsIsDrivingTime'9B7D_) (plan'DDED_, n'DC66_)))) (RT_m_16.R_ran((t'DC63_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (436, 8)); (((allTrackCapacitiesAreNotExceeded'B60D_) (t'DC63_, n'DC66_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (437, 8)); ((allStopCapacitiesAreNotExceeded'BF6F_) (t'DC63_, n'DC66_))))))));
        
        fun stopsAreConnected'CB27_ (plan'CB9D_, connectionMap'CBA3_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (389, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x181_'0_, x182_'0_, x183_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x182_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x183_'0_, RT_Int.fromLit "0"))
        end) (plan'CB9D_))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x186_'0_, x187_'0_, x188_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x186_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x187_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x188_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'CBA3_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:387:7: Argument of stopsAreConnected" ^ RT_x_34.toString (plan'CB9D_, connectionMap'CBA3_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'CB9D_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (390, 14)); true) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (392, 11)); let
            val (sid'CD86_, arrt'CD8B_, dept'CD91_) = ((RT_l_15.R_hd(plan'CB9D_)):RT_x_14.t); 
            val (sid2'CDEA_, arrt2'CDF0_, dept2'CDF7_) = ((((nextStop'420B_) ((sid'CD86_, arrt'CD8B_, dept'CD91_), plan'CB9D_))):RT_x_14.t)
        in
            if (RT_m_4.R_mem ((sid'CD86_, sid2'CDEA_), (connectionMap'CBA3_))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (396, 54)); RT_m_4.R_mem ((sid2'CDEA_, sid'CD86_), (connectionMap'CBA3_))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (397, 18)); ((stopsAreConnected'CB27_) (RT_l_15.R_tl(plan'CB9D_), connectionMap'CBA3_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (398, 18)); false)
        end));
        
        fun allStopsAreConnected'C807_ (timetable'C880_, (capacityMap'C88C_, connectionMap'C898_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (381, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x173_'0_, x174_'0_, x175_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x174_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x175_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C880_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C88C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x178_'0_, x179_'0_, x180_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x178_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x179_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x180_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C898_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:379:7: Argument of allStopsAreConnected" ^ RT_x_31.toString (timetable'C880_, (capacityMap'C88C_, connectionMap'C898_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'C8D6_:RT_Text.t) => ((stopsAreConnected'CB27_) (((RT_m_16.R_app(timetable'C880_)) (tramid'C8D6_)), connectionMap'C898_))) ((timetable'C880_)))));
        
        fun stopsExist'D54D_ (plan'D5BC_, capacityMap'D5C2_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (415, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x197_'0_, x198_'0_, x199_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x198_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x199_'0_, RT_Int.fromLit "0"))
        end) (plan'D5BC_))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D5C2_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:413:5: Argument of stopsExist" ^ RT_x_35.toString (plan'D5BC_, capacityMap'D5C2_) ^ " not in subtype") else if RT_Nat.equ (RT_l_15.R_length(plan'D5BC_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (416, 12)); true) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (418, 9)); let
            val (sid'D7AC_, arrt'D7B1_, dept'D7B7_) = ((RT_l_15.R_hd(plan'D5BC_)):RT_x_14.t)
        in
            if RT_m_1.R_mem (sid'D7AC_, (capacityMap'D5C2_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (422, 16)); ((stopsExist'D54D_) (RT_l_15.R_tl(plan'D5BC_), capacityMap'D5C2_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (423, 16)); false)
        end));
        
        fun allStopsInPlanExist'D22D_ (timetable'D2A5_, (capacityMap'D2B1_, connectionMap'D2BE_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (407, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x189_'0_, x190_'0_, x191_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x190_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x191_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'D2A5_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D2B1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x194_'0_, x195_'0_, x196_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x194_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x196_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D2BE_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:405:5: Argument of allStopsInPlanExist" ^ RT_x_31.toString (timetable'D2A5_, (capacityMap'D2B1_, connectionMap'D2BE_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'D2FC_:RT_Text.t) => ((stopsExist'D54D_) (((RT_m_16.R_app(timetable'D2A5_)) (tramid'D2FC_)), capacityMap'D2B1_))) ((timetable'D2A5_)))));
        
        val empty'3973_ = let val z__'3985_ = RT_m_16.R_fromList [] in if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x213_'0_, x214_'0_, x215_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x214_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x215_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'3985_)))) then (RSL.add_load_err("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:14:25: Value " ^ RT_m_16.toString(z__'3985_) ^ " of empty not in subtype"); z__'3985_) else z__'3985_ end;
        
        fun isIn'3FB1_ (tramid'401A_, timetable'4022_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (32, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4022_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:30:5: Argument of isIn" ^ RT_x_18.toString (tramid'401A_, timetable'4022_) ^ " not in subtype") else RT_m_16.R_mem (tramid'401A_, (timetable'4022_)));
        
        fun addTram'3A9F_ (tramid'3B0B_, timetable'3B13_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (19, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3B13_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:17:7: Argument of addTram" ^ RT_x_18.toString (tramid'3B0B_, timetable'3B13_) ^ " not in subtype") else RT_m_16.R_override (timetable'3B13_, RT_m_16.R_fromList ([(tramid'3B0B_, ([]:RT_l_15.t))])));
        
        fun addStop'3C93_ (tramid'3CFF_, stopid'3D07_, arrival'3D0F_, departure'3D18_, timetable'3D23_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (24, 9)); if not((RT_Nat.R_ge (arrival'3D0F_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'3D18_, RT_Int.fromLit "0")) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3D23_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:22:7: Argument of addStop" ^ RT_x_20.toString (tramid'3CFF_, stopid'3D07_, arrival'3D0F_, departure'3D18_, timetable'3D23_) ^ " not in subtype") else RT_m_16.R_override (timetable'3D23_, RT_m_16.R_fromList ([(tramid'3CFF_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'3D23_)) (tramid'3CFF_)), [(stopid'3D07_, arrival'3D0F_, departure'3D18_)]))])));
        
        val connectionTest'1FB2_ = (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1");
        
        val tramIdA'32D_ = RT_Text.fromLit "tram1";
        
        val stopCapacitywithAddedStop'1D5A_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2"), (RT_Text.fromLit "E", RT_Int.fromLit "2")]);
        
        val connectionMap'521_ = RT_m_4.R_fromList ([((RT_Text.fromLit "B", RT_Text.fromLit "D"), (RT_Int.fromLit "2", RT_Int.fromLit "7", RT_Int.fromLit "2")), ((RT_Text.fromLit "A", RT_Text.fromLit "B"), (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1")), ((RT_Text.fromLit "B", RT_Text.fromLit "C"), (RT_Int.fromLit "2", RT_Int.fromLit "12", RT_Int.fromLit "3"))]);
        
        val netWithAddedStop'1E86_ = (stopCapacitywithAddedStop'1D5A_, connectionMap'521_);
        
        val tramNotIn'3F5_ = RT_Text.fromLit "tramG";
        
        val plan13'1BC9_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan12'1B65_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60"), (RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10")];
        
        val timetableWithAddedStop'1C2D_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan12'1B65_), (RT_Text.fromLit "tram2", plan13'1BC9_)]);
        
        val plan11'19D4_ = let val z__'19E2_ = ([]:RT_l_15.t) in if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x216_'0_, x217_'0_, x218_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x217_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x218_'0_, RT_Int.fromLit "0"))
        end) (z__'19E2_))) then (RSL.add_load_err("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/testTimeTable.rsl:66:26: Value " ^ RT_l_15.toString(z__'19E2_) ^ " of plan11 not in subtype"); z__'19E2_) else z__'19E2_ end;
        
        val plan1'841_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val plan2'8A5_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val timetableWithAddedTram'1A38_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (tramNotIn'3F5_, plan11'19D4_)]);
        
        val timetableWF'909_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_)]);
        
        val stopCapacity'585_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2")]);
        
        val net'6B1_ = (stopCapacity'585_, connectionMap'521_);
        
        val tramIdB'391_ = RT_Text.fromLit "tram2";
        
        val planInvalidDrivingTime'A35_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "8", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan9'1844_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timeTableWithInvalidConnection'18A8_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan9'1844_)]);
        
        val plan7'1650_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "Q", RT_Int.fromLit "31", RT_Int.fromLit "33")];
        
        val timeTableWithInvalidStop'16B4_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan7'1650_)]);
        
        val plan6'14C0_ = [(RT_Text.fromLit "B", RT_Int.fromLit "15", RT_Int.fromLit "17"), (RT_Text.fromLit "A", RT_Int.fromLit "29", RT_Int.fromLit "30"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val plan5'145C_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "31", RT_Int.fromLit "33"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timeTableWithExceededStopCapacities'1524_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", plan5'145C_), (RT_Text.fromLit "tram4", plan6'14C0_)]);
        
        val plan4'1269_ = [(RT_Text.fromLit "B", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "48", RT_Int.fromLit "50")];
        
        val timetableWithAlmostExceededTrackCapacities'1331_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram4", plan4'1269_)]);
        
        val plan3'1205_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "32", RT_Int.fromLit "34"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timetableWithExceededTrackCapacities'12CD_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", plan3'1205_)]);
        
        val planWithoutStopTime'1075_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "12"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timetableWithoutStopTime'10D9_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", planWithoutStopTime'1075_)]);
        
        val planTooShortArrivalTime'EE5_ = [(RT_Text.fromLit "C", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48")];
        
        val timetableInvalidArrivalHeadway'F49_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", planTooShortArrivalTime'EE5_)]);
        
        val planDuplicateDepartureHeadway'D55_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "14", RT_Int.fromLit "16")];
        
        val timetableDuplicateDepartureHeadway'DB9_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", planDuplicateDepartureHeadway'D55_)]);
        
        val planShortDepartureHeadway'BC5_ = [(RT_Text.fromLit "B", RT_Int.fromLit "0", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "30", RT_Int.fromLit "60")];
        
        val timetableInvalidDepartureHeadway'C29_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", planShortDepartureHeadway'BC5_)]);
        
        val timetableInvalidDrivingTime'A99_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", planInvalidDrivingTime'A35_)]);
        
    end;
    
open testTimeTable;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (24, 9), (26, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (19, 9), (19, 38));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (32, 7), (32, 33));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (407, 7), (409, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (423, 16), (424, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (422, 16), (423, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (418, 9), (426, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (416, 12), (417, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (415, 7), (426, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (381, 9), (383, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (396, 54), (397, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (398, 18), (399, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (397, 18), (398, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (392, 11), (401, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (390, 14), (391, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (389, 9), (401, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (437, 8), (440, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (436, 8), (440, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (435, 8), (440, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (434, 8), (440, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (433, 8), (440, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (432, 8), (440, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (314, 11), (318, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (307, 7), (319, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (120, 7), (124, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (132, 9), (137, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (130, 12), (131, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (129, 7), (137, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (154, 13), (155, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (152, 13), (153, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (146, 33), (147, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (150, 11), (156, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (148, 11), (149, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (142, 7), (158, 23));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (324, 7), (328, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (335, 7), (337, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (350, 15), (353, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (343, 8), (353, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (184, 9), (189, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (182, 12), (183, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (181, 7), (189, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (202, 31), (203, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (204, 16), (205, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (203, 16), (204, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (198, 9), (207, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (196, 12), (197, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (195, 7), (207, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (171, 4), (171, 22));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (170, 59), (170, 76));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (170, 81), (171, 23));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (170, 35), (171, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (172, 16), (173, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (171, 16), (172, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (167, 9), (175, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (165, 12), (166, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (164, 7), (175, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (293, 11), (297, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (286, 7), (298, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (77, 7), (81, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (89, 9), (94, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (87, 12), (88, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (86, 7), (94, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (111, 13), (112, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (109, 13), (110, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (103, 33), (104, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (107, 11), (113, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (105, 11), (106, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (99, 7), (115, 23));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (53, 15), (58, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (51, 15), (52, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (49, 13), (59, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (43, 13), (48, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (38, 9), (61, 25));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (275, 53), (276, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (279, 9), (280, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (268, 9), (278, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (267, 7), (280, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (70, 9), (71, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (68, 9), (69, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (66, 7), (71, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (359, 9), (361, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (367, 9), (374, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (220, 4), (220, 22));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (219, 59), (219, 76));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (219, 81), (220, 23));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (219, 35), (220, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (221, 16), (222, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (220, 16), (221, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (216, 9), (224, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (214, 12), (215, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (213, 7), (224, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (233, 9), (238, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (231, 12), (232, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (230, 7), (238, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (252, 16), (253, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (251, 16), (252, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (247, 9), (255, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (245, 12), (246, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (244, 7), (257, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (32, 7), (32, 26));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (36, 7), (36, 49));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (28, 7), (28, 35));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (41, 7), (44, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (23, 7), (24, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (49, 7), (52, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (18, 7), (18, 59));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (57, 7), (62, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (92, 7), (93, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (91, 7), (93, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (90, 7), (93, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (75, 42), (75, 71));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (73, 7), (75, 72));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (66, 7), (68, 28));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (85, 13), (85, 54));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (80, 7), (85, 57)));
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DBF2_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s2_validDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'9B7D_) (plan1'841_, net'6B1_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'9B7D_) (planInvalidDrivingTime'A35_, net'6B1_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DBF2_) (timetableInvalidDrivingTime'A99_, net'6B1_)), false)));

(RSL.C_output "[s3_validHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A2E9_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A2E9_) (timetableInvalidDepartureHeadway'C29_, net'6B1_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DBF2_) (timetableInvalidDepartureHeadway'C29_, net'6B1_)), false)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A2E9_) (timetableDuplicateDepartureHeadway'DB9_, net'6B1_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DBF2_) (timetableDuplicateDepartureHeadway'DB9_, net'6B1_)), false)));

(RSL.C_output "[s5_validHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'AB1D_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s5_invalidHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'AB1D_) (timetableInvalidArrivalHeadway'F49_, net'6B1_)), false)));

(RSL.C_output "[s5_NotWellFormedArrivalHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DBF2_) (timetableInvalidArrivalHeadway'F49_, net'6B1_)), false)));

(RSL.C_output "[s6_tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'B1C1_) (timetableWF'909_)), true)));

(RSL.C_output "[s6_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'B1C1_) (timetableWithoutStopTime'10D9_)), false)));

(RSL.C_output "[s6_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DBF2_) (timetableWithoutStopTime'10D9_, net'6B1_)), false)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDontExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'B60D_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackAlmostExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'B60D_) (timetableWithAlmostExceededTrackCapacities'1331_, net'6B1_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDoExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'B60D_) (timetableWithExceededTrackCapacities'12CD_, net'6B1_)), false)));

(RSL.C_output "[s8_NumberOfTramsAtStopDontExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'BF6F_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s8_NumberOfTramsAtStopDoExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'BF6F_) (timeTableWithExceededStopCapacities'1524_, net'6B1_)), false)));

(RSL.C_output "[s9_AllStopsInPlansExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'D22D_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s9_AllStopsInPlansDoNotExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'D22D_) (timeTableWithInvalidStop'16B4_, net'6B1_)), false)));

(RSL.C_output "[s10_allStopsAreConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'C807_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s10_allStopsAreNotConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'C807_) (timeTableWithInvalidConnection'18A8_, net'6B1_)), false)));

(RSL.C_output "[s12_AddingTram] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addTram'3A9F_) (tramNotIn'3F5_, timetableWF'909_)), timetableWithAddedTram'1A38_)));

(RSL.C_output "[s12_addStop] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addStop'3C93_) (tramIdA'32D_, RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10", timetableWF'909_)), timetableWithAddedStop'1C2D_)));

(RSL.C_output "[s13_isinExisting01] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'3FB1_) (tramIdA'32D_, timetableWF'909_)), true)));

(RSL.C_output "[s13_isinExisting02] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'3FB1_) (tramIdB'391_, timetableWF'909_)), true)));

(RSL.C_output "[s13_isNotin] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'3FB1_) (tramNotIn'3F5_, timetableWF'909_)), false)));

(RSL.C_output "[s16_getConnection] " RT_Bool.toStringSafe (fn _ => RT_x_3.equ (((getConnection'4CFB_) (RT_Text.fromLit "A", RT_Text.fromLit "B", net'6B1_)), connectionTest'1FB2_)));

RSL.print_error_count();
R_coverage.save_marked();
