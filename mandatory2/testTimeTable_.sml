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
        
        fun allStopsHaveConnection'1042D_ (capacityMap'104A8_, connectionMap'104B5_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (81, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'104A8_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'104B5_))))) then raise RSL.RSL_exception ("./NET.rsl:79:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'104A8_, connectionMap'104B5_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'104FC_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'105C9_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'104FC_, stopId2'105C9_), (connectionMap'104B5_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (86, 13)); RT_m_4.R_mem ((stopId2'105C9_, stopId'104FC_), (connectionMap'104B5_))))) ((capacityMap'104A8_))))) ((capacityMap'104A8_)))));
        
        fun noSelfConnection'FEB5_ (capacityMap'FF2A_, connectionMap'FF37_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (67, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FF2A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FF37_))))) then raise RSL.RSL_exception ("./NET.rsl:65:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'FF2A_, connectionMap'FF37_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'FF85_, stopId2'FF8E_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'FF85_, stopId2'FF8E_)) ((connectionMap'FF37_)))));
        
        fun isIn'EF79_ (stopId'EFE2_, (capacityMap'EFEB_, connecitonMap'EFF8_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EFEB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'EFF8_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'EFE2_, (capacityMap'EFEB_, connecitonMap'EFF8_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'EFE2_, (capacityMap'EFEB_)));
        
        fun allStopsInConnectionMapAreInCapacityMap'10171_ (capacityMap'101FD_, connectionMap'1020A_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (74, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'101FD_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'1020A_))))) then raise RSL.RSL_exception ("./NET.rsl:72:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'101FD_, connectionMap'1020A_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'10241_, stopId2'1024A_):RT_x_2.t) => (((isIn'EF79_) (stopId1'10241_, (capacityMap'101FD_, connectionMap'1020A_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (76, 56)); ((isIn'EF79_) (stopId2'1024A_, (capacityMap'101FD_, connectionMap'1020A_))))) ((connectionMap'1020A_)))));
        
        fun isWellformed'10815_ net'10886_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'10886_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:89:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'10886_ ^ ")" ^ " not in subtype") else (((noSelfConnection'FEB5_) (net'10886_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); (((allStopsInConnectionMapAreInCapacityMap'10171_) (net'10886_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (93, 7)); ((allStopsHaveConnection'1042D_) (net'10886_)))));
        
        fun minDrivingTime'FB31_ (stopId1'FBA4_, stopId2'FBAD_, (capacityMap'FBB7_, connectionMap'FBC4_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (58, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FBB7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FBC4_))))) then raise RSL.RSL_exception ("./NET.rsl:56:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'FBA4_, stopId2'FBAD_, (capacityMap'FBB7_, connectionMap'FBC4_)) ^ " not in subtype") else let
            val (headway'FC00_, drivingTime'FC09_, capacity'FC16_) = ((((RT_m_4.R_app(connectionMap'FBC4_)) (stopId1'FBA4_, stopId2'FBAD_))):RT_x_3.t)
        in
            drivingTime'FC09_
        end);
        
        fun addConnection'ED85_ (stopId1'EDF7_, stopId2'EE00_, headway'EE09_, capacity'EE12_, drivingTime'EE1C_, (capacityMap'EE2A_, connectionMap'EE37_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'EE09_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'EE12_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'EE1C_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EE2A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'EE37_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'EDF7_, stopId2'EE00_, headway'EE09_, capacity'EE12_, drivingTime'EE1C_, (capacityMap'EE2A_, connectionMap'EE37_)) ^ " not in subtype") else (capacityMap'EE2A_, RT_m_4.R_override (connectionMap'EE37_, RT_m_4.R_fromList ([((stopId1'EDF7_, stopId2'EE00_), (headway'EE09_, drivingTime'EE1C_, capacity'EE12_))]))));
        
        fun capacity'F811_ (stopId1'F87E_, stopId2'F887_, (capacityMap'F891_, connectionMap'F89E_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (50, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F891_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F89E_))))) then raise RSL.RSL_exception ("./NET.rsl:48:5: Argument of capacity" ^ RT_x_12.toString (stopId1'F87E_, stopId2'F887_, (capacityMap'F891_, connectionMap'F89E_)) ^ " not in subtype") else let
            val (headway'F8E0_, drivingTime'F8E9_, capacity'F8F6_) = ((((RT_m_4.R_app(connectionMap'F89E_)) (stopId1'F87E_, stopId2'F887_))):RT_x_3.t)
        in
            capacity'F8F6_
        end);
        
        fun insertStop'EB91_ (stopId'EC00_, capacity'EC08_, (capacityMap'EC13_, connectionMap'EC20_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'EC08_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EC13_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'EC20_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'EC00_, capacity'EC08_, (capacityMap'EC13_, connectionMap'EC20_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'EC13_, RT_m_1.R_fromList ([(stopId'EC00_, capacity'EC08_)])), connectionMap'EC20_));
        
        fun minHeadway'F4F1_ (stopId1'F560_, stopId2'F569_, (capacityMap'F573_, connectionMap'F580_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (42, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F573_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F580_))))) then raise RSL.RSL_exception ("./NET.rsl:40:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'F560_, stopId2'F569_, (capacityMap'F573_, connectionMap'F580_)) ^ " not in subtype") else let
            val (headway'F5C0_, drivingTime'F5C9_, capacity'F5D6_) = ((((RT_m_4.R_app(connectionMap'F580_)) (stopId1'F560_, stopId2'F569_))):RT_x_3.t)
        in
            headway'F5C0_
        end);
        
        val empty'EAC9_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun areDirectlyConnected'F299_ (stopId1'F312_, stopId2'F31B_, (capacityMap'F325_, connectionMap'F332_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F325_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F332_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'F312_, stopId2'F31B_, (capacityMap'F325_, connectionMap'F332_)) ^ " not in subtype") else (RT_m_4.R_mem ((stopId1'F312_, stopId2'F31B_), (connectionMap'F332_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (37, 7)); RT_m_4.R_mem ((stopId2'F31B_, stopId1'F312_), (connectionMap'F332_))));
        
        fun capacity'F109_ (stopId'F177_, (capacityMap'F17F_, connectionMap'F18C_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F17F_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F18C_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'F177_, (capacityMap'F17F_, connectionMap'F18C_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'F17F_)) (stopId'F177_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type TramPlanRow_ = RT_x_17.t;
        
        type Plan_ = RT_l_15.t;
        
        fun buildTimesForTramOnStop'95A1_ (stopid'961D_, plan'9625_, tramid'962B_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (244, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x116_'0_, x117_'0_, x118_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x117_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0"))
        end) (plan'9625_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:242:5: Argument of buildTimesForTramOnStop" ^ RT_x_29.toString (stopid'961D_, plan'9625_, tramid'962B_) ^ " not in subtype") else if RT_Nat.R_lt (RT_l_15.R_length(plan'9625_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (245, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (247, 9)); let
            val (sid'9800_, arrt'9805_, dept'980B_) = ((RT_l_15.R_hd(plan'9625_)):RT_x_14.t)
        in
            if RT_Text.equ (sid'9800_, stopid'961D_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (251, 16)); RT_s_26.R_union (RT_s_26.R_fromList ([(tramid'962B_, arrt'9805_, dept'980B_)]), ((buildTimesForTramOnStop'95A1_) (stopid'961D_, RT_l_15.R_tl(plan'9625_), tramid'962B_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (252, 16)); ((buildTimesForTramOnStop'95A1_) (stopid'961D_, RT_l_15.R_tl(plan'9625_), tramid'962B_)))
        end));
        
        fun buildAllTimesForStop'9029_ (stopid'90A2_, trams'90AA_, timetable'90B1_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (230, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x113_'0_, x114_'0_, x115_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'90B1_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:228:5: Argument of buildAllTimesForStop" ^ RT_x_28.toString (stopid'90A2_, trams'90AA_, timetable'90B1_) ^ " not in subtype") else if RT_s_11.equ (trams'90AA_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (231, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (233, 9)); let
            val tramid'9287_ = ((RT_s_11.R_hd(trams'90AA_)):RT_Text.t)
        in
            RT_s_26.R_union (((buildTimesForTramOnStop'95A1_) (stopid'90A2_, ((RT_m_16.R_app(timetable'90B1_)) (tramid'9287_)), tramid'9287_)), ((buildAllTimesForStop'9029_) (stopid'90A2_, RT_s_11.R_diff (trams'90AA_, RT_s_11.R_fromList ([tramid'9287_])), timetable'90B1_)))
        end));
        
        fun countOverlappingTimesForStop'8985_ (tramid'8A06_, arrtime'8A0D_, deptime'8A16_, times'8A1F_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (213, 7)); if not((RT_Nat.R_ge (arrtime'8A0D_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (deptime'8A16_, RT_Int.fromLit "0")) andalso ((RT_s_26.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x110_'0_, x111_'0_, x112_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0"))
        end) (times'8A1F_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:211:5: Argument of countOverlappingTimesForStop" ^ RT_x_27.toString (tramid'8A06_, arrtime'8A0D_, deptime'8A16_, times'8A1F_) ^ " not in subtype") else if RT_s_26.equ (times'8A1F_, RT_s_26.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (214, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (216, 9)); let
            val (tramid2'8BE4_, arrtime2'8BED_, deptime2'8BF7_) = ((RT_s_26.R_hd(times'8A1F_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'8A06_, tramid2'8BE4_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 35)); ((((RT_Nat.R_lt (arrtime'8A0D_, arrtime2'8BED_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 59)); RT_Nat.R_lt (arrtime2'8BED_, deptime'8A16_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 81)); ((RT_Nat.R_lt (arrtime'8A0D_, deptime2'8BF7_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (220, 4)); RT_Nat.R_lt (deptime2'8BF7_, deptime'8A16_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (220, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'8985_) (tramid'8A06_, arrtime'8A0D_, deptime'8A16_, RT_s_26.R_diff (times'8A1F_, RT_s_26.R_fromList ([(tramid2'8BE4_, arrtime2'8BED_, deptime2'8BF7_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (221, 16)); ((countOverlappingTimesForStop'8985_) (tramid'8A06_, arrtime'8A0D_, deptime'8A16_, RT_s_26.R_diff (times'8A1F_, RT_s_26.R_fromList ([(tramid2'8BE4_, arrtime2'8BED_, deptime2'8BF7_)])))))
        end));
        
        fun stopCapacityIsNotExceeded'C7A3_ (stopid'C821_, timetable'C829_, capacityMap'C834_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (372, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x180_'0_, x181_'0_, x182_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x181_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x182_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C829_)))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C834_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:370:7: Argument of stopCapacityIsNotExceeded" ^ RT_x_33.toString (stopid'C821_, timetable'C829_, capacityMap'C834_) ^ " not in subtype") else let
            val times'C8D3_ = ((((buildAllTimesForStop'9029_) (stopid'C821_, RT_m_16.R_dom((timetable'C829_)), timetable'C829_))):RT_s_26.t); 
            val capacity'C937_ = ((((RT_m_1.R_app(capacityMap'C834_)) (stopid'C821_))):RT_Nat.t)
        in
            ((RT_s_26.R_all (fn ((tramid'CA05_, arrtime'CA0D_, deptime'CA16_):RT_x_14.t) => not ((RT_Nat.R_ge (arrtime'CA0D_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (deptime'CA16_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'8985_) (tramid'CA05_, arrtime'CA0D_, deptime'CA16_, times'C8D3_))), capacity'C937_)))) (times'C8D3_)))
        end);
        
        fun allStopCapacitiesAreNotExceeded'C483_ (timetable'C507_, (capacityMap'C513_, connectionMap'C51F_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (364, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x172_'0_, x173_'0_, x174_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x173_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x174_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C507_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C513_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x177_'0_, x178_'0_, x179_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x177_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x178_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x179_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C51F_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:362:7: Argument of allStopCapacitiesAreNotExceeded" ^ RT_x_31.toString (timetable'C507_, (capacityMap'C513_, connectionMap'C51F_)) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopid'C552_:RT_Text.t) => ((stopCapacityIsNotExceeded'C7A3_) (stopid'C552_, timetable'C507_, capacityMap'C513_))) ((capacityMap'C513_)))));
        
        fun getConnection'501B_ (stop1'508D_, stop2'5094_, (capacityMap'509C_, connectionMap'50A9_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'509C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'50A9_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:64:7: Argument of getConnection" ^ RT_x_12.toString (stop1'508D_, stop2'5094_, (capacityMap'509C_, connectionMap'50A9_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'508D_, stop2'5094_), (connectionMap'50A9_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (68, 9)); ((RT_m_4.R_app(connectionMap'50A9_)) ((stop1'508D_, stop2'5094_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9)); ((RT_m_4.R_app(connectionMap'50A9_)) ((stop2'5094_, stop1'508D_)))));
        
        fun timeBetweenStopsIsDrivingTime'9E9D_ (plan'9F1F_, (capacityMap'9F26_, connectionMap'9F33_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (267, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x119_'0_, x120_'0_, x121_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x120_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0"))
        end) (plan'9F1F_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'9F26_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x124_'0_, x125_'0_, x126_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x125_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'9F33_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:265:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_30.toString (plan'9F1F_, (capacityMap'9F26_, connectionMap'9F33_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'9F1F_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (268, 9)); let
            val (stopid1'A034_, arrTime1'A03D_, depTime1'A047_) = ((RT_l_15.R_hd(plan'9F1F_)):RT_x_14.t); 
            val (stopid2'A098_, arrTime2'A0A1_, depTime2'A0AB_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'9F1F_)))):RT_x_14.t)
        in
            let
                val (headway'A1C6_, drivingTime'A1CE_, capacity'A1DB_) = ((((getConnection'501B_) (stopid1'A034_, stopid2'A098_, (capacityMap'9F26_, connectionMap'9F33_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'A0A1_, depTime1'A047_), drivingTime'A1CE_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (275, 53)); ((timeBetweenStopsIsDrivingTime'9E9D_) (RT_l_15.R_tl(plan'9F1F_), (capacityMap'9F26_, connectionMap'9F33_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (279, 9)); true));
        
        fun allTimeBetweenStopsIsValidDrivingTime'A541_ (t'A5CB_, n'A5CE_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (284, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x127_'0_, x128_'0_, x129_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'A5CB_)))) andalso (let
            val (x130_'0_, x131_'0_) = ((n'A5CE_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x130_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x134_'0_, x135_'0_, x136_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x135_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x136_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x131_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:282:5: Argument of allTimeBetweenStopsIsValidDrivingTime" ^ RT_x_31.toString (t'A5CB_, n'A5CE_) ^ " not in subtype") else ((RT_s_19.R_all (fn (plan'A610_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x220_'0_, x221_'0_, x222_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x221_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x222_'0_, RT_Int.fromLit "0"))
        end) (plan'A610_))) orelse (((timeBetweenStopsIsDrivingTime'9E9D_) (plan'A610_, n'A5CE_)))) (RT_m_16.R_ran((t'A5CB_))))));
        
        fun nextStop'452B_ (planRow'4598_, plan'45A1_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (38, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'4598_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'45A1_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:36:7: Argument of nextStop" ^ RT_x_21.toString (planRow'4598_, plan'45A1_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'45A1_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:61:13: Precondition of nextStop" ^ RT_x_21.toString (planRow'4598_, plan'45A1_) ^ " not satisfied") else let
            val iPlanRow'465B_ = ((RT_l_15.R_hd(plan'45A1_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'465B_, planRow'4598_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (43, 13)); let
                val (sid'4854_, arrt'4859_, dept'485F_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'45A1_)))):RT_x_14.t)
            in
                (sid'4854_, arrt'4859_, dept'485F_)
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (49, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'45A1_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (51, 15)); ((nextStop'452B_) (planRow'4598_, RT_l_15.R_tl(plan'45A1_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (53, 15)); let
                val (sid'4C3E_, arrt'4C43_, dept'4C49_) = ((iPlanRow'465B_):RT_x_14.t)
            in
                iPlanRow'465B_
            end))
        end);
        
        fun buildTimesForTramOnTrack'827D_ (stopid1'82FB_, stopid2'8304_, plan'830D_, tramid'8313_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (195, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x107_'0_, x108_'0_, x109_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0"))
        end) (plan'830D_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:193:5: Argument of buildTimesForTramOnTrack" ^ RT_x_25.toString (stopid1'82FB_, stopid2'8304_, plan'830D_, tramid'8313_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'830D_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (196, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (198, 9)); let
            val (sid'84DC_, arrt'84E1_, dept'84E7_) = ((RT_l_15.R_hd(plan'830D_)):RT_x_14.t); 
            val (sid2'8540_, arrt2'8546_, dept2'854D_) = ((((nextStop'452B_) ((sid'84DC_, arrt'84E1_, dept'84E7_), plan'830D_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'84DC_, stopid1'82FB_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (202, 31)); RT_Text.equ (sid2'8540_, stopid2'8304_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (203, 16)); RT_s_26.R_union (RT_s_26.R_fromList ([(tramid'8313_, dept'84E7_, arrt2'8546_)]), ((buildTimesForTramOnTrack'827D_) (stopid1'82FB_, stopid2'8304_, RT_l_15.R_tl(plan'830D_), tramid'8313_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (204, 16)); ((buildTimesForTramOnTrack'827D_) (stopid1'82FB_, stopid2'8304_, RT_l_15.R_tl(plan'830D_), tramid'8313_)))
        end));
        
        fun buildAllTimesForTrack'7D05_ (stopid1'7D7F_, stopid2'7D88_, trams'7D91_, timetable'7D98_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (181, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x104_'0_, x105_'0_, x106_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x105_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7D98_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:179:5: Argument of buildAllTimesForTrack" ^ RT_x_24.toString (stopid1'7D7F_, stopid2'7D88_, trams'7D91_, timetable'7D98_) ^ " not in subtype") else if RT_s_11.equ (trams'7D91_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (182, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (184, 9)); let
            val tramid'7F63_ = ((RT_s_11.R_hd(trams'7D91_)):RT_Text.t)
        in
            RT_s_26.R_union (((buildTimesForTramOnTrack'827D_) (stopid1'7D7F_, stopid2'7D88_, ((RT_m_16.R_app(timetable'7D98_)) (tramid'7F63_)), tramid'7F63_)), ((buildAllTimesForTrack'7D05_) (stopid1'7D7F_, stopid2'7D88_, RT_s_11.R_diff (trams'7D91_, RT_s_11.R_fromList ([tramid'7F63_])), timetable'7D98_)))
        end));
        
        fun countOverlappingTimesForTrack'7661_ (tramid'76E3_, deptime'76EA_, arrtime'76F3_, times'76FC_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (164, 7)); if not((RT_Nat.R_ge (deptime'76EA_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (arrtime'76F3_, RT_Int.fromLit "0")) andalso ((RT_s_26.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (times'76FC_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:162:5: Argument of countOverlappingTimesForTrack" ^ RT_x_27.toString (tramid'76E3_, deptime'76EA_, arrtime'76F3_, times'76FC_) ^ " not in subtype") else if RT_s_26.equ (times'76FC_, RT_s_26.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (165, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (167, 9)); let
            val (tramid2'78C0_, deptime2'78C9_, arrtime2'78D3_) = ((RT_s_26.R_hd(times'76FC_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'76E3_, tramid2'78C0_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (170, 35)); ((((RT_Nat.R_lt (deptime'76EA_, deptime2'78C9_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (170, 59)); RT_Nat.R_lt (deptime2'78C9_, arrtime'76F3_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (170, 81)); ((RT_Nat.R_lt (deptime'76EA_, arrtime2'78D3_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (171, 4)); RT_Nat.R_lt (arrtime2'78D3_, arrtime'76F3_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (171, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7661_) (tramid'76E3_, deptime'76EA_, arrtime'76F3_, RT_s_26.R_diff (times'76FC_, RT_s_26.R_fromList ([(tramid2'78C0_, deptime2'78C9_, arrtime2'78D3_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (172, 16)); ((countOverlappingTimesForTrack'7661_) (tramid'76E3_, deptime'76EA_, arrtime'76F3_, RT_s_26.R_diff (times'76FC_, RT_s_26.R_fromList ([(tramid2'78C0_, deptime2'78C9_, arrtime2'78D3_)])))))
        end));
        
        fun trackCapacityIsNotExceeded'BE41_ (stopid1'BEC0_, stopid2'BEC9_, timetable'BED2_, connectionMap'BEDD_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (348, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x164_'0_, x165_'0_, x166_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x165_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x166_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'BED2_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x169_'0_, x170_'0_, x171_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x169_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x170_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x171_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'BEDD_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:346:5: Argument of trackCapacityIsNotExceeded" ^ RT_x_32.toString (stopid1'BEC0_, stopid2'BEC9_, timetable'BED2_, connectionMap'BEDD_) ^ " not in subtype") else let
            val times1'BF72_ = ((((buildAllTimesForTrack'7D05_) (stopid1'BEC0_, stopid2'BEC9_, RT_m_16.R_dom((timetable'BED2_)), timetable'BED2_))):RT_s_26.t); 
            val times2'BFD6_ = ((((buildAllTimesForTrack'7D05_) (stopid2'BEC9_, stopid1'BEC0_, RT_m_16.R_dom((timetable'BED2_)), timetable'BED2_))):RT_s_26.t); 
            val (headway'C03B_, drivingtime'C044_, trackcapacity'C051_) = ((((RT_m_4.R_app(connectionMap'BEDD_)) (stopid1'BEC0_, stopid2'BEC9_))):RT_x_3.t)
        in
            (((RT_s_26.R_all (fn ((tramid'C108_, deptime'C110_, arrtime'C119_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'C110_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'C119_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7661_) (tramid'C108_, deptime'C110_, arrtime'C119_, times1'BF72_))), trackcapacity'C051_)))) (times1'BF72_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (355, 15)); ((RT_s_26.R_all (fn ((tramid'C1D5_, deptime'C1DD_, arrtime'C1E6_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'C1DD_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'C1E6_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7661_) (tramid'C1D5_, deptime'C1DD_, arrtime'C1E6_, times2'BFD6_))), trackcapacity'C051_)))) (times2'BFD6_))))
        end);
        
        fun allTrackCapacitiesAreNotExceeded'BB21_ (timetable'BBA6_, (capacityMap'BBB2_, connectionMap'BBBE_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (340, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x156_'0_, x157_'0_, x158_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x157_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'BBA6_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'BBB2_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x161_'0_, x162_'0_, x163_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x161_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x162_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x163_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'BBBE_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:338:5: Argument of allTrackCapacitiesAreNotExceeded" ^ RT_x_31.toString (timetable'BBA6_, (capacityMap'BBB2_, connectionMap'BBBE_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'BBF1_, stopid2'BBFA_):RT_x_2.t) => ((trackCapacityIsNotExceeded'BE41_) (stopid1'BBF1_, stopid2'BBFA_, timetable'BBA6_, connectionMap'BBBE_))) ((connectionMap'BBBE_)))));
        
        fun findDepartureRowInPlan'5CFD_ (stopid1'5D78_, stopid2'5D81_, plan'5D8A_, tram'5D90_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (99, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'5D8A_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:97:5: Argument of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'5D78_, stopid2'5D81_, plan'5D8A_, tram'5D90_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'5D8A_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:115:11: Precondition of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'5D78_, stopid2'5D81_, plan'5D8A_, tram'5D90_) ^ " not satisfied") else let
            val (hStopId'5E2E_, hArrTime'5E37_, hDepTime'5E41_) = ((RT_l_15.R_hd(plan'5D8A_)):RT_x_14.t); 
            val (nStopId'5E92_, nArrTime'5E9B_, nDepTime'5EA5_) = ((((nextStop'452B_) (RT_l_15.R_hd(plan'5D8A_), plan'5D8A_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'5E2E_, stopid1'5D78_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (103, 33)); RT_Text.equ (nStopId'5E92_, stopid2'5D81_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (105, 11)); (tram'5D90_, hStopId'5E2E_, hArrTime'5E37_, hDepTime'5E41_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (107, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'5D8A_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (109, 13)); ((findDepartureRowInPlan'5CFD_) (stopid1'5D78_, stopid2'5D81_, RT_l_15.R_tl(plan'5D8A_), tram'5D90_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (111, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'57E9_ (stopid1'586F_, stopid2'5878_, trams'5881_, timetable'5888_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5888_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:84:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_24.toString (stopid1'586F_, stopid2'5878_, trams'5881_, timetable'5888_) ^ " not in subtype") else if RT_s_11.equ (trams'5881_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (87, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (89, 9)); let
            val tram'5A47_ = ((RT_s_11.R_hd(trams'5881_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findDepartureRowInPlan'5CFD_) (stopid1'586F_, stopid2'5878_, ((RT_m_16.R_app(timetable'5888_)) (tram'5A47_)), tram'5A47_))]), ((buildAllDeparturesUsingConnection'57E9_) (stopid1'586F_, stopid2'5878_, RT_s_11.R_diff (trams'5881_, RT_s_11.R_fromList ([tram'5A47_])), timetable'5888_)))
        end));
        
        fun getAllDepaturesUsingConnection'5465_ (stopid1'54E8_, stopid2'54F1_, timetable'54FA_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (77, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'54FA_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:75:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_22.toString (stopid1'54E8_, stopid2'54F1_, timetable'54FA_) ^ " not in subtype") else let
            val allTrams'5595_ = ((RT_m_16.R_dom(timetable'54FA_)):RT_s_11.t)
        in
            ((buildAllDeparturesUsingConnection'57E9_) (stopid1'54E8_, stopid2'54F1_, allTrams'5595_, timetable'54FA_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'A7FD_ (timetable'A885_, (capacityMap'A891_, connectionMap'A89E_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (291, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x137_'0_, x138_'0_, x139_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x138_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x139_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'A885_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'A891_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x142_'0_, x143_'0_, x144_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x142_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x143_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x144_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'A89E_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:289:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_31.toString (timetable'A885_, (capacityMap'A891_, connectionMap'A89E_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'A8CD_, stopid2'A8D6_):RT_x_2.t) => let
            val (headway'A932_, drivingTime'A93A_, capacity'A947_) = ((((RT_m_4.R_app(connectionMap'A89E_)) ((stopid1'A8CD_, stopid2'A8D6_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'A9FD_, sid1'AA04_, arrt1'AA0A_, dept1'AA11_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'AA0A_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'AA11_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'AA63_, sid2'AA6A_, arrt2'AA70_, dept2'AA77_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'AA70_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'AA77_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'AA11_, dept2'AA77_))), headway'A932_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'5465_) (stopid1'A8CD_, stopid2'A8D6_, timetable'A885_)), RT_s_23.R_fromList ([(tram1'A9FD_, sid1'AA04_, arrt1'AA0A_, dept1'AA11_)]))))))) (((getAllDepaturesUsingConnection'5465_) (stopid1'A8CD_, stopid2'A8D6_, timetable'A885_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (298, 11)); ((RT_s_23.R_all (fn ((tram1'AB8D_, sid1'AB94_, arrt1'AB9A_, dept1'ABA1_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'AB9A_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'ABA1_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'ABF1_, sid2'ABF8_, arrt2'ABFE_, dept2'AC05_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'ABFE_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'AC05_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'ABA1_, dept2'AC05_))), headway'A932_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'5465_) (stopid2'A8D6_, stopid1'A8CD_, timetable'A885_)), RT_s_23.R_fromList ([(tram1'AB8D_, sid1'AB94_, arrt1'AB9A_, dept1'ABA1_)]))))))) (((getAllDepaturesUsingConnection'5465_) (stopid2'A8D6_, stopid1'A8CD_, timetable'A885_))))))
        end) ((connectionMap'A89E_)))));
        
        fun tramStopsAtAllStopsItPasses'B6D5_ timetable'B755_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (329, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x153_'0_, x154_'0_, x155_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x154_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x155_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B755_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:327:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'B755_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'B7A4_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'B80B_, arrTime'B813_, depTime'B81C_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'B813_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'B81C_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'B81C_, arrTime'B813_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'B755_)) (tramid'B7A4_)))))) ((timetable'B755_)))));
        
        fun findArrivalRowInPlan'6DC9_ (stopid1'6E42_, stopid2'6E4B_, plan'6E54_, tram'6E5A_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (142, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'6E54_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:140:5: Argument of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'6E42_, stopid2'6E4B_, plan'6E54_, tram'6E5A_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'6E54_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:158:11: Precondition of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'6E42_, stopid2'6E4B_, plan'6E54_, tram'6E5A_) ^ " not satisfied") else let
            val (hStopId'6EFA_, hArrTime'6F03_, hDepTime'6F0D_) = ((RT_l_15.R_hd(plan'6E54_)):RT_x_14.t); 
            val (nStopId'6F5E_, nArrTime'6F67_, nDepTime'6F71_) = ((((nextStop'452B_) (RT_l_15.R_hd(plan'6E54_), plan'6E54_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'6EFA_, stopid1'6E42_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (146, 33)); RT_Text.equ (nStopId'6F5E_, stopid2'6E4B_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (148, 11)); (tram'6E5A_, nStopId'6F5E_, nArrTime'6F67_, nDepTime'6F71_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (150, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'6E54_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (152, 13)); ((findArrivalRowInPlan'6DC9_) (stopid1'6E42_, stopid2'6E4B_, RT_l_15.R_tl(plan'6E54_), tram'6E5A_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (154, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllArrivalsUsingConnection'68B5_ (stopid1'6939_, stopid2'6942_, trams'694B_, timetable'6952_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (129, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6952_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:127:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_24.toString (stopid1'6939_, stopid2'6942_, trams'694B_, timetable'6952_) ^ " not in subtype") else if RT_s_11.equ (trams'694B_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (130, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (132, 9)); let
            val tram'6B13_ = ((RT_s_11.R_hd(trams'694B_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findArrivalRowInPlan'6DC9_) (stopid1'6939_, stopid2'6942_, ((RT_m_16.R_app(timetable'6952_)) (tram'6B13_)), tram'6B13_))]), ((buildAllArrivalsUsingConnection'68B5_) (stopid1'6939_, stopid2'6942_, RT_s_11.R_diff (trams'694B_, RT_s_11.R_fromList ([tram'6B13_])), timetable'6952_)))
        end));
        
        fun getAllArrivalsUsingConnection'6531_ (stopid1'65B3_, stopid2'65BC_, timetable'65C5_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (120, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'65C5_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:118:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_22.toString (stopid1'65B3_, stopid2'65BC_, timetable'65C5_) ^ " not in subtype") else let
            val allTrams'6661_ = ((RT_m_16.R_dom(timetable'65C5_)):RT_s_11.t)
        in
            ((buildAllArrivalsUsingConnection'68B5_) (stopid1'65B3_, stopid2'65BC_, allTrams'6661_, timetable'65C5_))
        end);
        
        fun timeBetweenArrivalIsValidHeadway'B031_ (timetable'B0B6_, (capacityMap'B0C2_, connectionMap'B0CF_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (312, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x145_'0_, x146_'0_, x147_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x146_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x147_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B0B6_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'B0C2_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x150_'0_, x151_'0_, x152_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x150_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x151_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x152_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B0CF_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:310:5: Argument of timeBetweenArrivalIsValidHeadway" ^ RT_x_31.toString (timetable'B0B6_, (capacityMap'B0C2_, connectionMap'B0CF_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'B101_, stopid2'B10A_):RT_x_2.t) => let
            val (headway'B166_, drivingTime'B16E_, capacity'B17B_) = ((((RT_m_4.R_app(connectionMap'B0CF_)) ((stopid1'B101_, stopid2'B10A_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'B231_, sid1'B238_, arrt1'B23E_, dept1'B245_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'B23E_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'B245_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'B297_, sid2'B29E_, arrt2'B2A4_, dept2'B2AB_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'B2A4_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'B2AB_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'B23E_, arrt2'B2A4_))), headway'B166_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'6531_) (stopid1'B101_, stopid2'B10A_, timetable'B0B6_)), RT_s_23.R_fromList ([(tram1'B231_, sid1'B238_, arrt1'B23E_, dept1'B245_)]))))))) (((getAllArrivalsUsingConnection'6531_) (stopid1'B101_, stopid2'B10A_, timetable'B0B6_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (319, 11)); ((RT_s_23.R_all (fn ((tram1'B3C1_, sid1'B3C8_, arrt1'B3CE_, dept1'B3D5_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'B3CE_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'B3D5_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'B427_, sid2'B42E_, arrt2'B434_, dept2'B43B_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'B434_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'B43B_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'B3CE_, arrt2'B434_))), headway'B166_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'6531_) (stopid2'B10A_, stopid1'B101_, timetable'B0B6_)), RT_s_23.R_fromList ([(tram1'B3C1_, sid1'B3C8_, arrt1'B3CE_, dept1'B3D5_)]))))))) (((getAllArrivalsUsingConnection'6531_) (stopid2'B10A_, stopid1'B101_, timetable'B0B6_))))))
        end) ((connectionMap'B0CF_)))));
        
        fun isWellformed'E106_ (t'E177_, n'E17A_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (437, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x210_'0_, x211_'0_, x212_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x211_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'E177_)))) andalso (let
            val (x213_'0_, x214_'0_) = ((n'E17A_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x213_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x217_'0_, x218_'0_, x219_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x217_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x218_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x219_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x214_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:435:6: Argument of isWellformed" ^ RT_x_31.toString (t'E177_, n'E17A_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'B6D5_) (t'E177_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (438, 8)); (((timeBetweenDeparturesIsValidHeadway'A7FD_) (t'E177_, n'E17A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (439, 8)); (((timeBetweenArrivalIsValidHeadway'B031_) (t'E177_, n'E17A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (440, 8)); (((allTimeBetweenStopsIsValidDrivingTime'A541_) (t'E177_, n'E17A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (441, 8)); (((allTrackCapacitiesAreNotExceeded'BB21_) (t'E177_, n'E17A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (442, 8)); ((allStopCapacitiesAreNotExceeded'C483_) (t'E177_, n'E17A_))))))));
        
        fun stopsAreConnected'D03B_ (plan'D0B1_, connectionMap'D0B7_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (394, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x191_'0_, x192_'0_, x193_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x192_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x193_'0_, RT_Int.fromLit "0"))
        end) (plan'D0B1_))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x196_'0_, x197_'0_, x198_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x196_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x197_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x198_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D0B7_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:392:7: Argument of stopsAreConnected" ^ RT_x_34.toString (plan'D0B1_, connectionMap'D0B7_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'D0B1_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (395, 14)); true) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (397, 11)); let
            val (sid'D29A_, arrt'D29F_, dept'D2A5_) = ((RT_l_15.R_hd(plan'D0B1_)):RT_x_14.t); 
            val (sid2'D2FE_, arrt2'D304_, dept2'D30B_) = ((((nextStop'452B_) ((sid'D29A_, arrt'D29F_, dept'D2A5_), plan'D0B1_))):RT_x_14.t)
        in
            if (RT_m_4.R_mem ((sid'D29A_, sid2'D2FE_), (connectionMap'D0B7_))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (401, 54)); RT_m_4.R_mem ((sid2'D2FE_, sid'D29A_), (connectionMap'D0B7_))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (402, 18)); ((stopsAreConnected'D03B_) (RT_l_15.R_tl(plan'D0B1_), connectionMap'D0B7_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (403, 18)); false)
        end));
        
        fun allStopsAreConnected'CD1B_ (timetable'CD94_, (capacityMap'CDA0_, connectionMap'CDAC_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (386, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x183_'0_, x184_'0_, x185_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x184_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x185_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'CD94_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'CDA0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x188_'0_, x189_'0_, x190_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x188_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x189_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x190_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'CDAC_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:384:7: Argument of allStopsAreConnected" ^ RT_x_31.toString (timetable'CD94_, (capacityMap'CDA0_, connectionMap'CDAC_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'CDEA_:RT_Text.t) => ((stopsAreConnected'D03B_) (((RT_m_16.R_app(timetable'CD94_)) (tramid'CDEA_)), connectionMap'CDAC_))) ((timetable'CD94_)))));
        
        fun stopsExist'DA61_ (plan'DAD0_, capacityMap'DAD6_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (420, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x207_'0_, x208_'0_, x209_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x208_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x209_'0_, RT_Int.fromLit "0"))
        end) (plan'DAD0_))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'DAD6_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:418:5: Argument of stopsExist" ^ RT_x_35.toString (plan'DAD0_, capacityMap'DAD6_) ^ " not in subtype") else if RT_Nat.equ (RT_l_15.R_length(plan'DAD0_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (421, 12)); true) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (423, 9)); let
            val (sid'DCC0_, arrt'DCC5_, dept'DCCB_) = ((RT_l_15.R_hd(plan'DAD0_)):RT_x_14.t)
        in
            if RT_m_1.R_mem (sid'DCC0_, (capacityMap'DAD6_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (427, 16)); ((stopsExist'DA61_) (RT_l_15.R_tl(plan'DAD0_), capacityMap'DAD6_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (428, 16)); false)
        end));
        
        fun allStopsInPlanExist'D741_ (timetable'D7B9_, (capacityMap'D7C5_, connectionMap'D7D2_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (412, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x199_'0_, x200_'0_, x201_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x200_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x201_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'D7B9_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D7C5_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x204_'0_, x205_'0_, x206_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x204_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x205_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x206_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D7D2_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:410:5: Argument of allStopsInPlanExist" ^ RT_x_31.toString (timetable'D7B9_, (capacityMap'D7C5_, connectionMap'D7D2_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'D810_:RT_Text.t) => ((stopsExist'DA61_) (((RT_m_16.R_app(timetable'D7B9_)) (tramid'D810_)), capacityMap'D7C5_))) ((timetable'D7B9_)))));
        
        fun isIn'42D1_ (tramid'433A_, timetable'4342_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (32, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4342_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:30:5: Argument of isIn" ^ RT_x_18.toString (tramid'433A_, timetable'4342_) ^ " not in subtype") else RT_m_16.R_mem (tramid'433A_, (timetable'4342_)));
        
        val empty'3C93_ = let val z__'3CA5_ = RT_m_16.R_fromList [] in if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x223_'0_, x224_'0_, x225_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x224_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x225_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'3CA5_)))) then (RSL.add_load_err("./TIMETABLE.rsl:14:25: Value " ^ RT_m_16.toString(z__'3CA5_) ^ " of empty not in subtype"); z__'3CA5_) else z__'3CA5_ end;
        
        fun addStop'3FB3_ (tramid'401F_, stopid'4027_, arrival'402F_, departure'4038_, timetable'4043_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (24, 9)); if not((RT_Nat.R_ge (arrival'402F_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'4038_, RT_Int.fromLit "0")) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4043_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:22:7: Argument of addStop" ^ RT_x_20.toString (tramid'401F_, stopid'4027_, arrival'402F_, departure'4038_, timetable'4043_) ^ " not in subtype") else RT_m_16.R_override (timetable'4043_, RT_m_16.R_fromList ([(tramid'401F_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'4043_)) (tramid'401F_)), [(stopid'4027_, arrival'402F_, departure'4038_)]))])));
        
        fun addTram'3DBF_ (tramid'3E2B_, timetable'3E33_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (19, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3E33_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:17:7: Argument of addTram" ^ RT_x_18.toString (tramid'3E2B_, timetable'3E33_) ^ " not in subtype") else RT_m_16.R_override (timetable'3E33_, RT_m_16.R_fromList ([(tramid'3E2B_, ([]:RT_l_15.t))])));
        
        val connectionTest'22D2_ = (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1");
        
        val tramIdA'32D_ = RT_Text.fromLit "tram1";
        
        val stopCapacitywithAddedStop'207A_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2"), (RT_Text.fromLit "E", RT_Int.fromLit "2")]);
        
        val connectionMap'521_ = RT_m_4.R_fromList ([((RT_Text.fromLit "B", RT_Text.fromLit "D"), (RT_Int.fromLit "2", RT_Int.fromLit "7", RT_Int.fromLit "2")), ((RT_Text.fromLit "A", RT_Text.fromLit "B"), (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1")), ((RT_Text.fromLit "B", RT_Text.fromLit "C"), (RT_Int.fromLit "2", RT_Int.fromLit "12", RT_Int.fromLit "3"))]);
        
        val netWithAddedStop'21A6_ = (stopCapacitywithAddedStop'207A_, connectionMap'521_);
        
        val tramNotIn'3F5_ = RT_Text.fromLit "tramG";
        
        val plan13'1EE9_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan12'1E85_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60"), (RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10")];
        
        val timetableWithAddedStop'1F4D_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan12'1E85_), (RT_Text.fromLit "tram2", plan13'1EE9_)]);
        
        val plan11'1CF4_ = let val z__'1D02_ = ([]:RT_l_15.t) in if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x226_'0_, x227_'0_, x228_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x227_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x228_'0_, RT_Int.fromLit "0"))
        end) (z__'1D02_))) then (RSL.add_load_err("./testTimeTable.rsl:74:26: Value " ^ RT_l_15.toString(z__'1D02_) ^ " of plan11 not in subtype"); z__'1D02_) else z__'1D02_ end;
        
        val plan1'841_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val plan2'8A5_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val timetableWithAddedTram'1D58_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (tramNotIn'3F5_, plan11'1CF4_)]);
        
        val timetableWF'909_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_)]);
        
        val stopCapacity'585_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2")]);
        
        val net'6B1_ = (stopCapacity'585_, connectionMap'521_);
        
        val tramIdB'391_ = RT_Text.fromLit "tram2";
        
        val planInvalidDrivingTime'A35_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "8", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan9'1B64_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timeTableWithInvalidConnection'1BC8_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan9'1B64_)]);
        
        val plan7'1970_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "Q", RT_Int.fromLit "31", RT_Int.fromLit "33")];
        
        val timeTableWithInvalidStop'19D4_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan7'1970_)]);
        
        val plan6'17E0_ = [(RT_Text.fromLit "B", RT_Int.fromLit "15", RT_Int.fromLit "17"), (RT_Text.fromLit "A", RT_Int.fromLit "29", RT_Int.fromLit "30"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val plan5'177C_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "31", RT_Int.fromLit "33"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timeTableWithExceededStopCapacities'1844_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", plan5'177C_), (RT_Text.fromLit "tram4", plan6'17E0_)]);
        
        val plan4'1589_ = [(RT_Text.fromLit "B", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "48", RT_Int.fromLit "50")];
        
        val timetableWithAlmostExceededTrackCapacities'1651_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram4", plan4'1589_)]);
        
        val plan3'1525_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "32", RT_Int.fromLit "34"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timetableWithExceededTrackCapacities'15ED_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", plan3'1525_)]);
        
        val planWithoutStopTime'1395_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "12"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timetableWithoutStopTime'13F9_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", planWithoutStopTime'1395_)]);
        
        val planTooShortArrivalTime'1205_ = [(RT_Text.fromLit "C", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48")];
        
        val timetableInvalidArrivalHeadway'1269_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", planTooShortArrivalTime'1205_)]);
        
        val timetableDuplicateDepartureHeadway'EE5_ = ((addStop'3FB3_) (RT_Text.fromLit "tram3", RT_Text.fromLit "B", RT_Int.fromLit "14", RT_Int.fromLit "16", ((addStop'3FB3_) (RT_Text.fromLit "tram3", RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1", ((addTram'3DBF_) (RT_Text.fromLit "tram3", timetableWF'909_))))));
        
        val timetableInvalidDrivingTime'A99_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", planInvalidDrivingTime'A35_)]);
        
        val timetableInvalidDepartureHeadway'BC5_ = ((addStop'3FB3_) (RT_Text.fromLit "tram3", RT_Text.fromLit "C", RT_Int.fromLit "30", RT_Int.fromLit "60", ((addStop'3FB3_) (RT_Text.fromLit "tram3", RT_Text.fromLit "B", RT_Int.fromLit "0", RT_Int.fromLit "14", ((addTram'3DBF_) (RT_Text.fromLit "tram3", timetableWF'909_))))));
        
    end;
    
open testTimeTable;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (19, 9), (19, 38));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (24, 9), (26, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (32, 7), (32, 33));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (412, 7), (414, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (428, 16), (429, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (427, 16), (428, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (423, 9), (431, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (421, 12), (422, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (420, 7), (431, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (386, 9), (388, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (401, 54), (402, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (403, 18), (404, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (402, 18), (403, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (397, 11), (406, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (395, 14), (396, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (394, 9), (406, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (442, 8), (445, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (441, 8), (445, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (440, 8), (445, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (439, 8), (445, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (438, 8), (445, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (437, 8), (445, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (319, 11), (323, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (312, 7), (324, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (120, 7), (124, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (132, 9), (137, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (130, 12), (131, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (129, 7), (137, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (154, 13), (155, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (152, 13), (153, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (146, 33), (147, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (150, 11), (156, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (148, 11), (149, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (142, 7), (158, 23));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (329, 7), (333, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (298, 11), (302, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (291, 7), (303, 8));
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
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (340, 7), (342, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (355, 15), (358, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (348, 8), (358, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (171, 4), (171, 22));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (170, 59), (170, 76));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (170, 81), (171, 23));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (170, 35), (171, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (172, 16), (173, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (171, 16), (172, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (167, 9), (175, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (165, 12), (166, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (164, 7), (175, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (184, 9), (189, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (182, 12), (183, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (181, 7), (189, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (202, 31), (203, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (204, 16), (205, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (203, 16), (204, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (198, 9), (207, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (196, 12), (197, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (195, 7), (207, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (53, 15), (58, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (51, 15), (52, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (49, 13), (59, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (43, 13), (48, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (38, 9), (61, 25));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (284, 7), (285, 48));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (275, 53), (276, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (279, 9), (280, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (268, 9), (278, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (267, 7), (280, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9), (71, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (68, 9), (69, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (66, 7), (71, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (364, 9), (366, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (372, 9), (379, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (220, 4), (220, 22));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (219, 59), (219, 76));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (219, 81), (220, 23));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (219, 35), (220, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (221, 16), (222, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (220, 16), (221, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (216, 9), (224, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (214, 12), (215, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (213, 7), (224, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (233, 9), (238, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (231, 12), (232, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (230, 7), (238, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (252, 16), (253, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (251, 16), (252, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (247, 9), (255, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (245, 12), (246, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (244, 7), (257, 7));
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
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E106_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s2_validDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTimeBetweenStopsIsValidDrivingTime'A541_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTimeBetweenStopsIsValidDrivingTime'A541_) (timetableInvalidDrivingTime'A99_, net'6B1_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E106_) (timetableInvalidDrivingTime'A99_, net'6B1_)), false)));

(RSL.C_output "[s3_validHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A7FD_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A7FD_) (timetableInvalidDepartureHeadway'BC5_, net'6B1_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E106_) (timetableInvalidDepartureHeadway'BC5_, net'6B1_)), false)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A7FD_) (timetableDuplicateDepartureHeadway'EE5_, net'6B1_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E106_) (timetableDuplicateDepartureHeadway'EE5_, net'6B1_)), false)));

(RSL.C_output "[s5_validHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'B031_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s5_invalidHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'B031_) (timetableInvalidArrivalHeadway'1269_, net'6B1_)), false)));

(RSL.C_output "[s5_NotWellFormedArrivalHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E106_) (timetableInvalidArrivalHeadway'1269_, net'6B1_)), false)));

(RSL.C_output "[s6_tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'B6D5_) (timetableWF'909_)), true)));

(RSL.C_output "[s6_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'B6D5_) (timetableWithoutStopTime'13F9_)), false)));

(RSL.C_output "[s6_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'E106_) (timetableWithoutStopTime'13F9_, net'6B1_)), false)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDontExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'BB21_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackAlmostExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'BB21_) (timetableWithAlmostExceededTrackCapacities'1651_, net'6B1_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDoExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'BB21_) (timetableWithExceededTrackCapacities'15ED_, net'6B1_)), false)));

(RSL.C_output "[s8_NumberOfTramsAtStopDontExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'C483_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s8_NumberOfTramsAtStopDoExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'C483_) (timeTableWithExceededStopCapacities'1844_, net'6B1_)), false)));

(RSL.C_output "[s9_AllStopsInPlansExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'D741_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s9_AllStopsInPlansDoNotExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'D741_) (timeTableWithInvalidStop'19D4_, net'6B1_)), false)));

(RSL.C_output "[s10_allStopsAreConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'CD1B_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s10_allStopsAreNotConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'CD1B_) (timeTableWithInvalidConnection'1BC8_, net'6B1_)), false)));

(RSL.C_output "[s12_AddingTram] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addTram'3DBF_) (tramNotIn'3F5_, timetableWF'909_)), timetableWithAddedTram'1D58_)));

(RSL.C_output "[s12_addStop] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addStop'3FB3_) (tramIdA'32D_, RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10", timetableWF'909_)), timetableWithAddedStop'1F4D_)));

(RSL.C_output "[s13_isinExisting01] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'42D1_) (tramIdA'32D_, timetableWF'909_)), true)));

(RSL.C_output "[s13_isinExisting02] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'42D1_) (tramIdB'391_, timetableWF'909_)), true)));

(RSL.C_output "[s13_isNotin] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'42D1_) (tramNotIn'3F5_, timetableWF'909_)), false)));

(RSL.C_output "[s16_getConnection] " RT_Bool.toStringSafe (fn _ => RT_x_3.equ (((getConnection'501B_) (RT_Text.fromLit "A", RT_Text.fromLit "B", net'6B1_)), connectionTest'22D2_)));

RSL.print_error_count();
R_coverage.save_marked();
