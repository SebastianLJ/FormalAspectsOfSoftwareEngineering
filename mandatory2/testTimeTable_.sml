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
        
        fun allStopsHaveConnection'D86D_ (capacityMap'D8E8_, connectionMap'D8F5_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D8E8_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D8F5_))))) then raise RSL.RSL_exception ("./NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'D8E8_, connectionMap'D8F5_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'D93C_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'DA09_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'D93C_, stopId2'DA09_), (connectionMap'D8F5_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'DA09_, stopId'D93C_), (connectionMap'D8F5_))))) ((capacityMap'D8E8_))))) ((capacityMap'D8E8_)))));
        
        fun noSelfConnection'D2F5_ (capacityMap'D36A_, connectionMap'D377_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D36A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D377_))))) then raise RSL.RSL_exception ("./NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'D36A_, connectionMap'D377_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'D3C5_, stopId2'D3CE_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'D3C5_, stopId2'D3CE_)) ((connectionMap'D377_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'D5B1_ (capacityMap'D63D_, connectionMap'D64A_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D63D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D64A_))))) then raise RSL.RSL_exception ("./NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'D63D_, connectionMap'D64A_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'D681_, stopId2'D68A_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'D681_, (capacityMap'D63D_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'D68A_, (capacityMap'D63D_)))) ((connectionMap'D64A_)))));
        
        fun isWellformed'DC55_ net'DCC6_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'DCC6_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'DCC6_ ^ ")" ^ " not in subtype") else (((noSelfConnection'D2F5_) (net'DCC6_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'D5B1_) (net'DCC6_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); ((allStopsHaveConnection'D86D_) (net'DCC6_)))));
        
        val empty'BF6D_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'CF71_ (stopId1'CFE4_, stopId2'CFED_, (capacityMap'CFF7_, connectionMap'D004_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'CFF7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D004_))))) then raise RSL.RSL_exception ("./NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'CFE4_, stopId2'CFED_, (capacityMap'CFF7_, connectionMap'D004_)) ^ " not in subtype") else let
            val (headway'D040_, drivingTime'D049_, capacity'D056_) = ((((RT_m_4.R_app(connectionMap'D004_)) (stopId1'CFE4_, stopId2'CFED_))):RT_x_3.t)
        in
            drivingTime'D049_
        end);
        
        fun insertStop'C035_ (stopId'C0A4_, capacity'C0AC_, (capacityMap'C0B7_, connectionMap'C0C4_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'C0AC_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C0B7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C0C4_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'C0A4_, capacity'C0AC_, (capacityMap'C0B7_, connectionMap'C0C4_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'C0B7_, RT_m_1.R_fromList ([(stopId'C0A4_, capacity'C0AC_)])), connectionMap'C0C4_));
        
        fun capacity'CC51_ (stopId1'CCBE_, stopId2'CCC7_, (capacityMap'CCD1_, connectionMap'CCDE_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'CCD1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'CCDE_))))) then raise RSL.RSL_exception ("./NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'CCBE_, stopId2'CCC7_, (capacityMap'CCD1_, connectionMap'CCDE_)) ^ " not in subtype") else let
            val (headway'CD20_, drivingTime'CD29_, capacity'CD36_) = ((((RT_m_4.R_app(connectionMap'CCDE_)) (stopId1'CCBE_, stopId2'CCC7_))):RT_x_3.t)
        in
            capacity'CD36_
        end);
        
        fun addConnection'C229_ (stopId1'C29B_, stopId2'C2A4_, headway'C2AD_, capacity'C2B6_, drivingTime'C2C0_, (capacityMap'C2CE_, connectionMap'C2DB_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'C2AD_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'C2B6_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'C2C0_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C2CE_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C2DB_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'C29B_, stopId2'C2A4_, headway'C2AD_, capacity'C2B6_, drivingTime'C2C0_, (capacityMap'C2CE_, connectionMap'C2DB_)) ^ " not in subtype") else (capacityMap'C2CE_, RT_m_4.R_override (connectionMap'C2DB_, RT_m_4.R_fromList ([((stopId1'C29B_, stopId2'C2A4_), (headway'C2AD_, drivingTime'C2C0_, capacity'C2B6_))]))));
        
        fun minHeadway'C931_ (stopId1'C9A0_, stopId2'C9A9_, (capacityMap'C9B3_, connectionMap'C9C0_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C9B3_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C9C0_))))) then raise RSL.RSL_exception ("./NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'C9A0_, stopId2'C9A9_, (capacityMap'C9B3_, connectionMap'C9C0_)) ^ " not in subtype") else let
            val (headway'CA00_, drivingTime'CA09_, capacity'CA16_) = ((((RT_m_4.R_app(connectionMap'C9C0_)) (stopId1'C9A0_, stopId2'C9A9_))):RT_x_3.t)
        in
            headway'CA00_
        end);
        
        fun isIn'C41D_ (stopId'C486_, (capacityMap'C48F_, connecitonMap'C49C_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C48F_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'C49C_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'C486_, (capacityMap'C48F_, connecitonMap'C49C_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'C486_, (capacityMap'C48F_)));
        
        fun areDirectlyConnected'C73D_ (stopId1'C7B6_, stopId2'C7BF_, (capacityMap'C7C9_, connectionMap'C7D6_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C7C9_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C7D6_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'C7B6_, stopId2'C7BF_, (capacityMap'C7C9_, connectionMap'C7D6_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'C7B6_, stopId2'C7BF_), (connectionMap'C7D6_)));
        
        fun capacity'C5AD_ (stopId'C61B_, (capacityMap'C623_, connectionMap'C630_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C623_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C630_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'C61B_, (capacityMap'C623_, connectionMap'C630_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'C623_)) (stopId'C61B_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type TramPlanRow_ = RT_x_17.t;
        
        type Plan_ = RT_l_15.t;
        
        fun tramStopsAtAllStopsItPasses'791D_ timetable'799D_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (228, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x125_'0_, x126_'0_, x127_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'799D_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:226:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'799D_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'79EC_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'7A53_, arrTime'7A5B_, depTime'7A64_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'7A5B_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'7A64_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'7A64_, arrTime'7A5B_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'799D_)) (tramid'79EC_)))))) ((timetable'799D_)))));
        
        fun getConnection'39D7_ (stop1'3A49_, stop2'3A50_, (capacityMap'3A58_, connectionMap'3A65_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'3A58_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'3A65_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:64:7: Argument of getConnection" ^ RT_x_12.toString (stop1'3A49_, stop2'3A50_, (capacityMap'3A58_, connectionMap'3A65_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'3A49_, stop2'3A50_), (connectionMap'3A65_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (68, 9)); ((RT_m_4.R_app(connectionMap'3A65_)) ((stop1'3A49_, stop2'3A50_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9)); ((RT_m_4.R_app(connectionMap'3A65_)) ((stop2'3A50_, stop1'3A49_)))));
        
        fun timeBetweenStopsIsDrivingTime'62D9_ (plan'635B_, (capacityMap'6362_, connectionMap'636F_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (171, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (plan'635B_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6362_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x106_'0_, x107_'0_, x108_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'636F_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:169:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_26.toString (plan'635B_, (capacityMap'6362_, connectionMap'636F_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'635B_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (172, 9)); let
            val (stopid1'6470_, arrTime1'6479_, depTime1'6483_) = ((RT_l_15.R_hd(plan'635B_)):RT_x_14.t); 
            val (stopid2'64D4_, arrTime2'64DD_, depTime2'64E7_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'635B_)))):RT_x_14.t)
        in
            let
                val (headway'6602_, drivingTime'660A_, capacity'6617_) = ((((getConnection'39D7_) (stopid1'6470_, stopid2'64D4_, (capacityMap'6362_, connectionMap'636F_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'64DD_, depTime1'6483_), drivingTime'660A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (179, 53)); ((timeBetweenStopsIsDrivingTime'62D9_) (RT_l_15.R_tl(plan'635B_), (capacityMap'6362_, connectionMap'636F_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (183, 9)); true));
        
        fun nextStop'2EE7_ (planRow'2F54_, plan'2F5D_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (38, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'2F54_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'2F5D_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:36:7: Argument of nextStop" ^ RT_x_21.toString (planRow'2F54_, plan'2F5D_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'2F5D_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:61:13: Precondition of nextStop" ^ RT_x_21.toString (planRow'2F54_, plan'2F5D_) ^ " not satisfied") else let
            val iPlanRow'3017_ = ((RT_l_15.R_hd(plan'2F5D_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'3017_, planRow'2F54_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (43, 13)); let
                val (sid'3210_, arrt'3215_, dept'321B_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'2F5D_)))):RT_x_14.t)
            in
                (sid'3210_, arrt'3215_, dept'321B_)
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (49, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'2F5D_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (51, 15)); ((nextStop'2EE7_) (planRow'2F54_, RT_l_15.R_tl(plan'2F5D_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (53, 15)); let
                val (sid'35FA_, arrt'35FF_, dept'3605_) = ((iPlanRow'3017_):RT_x_14.t)
            in
                iPlanRow'3017_
            end))
        end);
        
        fun findDepartureRowInPlan'46B9_ (stopid1'4734_, stopid2'473D_, plan'4746_, tram'474C_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (99, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'4746_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:97:5: Argument of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'4734_, stopid2'473D_, plan'4746_, tram'474C_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'4746_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:115:11: Precondition of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'4734_, stopid2'473D_, plan'4746_, tram'474C_) ^ " not satisfied") else let
            val (hStopId'47EA_, hArrTime'47F3_, hDepTime'47FD_) = ((RT_l_15.R_hd(plan'4746_)):RT_x_14.t); 
            val (nStopId'484E_, nArrTime'4857_, nDepTime'4861_) = ((((nextStop'2EE7_) (RT_l_15.R_hd(plan'4746_), plan'4746_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'47EA_, stopid1'4734_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (103, 33)); RT_Text.equ (nStopId'484E_, stopid2'473D_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (105, 11)); (tram'474C_, hStopId'47EA_, hArrTime'47F3_, hDepTime'47FD_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (107, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'4746_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (109, 13)); ((findDepartureRowInPlan'46B9_) (stopid1'4734_, stopid2'473D_, RT_l_15.R_tl(plan'4746_), tram'474C_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (111, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'41A5_ (stopid1'422B_, stopid2'4234_, trams'423D_, timetable'4244_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4244_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:84:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_24.toString (stopid1'422B_, stopid2'4234_, trams'423D_, timetable'4244_) ^ " not in subtype") else if RT_s_11.equ (trams'423D_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (87, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (89, 9)); let
            val tram'4403_ = ((RT_s_11.R_hd(trams'423D_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findDepartureRowInPlan'46B9_) (stopid1'422B_, stopid2'4234_, ((RT_m_16.R_app(timetable'4244_)) (tram'4403_)), tram'4403_))]), ((buildAllDeparturesUsingConnection'41A5_) (stopid1'422B_, stopid2'4234_, RT_s_11.R_diff (trams'423D_, RT_s_11.R_fromList ([tram'4403_])), timetable'4244_)))
        end));
        
        fun getAllDepaturesUsingConnection'3E21_ (stopid1'3EA4_, stopid2'3EAD_, timetable'3EB6_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (77, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3EB6_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:75:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_22.toString (stopid1'3EA4_, stopid2'3EAD_, timetable'3EB6_) ^ " not in subtype") else let
            val allTrams'3F51_ = ((RT_m_16.R_dom(timetable'3EB6_)):RT_s_11.t)
        in
            ((buildAllDeparturesUsingConnection'41A5_) (stopid1'3EA4_, stopid2'3EAD_, allTrams'3F51_, timetable'3EB6_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'6A45_ (timetable'6ACD_, (capacityMap'6AD9_, connectionMap'6AE6_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (190, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x109_'0_, x110_'0_, x111_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x110_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6ACD_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6AD9_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x114_'0_, x115_'0_, x116_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x116_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6AE6_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:188:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_27.toString (timetable'6ACD_, (capacityMap'6AD9_, connectionMap'6AE6_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'6B15_, stopid2'6B1E_):RT_x_2.t) => let
            val (headway'6B7A_, drivingTime'6B82_, capacity'6B8F_) = ((((RT_m_4.R_app(connectionMap'6AE6_)) ((stopid1'6B15_, stopid2'6B1E_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'6C45_, sid1'6C4C_, arrt1'6C52_, dept1'6C59_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'6C52_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'6C59_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'6CAB_, sid2'6CB2_, arrt2'6CB8_, dept2'6CBF_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'6CB8_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'6CBF_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'6C59_, dept2'6CBF_))), headway'6B7A_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'3E21_) (stopid1'6B15_, stopid2'6B1E_, timetable'6ACD_)), RT_s_23.R_fromList ([(tram1'6C45_, sid1'6C4C_, arrt1'6C52_, dept1'6C59_)]))))))) (((getAllDepaturesUsingConnection'3E21_) (stopid1'6B15_, stopid2'6B1E_, timetable'6ACD_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (197, 11)); ((RT_s_23.R_all (fn ((tram1'6DD5_, sid1'6DDC_, arrt1'6DE2_, dept1'6DE9_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'6DE2_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'6DE9_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'6E39_, sid2'6E40_, arrt2'6E46_, dept2'6E4D_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'6E46_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'6E4D_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'6DE9_, dept2'6E4D_))), headway'6B7A_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'3E21_) (stopid2'6B1E_, stopid1'6B15_, timetable'6ACD_)), RT_s_23.R_fromList ([(tram1'6DD5_, sid1'6DDC_, arrt1'6DE2_, dept1'6DE9_)]))))))) (((getAllDepaturesUsingConnection'3E21_) (stopid2'6B1E_, stopid1'6B15_, timetable'6ACD_))))))
        end) ((connectionMap'6AE6_)))));
        
        fun findArrivalRowInPlan'5785_ (stopid1'57FE_, stopid2'5807_, plan'5810_, tram'5816_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (142, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'5810_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:140:5: Argument of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'57FE_, stopid2'5807_, plan'5810_, tram'5816_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'5810_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:158:11: Precondition of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'57FE_, stopid2'5807_, plan'5810_, tram'5816_) ^ " not satisfied") else let
            val (hStopId'58B6_, hArrTime'58BF_, hDepTime'58C9_) = ((RT_l_15.R_hd(plan'5810_)):RT_x_14.t); 
            val (nStopId'591A_, nArrTime'5923_, nDepTime'592D_) = ((((nextStop'2EE7_) (RT_l_15.R_hd(plan'5810_), plan'5810_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'58B6_, stopid1'57FE_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (146, 33)); RT_Text.equ (nStopId'591A_, stopid2'5807_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (148, 11)); (tram'5816_, nStopId'591A_, nArrTime'5923_, nDepTime'592D_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (150, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'5810_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (152, 13)); ((findArrivalRowInPlan'5785_) (stopid1'57FE_, stopid2'5807_, RT_l_15.R_tl(plan'5810_), tram'5816_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (154, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllArrivalsUsingConnection'5271_ (stopid1'52F5_, stopid2'52FE_, trams'5307_, timetable'530E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (129, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'530E_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:127:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_24.toString (stopid1'52F5_, stopid2'52FE_, trams'5307_, timetable'530E_) ^ " not in subtype") else if RT_s_11.equ (trams'5307_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (130, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (132, 9)); let
            val tram'54CF_ = ((RT_s_11.R_hd(trams'5307_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findArrivalRowInPlan'5785_) (stopid1'52F5_, stopid2'52FE_, ((RT_m_16.R_app(timetable'530E_)) (tram'54CF_)), tram'54CF_))]), ((buildAllArrivalsUsingConnection'5271_) (stopid1'52F5_, stopid2'52FE_, RT_s_11.R_diff (trams'5307_, RT_s_11.R_fromList ([tram'54CF_])), timetable'530E_)))
        end));
        
        fun getAllArrivalsUsingConnection'4EED_ (stopid1'4F6F_, stopid2'4F78_, timetable'4F81_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (120, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4F81_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:118:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_22.toString (stopid1'4F6F_, stopid2'4F78_, timetable'4F81_) ^ " not in subtype") else let
            val allTrams'501D_ = ((RT_m_16.R_dom(timetable'4F81_)):RT_s_11.t)
        in
            ((buildAllArrivalsUsingConnection'5271_) (stopid1'4F6F_, stopid2'4F78_, allTrams'501D_, timetable'4F81_))
        end);
        
        fun timeBetweenArrivalIsValidHeadway'7279_ (timetable'72FE_, (capacityMap'730A_, connectionMap'7317_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (211, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x117_'0_, x118_'0_, x119_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'72FE_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'730A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x122_'0_, x123_'0_, x124_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x123_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7317_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:209:5: Argument of timeBetweenArrivalIsValidHeadway" ^ RT_x_27.toString (timetable'72FE_, (capacityMap'730A_, connectionMap'7317_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'7349_, stopid2'7352_):RT_x_2.t) => let
            val (headway'73AE_, drivingTime'73B6_, capacity'73C3_) = ((((RT_m_4.R_app(connectionMap'7317_)) ((stopid1'7349_, stopid2'7352_)))):RT_x_3.t)
        in
            (((RT_s_23.R_all (fn ((tram1'7479_, sid1'7480_, arrt1'7486_, dept1'748D_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'7486_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'748D_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'74DF_, sid2'74E6_, arrt2'74EC_, dept2'74F3_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'74EC_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'74F3_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'7486_, arrt2'74EC_))), headway'73AE_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'4EED_) (stopid1'7349_, stopid2'7352_, timetable'72FE_)), RT_s_23.R_fromList ([(tram1'7479_, sid1'7480_, arrt1'7486_, dept1'748D_)]))))))) (((getAllArrivalsUsingConnection'4EED_) (stopid1'7349_, stopid2'7352_, timetable'72FE_)))))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (218, 11)); ((RT_s_23.R_all (fn ((tram1'7609_, sid1'7610_, arrt1'7616_, dept1'761D_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'7616_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'761D_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'766F_, sid2'7676_, arrt2'767C_, dept2'7683_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'767C_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'7683_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (arrt1'7616_, arrt2'767C_))), headway'73AE_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'4EED_) (stopid2'7352_, stopid1'7349_, timetable'72FE_)), RT_s_23.R_fromList ([(tram1'7609_, sid1'7610_, arrt1'7616_, dept1'761D_)]))))))) (((getAllArrivalsUsingConnection'4EED_) (stopid2'7352_, stopid1'7349_, timetable'72FE_))))))
        end) ((connectionMap'7317_)))));
        
        fun isWellformed'B672_ (t'B6E3_, n'B6E6_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (385, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x173_'0_, x174_'0_, x175_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x174_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x175_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'B6E3_)))) andalso (let
            val (x176_'0_, x177_'0_) = ((n'B6E6_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x176_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x180_'0_, x181_'0_, x182_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x180_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x181_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x182_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x177_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:383:6: Argument of isWellformed" ^ RT_x_27.toString (t'B6E3_, n'B6E6_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'791D_) (t'B6E3_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (386, 8)); (((timeBetweenDeparturesIsValidHeadway'6A45_) (t'B6E3_, n'B6E6_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (387, 8)); (((timeBetweenArrivalIsValidHeadway'7279_) (t'B6E3_, n'B6E6_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (388, 8)); ((RT_s_19.R_all (fn (plan'B86D_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x183_'0_, x184_'0_, x185_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x184_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x185_'0_, RT_Int.fromLit "0"))
        end) (plan'B86D_))) orelse (((timeBetweenStopsIsDrivingTime'62D9_) (plan'B86D_, n'B6E6_)))) (RT_m_16.R_ran((t'B6E3_)))))))));
        
        fun buildTimesForTramOnStop'AEA3_ (stopid'AF1F_, plan'AF27_, tramid'AF2D_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (365, 9)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x170_'0_, x171_'0_, x172_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x171_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x172_'0_, RT_Int.fromLit "0"))
        end) (plan'AF27_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:363:7: Argument of buildTimesForTramOnStop" ^ RT_x_33.toString (stopid'AF1F_, plan'AF27_, tramid'AF2D_) ^ " not in subtype") else if RT_Nat.R_lt (RT_l_15.R_length(plan'AF27_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (366, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (368, 11)); let
            val (sid'B102_, arrt'B107_, dept'B10D_) = ((RT_l_15.R_hd(plan'AF27_)):RT_x_14.t)
        in
            if RT_Text.equ (sid'B102_, stopid'AF1F_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (372, 18)); RT_s_29.R_union (RT_s_29.R_fromList ([(tramid'AF2D_, arrt'B107_, dept'B10D_)]), ((buildTimesForTramOnStop'AEA3_) (stopid'AF1F_, RT_l_15.R_tl(plan'AF27_), tramid'AF2D_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (373, 18)); ((buildTimesForTramOnStop'AEA3_) (stopid'AF1F_, RT_l_15.R_tl(plan'AF27_), tramid'AF2D_)))
        end));
        
        fun isIn'2C8D_ (tramid'2CF6_, timetable'2CFE_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (32, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'2CFE_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:30:5: Argument of isIn" ^ RT_x_18.toString (tramid'2CF6_, timetable'2CFE_) ^ " not in subtype") else RT_m_16.R_mem (tramid'2CF6_, (timetable'2CFE_)));
        
        fun buildAllTimesForStop'A92B_ (stopid'A9A4_, trams'A9AC_, timetable'A9B3_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (351, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x167_'0_, x168_'0_, x169_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x168_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x169_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'A9B3_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:349:7: Argument of buildAllTimesForStop" ^ RT_x_32.toString (stopid'A9A4_, trams'A9AC_, timetable'A9B3_) ^ " not in subtype") else if RT_s_11.equ (trams'A9AC_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (352, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (354, 11)); let
            val tramid'AB89_ = ((RT_s_11.R_hd(trams'A9AC_)):RT_Text.t)
        in
            RT_s_29.R_union (((buildTimesForTramOnStop'AEA3_) (stopid'A9A4_, ((RT_m_16.R_app(timetable'A9B3_)) (tramid'AB89_)), tramid'AB89_)), ((buildAllTimesForStop'A92B_) (stopid'A9A4_, RT_s_11.R_diff (trams'A9AC_, RT_s_11.R_fromList ([tramid'AB89_])), timetable'A9B3_)))
        end));
        
        fun addStop'296F_ (tramid'29DB_, stopid'29E3_, arrival'29EB_, departure'29F4_, timetable'29FF_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (24, 9)); if not((RT_Nat.R_ge (arrival'29EB_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'29F4_, RT_Int.fromLit "0")) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'29FF_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:22:7: Argument of addStop" ^ RT_x_20.toString (tramid'29DB_, stopid'29E3_, arrival'29EB_, departure'29F4_, timetable'29FF_) ^ " not in subtype") else RT_m_16.R_override (timetable'29FF_, RT_m_16.R_fromList ([(tramid'29DB_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'29FF_)) (tramid'29DB_)), [(stopid'29E3_, arrival'29EB_, departure'29F4_)]))])));
        
        fun countOverLappingTimesForStop'A287_ (tramid'A308_, arrtime'A30F_, deptime'A318_, times'A321_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (334, 9)); if not((RT_Nat.R_ge (arrtime'A30F_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (deptime'A318_, RT_Int.fromLit "0")) andalso ((RT_s_29.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x164_'0_, x165_'0_, x166_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x165_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x166_'0_, RT_Int.fromLit "0"))
        end) (times'A321_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:332:7: Argument of countOverLappingTimesForStop" ^ RT_x_30.toString (tramid'A308_, arrtime'A30F_, deptime'A318_, times'A321_) ^ " not in subtype") else if RT_s_29.equ (times'A321_, RT_s_29.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (335, 14)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (337, 11)); let
            val (tramid2'A4E6_, arrtime2'A4EF_, deptime2'A4F9_) = ((RT_s_29.R_hd(times'A321_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'A308_, tramid2'A4E6_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (340, 37)); ((((RT_Nat.R_le (arrtime'A30F_, arrtime2'A4EF_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (340, 62)); RT_Nat.R_le (arrtime2'A4EF_, deptime'A318_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (340, 85)); ((RT_Nat.R_le (arrtime'A30F_, deptime2'A4F9_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (341, 9)); RT_Nat.R_le (deptime2'A4F9_, deptime'A318_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (341, 18)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForStop'A287_) (tramid'A308_, arrtime'A30F_, deptime'A318_, RT_s_29.R_diff (times'A321_, RT_s_29.R_fromList ([(tramid2'A4E6_, arrtime2'A4EF_, deptime2'A4F9_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (342, 18)); ((countOverLappingTimesForStop'A287_) (tramid'A308_, arrtime'A30F_, deptime'A318_, RT_s_29.R_diff (times'A321_, RT_s_29.R_fromList ([(tramid2'A4E6_, arrtime2'A4EF_, deptime2'A4F9_)])))))
        end));
        
        fun addTram'277B_ (tramid'27E7_, timetable'27EF_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (19, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'27EF_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:17:7: Argument of addTram" ^ RT_x_18.toString (tramid'27E7_, timetable'27EF_) ^ " not in subtype") else RT_m_16.R_override (timetable'27EF_, RT_m_16.R_fromList ([(tramid'27E7_, ([]:RT_l_15.t))])));
        
        fun stopCapacityIsNotExceeded'9D73_ (stopid'9DF1_, timetable'9DF9_, capacityMap'9E04_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (321, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x161_'0_, x162_'0_, x163_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x162_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x163_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'9DF9_)))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'9E04_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:319:7: Argument of stopCapacityIsNotExceeded" ^ RT_x_31.toString (stopid'9DF1_, timetable'9DF9_, capacityMap'9E04_) ^ " not in subtype") else let
            val times'9EA3_ = ((((buildAllTimesForStop'A92B_) (stopid'9DF1_, RT_m_16.R_dom((timetable'9DF9_)), timetable'9DF9_))):RT_s_29.t); 
            val capacity'9F07_ = ((((RT_m_1.R_app(capacityMap'9E04_)) (stopid'9DF1_))):RT_Nat.t)
        in
            ((RT_s_29.R_all (fn ((tramid'9FD5_, arrtime'9FDD_, deptime'9FE6_):RT_x_14.t) => not ((RT_Nat.R_ge (arrtime'9FDD_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (deptime'9FE6_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForStop'A287_) (tramid'9FD5_, arrtime'9FDD_, deptime'9FE6_, times'9EA3_))), capacity'9F07_)))) (times'9EA3_)))
        end);
        
        val empty'264F_ = let val z__'2661_ = RT_m_16.R_fromList [] in if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x186_'0_, x187_'0_, x188_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x187_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x188_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'2661_)))) then (RSL.add_load_err("./TIMETABLE.rsl:14:25: Value " ^ RT_m_16.toString(z__'2661_) ^ " of empty not in subtype"); z__'2661_) else z__'2661_ end;
        
        fun allStopCapacitiesAreNotExceeded'9A53_ (timetable'9AD7_, (capacityMap'9AE3_, connectionMap'9AEF_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (313, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x153_'0_, x154_'0_, x155_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x154_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x155_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'9AD7_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'9AE3_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x158_'0_, x159_'0_, x160_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x159_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'9AEF_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:311:7: Argument of allStopCapacitiesAreNotExceeded" ^ RT_x_27.toString (timetable'9AD7_, (capacityMap'9AE3_, connectionMap'9AEF_)) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopid'9B22_:RT_Text.t) => ((stopCapacityIsNotExceeded'9D73_) (stopid'9B22_, timetable'9AD7_, capacityMap'9AE3_))) ((capacityMap'9AE3_)))));
        
        fun countOverLappingTimesForTrack'86CB_ (tramid'874D_, deptime'8754_, arrtime'875D_, times'8766_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (263, 9)); if not((RT_Nat.R_ge (deptime'8754_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (arrtime'875D_, RT_Int.fromLit "0")) andalso ((RT_s_29.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x144_'0_, x145_'0_, x146_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x145_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x146_'0_, RT_Int.fromLit "0"))
        end) (times'8766_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:261:7: Argument of countOverLappingTimesForTrack" ^ RT_x_30.toString (tramid'874D_, deptime'8754_, arrtime'875D_, times'8766_) ^ " not in subtype") else if RT_s_29.equ (times'8766_, RT_s_29.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (264, 14)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (266, 11)); let
            val (tramid2'892A_, deptime2'8933_, arrtime2'893D_) = ((RT_s_29.R_hd(times'8766_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'874D_, tramid2'892A_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (269, 37)); ((((RT_Nat.R_le (deptime'8754_, deptime2'8933_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (269, 62)); RT_Nat.R_le (deptime2'8933_, arrtime'875D_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (269, 85)); ((RT_Nat.R_le (deptime'8754_, arrtime2'893D_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (270, 9)); RT_Nat.R_le (arrtime2'893D_, arrtime'875D_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (270, 18)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'86CB_) (tramid'874D_, deptime'8754_, arrtime'875D_, RT_s_29.R_diff (times'8766_, RT_s_29.R_fromList ([(tramid2'892A_, deptime2'8933_, arrtime2'893D_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (271, 18)); ((countOverLappingTimesForTrack'86CB_) (tramid'874D_, deptime'8754_, arrtime'875D_, RT_s_29.R_diff (times'8766_, RT_s_29.R_fromList ([(tramid2'892A_, deptime2'8933_, arrtime2'893D_)])))))
        end));
        
        fun buildTimesForTramOnTrack'934B_ (stopid1'93C9_, stopid2'93D2_, plan'93DB_, tramid'93E1_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (295, 9)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x150_'0_, x151_'0_, x152_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x151_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x152_'0_, RT_Int.fromLit "0"))
        end) (plan'93DB_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:293:7: Argument of buildTimesForTramOnTrack" ^ RT_x_25.toString (stopid1'93C9_, stopid2'93D2_, plan'93DB_, tramid'93E1_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'93DB_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (296, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (298, 11)); let
            val (sid'95AA_, arrt'95AF_, dept'95B5_) = ((RT_l_15.R_hd(plan'93DB_)):RT_x_14.t); 
            val (sid2'960E_, arrt2'9614_, dept2'961B_) = ((((nextStop'2EE7_) ((sid'95AA_, arrt'95AF_, dept'95B5_), plan'93DB_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'95AA_, stopid1'93C9_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (302, 33)); RT_Text.equ (sid2'960E_, stopid2'93D2_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (303, 18)); RT_s_29.R_union (RT_s_29.R_fromList ([(tramid'93E1_, dept'95B5_, arrt2'9614_)]), ((buildTimesForTramOnTrack'934B_) (stopid1'93C9_, stopid2'93D2_, RT_l_15.R_tl(plan'93DB_), tramid'93E1_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (304, 18)); ((buildTimesForTramOnTrack'934B_) (stopid1'93C9_, stopid2'93D2_, RT_l_15.R_tl(plan'93DB_), tramid'93E1_)))
        end));
        
        fun buildAllTimesForTrack'8D6F_ (stopid1'8DE9_, stopid2'8DF2_, trams'8DFB_, timetable'8E02_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (280, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x147_'0_, x148_'0_, x149_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x148_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x149_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'8E02_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:278:7: Argument of buildAllTimesForTrack" ^ RT_x_24.toString (stopid1'8DE9_, stopid2'8DF2_, trams'8DFB_, timetable'8E02_) ^ " not in subtype") else if RT_s_11.equ (trams'8DFB_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (281, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (283, 11)); let
            val tramid'8FCD_ = ((RT_s_11.R_hd(trams'8DFB_)):RT_Text.t)
        in
            RT_s_29.R_union (((buildTimesForTramOnTrack'934B_) (stopid1'8DE9_, stopid2'8DF2_, ((RT_m_16.R_app(timetable'8E02_)) (tramid'8FCD_)), tramid'8FCD_)), ((buildAllTimesForTrack'8D6F_) (stopid1'8DE9_, stopid2'8DF2_, RT_s_11.R_diff (trams'8DFB_, RT_s_11.R_fromList ([tramid'8FCD_])), timetable'8E02_)))
        end));
        
        fun trackCapacityIsNotExceeded'8089_ (stopid1'8108_, stopid2'8111_, timetable'811A_, connectionMap'8125_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (247, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x136_'0_, x137_'0_, x138_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x137_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x138_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'811A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x141_'0_, x142_'0_, x143_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x142_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x143_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'8125_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:245:5: Argument of trackCapacityIsNotExceeded" ^ RT_x_28.toString (stopid1'8108_, stopid2'8111_, timetable'811A_, connectionMap'8125_) ^ " not in subtype") else let
            val times1'81BA_ = ((((buildAllTimesForTrack'8D6F_) (stopid1'8108_, stopid2'8111_, RT_m_16.R_dom((timetable'811A_)), timetable'811A_))):RT_s_29.t); 
            val times2'821E_ = ((((buildAllTimesForTrack'8D6F_) (stopid2'8111_, stopid1'8108_, RT_m_16.R_dom((timetable'811A_)), timetable'811A_))):RT_s_29.t); 
            val (headway'8283_, drivingtime'828C_, trackcapacity'8299_) = ((((RT_m_4.R_app(connectionMap'8125_)) (stopid1'8108_, stopid2'8111_))):RT_x_3.t)
        in
            (((RT_s_29.R_all (fn ((tramid'8350_, deptime'8358_, arrtime'8361_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'8358_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'8361_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'86CB_) (tramid'8350_, deptime'8358_, arrtime'8361_, times1'81BA_))), trackcapacity'8299_)))) (times1'81BA_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (254, 15)); ((RT_s_29.R_all (fn ((tramid'841D_, deptime'8425_, arrtime'842E_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'8425_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'842E_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'86CB_) (tramid'841D_, deptime'8425_, arrtime'842E_, times2'821E_))), trackcapacity'8299_)))) (times2'821E_))))
        end);
        
        fun allTrackCapacitiesAreNotExceeded'7D69_ (timetable'7DEE_, (capacityMap'7DFA_, connectionMap'7E06_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (239, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x128_'0_, x129_'0_, x130_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7DEE_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7DFA_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x133_'0_, x134_'0_, x135_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x133_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x135_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7E06_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:237:5: Argument of allTrackCapacitiesAreNotExceeded" ^ RT_x_27.toString (timetable'7DEE_, (capacityMap'7DFA_, connectionMap'7E06_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'7E39_, stopid2'7E42_):RT_x_2.t) => ((trackCapacityIsNotExceeded'8089_) (stopid1'7E39_, stopid2'7E42_, timetable'7DEE_, connectionMap'7E06_))) ((connectionMap'7E06_)))));
        
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
(R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (239, 7), (241, 8));
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
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (19, 9), (19, 38));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (341, 9), (341, 28));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (340, 62), (340, 80));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (340, 85), (341, 29));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (340, 37), (341, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (342, 18), (343, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (341, 18), (342, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (337, 11), (345, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (335, 14), (336, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (334, 9), (345, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (24, 9), (26, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (354, 11), (359, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (352, 14), (353, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (351, 9), (359, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (32, 7), (32, 33));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (373, 18), (374, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (372, 18), (373, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (368, 11), (376, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (366, 14), (367, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (365, 9), (376, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (388, 8), (391, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (387, 8), (391, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (386, 8), (391, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (385, 8), (391, 3));
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
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (53, 15), (58, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (51, 15), (52, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (49, 13), (59, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (43, 13), (48, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (38, 9), (61, 25));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (179, 53), (180, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (183, 9), (184, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (172, 9), (182, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (171, 7), (184, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9), (71, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (68, 9), (69, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (66, 7), (71, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (228, 7), (232, 8));
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
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'B672_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s2_validDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'62D9_) (plan1'64D_, net'4BD_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'62D9_) (planInvalidDrivingTime'841_, net'4BD_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'B672_) (timetableInvalidDrivingTime'8A5_, net'4BD_)), false)));

(RSL.C_output "[s3_validHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'6A45_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'6A45_) (timetableInvalidDepartureHeadway'A35_, net'4BD_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'B672_) (timetableInvalidDepartureHeadway'A35_, net'4BD_)), false)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'6A45_) (timetableDuplicateDepartureHeadway'BC5_, net'4BD_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'B672_) (timetableDuplicateDepartureHeadway'BC5_, net'4BD_)), false)));

(RSL.C_output "[s5_validHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'7279_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s5_invalidHeadwayBetweenArrivals] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenArrivalIsValidHeadway'7279_) (timetableInvalidArrivalHeadway'D55_, net'4BD_)), false)));

(RSL.C_output "[s5_NotWellFormedArrivalHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'B672_) (timetableInvalidArrivalHeadway'D55_, net'4BD_)), false)));

(RSL.C_output "[s5_tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'791D_) (timetableWF'715_)), true)));

(RSL.C_output "[s5_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'791D_) (timetableWithoutStopTime'EE5_)), false)));

(RSL.C_output "[s5_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'B672_) (timetableWithoutStopTime'EE5_, net'4BD_)), false)));

(RSL.C_output "[s6_NumberOfTrainsOnTrackDontExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'7D69_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s6_NumberOfTrainsOnTrackDoExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'7D69_) (timetableWithExceededTrackCapacities'10D9_, net'4BD_)), false)));

(RSL.C_output "[s7_NumberOfTrainsAtStopDontExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'9A53_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s7_NumberOfTrainsAtStopDoExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'9A53_) (timeTableWithExceededStopCapacities'1330_, net'4BD_)), false)));

RSL.print_error_count();
R_coverage.save_marked();
