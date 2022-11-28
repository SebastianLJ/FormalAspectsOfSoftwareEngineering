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
        
        fun allStopsHaveConnection'FE51_ (capacityMap'FECC_, connectionMap'FED9_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FECC_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FED9_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'FECC_, connectionMap'FED9_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'FF20_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'FFED_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'FF20_, stopId2'FFED_), (connectionMap'FED9_))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'FFED_, stopId'FF20_), (connectionMap'FED9_))))) ((capacityMap'FECC_))))) ((capacityMap'FECC_)))));
        
        fun noSelfConnection'F8D9_ (capacityMap'F94E_, connectionMap'F95B_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F94E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F95B_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'F94E_, connectionMap'F95B_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'F9A9_, stopId2'F9B2_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'F9A9_, stopId2'F9B2_)) ((connectionMap'F95B_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'FB95_ (capacityMap'FC21_, connectionMap'FC2E_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'FC21_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'FC2E_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'FC21_, connectionMap'FC2E_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'FC65_, stopId2'FC6E_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'FC65_, (capacityMap'FC21_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'FC6E_, (capacityMap'FC21_)))) ((connectionMap'FC2E_)))));
        
        fun isWellformed'10239_ net'102AA_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'102AA_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'102AA_ ^ ")" ^ " not in subtype") else (((noSelfConnection'F8D9_) (net'102AA_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'FB95_) (net'102AA_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (92, 7)); ((allStopsHaveConnection'FE51_) (net'102AA_)))));
        
        val empty'E551_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'F555_ (stopId1'F5C8_, stopId2'F5D1_, (capacityMap'F5DB_, connectionMap'F5E8_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F5DB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F5E8_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'F5C8_, stopId2'F5D1_, (capacityMap'F5DB_, connectionMap'F5E8_)) ^ " not in subtype") else let
            val (headway'F624_, drivingTime'F62D_, capacity'F63A_) = ((((RT_m_4.R_app(connectionMap'F5E8_)) (stopId1'F5C8_, stopId2'F5D1_))):RT_x_3.t)
        in
            drivingTime'F62D_
        end);
        
        fun insertStop'E619_ (stopId'E688_, capacity'E690_, (capacityMap'E69B_, connectionMap'E6A8_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'E690_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E69B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'E6A8_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'E688_, capacity'E690_, (capacityMap'E69B_, connectionMap'E6A8_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'E69B_, RT_m_1.R_fromList ([(stopId'E688_, capacity'E690_)])), connectionMap'E6A8_));
        
        fun capacity'F235_ (stopId1'F2A2_, stopId2'F2AB_, (capacityMap'F2B5_, connectionMap'F2C2_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'F2B5_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'F2C2_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'F2A2_, stopId2'F2AB_, (capacityMap'F2B5_, connectionMap'F2C2_)) ^ " not in subtype") else let
            val (headway'F304_, drivingTime'F30D_, capacity'F31A_) = ((((RT_m_4.R_app(connectionMap'F2C2_)) (stopId1'F2A2_, stopId2'F2AB_))):RT_x_3.t)
        in
            capacity'F31A_
        end);
        
        fun addConnection'E80D_ (stopId1'E87F_, stopId2'E888_, headway'E891_, capacity'E89A_, drivingTime'E8A4_, (capacityMap'E8B2_, connectionMap'E8BF_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'E891_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'E89A_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'E8A4_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'E8B2_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'E8BF_)))))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'E87F_, stopId2'E888_, headway'E891_, capacity'E89A_, drivingTime'E8A4_, (capacityMap'E8B2_, connectionMap'E8BF_)) ^ " not in subtype") else (capacityMap'E8B2_, RT_m_4.R_override (connectionMap'E8BF_, RT_m_4.R_fromList ([((stopId1'E87F_, stopId2'E888_), (headway'E891_, drivingTime'E8A4_, capacity'E89A_))]))));
        
        fun minHeadway'EF15_ (stopId1'EF84_, stopId2'EF8D_, (capacityMap'EF97_, connectionMap'EFA4_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EF97_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'EFA4_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'EF84_, stopId2'EF8D_, (capacityMap'EF97_, connectionMap'EFA4_)) ^ " not in subtype") else let
            val (headway'EFE4_, drivingTime'EFED_, capacity'EFFA_) = ((((RT_m_4.R_app(connectionMap'EFA4_)) (stopId1'EF84_, stopId2'EF8D_))):RT_x_3.t)
        in
            headway'EFE4_
        end);
        
        fun isIn'EA01_ (stopId'EA6A_, (capacityMap'EA73_, connecitonMap'EA80_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EA73_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'EA80_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'EA6A_, (capacityMap'EA73_, connecitonMap'EA80_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'EA6A_, (capacityMap'EA73_)));
        
        fun areDirectlyConnected'ED21_ (stopId1'ED9A_, stopId2'EDA3_, (capacityMap'EDAD_, connectionMap'EDBA_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EDAD_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'EDBA_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'ED9A_, stopId2'EDA3_, (capacityMap'EDAD_, connectionMap'EDBA_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'ED9A_, stopId2'EDA3_), (connectionMap'EDBA_)));
        
        fun capacity'EB91_ (stopId'EBFF_, (capacityMap'EC07_, connectionMap'EC14_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'EC07_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'EC14_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'EBFF_, (capacityMap'EC07_, connectionMap'EC14_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'EC07_)) (stopId'EBFF_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type TramPlanRow_ = RT_x_17.t;
        
        type Plan_ = RT_l_15.t;
        
        fun buildTimesForTramOnStop'921D_ (stopid'9299_, plan'92A1_, tramid'92A7_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (244, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x116_'0_, x117_'0_, x118_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x117_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0"))
        end) (plan'92A1_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:242:5: Argument of buildTimesForTramOnStop" ^ RT_x_29.toString (stopid'9299_, plan'92A1_, tramid'92A7_) ^ " not in subtype") else if RT_Nat.R_lt (RT_l_15.R_length(plan'92A1_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (245, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (247, 9)); let
            val (sid'947C_, arrt'9481_, dept'9487_) = ((RT_l_15.R_hd(plan'92A1_)):RT_x_14.t)
        in
            if RT_Text.equ (sid'947C_, stopid'9299_) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (251, 16)); RT_s_26.R_union (RT_s_26.R_fromList ([(tramid'92A7_, arrt'9481_, dept'9487_)]), ((buildTimesForTramOnStop'921D_) (stopid'9299_, RT_l_15.R_tl(plan'92A1_), tramid'92A7_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (252, 16)); ((buildTimesForTramOnStop'921D_) (stopid'9299_, RT_l_15.R_tl(plan'92A1_), tramid'92A7_)))
        end));
        
        fun buildAllTimesForStop'8CA5_ (stopid'8D1E_, trams'8D26_, timetable'8D2D_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (230, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x113_'0_, x114_'0_, x115_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'8D2D_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:228:5: Argument of buildAllTimesForStop" ^ RT_x_28.toString (stopid'8D1E_, trams'8D26_, timetable'8D2D_) ^ " not in subtype") else if RT_s_11.equ (trams'8D26_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (231, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (233, 9)); let
            val tramid'8F03_ = ((RT_s_11.R_hd(trams'8D26_)):RT_Text.t)
        in
            RT_s_26.R_union (((buildTimesForTramOnStop'921D_) (stopid'8D1E_, ((RT_m_16.R_app(timetable'8D2D_)) (tramid'8F03_)), tramid'8F03_)), ((buildAllTimesForStop'8CA5_) (stopid'8D1E_, RT_s_11.R_diff (trams'8D26_, RT_s_11.R_fromList ([tramid'8F03_])), timetable'8D2D_)))
        end));
        
        fun countOverlappingTimesForStop'8601_ (tramid'8682_, arrtime'8689_, deptime'8692_, times'869B_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (213, 7)); if not((RT_Nat.R_ge (arrtime'8689_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (deptime'8692_, RT_Int.fromLit "0")) andalso ((RT_s_26.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x110_'0_, x111_'0_, x112_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0"))
        end) (times'869B_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:211:5: Argument of countOverlappingTimesForStop" ^ RT_x_27.toString (tramid'8682_, arrtime'8689_, deptime'8692_, times'869B_) ^ " not in subtype") else if RT_s_26.equ (times'869B_, RT_s_26.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (214, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (216, 9)); let
            val (tramid2'8860_, arrtime2'8869_, deptime2'8873_) = ((RT_s_26.R_hd(times'869B_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'8682_, tramid2'8860_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (219, 35)); ((((RT_Nat.R_lt (arrtime'8689_, arrtime2'8869_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (219, 59)); RT_Nat.R_lt (arrtime2'8869_, deptime'8692_)))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (219, 81)); ((RT_Nat.R_lt (arrtime'8689_, deptime2'8873_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (220, 4)); RT_Nat.R_lt (deptime2'8873_, deptime'8692_)))))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (220, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'8601_) (tramid'8682_, arrtime'8689_, deptime'8692_, RT_s_26.R_diff (times'869B_, RT_s_26.R_fromList ([(tramid2'8860_, arrtime2'8869_, deptime2'8873_)])))))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (221, 16)); ((countOverlappingTimesForStop'8601_) (tramid'8682_, arrtime'8689_, deptime'8692_, RT_s_26.R_diff (times'869B_, RT_s_26.R_fromList ([(tramid2'8860_, arrtime2'8869_, deptime2'8873_)])))))
        end));
        
        fun stopCapacityIsNotExceeded'C22B_ (stopid'C2A9_, timetable'C2B1_, capacityMap'C2BC_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (367, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x170_'0_, x171_'0_, x172_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x171_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x172_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C2B1_)))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C2BC_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:365:7: Argument of stopCapacityIsNotExceeded" ^ RT_x_33.toString (stopid'C2A9_, timetable'C2B1_, capacityMap'C2BC_) ^ " not in subtype") else let
            val times'C35B_ = ((((buildAllTimesForStop'8CA5_) (stopid'C2A9_, RT_m_16.R_dom((timetable'C2B1_)), timetable'C2B1_))):RT_s_26.t); 
            val capacity'C3BF_ = ((((RT_m_1.R_app(capacityMap'C2BC_)) (stopid'C2A9_))):RT_Nat.t)
        in
            ((RT_s_26.R_all (fn ((tramid'C48D_, arrtime'C495_, deptime'C49E_):RT_x_14.t) => not ((RT_Nat.R_ge (arrtime'C495_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (deptime'C49E_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForStop'8601_) (tramid'C48D_, arrtime'C495_, deptime'C49E_, times'C35B_))), capacity'C3BF_)))) (times'C35B_)))
        end);
        
        fun allStopCapacitiesAreNotExceeded'BF0B_ (timetable'BF8F_, (capacityMap'BF9B_, connectionMap'BFA7_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (359, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x162_'0_, x163_'0_, x164_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x163_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x164_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'BF8F_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'BF9B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x167_'0_, x168_'0_, x169_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x167_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x168_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x169_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'BFA7_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:357:7: Argument of allStopCapacitiesAreNotExceeded" ^ RT_x_31.toString (timetable'BF8F_, (capacityMap'BF9B_, connectionMap'BFA7_)) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopid'BFDA_:RT_Text.t) => ((stopCapacityIsNotExceeded'C22B_) (stopid'BFDA_, timetable'BF8F_, capacityMap'BF9B_))) ((capacityMap'BF9B_)))));
        
        fun getConnection'4C97_ (stop1'4D09_, stop2'4D10_, (capacityMap'4D18_, connectionMap'4D25_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4D18_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4D25_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:64:7: Argument of getConnection" ^ RT_x_12.toString (stop1'4D09_, stop2'4D10_, (capacityMap'4D18_, connectionMap'4D25_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'4D09_, stop2'4D10_), (connectionMap'4D25_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (68, 9)); ((RT_m_4.R_app(connectionMap'4D25_)) ((stop1'4D09_, stop2'4D10_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (70, 9)); ((RT_m_4.R_app(connectionMap'4D25_)) ((stop2'4D10_, stop1'4D09_)))));
        
        fun timeBetweenStopsIsDrivingTime'9B19_ (plan'9B9B_, (capacityMap'9BA2_, connectionMap'9BAF_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (267, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x119_'0_, x120_'0_, x121_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x120_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0"))
        end) (plan'9B9B_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'9BA2_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x124_'0_, x125_'0_, x126_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x125_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'9BAF_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:265:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_30.toString (plan'9B9B_, (capacityMap'9BA2_, connectionMap'9BAF_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'9B9B_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (268, 9)); let
            val (stopid1'9CB0_, arrTime1'9CB9_, depTime1'9CC3_) = ((RT_l_15.R_hd(plan'9B9B_)):RT_x_14.t); 
            val (stopid2'9D14_, arrTime2'9D1D_, depTime2'9D27_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'9B9B_)))):RT_x_14.t)
        in
            let
                val (headway'9E42_, drivingTime'9E4A_, capacity'9E57_) = ((((getConnection'4C97_) (stopid1'9CB0_, stopid2'9D14_, (capacityMap'9BA2_, connectionMap'9BAF_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'9D1D_, depTime1'9CC3_), drivingTime'9E4A_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (275, 53)); ((timeBetweenStopsIsDrivingTime'9B19_) (RT_l_15.R_tl(plan'9B9B_), (capacityMap'9BA2_, connectionMap'9BAF_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (279, 9)); true));
        
        fun nextStop'41A7_ (planRow'4214_, plan'421D_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (38, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'4214_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'421D_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:36:7: Argument of nextStop" ^ RT_x_21.toString (planRow'4214_, plan'421D_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'421D_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:61:13: Precondition of nextStop" ^ RT_x_21.toString (planRow'4214_, plan'421D_) ^ " not satisfied") else let
            val iPlanRow'42D7_ = ((RT_l_15.R_hd(plan'421D_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'42D7_, planRow'4214_) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (43, 13)); let
                val (sid'44D0_, arrt'44D5_, dept'44DB_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'421D_)))):RT_x_14.t)
            in
                (sid'44D0_, arrt'44D5_, dept'44DB_)
            end) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (49, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'421D_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (51, 15)); ((nextStop'41A7_) (planRow'4214_, RT_l_15.R_tl(plan'421D_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (53, 15)); let
                val (sid'48BA_, arrt'48BF_, dept'48C5_) = ((iPlanRow'42D7_):RT_x_14.t)
            in
                iPlanRow'42D7_
            end))
        end);
        
        fun findDepartureRowInPlan'5979_ (stopid1'59F4_, stopid2'59FD_, plan'5A06_, tram'5A0C_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (99, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'5A06_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:97:5: Argument of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'59F4_, stopid2'59FD_, plan'5A06_, tram'5A0C_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'5A06_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:115:11: Precondition of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'59F4_, stopid2'59FD_, plan'5A06_, tram'5A0C_) ^ " not satisfied") else let
            val (hStopId'5AAA_, hArrTime'5AB3_, hDepTime'5ABD_) = ((RT_l_15.R_hd(plan'5A06_)):RT_x_14.t); 
            val (nStopId'5B0E_, nArrTime'5B17_, nDepTime'5B21_) = ((((nextStop'41A7_) (RT_l_15.R_hd(plan'5A06_), plan'5A06_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'5AAA_, stopid1'59F4_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (103, 33)); RT_Text.equ (nStopId'5B0E_, stopid2'59FD_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (105, 11)); (tram'5A0C_, hStopId'5AAA_, hArrTime'5AB3_, hDepTime'5ABD_)) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (107, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'5A06_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (109, 13)); ((findDepartureRowInPlan'5979_) (stopid1'59F4_, stopid2'59FD_, RT_l_15.R_tl(plan'5A06_), tram'5A0C_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (111, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'5465_ (stopid1'54EB_, stopid2'54F4_, trams'54FD_, timetable'5504_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (86, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5504_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:84:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_24.toString (stopid1'54EB_, stopid2'54F4_, trams'54FD_, timetable'5504_) ^ " not in subtype") else if RT_s_11.equ (trams'54FD_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (87, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (89, 9)); let
            val tram'56C3_ = ((RT_s_11.R_hd(trams'54FD_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findDepartureRowInPlan'5979_) (stopid1'54EB_, stopid2'54F4_, ((RT_m_16.R_app(timetable'5504_)) (tram'56C3_)), tram'56C3_))]), ((buildAllDeparturesUsingConnection'5465_) (stopid1'54EB_, stopid2'54F4_, RT_s_11.R_diff (trams'54FD_, RT_s_11.R_fromList ([tram'56C3_])), timetable'5504_)))
        end));
        
        fun getAllDepaturesUsingConnection'50E1_ (stopid1'5164_, stopid2'516D_, timetable'5176_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (77, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5176_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:75:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_22.toString (stopid1'5164_, stopid2'516D_, timetable'5176_) ^ " not in subtype") else let
            val allTrams'5211_ = ((RT_m_16.R_dom(timetable'5176_)):RT_s_11.t)
        in
            ((buildAllDeparturesUsingConnection'5465_) (stopid1'5164_, stopid2'516D_, allTrams'5211_, timetable'5176_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'A285_ (timetable'A30D_, (capacityMap'A319_, connectionMap'A326_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (286, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x127_'0_, x128_'0_, x129_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'A30D_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'A319_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x132_'0_, x133_'0_, x134_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x133_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'A326_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:284:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_31.toString (timetable'A30D_, (capacityMap'A319_, connectionMap'A326_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'A355_, stopid2'A35E_):RT_x_2.t) => let
            val (headway'A3BA_, drivingTime'A3C2_, capacity'A3CF_) = ((((RT_m_4.R_app(connectionMap'A326_)) ((stopid1'A355_, stopid2'A35E_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'A485_, sid1'A48C_, arrt1'A492_, dept1'A499_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'A492_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'A499_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'A4EB_, sid2'A4F2_, arrt2'A4F8_, dept2'A4FF_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'A4F8_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'A4FF_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'A499_, dept2'A4FF_))), headway'A3BA_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'50E1_) (stopid1'A355_, stopid2'A35E_, timetable'A30D_)), RT_s_23.R_fromList ([(tram1'A485_, sid1'A48C_, arrt1'A492_, dept1'A499_)]))))))) (((getAllDepaturesUsingConnection'50E1_) (stopid1'A355_, stopid2'A35E_, timetable'A30D_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (293, 11)); ((RT_s_23.R_all (fn ((tram1'A615_, sid1'A61C_, arrt1'A622_, dept1'A629_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'A622_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'A629_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'A679_, sid2'A680_, arrt2'A686_, dept2'A68D_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'A686_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'A68D_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'A629_, dept2'A68D_))), headway'A3BA_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'50E1_) (stopid2'A35E_, stopid1'A355_, timetable'A30D_)), RT_s_23.R_fromList ([(tram1'A615_, sid1'A61C_, arrt1'A622_, dept1'A629_)]))))))) (((getAllDepaturesUsingConnection'50E1_) (stopid2'A35E_, stopid1'A355_, timetable'A30D_))))))
        end) ((connectionMap'A326_)))));
        
        fun countOverlappingTimesForTrack'72DD_ (tramid'735F_, deptime'7366_, arrtime'736F_, times'7378_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (164, 7)); if not((RT_Nat.R_ge (deptime'7366_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (arrtime'736F_, RT_Int.fromLit "0")) andalso ((RT_s_26.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (times'7378_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:162:5: Argument of countOverlappingTimesForTrack" ^ RT_x_27.toString (tramid'735F_, deptime'7366_, arrtime'736F_, times'7378_) ^ " not in subtype") else if RT_s_26.equ (times'7378_, RT_s_26.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (165, 12)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (167, 9)); let
            val (tramid2'753C_, deptime2'7545_, arrtime2'754F_) = ((RT_s_26.R_hd(times'7378_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'735F_, tramid2'753C_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (170, 35)); ((((RT_Nat.R_lt (deptime'7366_, deptime2'7545_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (170, 59)); RT_Nat.R_lt (deptime2'7545_, arrtime'736F_)))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (170, 81)); ((RT_Nat.R_lt (deptime'7366_, arrtime2'754F_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (171, 4)); RT_Nat.R_lt (arrtime2'754F_, arrtime'736F_)))))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (171, 16)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'72DD_) (tramid'735F_, deptime'7366_, arrtime'736F_, RT_s_26.R_diff (times'7378_, RT_s_26.R_fromList ([(tramid2'753C_, deptime2'7545_, arrtime2'754F_)])))))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (172, 16)); ((countOverlappingTimesForTrack'72DD_) (tramid'735F_, deptime'7366_, arrtime'736F_, RT_s_26.R_diff (times'7378_, RT_s_26.R_fromList ([(tramid2'753C_, deptime2'7545_, arrtime2'754F_)])))))
        end));
        
        fun buildTimesForTramOnTrack'7EF9_ (stopid1'7F77_, stopid2'7F80_, plan'7F89_, tramid'7F8F_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (195, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x107_'0_, x108_'0_, x109_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0"))
        end) (plan'7F89_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:193:5: Argument of buildTimesForTramOnTrack" ^ RT_x_25.toString (stopid1'7F77_, stopid2'7F80_, plan'7F89_, tramid'7F8F_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'7F89_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (196, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (198, 9)); let
            val (sid'8158_, arrt'815D_, dept'8163_) = ((RT_l_15.R_hd(plan'7F89_)):RT_x_14.t); 
            val (sid2'81BC_, arrt2'81C2_, dept2'81C9_) = ((((nextStop'41A7_) ((sid'8158_, arrt'815D_, dept'8163_), plan'7F89_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'8158_, stopid1'7F77_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (202, 31)); RT_Text.equ (sid2'81BC_, stopid2'7F80_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (203, 16)); RT_s_26.R_union (RT_s_26.R_fromList ([(tramid'7F8F_, dept'8163_, arrt2'81C2_)]), ((buildTimesForTramOnTrack'7EF9_) (stopid1'7F77_, stopid2'7F80_, RT_l_15.R_tl(plan'7F89_), tramid'7F8F_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (204, 16)); ((buildTimesForTramOnTrack'7EF9_) (stopid1'7F77_, stopid2'7F80_, RT_l_15.R_tl(plan'7F89_), tramid'7F8F_)))
        end));
        
        fun buildAllTimesForTrack'7981_ (stopid1'79FB_, stopid2'7A04_, trams'7A0D_, timetable'7A14_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (181, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x104_'0_, x105_'0_, x106_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x105_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7A14_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:179:5: Argument of buildAllTimesForTrack" ^ RT_x_24.toString (stopid1'79FB_, stopid2'7A04_, trams'7A0D_, timetable'7A14_) ^ " not in subtype") else if RT_s_11.equ (trams'7A0D_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (182, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (184, 9)); let
            val tramid'7BDF_ = ((RT_s_11.R_hd(trams'7A0D_)):RT_Text.t)
        in
            RT_s_26.R_union (((buildTimesForTramOnTrack'7EF9_) (stopid1'79FB_, stopid2'7A04_, ((RT_m_16.R_app(timetable'7A14_)) (tramid'7BDF_)), tramid'7BDF_)), ((buildAllTimesForTrack'7981_) (stopid1'79FB_, stopid2'7A04_, RT_s_11.R_diff (trams'7A0D_, RT_s_11.R_fromList ([tramid'7BDF_])), timetable'7A14_)))
        end));
        
        fun trackCapacityIsNotExceeded'B8C9_ (stopid1'B948_, stopid2'B951_, timetable'B95A_, connectionMap'B965_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (343, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x154_'0_, x155_'0_, x156_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x155_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x156_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B95A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x159_'0_, x160_'0_, x161_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x159_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x161_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B965_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:341:5: Argument of trackCapacityIsNotExceeded" ^ RT_x_32.toString (stopid1'B948_, stopid2'B951_, timetable'B95A_, connectionMap'B965_) ^ " not in subtype") else let
            val times1'B9FA_ = ((((buildAllTimesForTrack'7981_) (stopid1'B948_, stopid2'B951_, RT_m_16.R_dom((timetable'B95A_)), timetable'B95A_))):RT_s_26.t); 
            val times2'BA5E_ = ((((buildAllTimesForTrack'7981_) (stopid2'B951_, stopid1'B948_, RT_m_16.R_dom((timetable'B95A_)), timetable'B95A_))):RT_s_26.t); 
            val (headway'BAC3_, drivingtime'BACC_, trackcapacity'BAD9_) = ((((RT_m_4.R_app(connectionMap'B965_)) (stopid1'B948_, stopid2'B951_))):RT_x_3.t)
        in
            (((RT_s_26.R_all (fn ((tramid'BB90_, deptime'BB98_, arrtime'BBA1_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'BB98_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'BBA1_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'72DD_) (tramid'BB90_, deptime'BB98_, arrtime'BBA1_, times1'B9FA_))), trackcapacity'BAD9_)))) (times1'B9FA_)))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (350, 15)); ((RT_s_26.R_all (fn ((tramid'BC5D_, deptime'BC65_, arrtime'BC6E_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'BC65_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'BC6E_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverlappingTimesForTrack'72DD_) (tramid'BC5D_, deptime'BC65_, arrtime'BC6E_, times2'BA5E_))), trackcapacity'BAD9_)))) (times2'BA5E_))))
        end);
        
        fun allTrackCapacitiesAreNotExceeded'B5A9_ (timetable'B62E_, (capacityMap'B63A_, connectionMap'B646_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (335, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x146_'0_, x147_'0_, x148_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x147_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x148_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B62E_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'B63A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x151_'0_, x152_'0_, x153_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x151_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x152_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x153_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B646_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:333:5: Argument of allTrackCapacitiesAreNotExceeded" ^ RT_x_31.toString (timetable'B62E_, (capacityMap'B63A_, connectionMap'B646_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'B679_, stopid2'B682_):RT_x_2.t) => ((trackCapacityIsNotExceeded'B8C9_) (stopid1'B679_, stopid2'B682_, timetable'B62E_, connectionMap'B646_))) ((connectionMap'B646_)))));
        
        fun tramStopsAtAllStopsItPasses'B15D_ timetable'B1DD_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (324, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x143_'0_, x144_'0_, x145_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x144_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x145_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'B1DD_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:322:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'B1DD_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'B22C_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'B293_, arrTime'B29B_, depTime'B2A4_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'B29B_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'B2A4_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'B2A4_, arrTime'B29B_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'B1DD_)) (tramid'B22C_)))))) ((timetable'B1DD_)))));
        
        fun findArrivalRowInPlan'6A45_ (stopid1'6ABE_, stopid2'6AC7_, plan'6AD0_, tram'6AD6_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (142, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'6AD0_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:140:5: Argument of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'6ABE_, stopid2'6AC7_, plan'6AD0_, tram'6AD6_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'6AD0_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:158:11: Precondition of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'6ABE_, stopid2'6AC7_, plan'6AD0_, tram'6AD6_) ^ " not satisfied") else let
            val (hStopId'6B76_, hArrTime'6B7F_, hDepTime'6B89_) = ((RT_l_15.R_hd(plan'6AD0_)):RT_x_14.t); 
            val (nStopId'6BDA_, nArrTime'6BE3_, nDepTime'6BED_) = ((((nextStop'41A7_) (RT_l_15.R_hd(plan'6AD0_), plan'6AD0_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'6B76_, stopid1'6ABE_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (146, 33)); RT_Text.equ (nStopId'6BDA_, stopid2'6AC7_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (148, 11)); (tram'6AD6_, nStopId'6BDA_, nArrTime'6BE3_, nDepTime'6BED_)) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (150, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'6AD0_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (152, 13)); ((findArrivalRowInPlan'6A45_) (stopid1'6ABE_, stopid2'6AC7_, RT_l_15.R_tl(plan'6AD0_), tram'6AD6_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (154, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllArrivalsUsingConnection'6531_ (stopid1'65B5_, stopid2'65BE_, trams'65C7_, timetable'65CE_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (129, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'65CE_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:127:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_24.toString (stopid1'65B5_, stopid2'65BE_, trams'65C7_, timetable'65CE_) ^ " not in subtype") else if RT_s_11.equ (trams'65C7_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (130, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (132, 9)); let
            val tram'678F_ = ((RT_s_11.R_hd(trams'65C7_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findArrivalRowInPlan'6A45_) (stopid1'65B5_, stopid2'65BE_, ((RT_m_16.R_app(timetable'65CE_)) (tram'678F_)), tram'678F_))]), ((buildAllArrivalsUsingConnection'6531_) (stopid1'65B5_, stopid2'65BE_, RT_s_11.R_diff (trams'65C7_, RT_s_11.R_fromList ([tram'678F_])), timetable'65CE_)))
        end));
        
        fun getAllArrivalsUsingConnection'61AD_ (stopid1'622F_, stopid2'6238_, timetable'6241_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (120, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6241_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:118:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_22.toString (stopid1'622F_, stopid2'6238_, timetable'6241_) ^ " not in subtype") else let
            val allTrams'62DD_ = ((RT_m_16.R_dom(timetable'6241_)):RT_s_11.t)
        in
            ((buildAllArrivalsUsingConnection'6531_) (stopid1'622F_, stopid2'6238_, allTrams'62DD_, timetable'6241_))
        end);
        
        fun timeBetweenArrivalIsValidHeadway'AAB9_ (timetable'AB3E_, (capacityMap'AB4A_, connectionMap'AB57_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (307, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x135_'0_, x136_'0_, x137_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x136_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x137_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'AB3E_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'AB4A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x140_'0_, x141_'0_, x142_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x140_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x142_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'AB57_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:305:5: Argument of timeBetweenArrivalIsValidHeadway" ^ RT_x_31.toString (timetable'AB3E_, (capacityMap'AB4A_, connectionMap'AB57_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'AB89_, stopid2'AB92_):RT_x_2.t) => let
            val (headway'ABEE_, drivingTime'ABF6_, capacity'AC03_) = ((((RT_m_4.R_app(connectionMap'AB57_)) ((stopid1'AB89_, stopid2'AB92_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'ACB9_, sid1'ACC0_, arrt1'ACC6_, dept1'ACCD_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'ACC6_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'ACCD_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'AD1F_, sid2'AD26_, arrt2'AD2C_, dept2'AD33_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'AD2C_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'AD33_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'ACC6_, arrt2'AD2C_))), headway'ABEE_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'61AD_) (stopid1'AB89_, stopid2'AB92_, timetable'AB3E_)), RT_s_23.R_fromList ([(tram1'ACB9_, sid1'ACC0_, arrt1'ACC6_, dept1'ACCD_)]))))))) (((getAllArrivalsUsingConnection'61AD_) (stopid1'AB89_, stopid2'AB92_, timetable'AB3E_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (314, 11)); ((RT_s_23.R_all (fn ((tram1'AE49_, sid1'AE50_, arrt1'AE56_, dept1'AE5D_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'AE56_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'AE5D_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'AEAF_, sid2'AEB6_, arrt2'AEBC_, dept2'AEC3_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'AEBC_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'AEC3_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'AE56_, arrt2'AEBC_))), headway'ABEE_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'61AD_) (stopid2'AB92_, stopid1'AB89_, timetable'AB3E_)), RT_s_23.R_fromList ([(tram1'AE49_, sid1'AE50_, arrt1'AE56_, dept1'AE5D_)]))))))) (((getAllArrivalsUsingConnection'61AD_) (stopid2'AB92_, stopid1'AB89_, timetable'AB3E_))))))
        end) ((connectionMap'AB57_)))));
        
        fun isWellformed'DB8E_ (t'DBFF_, n'DC02_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (432, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x200_'0_, x201_'0_, x202_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x201_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x202_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'DBFF_)))) andalso (let
            val (x203_'0_, x204_'0_) = ((n'DC02_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x203_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x207_'0_, x208_'0_, x209_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x207_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x208_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x209_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x204_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:430:6: Argument of isWellformed" ^ RT_x_31.toString (t'DBFF_, n'DC02_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'B15D_) (t'DBFF_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (433, 8)); (((timeBetweenDeparturesIsValidHeadway'A285_) (t'DBFF_, n'DC02_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (434, 8)); (((timeBetweenArrivalIsValidHeadway'AAB9_) (t'DBFF_, n'DC02_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (435, 8)); (((RT_s_19.R_all (fn (plan'DD89_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x210_'0_, x211_'0_, x212_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x211_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0"))
        end) (plan'DD89_))) orelse (((timeBetweenStopsIsDrivingTime'9B19_) (plan'DD89_, n'DC02_)))) (RT_m_16.R_ran((t'DBFF_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (436, 8)); (((allTrackCapacitiesAreNotExceeded'B5A9_) (t'DBFF_, n'DC02_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (437, 8)); ((allStopCapacitiesAreNotExceeded'BF0B_) (t'DBFF_, n'DC02_))))))));
        
        fun stopsAreConnected'CAC3_ (plan'CB39_, connectionMap'CB3F_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (389, 9)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x181_'0_, x182_'0_, x183_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x182_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x183_'0_, RT_Int.fromLit "0"))
        end) (plan'CB39_))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x186_'0_, x187_'0_, x188_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x186_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x187_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x188_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'CB3F_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:387:7: Argument of stopsAreConnected" ^ RT_x_34.toString (plan'CB39_, connectionMap'CB3F_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'CB39_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (390, 14)); true) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (392, 11)); let
            val (sid'CD22_, arrt'CD27_, dept'CD2D_) = ((RT_l_15.R_hd(plan'CB39_)):RT_x_14.t); 
            val (sid2'CD86_, arrt2'CD8C_, dept2'CD93_) = ((((nextStop'41A7_) ((sid'CD22_, arrt'CD27_, dept'CD2D_), plan'CB39_))):RT_x_14.t)
        in
            if (RT_m_4.R_mem ((sid'CD22_, sid2'CD86_), (connectionMap'CB3F_))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (396, 54)); RT_m_4.R_mem ((sid2'CD86_, sid'CD22_), (connectionMap'CB3F_))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (397, 18)); ((stopsAreConnected'CAC3_) (RT_l_15.R_tl(plan'CB39_), connectionMap'CB3F_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (398, 18)); false)
        end));
        
        fun allStopsAreConnected'C7A3_ (timetable'C81C_, (capacityMap'C828_, connectionMap'C834_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (381, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x173_'0_, x174_'0_, x175_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x174_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x175_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'C81C_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C828_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x178_'0_, x179_'0_, x180_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x178_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x179_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x180_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C834_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:379:7: Argument of allStopsAreConnected" ^ RT_x_31.toString (timetable'C81C_, (capacityMap'C828_, connectionMap'C834_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'C872_:RT_Text.t) => ((stopsAreConnected'CAC3_) (((RT_m_16.R_app(timetable'C81C_)) (tramid'C872_)), connectionMap'C834_))) ((timetable'C81C_)))));
        
        fun stopsExist'D4E9_ (plan'D558_, capacityMap'D55E_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (415, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x197_'0_, x198_'0_, x199_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x198_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x199_'0_, RT_Int.fromLit "0"))
        end) (plan'D558_))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D55E_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:413:5: Argument of stopsExist" ^ RT_x_35.toString (plan'D558_, capacityMap'D55E_) ^ " not in subtype") else if RT_Nat.equ (RT_l_15.R_length(plan'D558_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (416, 12)); true) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (418, 9)); let
            val (sid'D748_, arrt'D74D_, dept'D753_) = ((RT_l_15.R_hd(plan'D558_)):RT_x_14.t)
        in
            if RT_m_1.R_mem (sid'D748_, (capacityMap'D55E_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (422, 16)); ((stopsExist'D4E9_) (RT_l_15.R_tl(plan'D558_), capacityMap'D55E_))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (423, 16)); false)
        end));
        
        fun allStopsInPlanExist'D1C9_ (timetable'D241_, (capacityMap'D24D_, connectionMap'D25A_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (407, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x189_'0_, x190_'0_, x191_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x190_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x191_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'D241_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D24D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x194_'0_, x195_'0_, x196_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x194_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x196_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D25A_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:405:5: Argument of allStopsInPlanExist" ^ RT_x_31.toString (timetable'D241_, (capacityMap'D24D_, connectionMap'D25A_)) ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'D298_:RT_Text.t) => ((stopsExist'D4E9_) (((RT_m_16.R_app(timetable'D241_)) (tramid'D298_)), capacityMap'D24D_))) ((timetable'D241_)))));
        
        val empty'390F_ = let val z__'3921_ = RT_m_16.R_fromList [] in if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x213_'0_, x214_'0_, x215_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x214_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x215_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'3921_)))) then (RSL.add_load_err("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:14:25: Value " ^ RT_m_16.toString(z__'3921_) ^ " of empty not in subtype"); z__'3921_) else z__'3921_ end;
        
        fun isIn'3F4D_ (tramid'3FB6_, timetable'3FBE_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (32, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3FBE_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:30:5: Argument of isIn" ^ RT_x_18.toString (tramid'3FB6_, timetable'3FBE_) ^ " not in subtype") else RT_m_16.R_mem (tramid'3FB6_, (timetable'3FBE_)));
        
        fun addTram'3A3B_ (tramid'3AA7_, timetable'3AAF_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (19, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3AAF_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:17:7: Argument of addTram" ^ RT_x_18.toString (tramid'3AA7_, timetable'3AAF_) ^ " not in subtype") else RT_m_16.R_override (timetable'3AAF_, RT_m_16.R_fromList ([(tramid'3AA7_, ([]:RT_l_15.t))])));
        
        fun addStop'3C2F_ (tramid'3C9B_, stopid'3CA3_, arrival'3CAB_, departure'3CB4_, timetable'3CBF_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (24, 9)); if not((RT_Nat.R_ge (arrival'3CAB_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'3CB4_, RT_Int.fromLit "0")) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3CBF_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:22:7: Argument of addStop" ^ RT_x_20.toString (tramid'3C9B_, stopid'3CA3_, arrival'3CAB_, departure'3CB4_, timetable'3CBF_) ^ " not in subtype") else RT_m_16.R_override (timetable'3CBF_, RT_m_16.R_fromList ([(tramid'3C9B_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'3CBF_)) (tramid'3C9B_)), [(stopid'3CA3_, arrival'3CAB_, departure'3CB4_)]))])));
        
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
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DB8E_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s2_validDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'9B19_) (plan1'841_, net'6B1_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'9B19_) (planInvalidDrivingTime'A35_, net'6B1_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DB8E_) (timetableInvalidDrivingTime'A99_, net'6B1_)), false)));

(RSL.C_output "[s3_validHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A285_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A285_) (timetableInvalidDepartureHeadway'C29_, net'6B1_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DB8E_) (timetableInvalidDepartureHeadway'C29_, net'6B1_)), false)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'A285_) (timetableDuplicateDepartureHeadway'DB9_, net'6B1_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DB8E_) (timetableDuplicateDepartureHeadway'DB9_, net'6B1_)), false)));

(RSL.C_output "[s5_validHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'AAB9_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s5_invalidHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'AAB9_) (timetableInvalidArrivalHeadway'F49_, net'6B1_)), false)));

(RSL.C_output "[s5_NotWellFormedArrivalHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DB8E_) (timetableInvalidArrivalHeadway'F49_, net'6B1_)), false)));

(RSL.C_output "[s6_tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'B15D_) (timetableWF'909_)), true)));

(RSL.C_output "[s6_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'B15D_) (timetableWithoutStopTime'10D9_)), false)));

(RSL.C_output "[s6_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'DB8E_) (timetableWithoutStopTime'10D9_, net'6B1_)), false)));

(RSL.C_output "[s7_NumberOfTrainsOnTrackDontExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'B5A9_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s7_NumberOfTrainsOnTrackDoExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'B5A9_) (timetableWithExceededTrackCapacities'12CD_, net'6B1_)), false)));

(RSL.C_output "[s8_NumberOfTrainsAtStopDontExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'BF0B_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s8_NumberOfTrainsAtStopDoExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'BF0B_) (timeTableWithExceededStopCapacities'1524_, net'6B1_)), false)));

(RSL.C_output "[s9_AllStopsInPlansExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'D1C9_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s9_AllStopsInPlansDoNotExist] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInPlanExist'D1C9_) (timeTableWithInvalidStop'16B4_, net'6B1_)), false)));

(RSL.C_output "[s10_allStopsAreConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'C7A3_) (timetableWF'909_, net'6B1_)), true)));

(RSL.C_output "[s10_allStopsAreNotConnected] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsAreConnected'C7A3_) (timeTableWithInvalidConnection'18A8_, net'6B1_)), false)));

(RSL.C_output "[s12_AddingTram] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addTram'3A3B_) (tramNotIn'3F5_, timetableWF'909_)), timetableWithAddedTram'1A38_)));

(RSL.C_output "[s12_addStop] " RT_Bool.toStringSafe (fn _ => RT_m_16.equ (((addStop'3C2F_) (tramIdA'32D_, RT_Text.fromLit "G", RT_Int.fromLit "5", RT_Int.fromLit "10", timetableWF'909_)), timetableWithAddedStop'1C2D_)));

(RSL.C_output "[s13_isinExisting01] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'3F4D_) (tramIdA'32D_, timetableWF'909_)), true)));

(RSL.C_output "[s13_isinExisting02] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'3F4D_) (tramIdB'391_, timetableWF'909_)), true)));

(RSL.C_output "[s13_isNotin] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'3F4D_) (tramNotIn'3F5_, timetableWF'909_)), false)));

(RSL.C_output "[s16_getConnection] " RT_Bool.toStringSafe (fn _ => RT_x_3.equ (((getConnection'4C97_) (RT_Text.fromLit "A", RT_Text.fromLit "B", net'6B1_)), connectionTest'1FB2_)));

RSL.print_error_count();
R_coverage.save_marked();
