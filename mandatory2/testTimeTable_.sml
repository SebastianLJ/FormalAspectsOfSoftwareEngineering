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
        
        fun allStopsHaveConnection'FF7D_ (capacityMap'FFF8_, connectionMap'10005_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (81, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FFF8_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'10005_))))) then raise RSL.RSL_exception ("./NET.rsl:79:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'FFF8_, connectionMap'10005_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'1004C_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'10119_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'1004C_, stopId2'10119_), (connectionMap'10005_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (86, 13)); RT_m_4.R_mem ((stopId2'10119_, stopId'1004C_), (connectionMap'10005_))))) ((capacityMap'FFF8_))))) ((capacityMap'FFF8_)))));
        
        fun noSelfConnection'FA05_ (capacityMap'FA7A_, connectionMap'FA87_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (67, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FA7A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FA87_))))) then raise RSL.RSL_exception ("./NET.rsl:65:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'FA7A_, connectionMap'FA87_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'FAD5_, stopId2'FADE_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'FAD5_, stopId2'FADE_)) ((connectionMap'FA87_)))));
        
        fun isIn'EAC9_ (stopId'EB32_, (capacityMap'EB3B_, connecitonMap'EB48_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EB3B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'EB48_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'EB32_, (capacityMap'EB3B_, connecitonMap'EB48_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'EB32_, (capacityMap'EB3B_)));
        
        fun allStopsInConnectionMapAreInCapacityMap'FCC1_ (capacityMap'FD4D_, connectionMap'FD5A_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (74, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FD4D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FD5A_))))) then raise RSL.RSL_exception ("./NET.rsl:72:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'FD4D_, connectionMap'FD5A_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'FD91_, stopId2'FD9A_):RT_x_2.t) => (((isIn'EAC9_) (stopId1'FD91_, (capacityMap'FD4D_, connectionMap'FD5A_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (76, 56)); ((isIn'EAC9_) (stopId2'FD9A_, (capacityMap'FD4D_, connectionMap'FD5A_))))) ((connectionMap'FD5A_)))));
        
        fun isWellformed'10365_ net'103D6_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'103D6_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:89:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'103D6_ ^ ")" ^ " not in subtype") else (((noSelfConnection'FA05_) (net'103D6_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); (((allStopsInConnectionMapAreInCapacityMap'FCC1_) (net'103D6_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (93, 7)); ((allStopsHaveConnection'FF7D_) (net'103D6_)))));
        
        fun minDrivingTime'F681_ (stopId1'F6F4_, stopId2'F6FD_, (capacityMap'F707_, connectionMap'F714_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (58, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F707_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F714_))))) then raise RSL.RSL_exception ("./NET.rsl:56:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'F6F4_, stopId2'F6FD_, (capacityMap'F707_, connectionMap'F714_)) ^ " not in subtype") else let
            val (headway'F750_, drivingTime'F759_, capacity'F766_) = ((((RT_m_4.R_app(connectionMap'F714_)) (stopId1'F6F4_, stopId2'F6FD_))):RT_x_3.t)
        in
            drivingTime'F759_
        end);
        
        fun addConnection'E8D5_ (stopId1'E947_, stopId2'E950_, headway'E959_, capacity'E962_, drivingTime'E96C_, (capacityMap'E97A_, connectionMap'E987_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'E959_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'E962_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'E96C_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E97A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'E987_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'E947_, stopId2'E950_, headway'E959_, capacity'E962_, drivingTime'E96C_, (capacityMap'E97A_, connectionMap'E987_)) ^ " not in subtype") else (capacityMap'E97A_, RT_m_4.R_override (connectionMap'E987_, RT_m_4.R_fromList ([((stopId1'E947_, stopId2'E950_), (headway'E959_, drivingTime'E96C_, capacity'E962_))]))));
        
        fun capacity'F361_ (stopId1'F3CE_, stopId2'F3D7_, (capacityMap'F3E1_, connectionMap'F3EE_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (50, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F3E1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F3EE_))))) then raise RSL.RSL_exception ("./NET.rsl:48:5: Argument of capacity" ^ RT_x_12.toString (stopId1'F3CE_, stopId2'F3D7_, (capacityMap'F3E1_, connectionMap'F3EE_)) ^ " not in subtype") else let
            val (headway'F430_, drivingTime'F439_, capacity'F446_) = ((((RT_m_4.R_app(connectionMap'F3EE_)) (stopId1'F3CE_, stopId2'F3D7_))):RT_x_3.t)
        in
            capacity'F446_
        end);
        
        fun insertStop'E6E1_ (stopId'E750_, capacity'E758_, (capacityMap'E763_, connectionMap'E770_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'E758_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E763_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'E770_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'E750_, capacity'E758_, (capacityMap'E763_, connectionMap'E770_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'E763_, RT_m_1.R_fromList ([(stopId'E750_, capacity'E758_)])), connectionMap'E770_));
        
        fun minHeadway'F041_ (stopId1'F0B0_, stopId2'F0B9_, (capacityMap'F0C3_, connectionMap'F0D0_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (42, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F0C3_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F0D0_))))) then raise RSL.RSL_exception ("./NET.rsl:40:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'F0B0_, stopId2'F0B9_, (capacityMap'F0C3_, connectionMap'F0D0_)) ^ " not in subtype") else let
            val (headway'F110_, drivingTime'F119_, capacity'F126_) = ((((RT_m_4.R_app(connectionMap'F0D0_)) (stopId1'F0B0_, stopId2'F0B9_))):RT_x_3.t)
        in
            headway'F110_
        end);
        
        val empty'E619_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun areDirectlyConnected'EDE9_ (stopId1'EE62_, stopId2'EE6B_, (capacityMap'EE75_, connectionMap'EE82_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EE75_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'EE82_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'EE62_, stopId2'EE6B_, (capacityMap'EE75_, connectionMap'EE82_)) ^ " not in subtype") else (RT_m_4.R_mem ((stopId1'EE62_, stopId2'EE6B_), (connectionMap'EE82_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (37, 7)); RT_m_4.R_mem ((stopId2'EE6B_, stopId1'EE62_), (connectionMap'EE82_))));
        
        fun capacity'EC59_ (stopId'ECC7_, (capacityMap'ECCF_, connectionMap'ECDC_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'ECCF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'ECDC_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'ECC7_, (capacityMap'ECCF_, connectionMap'ECDC_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'ECCF_)) (stopId'ECC7_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type TramPlanRow_ = RT_x_17.t;
        
        type Plan_ = RT_l_15.t;
        
        fun buildTimesForTramOnStop'92E5_ (stopid'9361_, plan'9369_, tramid'936F_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (244, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x116_'0_, x117_'0_, x118_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x117_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0"))
        end) (plan'9369_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:242:5: Argument of buildTimesForTramOnStop" ^ RT_x_29.toString (stopid'9361_, plan'9369_, tramid'936F_) ^ " not in subtype") else if RT_Nat.R_lt (RT_l_15.R_length(plan'9369_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (245, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (247, 9)); let
            val (sid'9544_, arrt'9549_, dept'954F_) = ((RT_l_15.R_hd(plan'9369_)):RT_x_14.t)
        in
            if RT_Text.equ (sid'9544_, stopid'9361_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (251, 16)); RT_s_26.R_union (RT_s_26.R_fromList ([(tramid'936F_, arrt'9549_, dept'954F_)]), ((buildTimesForTramOnStop'92E5_) (stopid'9361_, RT_l_15.R_tl(plan'9369_), tramid'936F_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (252, 16)); ((buildTimesForTramOnStop'92E5_) (stopid'9361_, RT_l_15.R_tl(plan'9369_), tramid'936F_)))
        end));
        
        fun buildAllTimesForStop'8D6D_ (stopid'8DE6_, trams'8DEE_, timetable'8DF5_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (230, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x113_'0_, x114_'0_, x115_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'8DF5_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:228:5: Argument of buildAllTimesForStop" ^ RT_x_28.toString (stopid'8DE6_, trams'8DEE_, timetable'8DF5_) ^ " not in subtype") else if RT_s_11.equ (trams'8DEE_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (231, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (233, 9)); let
            val tramid'8FCB_ = ((RT_s_11.R_hd(trams'8DEE_)):RT_Text.t)
        in
            RT_s_26.R_union (((buildTimesForTramOnStop'92E5_) (stopid'8DE6_, ((RT_m_16.R_app(timetable'8DF5_)) (tramid'8FCB_)), tramid'8FCB_)), ((buildAllTimesForStop'8D6D_) (stopid'8DE6_, RT_s_11.R_diff (trams'8DEE_, RT_s_11.R_fromList ([tramid'8FCB_])), timetable'8DF5_)))
        end));
        
        fun countOverlappingTimesForStop'86C9_ (tramid'874A_, arrtime'8751_, deptime'875A_, times'8763_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (213, 7)); if not((RT_Nat.R_ge (arrtime'8751_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (deptime'875A_, RT_Int.fromLit "0")) andalso ((RT_s_26.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x110_'0_, x111_'0_, x112_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0"))
        end) (times'8763_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:211:5: Argument of countOverlappingTimesForStop" ^ RT_x_27.toString (tramid'874A_, arrtime'8751_, deptime'875A_, times'8763_) ^ " not in subtype") else if RT_s_26.equ (times'8763_, RT_s_26.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (214, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (216, 9)); let
            val (tramid2'8928_, arrtime2'8931_, deptime2'893B_) = ((RT_s_26.R_hd(times'8763_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'874A_, tramid2'8928_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 35)); ((((RT_Nat.R_lt (arrtime'8751_, arrtime2'8931_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 59)); RT_Nat.R_lt (arrtime2'8931_, deptime'875A_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 81)); ((RT_Nat.R_lt (arrtime'8751_, deptime2'893B_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (220, 4)); RT_Nat.R_lt (deptime2'893B_, deptime'875A_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (220, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'86C9_) (tramid'874A_, arrtime'8751_, deptime'875A_, RT_s_26.R_diff (times'8763_, RT_s_26.R_fromList ([(tramid2'8928_, arrtime2'8931_, deptime2'893B_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (221, 16)); ((countOverlappingTimesForStop'86C9_) (tramid'874A_, arrtime'8751_, deptime'875A_, RT_s_26.R_diff (times'8763_, RT_s_26.R_fromList ([(tramid2'8928_, arrtime2'8931_, deptime2'893B_)])))))
        end));
        
        fun stopCapacityIsNotExceeded'C2F3_ (stopid'C371_, timetable'C379_, capacityMap'C384_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (367, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x170_'0_, x171_'0_, x172_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x171_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x172_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C379_)))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C384_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:365:7: Argument of stopCapacityIsNotExceeded" ^ RT_x_33.toString (stopid'C371_, timetable'C379_, capacityMap'C384_) ^ " not in subtype") else let
            val times'C423_ = ((((buildAllTimesForStop'8D6D_) (stopid'C371_, RT_m_16.R_dom((timetable'C379_)), timetable'C379_))):RT_s_26.t); 
            val capacity'C487_ = ((((RT_m_1.R_app(capacityMap'C384_)) (stopid'C371_))):RT_Nat.t)
        in
            ((RT_s_26.R_all (fn ((tramid'C555_, arrtime'C55D_, deptime'C566_):RT_x_14.t) => not ((RT_Nat.R_ge (arrtime'C55D_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (deptime'C566_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'86C9_) (tramid'C555_, arrtime'C55D_, deptime'C566_, times'C423_))), capacity'C487_)))) (times'C423_)))
        end);
        
        fun allStopCapacitiesAreNotExceeded'BFD3_ (timetable'C057_, (capacityMap'C063_, connectionMap'C06F_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (359, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x162_'0_, x163_'0_, x164_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x163_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x164_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C057_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C063_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x167_'0_, x168_'0_, x169_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x167_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x168_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x169_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C06F_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:357:7: Argument of allStopCapacitiesAreNotExceeded" ^ RT_x_31.toString (timetable'C057_, (capacityMap'C063_, connectionMap'C06F_)) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopid'C0A2_:RT_Text.t) => ((stopCapacityIsNotExceeded'C2F3_) (stopid'C0A2_, timetable'C057_, capacityMap'C063_))) ((capacityMap'C063_)))));
        
        fun getConnection'4D5F_ (stop1'4DD1_, stop2'4DD8_, (capacityMap'4DE0_, connectionMap'4DED_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4DE0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4DED_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:64:7: Argument of getConnection" ^ RT_x_12.toString (stop1'4DD1_, stop2'4DD8_, (capacityMap'4DE0_, connectionMap'4DED_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'4DD1_, stop2'4DD8_), (connectionMap'4DED_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (68, 9)); ((RT_m_4.R_app(connectionMap'4DED_)) ((stop1'4DD1_, stop2'4DD8_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9)); ((RT_m_4.R_app(connectionMap'4DED_)) ((stop2'4DD8_, stop1'4DD1_)))));
        
        fun timeBetweenStopsIsDrivingTime'9BE1_ (plan'9C63_, (capacityMap'9C6A_, connectionMap'9C77_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (267, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x119_'0_, x120_'0_, x121_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x120_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0"))
        end) (plan'9C63_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'9C6A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x124_'0_, x125_'0_, x126_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x125_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'9C77_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:265:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_30.toString (plan'9C63_, (capacityMap'9C6A_, connectionMap'9C77_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'9C63_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (268, 9)); let
            val (stopid1'9D78_, arrTime1'9D81_, depTime1'9D8B_) = ((RT_l_15.R_hd(plan'9C63_)):RT_x_14.t); 
            val (stopid2'9DDC_, arrTime2'9DE5_, depTime2'9DEF_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'9C63_)))):RT_x_14.t)
        in
            let
                val (headway'9F0A_, drivingTime'9F12_, capacity'9F1F_) = ((((getConnection'4D5F_) (stopid1'9D78_, stopid2'9DDC_, (capacityMap'9C6A_, connectionMap'9C77_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'9DE5_, depTime1'9D8B_), drivingTime'9F12_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (275, 53)); ((timeBetweenStopsIsDrivingTime'9BE1_) (RT_l_15.R_tl(plan'9C63_), (capacityMap'9C6A_, connectionMap'9C77_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (279, 9)); true));
        
        fun nextStop'426F_ (planRow'42DC_, plan'42E5_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (38, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'42DC_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'42E5_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:36:7: Argument of nextStop" ^ RT_x_21.toString (planRow'42DC_, plan'42E5_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'42E5_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:61:13: Precondition of nextStop" ^ RT_x_21.toString (planRow'42DC_, plan'42E5_) ^ " not satisfied") else let
            val iPlanRow'439F_ = ((RT_l_15.R_hd(plan'42E5_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'439F_, planRow'42DC_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (43, 13)); let
                val (sid'4598_, arrt'459D_, dept'45A3_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'42E5_)))):RT_x_14.t)
            in
                (sid'4598_, arrt'459D_, dept'45A3_)
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (49, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'42E5_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (51, 15)); ((nextStop'426F_) (planRow'42DC_, RT_l_15.R_tl(plan'42E5_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (53, 15)); let
                val (sid'4982_, arrt'4987_, dept'498D_) = ((iPlanRow'439F_):RT_x_14.t)
            in
                iPlanRow'439F_
            end))
        end);
        
        fun findDepartureRowInPlan'5A41_ (stopid1'5ABC_, stopid2'5AC5_, plan'5ACE_, tram'5AD4_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (99, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'5ACE_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:97:5: Argument of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'5ABC_, stopid2'5AC5_, plan'5ACE_, tram'5AD4_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'5ACE_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:115:11: Precondition of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'5ABC_, stopid2'5AC5_, plan'5ACE_, tram'5AD4_) ^ " not satisfied") else let
            val (hStopId'5B72_, hArrTime'5B7B_, hDepTime'5B85_) = ((RT_l_15.R_hd(plan'5ACE_)):RT_x_14.t); 
            val (nStopId'5BD6_, nArrTime'5BDF_, nDepTime'5BE9_) = ((((nextStop'426F_) (RT_l_15.R_hd(plan'5ACE_), plan'5ACE_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'5B72_, stopid1'5ABC_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (103, 33)); RT_Text.equ (nStopId'5BD6_, stopid2'5AC5_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (105, 11)); (tram'5AD4_, hStopId'5B72_, hArrTime'5B7B_, hDepTime'5B85_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (107, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'5ACE_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (109, 13)); ((findDepartureRowInPlan'5A41_) (stopid1'5ABC_, stopid2'5AC5_, RT_l_15.R_tl(plan'5ACE_), tram'5AD4_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (111, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'552D_ (stopid1'55B3_, stopid2'55BC_, trams'55C5_, timetable'55CC_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'55CC_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:84:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_24.toString (stopid1'55B3_, stopid2'55BC_, trams'55C5_, timetable'55CC_) ^ " not in subtype") else if RT_s_11.equ (trams'55C5_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (87, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (89, 9)); let
            val tram'578B_ = ((RT_s_11.R_hd(trams'55C5_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findDepartureRowInPlan'5A41_) (stopid1'55B3_, stopid2'55BC_, ((RT_m_16.R_app(timetable'55CC_)) (tram'578B_)), tram'578B_))]), ((buildAllDeparturesUsingConnection'552D_) (stopid1'55B3_, stopid2'55BC_, RT_s_11.R_diff (trams'55C5_, RT_s_11.R_fromList ([tram'578B_])), timetable'55CC_)))
        end));
        
        fun getAllDepaturesUsingConnection'51A9_ (stopid1'522C_, stopid2'5235_, timetable'523E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (77, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'523E_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:75:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_22.toString (stopid1'522C_, stopid2'5235_, timetable'523E_) ^ " not in subtype") else let
            val allTrams'52D9_ = ((RT_m_16.R_dom(timetable'523E_)):RT_s_11.t)
        in
            ((buildAllDeparturesUsingConnection'552D_) (stopid1'522C_, stopid2'5235_, allTrams'52D9_, timetable'523E_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'A34D_ (timetable'A3D5_, (capacityMap'A3E1_, connectionMap'A3EE_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (286, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x127_'0_, x128_'0_, x129_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'A3D5_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'A3E1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x132_'0_, x133_'0_, x134_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x133_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'A3EE_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:284:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_31.toString (timetable'A3D5_, (capacityMap'A3E1_, connectionMap'A3EE_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'A41D_, stopid2'A426_):RT_x_2.t) => let
            val (headway'A482_, drivingTime'A48A_, capacity'A497_) = ((((RT_m_4.R_app(connectionMap'A3EE_)) ((stopid1'A41D_, stopid2'A426_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'A54D_, sid1'A554_, arrt1'A55A_, dept1'A561_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'A55A_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'A561_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'A5B3_, sid2'A5BA_, arrt2'A5C0_, dept2'A5C7_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'A5C0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'A5C7_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'A561_, dept2'A5C7_))), headway'A482_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'51A9_) (stopid1'A41D_, stopid2'A426_, timetable'A3D5_)), RT_s_23.R_fromList ([(tram1'A54D_, sid1'A554_, arrt1'A55A_, dept1'A561_)]))))))) (((getAllDepaturesUsingConnection'51A9_) (stopid1'A41D_, stopid2'A426_, timetable'A3D5_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (293, 11)); ((RT_s_23.R_all (fn ((tram1'A6DD_, sid1'A6E4_, arrt1'A6EA_, dept1'A6F1_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'A6EA_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'A6F1_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'A741_, sid2'A748_, arrt2'A74E_, dept2'A755_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'A74E_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'A755_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'A6F1_, dept2'A755_))), headway'A482_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'51A9_) (stopid2'A426_, stopid1'A41D_, timetable'A3D5_)), RT_s_23.R_fromList ([(tram1'A6DD_, sid1'A6E4_, arrt1'A6EA_, dept1'A6F1_)]))))))) (((getAllDepaturesUsingConnection'51A9_) (stopid2'A426_, stopid1'A41D_, timetable'A3D5_))))))
        end) ((connectionMap'A3EE_)))));
        
        fun countOverlappingTimesForTrack'73A5_ (tramid'7427_, deptime'742E_, arrtime'7437_, times'7440_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (164, 7)); if not((RT_Nat.R_ge (deptime'742E_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (arrtime'7437_, RT_Int.fromLit "0")) andalso ((RT_s_26.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (times'7440_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:162:5: Argument of countOverlappingTimesForTrack" ^ RT_x_27.toString (tramid'7427_, deptime'742E_, arrtime'7437_, times'7440_) ^ " not in subtype") else if RT_s_26.equ (times'7440_, RT_s_26.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (165, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (167, 9)); let
            val (tramid2'7604_, deptime2'760D_, arrtime2'7617_) = ((RT_s_26.R_hd(times'7440_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'7427_, tramid2'7604_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (170, 35)); ((((RT_Nat.R_lt (deptime'742E_, deptime2'760D_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (170, 59)); RT_Nat.R_lt (deptime2'760D_, arrtime'7437_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (170, 81)); ((RT_Nat.R_lt (deptime'742E_, arrtime2'7617_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (171, 4)); RT_Nat.R_lt (arrtime2'7617_, arrtime'7437_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (171, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'73A5_) (tramid'7427_, deptime'742E_, arrtime'7437_, RT_s_26.R_diff (times'7440_, RT_s_26.R_fromList ([(tramid2'7604_, deptime2'760D_, arrtime2'7617_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (172, 16)); ((countOverlappingTimesForTrack'73A5_) (tramid'7427_, deptime'742E_, arrtime'7437_, RT_s_26.R_diff (times'7440_, RT_s_26.R_fromList ([(tramid2'7604_, deptime2'760D_, arrtime2'7617_)])))))
        end));
        
        fun buildTimesForTramOnTrack'7FC1_ (stopid1'803F_, stopid2'8048_, plan'8051_, tramid'8057_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (195, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x107_'0_, x108_'0_, x109_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0"))
        end) (plan'8051_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:193:5: Argument of buildTimesForTramOnTrack" ^ RT_x_25.toString (stopid1'803F_, stopid2'8048_, plan'8051_, tramid'8057_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'8051_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (196, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (198, 9)); let
            val (sid'8220_, arrt'8225_, dept'822B_) = ((RT_l_15.R_hd(plan'8051_)):RT_x_14.t); 
            val (sid2'8284_, arrt2'828A_, dept2'8291_) = ((((nextStop'426F_) ((sid'8220_, arrt'8225_, dept'822B_), plan'8051_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'8220_, stopid1'803F_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (202, 31)); RT_Text.equ (sid2'8284_, stopid2'8048_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (203, 16)); RT_s_26.R_union (RT_s_26.R_fromList ([(tramid'8057_, dept'822B_, arrt2'828A_)]), ((buildTimesForTramOnTrack'7FC1_) (stopid1'803F_, stopid2'8048_, RT_l_15.R_tl(plan'8051_), tramid'8057_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (204, 16)); ((buildTimesForTramOnTrack'7FC1_) (stopid1'803F_, stopid2'8048_, RT_l_15.R_tl(plan'8051_), tramid'8057_)))
        end));
        
        fun buildAllTimesForTrack'7A49_ (stopid1'7AC3_, stopid2'7ACC_, trams'7AD5_, timetable'7ADC_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (181, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x104_'0_, x105_'0_, x106_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x105_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7ADC_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:179:5: Argument of buildAllTimesForTrack" ^ RT_x_24.toString (stopid1'7AC3_, stopid2'7ACC_, trams'7AD5_, timetable'7ADC_) ^ " not in subtype") else if RT_s_11.equ (trams'7AD5_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (182, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (184, 9)); let
            val tramid'7CA7_ = ((RT_s_11.R_hd(trams'7AD5_)):RT_Text.t)
        in
            RT_s_26.R_union (((buildTimesForTramOnTrack'7FC1_) (stopid1'7AC3_, stopid2'7ACC_, ((RT_m_16.R_app(timetable'7ADC_)) (tramid'7CA7_)), tramid'7CA7_)), ((buildAllTimesForTrack'7A49_) (stopid1'7AC3_, stopid2'7ACC_, RT_s_11.R_diff (trams'7AD5_, RT_s_11.R_fromList ([tramid'7CA7_])), timetable'7ADC_)))
        end));
        
        fun trackCapacityIsNotExceeded'B991_ (stopid1'BA10_, stopid2'BA19_, timetable'BA22_, connectionMap'BA2D_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (343, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x154_'0_, x155_'0_, x156_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x155_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x156_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'BA22_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x159_'0_, x160_'0_, x161_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x159_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x161_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'BA2D_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:341:5: Argument of trackCapacityIsNotExceeded" ^ RT_x_32.toString (stopid1'BA10_, stopid2'BA19_, timetable'BA22_, connectionMap'BA2D_) ^ " not in subtype") else let
            val times1'BAC2_ = ((((buildAllTimesForTrack'7A49_) (stopid1'BA10_, stopid2'BA19_, RT_m_16.R_dom((timetable'BA22_)), timetable'BA22_))):RT_s_26.t); 
            val times2'BB26_ = ((((buildAllTimesForTrack'7A49_) (stopid2'BA19_, stopid1'BA10_, RT_m_16.R_dom((timetable'BA22_)), timetable'BA22_))):RT_s_26.t); 
            val (headway'BB8B_, drivingtime'BB94_, trackcapacity'BBA1_) = ((((RT_m_4.R_app(connectionMap'BA2D_)) (stopid1'BA10_, stopid2'BA19_))):RT_x_3.t)
        in
            (((RT_s_26.R_all (fn ((tramid'BC58_, deptime'BC60_, arrtime'BC69_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'BC60_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'BC69_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'73A5_) (tramid'BC58_, deptime'BC60_, arrtime'BC69_, times1'BAC2_))), trackcapacity'BBA1_)))) (times1'BAC2_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (350, 15)); ((RT_s_26.R_all (fn ((tramid'BD25_, deptime'BD2D_, arrtime'BD36_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'BD2D_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'BD36_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'73A5_) (tramid'BD25_, deptime'BD2D_, arrtime'BD36_, times2'BB26_))), trackcapacity'BBA1_)))) (times2'BB26_))))
        end);
        
        fun allTrackCapacitiesAreNotExceeded'B671_ (timetable'B6F6_, (capacityMap'B702_, connectionMap'B70E_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (335, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x146_'0_, x147_'0_, x148_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x147_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x148_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B6F6_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'B702_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x151_'0_, x152_'0_, x153_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x151_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x152_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x153_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B70E_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:333:5: Argument of allTrackCapacitiesAreNotExceeded" ^ RT_x_31.toString (timetable'B6F6_, (capacityMap'B702_, connectionMap'B70E_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'B741_, stopid2'B74A_):RT_x_2.t) => ((trackCapacityIsNotExceeded'B991_) (stopid1'B741_, stopid2'B74A_, timetable'B6F6_, connectionMap'B70E_))) ((connectionMap'B70E_)))));
        
        fun tramStopsAtAllStopsItPasses'B225_ timetable'B2A5_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (324, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x143_'0_, x144_'0_, x145_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x144_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x145_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B2A5_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:322:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'B2A5_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'B2F4_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'B35B_, arrTime'B363_, depTime'B36C_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'B363_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'B36C_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'B36C_, arrTime'B363_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'B2A5_)) (tramid'B2F4_)))))) ((timetable'B2A5_)))));
        
        fun findArrivalRowInPlan'6B0D_ (stopid1'6B86_, stopid2'6B8F_, plan'6B98_, tram'6B9E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (142, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'6B98_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:140:5: Argument of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'6B86_, stopid2'6B8F_, plan'6B98_, tram'6B9E_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'6B98_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:158:11: Precondition of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'6B86_, stopid2'6B8F_, plan'6B98_, tram'6B9E_) ^ " not satisfied") else let
            val (hStopId'6C3E_, hArrTime'6C47_, hDepTime'6C51_) = ((RT_l_15.R_hd(plan'6B98_)):RT_x_14.t); 
            val (nStopId'6CA2_, nArrTime'6CAB_, nDepTime'6CB5_) = ((((nextStop'426F_) (RT_l_15.R_hd(plan'6B98_), plan'6B98_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'6C3E_, stopid1'6B86_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (146, 33)); RT_Text.equ (nStopId'6CA2_, stopid2'6B8F_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (148, 11)); (tram'6B9E_, nStopId'6CA2_, nArrTime'6CAB_, nDepTime'6CB5_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (150, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'6B98_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (152, 13)); ((findArrivalRowInPlan'6B0D_) (stopid1'6B86_, stopid2'6B8F_, RT_l_15.R_tl(plan'6B98_), tram'6B9E_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (154, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllArrivalsUsingConnection'65F9_ (stopid1'667D_, stopid2'6686_, trams'668F_, timetable'6696_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (129, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6696_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:127:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_24.toString (stopid1'667D_, stopid2'6686_, trams'668F_, timetable'6696_) ^ " not in subtype") else if RT_s_11.equ (trams'668F_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (130, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (132, 9)); let
            val tram'6857_ = ((RT_s_11.R_hd(trams'668F_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findArrivalRowInPlan'6B0D_) (stopid1'667D_, stopid2'6686_, ((RT_m_16.R_app(timetable'6696_)) (tram'6857_)), tram'6857_))]), ((buildAllArrivalsUsingConnection'65F9_) (stopid1'667D_, stopid2'6686_, RT_s_11.R_diff (trams'668F_, RT_s_11.R_fromList ([tram'6857_])), timetable'6696_)))
        end));
        
        fun getAllArrivalsUsingConnection'6275_ (stopid1'62F7_, stopid2'6300_, timetable'6309_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (120, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6309_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:118:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_22.toString (stopid1'62F7_, stopid2'6300_, timetable'6309_) ^ " not in subtype") else let
            val allTrams'63A5_ = ((RT_m_16.R_dom(timetable'6309_)):RT_s_11.t)
        in
            ((buildAllArrivalsUsingConnection'65F9_) (stopid1'62F7_, stopid2'6300_, allTrams'63A5_, timetable'6309_))
        end);
        
        fun timeBetweenArrivalIsValidHeadway'AB81_ (timetable'AC06_, (capacityMap'AC12_, connectionMap'AC1F_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (307, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x135_'0_, x136_'0_, x137_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x136_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x137_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'AC06_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'AC12_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x140_'0_, x141_'0_, x142_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x140_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x142_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'AC1F_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:305:5: Argument of timeBetweenArrivalIsValidHeadway" ^ RT_x_31.toString (timetable'AC06_, (capacityMap'AC12_, connectionMap'AC1F_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'AC51_, stopid2'AC5A_):RT_x_2.t) => let
            val (headway'ACB6_, drivingTime'ACBE_, capacity'ACCB_) = ((((RT_m_4.R_app(connectionMap'AC1F_)) ((stopid1'AC51_, stopid2'AC5A_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'AD81_, sid1'AD88_, arrt1'AD8E_, dept1'AD95_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'AD8E_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'AD95_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'ADE7_, sid2'ADEE_, arrt2'ADF4_, dept2'ADFB_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'ADF4_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'ADFB_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'AD8E_, arrt2'ADF4_))), headway'ACB6_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'6275_) (stopid1'AC51_, stopid2'AC5A_, timetable'AC06_)), RT_s_23.R_fromList ([(tram1'AD81_, sid1'AD88_, arrt1'AD8E_, dept1'AD95_)]))))))) (((getAllArrivalsUsingConnection'6275_) (stopid1'AC51_, stopid2'AC5A_, timetable'AC06_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (314, 11)); ((RT_s_23.R_all (fn ((tram1'AF11_, sid1'AF18_, arrt1'AF1E_, dept1'AF25_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'AF1E_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'AF25_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'AF77_, sid2'AF7E_, arrt2'AF84_, dept2'AF8B_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'AF84_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'AF8B_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'AF1E_, arrt2'AF84_))), headway'ACB6_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'6275_) (stopid2'AC5A_, stopid1'AC51_, timetable'AC06_)), RT_s_23.R_fromList ([(tram1'AF11_, sid1'AF18_, arrt1'AF1E_, dept1'AF25_)]))))))) (((getAllArrivalsUsingConnection'6275_) (stopid2'AC5A_, stopid1'AC51_, timetable'AC06_))))))
        end) ((connectionMap'AC1F_)))));
        
        fun isWellformed'DC56_ (t'DCC7_, n'DCCA_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (432, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x200_'0_, x201_'0_, x202_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x201_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x202_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'DCC7_)))) andalso (let
            val (x203_'0_, x204_'0_) = ((n'DCCA_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x203_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x207_'0_, x208_'0_, x209_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x207_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x208_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x209_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x204_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:430:6: Argument of isWellformed" ^ RT_x_31.toString (t'DCC7_, n'DCCA_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'B225_) (t'DCC7_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (433, 8)); (((timeBetweenDeparturesIsValidHeadway'A34D_) (t'DCC7_, n'DCCA_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (434, 8)); (((timeBetweenArrivalIsValidHeadway'AB81_) (t'DCC7_, n'DCCA_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (435, 8)); (((RT_s_19.R_all (fn (plan'DE51_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x210_'0_, x211_'0_, x212_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x211_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0"))
        end) (plan'DE51_))) orelse (((timeBetweenStopsIsDrivingTime'9BE1_) (plan'DE51_, n'DCCA_)))) (RT_m_16.R_ran((t'DCC7_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (436, 8)); (((allTrackCapacitiesAreNotExceeded'B671_) (t'DCC7_, n'DCCA_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (437, 8)); ((allStopCapacitiesAreNotExceeded'BFD3_) (t'DCC7_, n'DCCA_))))))));
        
        fun stopsAreConnected'CB8B_ (plan'CC01_, connectionMap'CC07_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (389, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x181_'0_, x182_'0_, x183_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x182_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x183_'0_, RT_Int.fromLit "0"))
        end) (plan'CC01_))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x186_'0_, x187_'0_, x188_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x186_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x187_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x188_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'CC07_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:387:7: Argument of stopsAreConnected" ^ RT_x_34.toString (plan'CC01_, connectionMap'CC07_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'CC01_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (390, 14)); true) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (392, 11)); let
            val (sid'CDEA_, arrt'CDEF_, dept'CDF5_) = ((RT_l_15.R_hd(plan'CC01_)):RT_x_14.t); 
            val (sid2'CE4E_, arrt2'CE54_, dept2'CE5B_) = ((((nextStop'426F_) ((sid'CDEA_, arrt'CDEF_, dept'CDF5_), plan'CC01_))):RT_x_14.t)
        in
            if (RT_m_4.R_mem ((sid'CDEA_, sid2'CE4E_), (connectionMap'CC07_))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (396, 54)); RT_m_4.R_mem ((sid2'CE4E_, sid'CDEA_), (connectionMap'CC07_))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (397, 18)); ((stopsAreConnected'CB8B_) (RT_l_15.R_tl(plan'CC01_), connectionMap'CC07_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (398, 18)); false)
        end));
        
        fun allStopsAreConnected'C86B_ (timetable'C8E4_, (capacityMap'C8F0_, connectionMap'C8FC_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (381, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x173_'0_, x174_'0_, x175_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x174_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x175_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C8E4_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C8F0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x178_'0_, x179_'0_, x180_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x178_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x179_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x180_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C8FC_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:379:7: Argument of allStopsAreConnected" ^ RT_x_31.toString (timetable'C8E4_, (capacityMap'C8F0_, connectionMap'C8FC_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'C93A_:RT_Text.t) => ((stopsAreConnected'CB8B_) (((RT_m_16.R_app(timetable'C8E4_)) (tramid'C93A_)), connectionMap'C8FC_))) ((timetable'C8E4_)))));
        
        fun stopsExist'D5B1_ (plan'D620_, capacityMap'D626_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (415, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x197_'0_, x198_'0_, x199_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x198_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x199_'0_, RT_Int.fromLit "0"))
        end) (plan'D620_))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D626_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:413:5: Argument of stopsExist" ^ RT_x_35.toString (plan'D620_, capacityMap'D626_) ^ " not in subtype") else if RT_Nat.equ (RT_l_15.R_length(plan'D620_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (416, 12)); true) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (418, 9)); let
            val (sid'D810_, arrt'D815_, dept'D81B_) = ((RT_l_15.R_hd(plan'D620_)):RT_x_14.t)
        in
            if RT_m_1.R_mem (sid'D810_, (capacityMap'D626_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (422, 16)); ((stopsExist'D5B1_) (RT_l_15.R_tl(plan'D620_), capacityMap'D626_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (423, 16)); false)
        end));
        
        fun allStopsInPlanExist'D291_ (timetable'D309_, (capacityMap'D315_, connectionMap'D322_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (407, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x189_'0_, x190_'0_, x191_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x190_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x191_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'D309_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D315_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x194_'0_, x195_'0_, x196_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x194_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x196_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D322_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:405:5: Argument of allStopsInPlanExist" ^ RT_x_31.toString (timetable'D309_, (capacityMap'D315_, connectionMap'D322_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'D360_:RT_Text.t) => ((stopsExist'D5B1_) (((RT_m_16.R_app(timetable'D309_)) (tramid'D360_)), capacityMap'D315_))) ((timetable'D309_)))));
        
        val empty'39D7_ = let val z__'39E9_ = RT_m_16.R_fromList [] in if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x213_'0_, x214_'0_, x215_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x214_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x215_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'39E9_)))) then (RSL.add_load_err("./TIMETABLE.rsl:14:25: Value " ^ RT_m_16.toString(z__'39E9_) ^ " of empty not in subtype"); z__'39E9_) else z__'39E9_ end;
        
        fun isIn'4015_ (tramid'407E_, timetable'4086_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (32, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4086_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:30:5: Argument of isIn" ^ RT_x_18.toString (tramid'407E_, timetable'4086_) ^ " not in subtype") else RT_m_16.R_mem (tramid'407E_, (timetable'4086_)));
        
        fun addTram'3B03_ (tramid'3B6F_, timetable'3B77_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (19, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3B77_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:17:7: Argument of addTram" ^ RT_x_18.toString (tramid'3B6F_, timetable'3B77_) ^ " not in subtype") else RT_m_16.R_override (timetable'3B77_, RT_m_16.R_fromList ([(tramid'3B6F_, ([]:RT_l_15.t))])));
        
        fun addStop'3CF7_ (tramid'3D63_, stopid'3D6B_, arrival'3D73_, departure'3D7C_, timetable'3D87_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (24, 9)); if not((RT_Nat.R_ge (arrival'3D73_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'3D7C_, RT_Int.fromLit "0")) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3D87_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:22:7: Argument of addStop" ^ RT_x_20.toString (tramid'3D63_, stopid'3D6B_, arrival'3D73_, departure'3D7C_, timetable'3D87_) ^ " not in subtype") else RT_m_16.R_override (timetable'3D87_, RT_m_16.R_fromList ([(tramid'3D63_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'3D87_)) (tramid'3D63_)), [(stopid'3D6B_, arrival'3D73_, departure'3D7C_)]))])));
        
        val connectionTest'2016_ = (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1");
        
        val tramIdA'32D_ = RT_Text.fromLit "tram1";
        
        val stopCapacitywithAddedStop'1DBE_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2"), (RT_Text.fromLit "E", RT_Int.fromLit "2")]);
        
        val connectionMap'521_ = RT_m_4.R_fromList ([((RT_Text.fromLit "B", RT_Text.fromLit "D"), (RT_Int.fromLit "2", RT_Int.fromLit "7", RT_Int.fromLit "2")), ((RT_Text.fromLit "A", RT_Text.fromLit "B"), (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1")), ((RT_Text.fromLit "B", RT_Text.fromLit "C"), (RT_Int.fromLit "2", RT_Int.fromLit "12", RT_Int.fromLit "3"))]);
        
        val netWithAddedStop'1EEA_ = (stopCapacitywithAddedStop'1DBE_, connectionMap'521_);
        
        val tramNotIn'3F5_ = RT_Text.fromLit "tramG";
        
        val plan13'1C2D_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan12'1BC9_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60"), (RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10")];
        
        val timetableWithAddedStop'1C91_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan12'1BC9_), (RT_Text.fromLit "tram2", plan13'1C2D_)]);
        
        val plan11'1A38_ = let val z__'1A46_ = ([]:RT_l_15.t) in if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x216_'0_, x217_'0_, x218_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x217_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x218_'0_, RT_Int.fromLit "0"))
        end) (z__'1A46_))) then (RSL.add_load_err("./testTimeTable.rsl:67:26: Value " ^ RT_l_15.toString(z__'1A46_) ^ " of plan11 not in subtype"); z__'1A46_) else z__'1A46_ end;
        
        val plan1'841_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val plan2'8A5_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val timetableWithAddedTram'1A9C_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (tramNotIn'3F5_, plan11'1A38_)]);
        
        val timetableWF'909_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_)]);
        
        val stopCapacity'585_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2")]);
        
        val net'6B1_ = (stopCapacity'585_, connectionMap'521_);
        
        val tramIdB'391_ = RT_Text.fromLit "tram2";
        
        val planInvalidDrivingTime'A35_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "8", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan9'18A8_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timeTableWithInvalidConnection'190C_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan9'18A8_)]);
        
        val plan7'16B4_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "Q", RT_Int.fromLit "31", RT_Int.fromLit "33")];
        
        val timeTableWithInvalidStop'1718_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan7'16B4_)]);
        
        val plan6'1524_ = [(RT_Text.fromLit "B", RT_Int.fromLit "15", RT_Int.fromLit "17"), (RT_Text.fromLit "A", RT_Int.fromLit "29", RT_Int.fromLit "30"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val plan5'14C0_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "31", RT_Int.fromLit "33"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timeTableWithExceededStopCapacities'1588_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", plan5'14C0_), (RT_Text.fromLit "tram4", plan6'1524_)]);
        
        val plan4'12CD_ = [(RT_Text.fromLit "B", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "A", RT_Int.fromLit "48", RT_Int.fromLit "50")];
        
        val timetableWithAlmostExceededTrackCapacities'1395_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram4", plan4'12CD_)]);
        
        val plan3'1269_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "32", RT_Int.fromLit "34"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val timetableWithExceededTrackCapacities'1331_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", plan3'1269_)]);
        
        val planWithoutStopTime'10D9_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "12"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timetableWithoutStopTime'113D_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", planWithoutStopTime'10D9_)]);
        
        val planTooShortArrivalTime'F49_ = [(RT_Text.fromLit "C", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48")];
        
        val timetableInvalidArrivalHeadway'FAD_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", planTooShortArrivalTime'F49_)]);
        
        val planDuplicateDepartureHeadway'DB9_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "14", RT_Int.fromLit "16")];
        
        val timetableDuplicateDepartureHeadway'E1D_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", plan2'8A5_), (RT_Text.fromLit "tram3", planDuplicateDepartureHeadway'DB9_)]);
        
        val timetableInvalidDepartureHeadway'C29_ = ((addStop'3CF7_) (RT_Text.fromLit "tram3", RT_Text.fromLit "C", RT_Int.fromLit "30", RT_Int.fromLit "60", ((addStop'3CF7_) (RT_Text.fromLit "tram3", RT_Text.fromLit "B", RT_Int.fromLit "0", RT_Int.fromLit "14", ((addTram'3B03_) (RT_Text.fromLit "tram3", timetableWF'909_))))));
        
        val timetableInvalidDrivingTime'A99_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'841_), (RT_Text.fromLit "tram2", planInvalidDrivingTime'A35_)]);
        
        val planShortDepartureHeadway'BC5_ = [(RT_Text.fromLit "B", RT_Int.fromLit "0", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "30", RT_Int.fromLit "60")];
        
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
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DC56_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s2_validDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'9BE1_) (plan1'841_, net'6B1_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'9BE1_) (planInvalidDrivingTime'A35_, net'6B1_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DC56_) (timetableInvalidDrivingTime'A99_, net'6B1_)), false)));

(RSL.C_output "[s3_validHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A34D_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A34D_) (timetableInvalidDepartureHeadway'C29_, net'6B1_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DC56_) (timetableInvalidDepartureHeadway'C29_, net'6B1_)), false)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A34D_) (timetableDuplicateDepartureHeadway'E1D_, net'6B1_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DC56_) (timetableDuplicateDepartureHeadway'E1D_, net'6B1_)), false)));

(RSL.C_output "[s5_validHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'AB81_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s5_invalidHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'AB81_) (timetableInvalidArrivalHeadway'FAD_, net'6B1_)), false)));

(RSL.C_output "[s5_NotWellFormedArrivalHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DC56_) (timetableInvalidArrivalHeadway'FAD_, net'6B1_)), false)));

(RSL.C_output "[s6_tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'B225_) (timetableWF'909_)), true)));

(RSL.C_output "[s6_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'B225_) (timetableWithoutStopTime'113D_)), false)));

(RSL.C_output "[s6_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DC56_) (timetableWithoutStopTime'113D_, net'6B1_)), false)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDontExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'B671_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackAlmostExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'B671_) (timetableWithAlmostExceededTrackCapacities'1395_, net'6B1_)), true)));

(RSL.C_output "[s7_NumberOfTramsOnTrackDoExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'B671_) (timetableWithExceededTrackCapacities'1331_, net'6B1_)), false)));

(RSL.C_output "[s8_NumberOfTramsAtStopDontExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'BFD3_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s8_NumberOfTramsAtStopDoExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'BFD3_) (timeTableWithExceededStopCapacities'1588_, net'6B1_)), false)));

(RSL.C_output "[s9_AllStopsInPlansExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'D291_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s9_AllStopsInPlansDoNotExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'D291_) (timeTableWithInvalidStop'1718_, net'6B1_)), false)));

(RSL.C_output "[s10_allStopsAreConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'C86B_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s10_allStopsAreNotConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'C86B_) (timeTableWithInvalidConnection'190C_, net'6B1_)), false)));

(RSL.C_output "[s12_AddingTram] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addTram'3B03_) (tramNotIn'3F5_, timetableWF'909_)), timetableWithAddedTram'1A9C_)));

(RSL.C_output "[s12_addStop] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addStop'3CF7_) (tramIdA'32D_, RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10", timetableWF'909_)), timetableWithAddedStop'1C91_)));

(RSL.C_output "[s13_isinExisting01] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4015_) (tramIdA'32D_, timetableWF'909_)), true)));

(RSL.C_output "[s13_isinExisting02] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4015_) (tramIdB'391_, timetableWF'909_)), true)));

(RSL.C_output "[s13_isNotin] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4015_) (tramNotIn'3F5_, timetableWF'909_)), false)));

(RSL.C_output "[s16_getConnection] " RT_Bool.toStringSafe (fn _ => RT_x_3.equ (((getConnection'4D5F_) (RT_Text.fromLit "A", RT_Text.fromLit "B", net'6B1_)), connectionTest'2016_)));

RSL.print_error_count();
R_coverage.save_marked();
