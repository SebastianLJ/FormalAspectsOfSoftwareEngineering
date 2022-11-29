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
        
        fun allStopsHaveConnection'10301_ (capacityMap'1037C_, connectionMap'10389_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (81, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'1037C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'10389_))))) then raise RSL.RSL_exception ("./NET.rsl:79:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'1037C_, connectionMap'10389_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'103D0_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'1049D_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'103D0_, stopId2'1049D_), (connectionMap'10389_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (86, 13)); RT_m_4.R_mem ((stopId2'1049D_, stopId'103D0_), (connectionMap'10389_))))) ((capacityMap'1037C_))))) ((capacityMap'1037C_)))));
        
        fun noSelfConnection'FD89_ (capacityMap'FDFE_, connectionMap'FE0B_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (67, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FDFE_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FE0B_))))) then raise RSL.RSL_exception ("./NET.rsl:65:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'FDFE_, connectionMap'FE0B_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'FE59_, stopId2'FE62_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'FE59_, stopId2'FE62_)) ((connectionMap'FE0B_)))));
        
        fun isIn'EE4D_ (stopId'EEB6_, (capacityMap'EEBF_, connecitonMap'EECC_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EEBF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'EECC_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'EEB6_, (capacityMap'EEBF_, connecitonMap'EECC_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'EEB6_, (capacityMap'EEBF_)));
        
        fun allStopsInConnectionMapAreInCapacityMap'10045_ (capacityMap'100D1_, connectionMap'100DE_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (74, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'100D1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'100DE_))))) then raise RSL.RSL_exception ("./NET.rsl:72:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'100D1_, connectionMap'100DE_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'10115_, stopId2'1011E_):RT_x_2.t) => (((isIn'EE4D_) (stopId1'10115_, (capacityMap'100D1_, connectionMap'100DE_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (76, 56)); ((isIn'EE4D_) (stopId2'1011E_, (capacityMap'100D1_, connectionMap'100DE_))))) ((connectionMap'100DE_)))));
        
        fun isWellformed'106E9_ net'1075A_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'1075A_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:89:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'1075A_ ^ ")" ^ " not in subtype") else (((noSelfConnection'FD89_) (net'1075A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); (((allStopsInConnectionMapAreInCapacityMap'10045_) (net'1075A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (93, 7)); ((allStopsHaveConnection'10301_) (net'1075A_)))));
        
        fun minDrivingTime'FA05_ (stopId1'FA78_, stopId2'FA81_, (capacityMap'FA8B_, connectionMap'FA98_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (58, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FA8B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FA98_))))) then raise RSL.RSL_exception ("./NET.rsl:56:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'FA78_, stopId2'FA81_, (capacityMap'FA8B_, connectionMap'FA98_)) ^ " not in subtype") else let
            val (headway'FAD4_, drivingTime'FADD_, capacity'FAEA_) = ((((RT_m_4.R_app(connectionMap'FA98_)) (stopId1'FA78_, stopId2'FA81_))):RT_x_3.t)
        in
            drivingTime'FADD_
        end);
        
        fun addConnection'EC59_ (stopId1'ECCB_, stopId2'ECD4_, headway'ECDD_, capacity'ECE6_, drivingTime'ECF0_, (capacityMap'ECFE_, connectionMap'ED0B_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'ECDD_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'ECE6_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'ECF0_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'ECFE_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'ED0B_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'ECCB_, stopId2'ECD4_, headway'ECDD_, capacity'ECE6_, drivingTime'ECF0_, (capacityMap'ECFE_, connectionMap'ED0B_)) ^ " not in subtype") else (capacityMap'ECFE_, RT_m_4.R_override (connectionMap'ED0B_, RT_m_4.R_fromList ([((stopId1'ECCB_, stopId2'ECD4_), (headway'ECDD_, drivingTime'ECF0_, capacity'ECE6_))]))));
        
        fun capacity'F6E5_ (stopId1'F752_, stopId2'F75B_, (capacityMap'F765_, connectionMap'F772_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (50, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F765_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F772_))))) then raise RSL.RSL_exception ("./NET.rsl:48:5: Argument of capacity" ^ RT_x_12.toString (stopId1'F752_, stopId2'F75B_, (capacityMap'F765_, connectionMap'F772_)) ^ " not in subtype") else let
            val (headway'F7B4_, drivingTime'F7BD_, capacity'F7CA_) = ((((RT_m_4.R_app(connectionMap'F772_)) (stopId1'F752_, stopId2'F75B_))):RT_x_3.t)
        in
            capacity'F7CA_
        end);
        
        fun insertStop'EA65_ (stopId'EAD4_, capacity'EADC_, (capacityMap'EAE7_, connectionMap'EAF4_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'EADC_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EAE7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'EAF4_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'EAD4_, capacity'EADC_, (capacityMap'EAE7_, connectionMap'EAF4_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'EAE7_, RT_m_1.R_fromList ([(stopId'EAD4_, capacity'EADC_)])), connectionMap'EAF4_));
        
        fun minHeadway'F3C5_ (stopId1'F434_, stopId2'F43D_, (capacityMap'F447_, connectionMap'F454_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (42, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F447_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F454_))))) then raise RSL.RSL_exception ("./NET.rsl:40:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'F434_, stopId2'F43D_, (capacityMap'F447_, connectionMap'F454_)) ^ " not in subtype") else let
            val (headway'F494_, drivingTime'F49D_, capacity'F4AA_) = ((((RT_m_4.R_app(connectionMap'F454_)) (stopId1'F434_, stopId2'F43D_))):RT_x_3.t)
        in
            headway'F494_
        end);
        
        val empty'E99D_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun areDirectlyConnected'F16D_ (stopId1'F1E6_, stopId2'F1EF_, (capacityMap'F1F9_, connectionMap'F206_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F1F9_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F206_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'F1E6_, stopId2'F1EF_, (capacityMap'F1F9_, connectionMap'F206_)) ^ " not in subtype") else (RT_m_4.R_mem ((stopId1'F1E6_, stopId2'F1EF_), (connectionMap'F206_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (37, 7)); RT_m_4.R_mem ((stopId2'F1EF_, stopId1'F1E6_), (connectionMap'F206_))));
        
        fun capacity'EFDD_ (stopId'F04B_, (capacityMap'F053_, connectionMap'F060_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F053_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F060_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'F04B_, (capacityMap'F053_, connectionMap'F060_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'F053_)) (stopId'F04B_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type TramPlanRow_ = RT_x_17.t;
        
        type Plan_ = RT_l_15.t;
        
        fun buildTimesForTramOnStop'9669_ (stopid'96E5_, plan'96ED_, tramid'96F3_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (244, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x116_'0_, x117_'0_, x118_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x117_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0"))
        end) (plan'96ED_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:242:5: Argument of buildTimesForTramOnStop" ^ RT_x_29.toString (stopid'96E5_, plan'96ED_, tramid'96F3_) ^ " not in subtype") else if RT_Nat.R_lt (RT_l_15.R_length(plan'96ED_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (245, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (247, 9)); let
            val (sid'98C8_, arrt'98CD_, dept'98D3_) = ((RT_l_15.R_hd(plan'96ED_)):RT_x_14.t)
        in
            if RT_Text.equ (sid'98C8_, stopid'96E5_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (251, 16)); RT_s_26.R_union (RT_s_26.R_fromList ([(tramid'96F3_, arrt'98CD_, dept'98D3_)]), ((buildTimesForTramOnStop'9669_) (stopid'96E5_, RT_l_15.R_tl(plan'96ED_), tramid'96F3_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (252, 16)); ((buildTimesForTramOnStop'9669_) (stopid'96E5_, RT_l_15.R_tl(plan'96ED_), tramid'96F3_)))
        end));
        
        fun buildAllTimesForStop'90F1_ (stopid'916A_, trams'9172_, timetable'9179_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (230, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x113_'0_, x114_'0_, x115_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'9179_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:228:5: Argument of buildAllTimesForStop" ^ RT_x_28.toString (stopid'916A_, trams'9172_, timetable'9179_) ^ " not in subtype") else if RT_s_11.equ (trams'9172_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (231, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (233, 9)); let
            val tramid'934F_ = ((RT_s_11.R_hd(trams'9172_)):RT_Text.t)
        in
            RT_s_26.R_union (((buildTimesForTramOnStop'9669_) (stopid'916A_, ((RT_m_16.R_app(timetable'9179_)) (tramid'934F_)), tramid'934F_)), ((buildAllTimesForStop'90F1_) (stopid'916A_, RT_s_11.R_diff (trams'9172_, RT_s_11.R_fromList ([tramid'934F_])), timetable'9179_)))
        end));
        
        fun countOverlappingTimesForStop'8A4D_ (tramid'8ACE_, arrtime'8AD5_, deptime'8ADE_, times'8AE7_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (213, 7)); if not((RT_Nat.R_ge (arrtime'8AD5_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (deptime'8ADE_, RT_Int.fromLit "0")) andalso ((RT_s_26.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x110_'0_, x111_'0_, x112_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0"))
        end) (times'8AE7_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:211:5: Argument of countOverlappingTimesForStop" ^ RT_x_27.toString (tramid'8ACE_, arrtime'8AD5_, deptime'8ADE_, times'8AE7_) ^ " not in subtype") else if RT_s_26.equ (times'8AE7_, RT_s_26.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (214, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (216, 9)); let
            val (tramid2'8CAC_, arrtime2'8CB5_, deptime2'8CBF_) = ((RT_s_26.R_hd(times'8AE7_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'8ACE_, tramid2'8CAC_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 35)); ((((RT_Nat.R_lt (arrtime'8AD5_, arrtime2'8CB5_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 59)); RT_Nat.R_lt (arrtime2'8CB5_, deptime'8ADE_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 81)); ((RT_Nat.R_lt (arrtime'8AD5_, deptime2'8CBF_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (220, 4)); RT_Nat.R_lt (deptime2'8CBF_, deptime'8ADE_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (220, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'8A4D_) (tramid'8ACE_, arrtime'8AD5_, deptime'8ADE_, RT_s_26.R_diff (times'8AE7_, RT_s_26.R_fromList ([(tramid2'8CAC_, arrtime2'8CB5_, deptime2'8CBF_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (221, 16)); ((countOverlappingTimesForStop'8A4D_) (tramid'8ACE_, arrtime'8AD5_, deptime'8ADE_, RT_s_26.R_diff (times'8AE7_, RT_s_26.R_fromList ([(tramid2'8CAC_, arrtime2'8CB5_, deptime2'8CBF_)])))))
        end));
        
        fun stopCapacityIsNotExceeded'C677_ (stopid'C6F5_, timetable'C6FD_, capacityMap'C708_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (367, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x170_'0_, x171_'0_, x172_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x171_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x172_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C6FD_)))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C708_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:365:7: Argument of stopCapacityIsNotExceeded" ^ RT_x_33.toString (stopid'C6F5_, timetable'C6FD_, capacityMap'C708_) ^ " not in subtype") else let
            val times'C7A7_ = ((((buildAllTimesForStop'90F1_) (stopid'C6F5_, RT_m_16.R_dom((timetable'C6FD_)), timetable'C6FD_))):RT_s_26.t); 
            val capacity'C80B_ = ((((RT_m_1.R_app(capacityMap'C708_)) (stopid'C6F5_))):RT_Nat.t)
        in
            ((RT_s_26.R_all (fn ((tramid'C8D9_, arrtime'C8E1_, deptime'C8EA_):RT_x_14.t) => not ((RT_Nat.R_ge (arrtime'C8E1_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (deptime'C8EA_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'8A4D_) (tramid'C8D9_, arrtime'C8E1_, deptime'C8EA_, times'C7A7_))), capacity'C80B_)))) (times'C7A7_)))
        end);
        
        fun allStopCapacitiesAreNotExceeded'C357_ (timetable'C3DB_, (capacityMap'C3E7_, connectionMap'C3F3_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (359, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x162_'0_, x163_'0_, x164_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x163_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x164_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C3DB_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C3E7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x167_'0_, x168_'0_, x169_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x167_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x168_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x169_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C3F3_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:357:7: Argument of allStopCapacitiesAreNotExceeded" ^ RT_x_31.toString (timetable'C3DB_, (capacityMap'C3E7_, connectionMap'C3F3_)) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopid'C426_:RT_Text.t) => ((stopCapacityIsNotExceeded'C677_) (stopid'C426_, timetable'C3DB_, capacityMap'C3E7_))) ((capacityMap'C3E7_)))));
        
        fun getConnection'50E3_ (stop1'5155_, stop2'515C_, (capacityMap'5164_, connectionMap'5171_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'5164_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5171_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:64:7: Argument of getConnection" ^ RT_x_12.toString (stop1'5155_, stop2'515C_, (capacityMap'5164_, connectionMap'5171_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'5155_, stop2'515C_), (connectionMap'5171_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (68, 9)); ((RT_m_4.R_app(connectionMap'5171_)) ((stop1'5155_, stop2'515C_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9)); ((RT_m_4.R_app(connectionMap'5171_)) ((stop2'515C_, stop1'5155_)))));
        
        fun timeBetweenStopsIsDrivingTime'9F65_ (plan'9FE7_, (capacityMap'9FEE_, connectionMap'9FFB_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (267, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x119_'0_, x120_'0_, x121_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x120_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0"))
        end) (plan'9FE7_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'9FEE_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x124_'0_, x125_'0_, x126_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x125_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'9FFB_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:265:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_30.toString (plan'9FE7_, (capacityMap'9FEE_, connectionMap'9FFB_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'9FE7_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (268, 9)); let
            val (stopid1'A0FC_, arrTime1'A105_, depTime1'A10F_) = ((RT_l_15.R_hd(plan'9FE7_)):RT_x_14.t); 
            val (stopid2'A160_, arrTime2'A169_, depTime2'A173_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'9FE7_)))):RT_x_14.t)
        in
            let
                val (headway'A28E_, drivingTime'A296_, capacity'A2A3_) = ((((getConnection'50E3_) (stopid1'A0FC_, stopid2'A160_, (capacityMap'9FEE_, connectionMap'9FFB_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'A169_, depTime1'A10F_), drivingTime'A296_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (275, 53)); ((timeBetweenStopsIsDrivingTime'9F65_) (RT_l_15.R_tl(plan'9FE7_), (capacityMap'9FEE_, connectionMap'9FFB_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (279, 9)); true));
        
        fun nextStop'45F3_ (planRow'4660_, plan'4669_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (38, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'4660_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'4669_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:36:7: Argument of nextStop" ^ RT_x_21.toString (planRow'4660_, plan'4669_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'4669_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:61:13: Precondition of nextStop" ^ RT_x_21.toString (planRow'4660_, plan'4669_) ^ " not satisfied") else let
            val iPlanRow'4723_ = ((RT_l_15.R_hd(plan'4669_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'4723_, planRow'4660_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (43, 13)); let
                val (sid'491C_, arrt'4921_, dept'4927_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'4669_)))):RT_x_14.t)
            in
                (sid'491C_, arrt'4921_, dept'4927_)
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (49, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'4669_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (51, 15)); ((nextStop'45F3_) (planRow'4660_, RT_l_15.R_tl(plan'4669_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (53, 15)); let
                val (sid'4D06_, arrt'4D0B_, dept'4D11_) = ((iPlanRow'4723_):RT_x_14.t)
            in
                iPlanRow'4723_
            end))
        end);
        
        fun findDepartureRowInPlan'5DC5_ (stopid1'5E40_, stopid2'5E49_, plan'5E52_, tram'5E58_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (99, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'5E52_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:97:5: Argument of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'5E40_, stopid2'5E49_, plan'5E52_, tram'5E58_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'5E52_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:115:11: Precondition of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'5E40_, stopid2'5E49_, plan'5E52_, tram'5E58_) ^ " not satisfied") else let
            val (hStopId'5EF6_, hArrTime'5EFF_, hDepTime'5F09_) = ((RT_l_15.R_hd(plan'5E52_)):RT_x_14.t); 
            val (nStopId'5F5A_, nArrTime'5F63_, nDepTime'5F6D_) = ((((nextStop'45F3_) (RT_l_15.R_hd(plan'5E52_), plan'5E52_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'5EF6_, stopid1'5E40_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (103, 33)); RT_Text.equ (nStopId'5F5A_, stopid2'5E49_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (105, 11)); (tram'5E58_, hStopId'5EF6_, hArrTime'5EFF_, hDepTime'5F09_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (107, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'5E52_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (109, 13)); ((findDepartureRowInPlan'5DC5_) (stopid1'5E40_, stopid2'5E49_, RT_l_15.R_tl(plan'5E52_), tram'5E58_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (111, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'58B1_ (stopid1'5937_, stopid2'5940_, trams'5949_, timetable'5950_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5950_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:84:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_24.toString (stopid1'5937_, stopid2'5940_, trams'5949_, timetable'5950_) ^ " not in subtype") else if RT_s_11.equ (trams'5949_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (87, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (89, 9)); let
            val tram'5B0F_ = ((RT_s_11.R_hd(trams'5949_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findDepartureRowInPlan'5DC5_) (stopid1'5937_, stopid2'5940_, ((RT_m_16.R_app(timetable'5950_)) (tram'5B0F_)), tram'5B0F_))]), ((buildAllDeparturesUsingConnection'58B1_) (stopid1'5937_, stopid2'5940_, RT_s_11.R_diff (trams'5949_, RT_s_11.R_fromList ([tram'5B0F_])), timetable'5950_)))
        end));
        
        fun getAllDepaturesUsingConnection'552D_ (stopid1'55B0_, stopid2'55B9_, timetable'55C2_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (77, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'55C2_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:75:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_22.toString (stopid1'55B0_, stopid2'55B9_, timetable'55C2_) ^ " not in subtype") else let
            val allTrams'565D_ = ((RT_m_16.R_dom(timetable'55C2_)):RT_s_11.t)
        in
            ((buildAllDeparturesUsingConnection'58B1_) (stopid1'55B0_, stopid2'55B9_, allTrams'565D_, timetable'55C2_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'A6D1_ (timetable'A759_, (capacityMap'A765_, connectionMap'A772_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (286, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x127_'0_, x128_'0_, x129_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'A759_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'A765_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x132_'0_, x133_'0_, x134_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x133_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'A772_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:284:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_31.toString (timetable'A759_, (capacityMap'A765_, connectionMap'A772_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'A7A1_, stopid2'A7AA_):RT_x_2.t) => let
            val (headway'A806_, drivingTime'A80E_, capacity'A81B_) = ((((RT_m_4.R_app(connectionMap'A772_)) ((stopid1'A7A1_, stopid2'A7AA_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'A8D1_, sid1'A8D8_, arrt1'A8DE_, dept1'A8E5_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'A8DE_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'A8E5_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'A937_, sid2'A93E_, arrt2'A944_, dept2'A94B_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'A944_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'A94B_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'A8E5_, dept2'A94B_))), headway'A806_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'552D_) (stopid1'A7A1_, stopid2'A7AA_, timetable'A759_)), RT_s_23.R_fromList ([(tram1'A8D1_, sid1'A8D8_, arrt1'A8DE_, dept1'A8E5_)]))))))) (((getAllDepaturesUsingConnection'552D_) (stopid1'A7A1_, stopid2'A7AA_, timetable'A759_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (293, 11)); ((RT_s_23.R_all (fn ((tram1'AA61_, sid1'AA68_, arrt1'AA6E_, dept1'AA75_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'AA6E_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'AA75_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'AAC5_, sid2'AACC_, arrt2'AAD2_, dept2'AAD9_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'AAD2_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'AAD9_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'AA75_, dept2'AAD9_))), headway'A806_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'552D_) (stopid2'A7AA_, stopid1'A7A1_, timetable'A759_)), RT_s_23.R_fromList ([(tram1'AA61_, sid1'AA68_, arrt1'AA6E_, dept1'AA75_)]))))))) (((getAllDepaturesUsingConnection'552D_) (stopid2'A7AA_, stopid1'A7A1_, timetable'A759_))))))
        end) ((connectionMap'A772_)))));
        
        fun countOverlappingTimesForTrack'7729_ (tramid'77AB_, deptime'77B2_, arrtime'77BB_, times'77C4_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (164, 7)); if not((RT_Nat.R_ge (deptime'77B2_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (arrtime'77BB_, RT_Int.fromLit "0")) andalso ((RT_s_26.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (times'77C4_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:162:5: Argument of countOverlappingTimesForTrack" ^ RT_x_27.toString (tramid'77AB_, deptime'77B2_, arrtime'77BB_, times'77C4_) ^ " not in subtype") else if RT_s_26.equ (times'77C4_, RT_s_26.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (165, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (167, 9)); let
            val (tramid2'7988_, deptime2'7991_, arrtime2'799B_) = ((RT_s_26.R_hd(times'77C4_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'77AB_, tramid2'7988_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (170, 35)); ((((RT_Nat.R_lt (deptime'77B2_, deptime2'7991_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (170, 59)); RT_Nat.R_lt (deptime2'7991_, arrtime'77BB_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (170, 81)); ((RT_Nat.R_lt (deptime'77B2_, arrtime2'799B_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (171, 4)); RT_Nat.R_lt (arrtime2'799B_, arrtime'77BB_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (171, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7729_) (tramid'77AB_, deptime'77B2_, arrtime'77BB_, RT_s_26.R_diff (times'77C4_, RT_s_26.R_fromList ([(tramid2'7988_, deptime2'7991_, arrtime2'799B_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (172, 16)); ((countOverlappingTimesForTrack'7729_) (tramid'77AB_, deptime'77B2_, arrtime'77BB_, RT_s_26.R_diff (times'77C4_, RT_s_26.R_fromList ([(tramid2'7988_, deptime2'7991_, arrtime2'799B_)])))))
        end));
        
        fun buildTimesForTramOnTrack'8345_ (stopid1'83C3_, stopid2'83CC_, plan'83D5_, tramid'83DB_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (195, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x107_'0_, x108_'0_, x109_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0"))
        end) (plan'83D5_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:193:5: Argument of buildTimesForTramOnTrack" ^ RT_x_25.toString (stopid1'83C3_, stopid2'83CC_, plan'83D5_, tramid'83DB_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'83D5_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (196, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (198, 9)); let
            val (sid'85A4_, arrt'85A9_, dept'85AF_) = ((RT_l_15.R_hd(plan'83D5_)):RT_x_14.t); 
            val (sid2'8608_, arrt2'860E_, dept2'8615_) = ((((nextStop'45F3_) ((sid'85A4_, arrt'85A9_, dept'85AF_), plan'83D5_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'85A4_, stopid1'83C3_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (202, 31)); RT_Text.equ (sid2'8608_, stopid2'83CC_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (203, 16)); RT_s_26.R_union (RT_s_26.R_fromList ([(tramid'83DB_, dept'85AF_, arrt2'860E_)]), ((buildTimesForTramOnTrack'8345_) (stopid1'83C3_, stopid2'83CC_, RT_l_15.R_tl(plan'83D5_), tramid'83DB_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (204, 16)); ((buildTimesForTramOnTrack'8345_) (stopid1'83C3_, stopid2'83CC_, RT_l_15.R_tl(plan'83D5_), tramid'83DB_)))
        end));
        
        fun buildAllTimesForTrack'7DCD_ (stopid1'7E47_, stopid2'7E50_, trams'7E59_, timetable'7E60_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (181, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x104_'0_, x105_'0_, x106_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x105_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7E60_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:179:5: Argument of buildAllTimesForTrack" ^ RT_x_24.toString (stopid1'7E47_, stopid2'7E50_, trams'7E59_, timetable'7E60_) ^ " not in subtype") else if RT_s_11.equ (trams'7E59_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (182, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (184, 9)); let
            val tramid'802B_ = ((RT_s_11.R_hd(trams'7E59_)):RT_Text.t)
        in
            RT_s_26.R_union (((buildTimesForTramOnTrack'8345_) (stopid1'7E47_, stopid2'7E50_, ((RT_m_16.R_app(timetable'7E60_)) (tramid'802B_)), tramid'802B_)), ((buildAllTimesForTrack'7DCD_) (stopid1'7E47_, stopid2'7E50_, RT_s_11.R_diff (trams'7E59_, RT_s_11.R_fromList ([tramid'802B_])), timetable'7E60_)))
        end));
        
        fun trackCapacityIsNotExceeded'BD15_ (stopid1'BD94_, stopid2'BD9D_, timetable'BDA6_, connectionMap'BDB1_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (343, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x154_'0_, x155_'0_, x156_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x155_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x156_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'BDA6_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x159_'0_, x160_'0_, x161_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x159_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x161_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'BDB1_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:341:5: Argument of trackCapacityIsNotExceeded" ^ RT_x_32.toString (stopid1'BD94_, stopid2'BD9D_, timetable'BDA6_, connectionMap'BDB1_) ^ " not in subtype") else let
            val times1'BE46_ = ((((buildAllTimesForTrack'7DCD_) (stopid1'BD94_, stopid2'BD9D_, RT_m_16.R_dom((timetable'BDA6_)), timetable'BDA6_))):RT_s_26.t); 
            val times2'BEAA_ = ((((buildAllTimesForTrack'7DCD_) (stopid2'BD9D_, stopid1'BD94_, RT_m_16.R_dom((timetable'BDA6_)), timetable'BDA6_))):RT_s_26.t); 
            val (headway'BF0F_, drivingtime'BF18_, trackcapacity'BF25_) = ((((RT_m_4.R_app(connectionMap'BDB1_)) (stopid1'BD94_, stopid2'BD9D_))):RT_x_3.t)
        in
            (((RT_s_26.R_all (fn ((tramid'BFDC_, deptime'BFE4_, arrtime'BFED_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'BFE4_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'BFED_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7729_) (tramid'BFDC_, deptime'BFE4_, arrtime'BFED_, times1'BE46_))), trackcapacity'BF25_)))) (times1'BE46_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (350, 15)); ((RT_s_26.R_all (fn ((tramid'C0A9_, deptime'C0B1_, arrtime'C0BA_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'C0B1_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'C0BA_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'7729_) (tramid'C0A9_, deptime'C0B1_, arrtime'C0BA_, times2'BEAA_))), trackcapacity'BF25_)))) (times2'BEAA_))))
        end);
        
        fun allTrackCapacitiesAreNotExceeded'B9F5_ (timetable'BA7A_, (capacityMap'BA86_, connectionMap'BA92_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (335, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x146_'0_, x147_'0_, x148_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x147_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x148_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'BA7A_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'BA86_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x151_'0_, x152_'0_, x153_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x151_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x152_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x153_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'BA92_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:333:5: Argument of allTrackCapacitiesAreNotExceeded" ^ RT_x_31.toString (timetable'BA7A_, (capacityMap'BA86_, connectionMap'BA92_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'BAC5_, stopid2'BACE_):RT_x_2.t) => ((trackCapacityIsNotExceeded'BD15_) (stopid1'BAC5_, stopid2'BACE_, timetable'BA7A_, connectionMap'BA92_))) ((connectionMap'BA92_)))));
        
        fun tramStopsAtAllStopsItPasses'B5A9_ timetable'B629_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (324, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x143_'0_, x144_'0_, x145_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x144_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x145_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B629_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:322:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'B629_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'B678_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'B6DF_, arrTime'B6E7_, depTime'B6F0_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'B6E7_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'B6F0_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'B6F0_, arrTime'B6E7_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'B629_)) (tramid'B678_)))))) ((timetable'B629_)))));
        
        fun findArrivalRowInPlan'6E91_ (stopid1'6F0A_, stopid2'6F13_, plan'6F1C_, tram'6F22_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (142, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'6F1C_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:140:5: Argument of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'6F0A_, stopid2'6F13_, plan'6F1C_, tram'6F22_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'6F1C_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:158:11: Precondition of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'6F0A_, stopid2'6F13_, plan'6F1C_, tram'6F22_) ^ " not satisfied") else let
            val (hStopId'6FC2_, hArrTime'6FCB_, hDepTime'6FD5_) = ((RT_l_15.R_hd(plan'6F1C_)):RT_x_14.t); 
            val (nStopId'7026_, nArrTime'702F_, nDepTime'7039_) = ((((nextStop'45F3_) (RT_l_15.R_hd(plan'6F1C_), plan'6F1C_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'6FC2_, stopid1'6F0A_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (146, 33)); RT_Text.equ (nStopId'7026_, stopid2'6F13_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (148, 11)); (tram'6F22_, nStopId'7026_, nArrTime'702F_, nDepTime'7039_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (150, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'6F1C_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (152, 13)); ((findArrivalRowInPlan'6E91_) (stopid1'6F0A_, stopid2'6F13_, RT_l_15.R_tl(plan'6F1C_), tram'6F22_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (154, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllArrivalsUsingConnection'697D_ (stopid1'6A01_, stopid2'6A0A_, trams'6A13_, timetable'6A1A_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (129, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6A1A_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:127:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_24.toString (stopid1'6A01_, stopid2'6A0A_, trams'6A13_, timetable'6A1A_) ^ " not in subtype") else if RT_s_11.equ (trams'6A13_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (130, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (132, 9)); let
            val tram'6BDB_ = ((RT_s_11.R_hd(trams'6A13_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findArrivalRowInPlan'6E91_) (stopid1'6A01_, stopid2'6A0A_, ((RT_m_16.R_app(timetable'6A1A_)) (tram'6BDB_)), tram'6BDB_))]), ((buildAllArrivalsUsingConnection'697D_) (stopid1'6A01_, stopid2'6A0A_, RT_s_11.R_diff (trams'6A13_, RT_s_11.R_fromList ([tram'6BDB_])), timetable'6A1A_)))
        end));
        
        fun getAllArrivalsUsingConnection'65F9_ (stopid1'667B_, stopid2'6684_, timetable'668D_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (120, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'668D_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:118:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_22.toString (stopid1'667B_, stopid2'6684_, timetable'668D_) ^ " not in subtype") else let
            val allTrams'6729_ = ((RT_m_16.R_dom(timetable'668D_)):RT_s_11.t)
        in
            ((buildAllArrivalsUsingConnection'697D_) (stopid1'667B_, stopid2'6684_, allTrams'6729_, timetable'668D_))
        end);
        
        fun timeBetweenArrivalIsValidHeadway'AF05_ (timetable'AF8A_, (capacityMap'AF96_, connectionMap'AFA3_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (307, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x135_'0_, x136_'0_, x137_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x136_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x137_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'AF8A_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'AF96_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x140_'0_, x141_'0_, x142_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x140_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x142_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'AFA3_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:305:5: Argument of timeBetweenArrivalIsValidHeadway" ^ RT_x_31.toString (timetable'AF8A_, (capacityMap'AF96_, connectionMap'AFA3_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'AFD5_, stopid2'AFDE_):RT_x_2.t) => let
            val (headway'B03A_, drivingTime'B042_, capacity'B04F_) = ((((RT_m_4.R_app(connectionMap'AFA3_)) ((stopid1'AFD5_, stopid2'AFDE_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'B105_, sid1'B10C_, arrt1'B112_, dept1'B119_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'B112_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'B119_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'B16B_, sid2'B172_, arrt2'B178_, dept2'B17F_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'B178_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'B17F_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'B112_, arrt2'B178_))), headway'B03A_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'65F9_) (stopid1'AFD5_, stopid2'AFDE_, timetable'AF8A_)), RT_s_23.R_fromList ([(tram1'B105_, sid1'B10C_, arrt1'B112_, dept1'B119_)]))))))) (((getAllArrivalsUsingConnection'65F9_) (stopid1'AFD5_, stopid2'AFDE_, timetable'AF8A_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (314, 11)); ((RT_s_23.R_all (fn ((tram1'B295_, sid1'B29C_, arrt1'B2A2_, dept1'B2A9_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'B2A2_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'B2A9_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'B2FB_, sid2'B302_, arrt2'B308_, dept2'B30F_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'B308_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'B30F_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'B2A2_, arrt2'B308_))), headway'B03A_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'65F9_) (stopid2'AFDE_, stopid1'AFD5_, timetable'AF8A_)), RT_s_23.R_fromList ([(tram1'B295_, sid1'B29C_, arrt1'B2A2_, dept1'B2A9_)]))))))) (((getAllArrivalsUsingConnection'65F9_) (stopid2'AFDE_, stopid1'AFD5_, timetable'AF8A_))))))
        end) ((connectionMap'AFA3_)))));
        
        fun isWellformed'DFDA_ (t'E04B_, n'E04E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (432, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x200_'0_, x201_'0_, x202_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x201_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x202_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'E04B_)))) andalso (let
            val (x203_'0_, x204_'0_) = ((n'E04E_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x203_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x207_'0_, x208_'0_, x209_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x207_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x208_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x209_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x204_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:430:6: Argument of isWellformed" ^ RT_x_31.toString (t'E04B_, n'E04E_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'B5A9_) (t'E04B_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (433, 8)); (((timeBetweenDeparturesIsValidHeadway'A6D1_) (t'E04B_, n'E04E_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (434, 8)); (((timeBetweenArrivalIsValidHeadway'AF05_) (t'E04B_, n'E04E_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (435, 8)); (((RT_s_19.R_all (fn (plan'E1D5_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x210_'0_, x211_'0_, x212_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x211_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0"))
        end) (plan'E1D5_))) orelse (((timeBetweenStopsIsDrivingTime'9F65_) (plan'E1D5_, n'E04E_)))) (RT_m_16.R_ran((t'E04B_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (436, 8)); (((allTrackCapacitiesAreNotExceeded'B9F5_) (t'E04B_, n'E04E_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (437, 8)); ((allStopCapacitiesAreNotExceeded'C357_) (t'E04B_, n'E04E_))))))));
        
        fun stopsAreConnected'CF0F_ (plan'CF85_, connectionMap'CF8B_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (389, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x181_'0_, x182_'0_, x183_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x182_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x183_'0_, RT_Int.fromLit "0"))
        end) (plan'CF85_))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x186_'0_, x187_'0_, x188_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x186_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x187_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x188_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'CF8B_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:387:7: Argument of stopsAreConnected" ^ RT_x_34.toString (plan'CF85_, connectionMap'CF8B_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'CF85_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (390, 14)); true) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (392, 11)); let
            val (sid'D16E_, arrt'D173_, dept'D179_) = ((RT_l_15.R_hd(plan'CF85_)):RT_x_14.t); 
            val (sid2'D1D2_, arrt2'D1D8_, dept2'D1DF_) = ((((nextStop'45F3_) ((sid'D16E_, arrt'D173_, dept'D179_), plan'CF85_))):RT_x_14.t)
        in
            if (RT_m_4.R_mem ((sid'D16E_, sid2'D1D2_), (connectionMap'CF8B_))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (396, 54)); RT_m_4.R_mem ((sid2'D1D2_, sid'D16E_), (connectionMap'CF8B_))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (397, 18)); ((stopsAreConnected'CF0F_) (RT_l_15.R_tl(plan'CF85_), connectionMap'CF8B_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (398, 18)); false)
        end));
        
        fun allStopsAreConnected'CBEF_ (timetable'CC68_, (capacityMap'CC74_, connectionMap'CC80_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (381, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x173_'0_, x174_'0_, x175_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x174_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x175_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'CC68_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'CC74_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x178_'0_, x179_'0_, x180_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x178_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x179_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x180_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'CC80_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:379:7: Argument of allStopsAreConnected" ^ RT_x_31.toString (timetable'CC68_, (capacityMap'CC74_, connectionMap'CC80_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'CCBE_:RT_Text.t) => ((stopsAreConnected'CF0F_) (((RT_m_16.R_app(timetable'CC68_)) (tramid'CCBE_)), connectionMap'CC80_))) ((timetable'CC68_)))));
        
        fun stopsExist'D935_ (plan'D9A4_, capacityMap'D9AA_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (415, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x197_'0_, x198_'0_, x199_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x198_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x199_'0_, RT_Int.fromLit "0"))
        end) (plan'D9A4_))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D9AA_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:413:5: Argument of stopsExist" ^ RT_x_35.toString (plan'D9A4_, capacityMap'D9AA_) ^ " not in subtype") else if RT_Nat.equ (RT_l_15.R_length(plan'D9A4_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (416, 12)); true) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (418, 9)); let
            val (sid'DB94_, arrt'DB99_, dept'DB9F_) = ((RT_l_15.R_hd(plan'D9A4_)):RT_x_14.t)
        in
            if RT_m_1.R_mem (sid'DB94_, (capacityMap'D9AA_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (422, 16)); ((stopsExist'D935_) (RT_l_15.R_tl(plan'D9A4_), capacityMap'D9AA_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (423, 16)); false)
        end));
        
        fun allStopsInPlanExist'D615_ (timetable'D68D_, (capacityMap'D699_, connectionMap'D6A6_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (407, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x189_'0_, x190_'0_, x191_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x190_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x191_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'D68D_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D699_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x194_'0_, x195_'0_, x196_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x194_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x196_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D6A6_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:405:5: Argument of allStopsInPlanExist" ^ RT_x_31.toString (timetable'D68D_, (capacityMap'D699_, connectionMap'D6A6_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'D6E4_:RT_Text.t) => ((stopsExist'D935_) (((RT_m_16.R_app(timetable'D68D_)) (tramid'D6E4_)), capacityMap'D699_))) ((timetable'D68D_)))));
        
        val empty'3D5B_ = let val z__'3D6D_ = RT_m_16.R_fromList [] in if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x213_'0_, x214_'0_, x215_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x214_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x215_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'3D6D_)))) then (RSL.add_load_err("./TIMETABLE.rsl:14:25: Value " ^ RT_m_16.toString(z__'3D6D_) ^ " of empty not in subtype"); z__'3D6D_) else z__'3D6D_ end;
        
        fun isIn'4399_ (tramid'4402_, timetable'440A_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (32, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'440A_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:30:5: Argument of isIn" ^ RT_x_18.toString (tramid'4402_, timetable'440A_) ^ " not in subtype") else RT_m_16.R_mem (tramid'4402_, (timetable'440A_)));
        
        fun addTram'3E87_ (tramid'3EF3_, timetable'3EFB_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (19, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3EFB_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:17:7: Argument of addTram" ^ RT_x_18.toString (tramid'3EF3_, timetable'3EFB_) ^ " not in subtype") else RT_m_16.R_override (timetable'3EFB_, RT_m_16.R_fromList ([(tramid'3EF3_, ([]:RT_l_15.t))])));
        
        fun addStop'407B_ (tramid'40E7_, stopid'40EF_, arrival'40F7_, departure'4100_, timetable'410B_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (24, 9)); if not((RT_Nat.R_ge (arrival'40F7_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'4100_, RT_Int.fromLit "0")) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'410B_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:22:7: Argument of addStop" ^ RT_x_20.toString (tramid'40E7_, stopid'40EF_, arrival'40F7_, departure'4100_, timetable'410B_) ^ " not in subtype") else RT_m_16.R_override (timetable'410B_, RT_m_16.R_fromList ([(tramid'40E7_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'410B_)) (tramid'40E7_)), [(stopid'40EF_, arrival'40F7_, departure'4100_)]))])));
        
        val connectionTest'239A_ = (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1");
        
        val tramIdA'32D_ = RT_Text.fromLit "tram1";
        
        val stopCapacitywithAddedStop'2142_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2"), (RT_Text.fromLit "E", RT_Int.fromLit "2")]);
        
        val connectionMap'521_ = RT_m_4.R_fromList ([((RT_Text.fromLit "B", RT_Text.fromLit "D"), (RT_Int.fromLit "2", RT_Int.fromLit "7", RT_Int.fromLit "2")), ((RT_Text.fromLit "A", RT_Text.fromLit "B"), (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1")), ((RT_Text.fromLit "B", RT_Text.fromLit "C"), (RT_Int.fromLit "2", RT_Int.fromLit "12", RT_Int.fromLit "3"))]);
        
        val netWithAddedStop'226E_ = (stopCapacitywithAddedStop'2142_, connectionMap'521_);
        
        val tramNotIn'3F5_ = RT_Text.fromLit "tramG";
        
        val plan13'1FB1_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan12'1F4D_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60"), (RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10")];
        
        val timetableWithAddedStop'2015_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan12'1F4D_), (RT_Text.fromLit "tram2", plan13'1FB1_)]);
        
        val plan11'1DBC_ = let val z__'1DCA_ = ([]:RT_l_15.t) in if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x216_'0_, x217_'0_, x218_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x217_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x218_'0_, RT_Int.fromLit "0"))
        end) (z__'1DCA_))) then (RSL.add_load_err("./testTimeTable.rsl:76:26: Value " ^ RT_l_15.toString(z__'1DCA_) ^ " of plan11 not in subtype"); z__'1DCA_) else z__'1DCA_ end;
        
        val plan1'841_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val plan2'8A5_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val timetableWithAddedTram'1E20_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (tramNotIn'3F5_, plan11'1DBC_)]);
        
        val timetableWF'909_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_)]);
        
        val stopCapacity'585_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2")]);
        
        val net'6B1_ = (stopCapacity'585_, connectionMap'521_);
        
        val tramIdB'391_ = RT_Text.fromLit "tram2";
        
        val planInvalidDrivingTime'A35_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "8", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan9'1C2C_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timeTableWithInvalidConnection'1C90_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan9'1C2C_)]);
        
        val plan7'1A38_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "Q", RT_Int.fromLit "31", RT_Int.fromLit "33")];
        
        val timeTableWithInvalidStop'1A9C_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan7'1A38_)]);
        
        val plan6'18A8_ = [(RT_Text.fromLit "B", RT_Int.fromLit "15", RT_Int.fromLit "17"), (RT_Text.fromLit "A", RT_Int.fromLit "29", RT_Int.fromLit "30"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val plan5'1844_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "31", RT_Int.fromLit "33"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timeTableWithExceededStopCapacities'190C_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", plan5'1844_), (RT_Text.fromLit "tram4", plan6'18A8_)]);
        
        val plan4'1651_ = [(RT_Text.fromLit "B", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "48", RT_Int.fromLit "50")];
        
        val timetableWithAlmostExceededTrackCapacities'1719_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram4", plan4'1651_)]);
        
        val plan3'15ED_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "32", RT_Int.fromLit "34"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timetableWithExceededTrackCapacities'16B5_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", plan3'15ED_)]);
        
        val planWithoutStopTime'145D_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "12"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timetableWithoutStopTime'14C1_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", planWithoutStopTime'145D_)]);
        
        val planTooShortArrivalTime'12CD_ = [(RT_Text.fromLit "C", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48")];
        
        val timetableInvalidArrivalHeadway'1331_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", planTooShortArrivalTime'12CD_)]);
        
        val timetableDuplicateDepartureHeadway'FAD_ = ((addStop'407B_) (RT_Text.fromLit "tram3", RT_Text.fromLit "B", RT_Int.fromLit "14", RT_Int.fromLit "16", ((addStop'407B_) (RT_Text.fromLit "tram3", RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1", ((addTram'3E87_) (RT_Text.fromLit "tram3", timetableWF'909_))))));
        
        val timetableInvalidDrivingTime'A99_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", planInvalidDrivingTime'A35_)]);
        
        val timetableInvalidDepartureHeadway'BC5_ = ((addStop'407B_) (RT_Text.fromLit "tram3", RT_Text.fromLit "C", RT_Int.fromLit "30", RT_Int.fromLit "60", ((addStop'407B_) (RT_Text.fromLit "tram3", RT_Text.fromLit "B", RT_Int.fromLit "0", RT_Int.fromLit "14", ((addTram'3E87_) (RT_Text.fromLit "tram3", timetableWF'909_))))));
        
    end;
    
open testTimeTable;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (24, 9), (26, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (19, 9), (19, 38));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (32, 7), (32, 33));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (407, 7), (409, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (423, 16), (424, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (422, 16), (423, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (418, 9), (426, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (416, 12), (417, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (415, 7), (426, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (381, 9), (383, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (396, 54), (397, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (398, 18), (399, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (397, 18), (398, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (392, 11), (401, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (390, 14), (391, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (389, 9), (401, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (437, 8), (440, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (436, 8), (440, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (435, 8), (440, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (434, 8), (440, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (433, 8), (440, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (432, 8), (440, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (314, 11), (318, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (307, 7), (319, 8));
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
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (324, 7), (328, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (335, 7), (337, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (350, 15), (353, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (343, 8), (353, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (184, 9), (189, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (182, 12), (183, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (181, 7), (189, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (202, 31), (203, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (204, 16), (205, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (203, 16), (204, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (198, 9), (207, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (196, 12), (197, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (195, 7), (207, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (171, 4), (171, 22));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (170, 59), (170, 76));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (170, 81), (171, 23));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (170, 35), (171, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (172, 16), (173, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (171, 16), (172, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (167, 9), (175, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (165, 12), (166, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (164, 7), (175, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (293, 11), (297, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (286, 7), (298, 8));
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
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (53, 15), (58, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (51, 15), (52, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (49, 13), (59, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (43, 13), (48, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (38, 9), (61, 25));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (275, 53), (276, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (279, 9), (280, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (268, 9), (278, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (267, 7), (280, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9), (71, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (68, 9), (69, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (66, 7), (71, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (359, 9), (361, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (367, 9), (374, 12));
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
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DFDA_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s2_validDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'9F65_) (plan1'841_, net'6B1_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'9F65_) (planInvalidDrivingTime'A35_, net'6B1_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DFDA_) (timetableInvalidDrivingTime'A99_, net'6B1_)), false)));

(RSL.C_output "[s3_validHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A6D1_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A6D1_) (timetableInvalidDepartureHeadway'BC5_, net'6B1_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DFDA_) (timetableInvalidDepartureHeadway'BC5_, net'6B1_)), false)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A6D1_) (timetableDuplicateDepartureHeadway'FAD_, net'6B1_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DFDA_) (timetableDuplicateDepartureHeadway'FAD_, net'6B1_)), false)));

(RSL.C_output "[s5_validHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'AF05_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s5_invalidHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'AF05_) (timetableInvalidArrivalHeadway'1331_, net'6B1_)), false)));

(RSL.C_output "[s5_NotWellFormedArrivalHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DFDA_) (timetableInvalidArrivalHeadway'1331_, net'6B1_)), false)));

(RSL.C_output "[s6_tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'B5A9_) (timetableWF'909_)), true)));

(RSL.C_output "[s6_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'B5A9_) (timetableWithoutStopTime'14C1_)), false)));

(RSL.C_output "[s6_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DFDA_) (timetableWithoutStopTime'14C1_, net'6B1_)), false)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDontExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'B9F5_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackAlmostExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'B9F5_) (timetableWithAlmostExceededTrackCapacities'1719_, net'6B1_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDoExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'B9F5_) (timetableWithExceededTrackCapacities'16B5_, net'6B1_)), false)));

(RSL.C_output "[s8_NumberOfTramsAtStopDontExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'C357_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s8_NumberOfTramsAtStopDoExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'C357_) (timeTableWithExceededStopCapacities'190C_, net'6B1_)), false)));

(RSL.C_output "[s9_AllStopsInPlansExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'D615_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s9_AllStopsInPlansDoNotExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'D615_) (timeTableWithInvalidStop'1A9C_, net'6B1_)), false)));

(RSL.C_output "[s10_allStopsAreConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'CBEF_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s10_allStopsAreNotConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'CBEF_) (timeTableWithInvalidConnection'1C90_, net'6B1_)), false)));

(RSL.C_output "[s12_AddingTram] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addTram'3E87_) (tramNotIn'3F5_, timetableWF'909_)), timetableWithAddedTram'1E20_)));

(RSL.C_output "[s12_addStop] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addStop'407B_) (tramIdA'32D_, RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10", timetableWF'909_)), timetableWithAddedStop'2015_)));

(RSL.C_output "[s13_isinExisting01] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4399_) (tramIdA'32D_, timetableWF'909_)), true)));

(RSL.C_output "[s13_isinExisting02] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4399_) (tramIdB'391_, timetableWF'909_)), true)));

(RSL.C_output "[s13_isNotin] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4399_) (tramNotIn'3F5_, timetableWF'909_)), false)));

(RSL.C_output "[s16_getConnection] " RT_Bool.toStringSafe (fn _ => RT_x_3.equ (((getConnection'50E3_) (RT_Text.fromLit "A", RT_Text.fromLit "B", net'6B1_)), connectionTest'239A_)));

RSL.print_error_count();
R_coverage.save_marked();
