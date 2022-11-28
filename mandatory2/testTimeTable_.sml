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
        
        fun allStopsHaveConnection'D101_ (capacityMap'D17C_, connectionMap'D189_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'D17C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'D189_))))) then raise RSL.RSL_exception ("./NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'D17C_, connectionMap'D189_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'D1D0_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'D29D_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'D1D0_, stopId2'D29D_), (connectionMap'D189_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'D29D_, stopId'D1D0_), (connectionMap'D189_))))) ((capacityMap'D17C_))))) ((capacityMap'D17C_)))));
        
        fun noSelfConnection'CB89_ (capacityMap'CBFE_, connectionMap'CC0B_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'CBFE_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'CC0B_))))) then raise RSL.RSL_exception ("./NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'CBFE_, connectionMap'CC0B_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'CC59_, stopId2'CC62_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'CC59_, stopId2'CC62_)) ((connectionMap'CC0B_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'CE45_ (capacityMap'CED1_, connectionMap'CEDE_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'CED1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'CEDE_))))) then raise RSL.RSL_exception ("./NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'CED1_, connectionMap'CEDE_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'CF15_, stopId2'CF1E_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'CF15_, (capacityMap'CED1_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'CF1E_, (capacityMap'CED1_)))) ((connectionMap'CEDE_)))));
        
        fun isWellformed'D4E9_ net'D55A_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'D55A_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'D55A_ ^ ")" ^ " not in subtype") else (((noSelfConnection'CB89_) (net'D55A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'CE45_) (net'D55A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); ((allStopsHaveConnection'D101_) (net'D55A_)))));
        
        val empty'B801_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'C805_ (stopId1'C878_, stopId2'C881_, (capacityMap'C88B_, connectionMap'C898_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C88B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C898_))))) then raise RSL.RSL_exception ("./NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'C878_, stopId2'C881_, (capacityMap'C88B_, connectionMap'C898_)) ^ " not in subtype") else let
            val (headway'C8D4_, drivingTime'C8DD_, capacity'C8EA_) = ((((RT_m_4.R_app(connectionMap'C898_)) (stopId1'C878_, stopId2'C881_))):RT_x_3.t)
        in
            drivingTime'C8DD_
        end);
        
        fun insertStop'B8C9_ (stopId'B938_, capacity'B940_, (capacityMap'B94B_, connectionMap'B958_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'B940_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'B94B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'B958_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'B938_, capacity'B940_, (capacityMap'B94B_, connectionMap'B958_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'B94B_, RT_m_1.R_fromList ([(stopId'B938_, capacity'B940_)])), connectionMap'B958_));
        
        fun capacity'C4E5_ (stopId1'C552_, stopId2'C55B_, (capacityMap'C565_, connectionMap'C572_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C565_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C572_))))) then raise RSL.RSL_exception ("./NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'C552_, stopId2'C55B_, (capacityMap'C565_, connectionMap'C572_)) ^ " not in subtype") else let
            val (headway'C5B4_, drivingTime'C5BD_, capacity'C5CA_) = ((((RT_m_4.R_app(connectionMap'C572_)) (stopId1'C552_, stopId2'C55B_))):RT_x_3.t)
        in
            capacity'C5CA_
        end);
        
        fun addConnection'BABD_ (stopId1'BB2F_, stopId2'BB38_, headway'BB41_, capacity'BB4A_, drivingTime'BB54_, (capacityMap'BB62_, connectionMap'BB6F_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'BB41_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'BB4A_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'BB54_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'BB62_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'BB6F_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'BB2F_, stopId2'BB38_, headway'BB41_, capacity'BB4A_, drivingTime'BB54_, (capacityMap'BB62_, connectionMap'BB6F_)) ^ " not in subtype") else (capacityMap'BB62_, RT_m_4.R_override (connectionMap'BB6F_, RT_m_4.R_fromList ([((stopId1'BB2F_, stopId2'BB38_), (headway'BB41_, drivingTime'BB54_, capacity'BB4A_))]))));
        
        fun minHeadway'C1C5_ (stopId1'C234_, stopId2'C23D_, (capacityMap'C247_, connectionMap'C254_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C247_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C254_))))) then raise RSL.RSL_exception ("./NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'C234_, stopId2'C23D_, (capacityMap'C247_, connectionMap'C254_)) ^ " not in subtype") else let
            val (headway'C294_, drivingTime'C29D_, capacity'C2AA_) = ((((RT_m_4.R_app(connectionMap'C254_)) (stopId1'C234_, stopId2'C23D_))):RT_x_3.t)
        in
            headway'C294_
        end);
        
        fun isIn'BCB1_ (stopId'BD1A_, (capacityMap'BD23_, connecitonMap'BD30_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'BD23_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'BD30_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'BD1A_, (capacityMap'BD23_, connecitonMap'BD30_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'BD1A_, (capacityMap'BD23_)));
        
        fun areDirectlyConnected'BFD1_ (stopId1'C04A_, stopId2'C053_, (capacityMap'C05D_, connectionMap'C06A_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'C05D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'C06A_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'C04A_, stopId2'C053_, (capacityMap'C05D_, connectionMap'C06A_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'C04A_, stopId2'C053_), (connectionMap'C06A_)));
        
        fun capacity'BE41_ (stopId'BEAF_, (capacityMap'BEB7_, connectionMap'BEC4_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'BEB7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'BEC4_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'BEAF_, (capacityMap'BEB7_, connectionMap'BEC4_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'BEB7_)) (stopId'BEAF_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type TramPlanRow_ = RT_x_17.t;
        
        type Plan_ = RT_l_15.t;
        
        fun tramStopsAtAllStopsItPasses'7215_ timetable'7295_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x125_'0_, x126_'0_, x127_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7295_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:217:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'7295_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'72E4_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'734B_, arrTime'7353_, depTime'735C_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'7353_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'735C_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'735C_, arrTime'7353_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'7295_)) (tramid'72E4_)))))) ((timetable'7295_)))));
        
        fun getConnection'3653_ (stop1'36C5_, stop2'36CC_, (capacityMap'36D4_, connectionMap'36E1_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'36D4_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'36E1_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:64:7: Argument of getConnection" ^ RT_x_12.toString (stop1'36C5_, stop2'36CC_, (capacityMap'36D4_, connectionMap'36E1_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'36C5_, stop2'36CC_), (connectionMap'36E1_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (68, 9)); ((RT_m_4.R_app(connectionMap'36E1_)) ((stop1'36C5_, stop2'36CC_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9)); ((RT_m_4.R_app(connectionMap'36E1_)) ((stop2'36CC_, stop1'36C5_)))));
        
        fun timeBetweenStopsIsDrivingTime'5F55_ (plan'5FD7_, (capacityMap'5FDE_, connectionMap'5FEB_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (171, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (plan'5FD7_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'5FDE_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x106_'0_, x107_'0_, x108_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5FEB_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:169:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_26.toString (plan'5FD7_, (capacityMap'5FDE_, connectionMap'5FEB_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'5FD7_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (172, 9)); let
            val (stopid1'60EC_, arrTime1'60F5_, depTime1'60FF_) = ((RT_l_15.R_hd(plan'5FD7_)):RT_x_14.t); 
            val (stopid2'6150_, arrTime2'6159_, depTime2'6163_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'5FD7_)))):RT_x_14.t)
        in
            let
                val (headway'627E_, drivingTime'6286_, capacity'6293_) = ((((getConnection'3653_) (stopid1'60EC_, stopid2'6150_, (capacityMap'5FDE_, connectionMap'5FEB_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'6159_, depTime1'60FF_), drivingTime'6286_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (179, 53)); ((timeBetweenStopsIsDrivingTime'5F55_) (RT_l_15.R_tl(plan'5FD7_), (capacityMap'5FDE_, connectionMap'5FEB_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (183, 9)); true));
        
        fun nextStop'2B63_ (planRow'2BD0_, plan'2BD9_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (38, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'2BD0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'2BD9_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:36:7: Argument of nextStop" ^ RT_x_21.toString (planRow'2BD0_, plan'2BD9_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'2BD9_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:61:13: Precondition of nextStop" ^ RT_x_21.toString (planRow'2BD0_, plan'2BD9_) ^ " not satisfied") else let
            val iPlanRow'2C93_ = ((RT_l_15.R_hd(plan'2BD9_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'2C93_, planRow'2BD0_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (43, 13)); let
                val (sid'2E8C_, arrt'2E91_, dept'2E97_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'2BD9_)))):RT_x_14.t)
            in
                (sid'2E8C_, arrt'2E91_, dept'2E97_)
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (49, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'2BD9_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (51, 15)); ((nextStop'2B63_) (planRow'2BD0_, RT_l_15.R_tl(plan'2BD9_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (53, 15)); let
                val (sid'3276_, arrt'327B_, dept'3281_) = ((iPlanRow'2C93_):RT_x_14.t)
            in
                iPlanRow'2C93_
            end))
        end);
        
        fun findDepartureRowInPlan'4335_ (stopid1'43B0_, stopid2'43B9_, plan'43C2_, tram'43C8_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (99, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'43C2_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:97:5: Argument of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'43B0_, stopid2'43B9_, plan'43C2_, tram'43C8_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'43C2_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:115:11: Precondition of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'43B0_, stopid2'43B9_, plan'43C2_, tram'43C8_) ^ " not satisfied") else let
            val (hStopId'4466_, hArrTime'446F_, hDepTime'4479_) = ((RT_l_15.R_hd(plan'43C2_)):RT_x_14.t); 
            val (nStopId'44CA_, nArrTime'44D3_, nDepTime'44DD_) = ((((nextStop'2B63_) (RT_l_15.R_hd(plan'43C2_), plan'43C2_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'4466_, stopid1'43B0_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (103, 33)); RT_Text.equ (nStopId'44CA_, stopid2'43B9_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (105, 11)); (tram'43C8_, hStopId'4466_, hArrTime'446F_, hDepTime'4479_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (107, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'43C2_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (109, 13)); ((findDepartureRowInPlan'4335_) (stopid1'43B0_, stopid2'43B9_, RT_l_15.R_tl(plan'43C2_), tram'43C8_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (111, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'3E21_ (stopid1'3EA7_, stopid2'3EB0_, trams'3EB9_, timetable'3EC0_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3EC0_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:84:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_24.toString (stopid1'3EA7_, stopid2'3EB0_, trams'3EB9_, timetable'3EC0_) ^ " not in subtype") else if RT_s_11.equ (trams'3EB9_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (87, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (89, 9)); let
            val tram'407F_ = ((RT_s_11.R_hd(trams'3EB9_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findDepartureRowInPlan'4335_) (stopid1'3EA7_, stopid2'3EB0_, ((RT_m_16.R_app(timetable'3EC0_)) (tram'407F_)), tram'407F_))]), ((buildAllDeparturesUsingConnection'3E21_) (stopid1'3EA7_, stopid2'3EB0_, RT_s_11.R_diff (trams'3EB9_, RT_s_11.R_fromList ([tram'407F_])), timetable'3EC0_)))
        end));
        
        fun getAllDepaturesUsingConnection'3A9D_ (stopid1'3B20_, stopid2'3B29_, timetable'3B32_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (77, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3B32_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:75:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_22.toString (stopid1'3B20_, stopid2'3B29_, timetable'3B32_) ^ " not in subtype") else let
            val allTrams'3BCD_ = ((RT_m_16.R_dom(timetable'3B32_)):RT_s_11.t)
        in
            ((buildAllDeparturesUsingConnection'3E21_) (stopid1'3B20_, stopid2'3B29_, allTrams'3BCD_, timetable'3B32_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'66C1_ (timetable'6749_, (capacityMap'6755_, connectionMap'6762_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (190, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x109_'0_, x110_'0_, x111_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x110_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6749_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6755_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x114_'0_, x115_'0_, x116_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x116_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6762_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:188:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_27.toString (timetable'6749_, (capacityMap'6755_, connectionMap'6762_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'6791_, stopid2'679A_):RT_x_2.t) => let
            val (headway'67F6_, drivingTime'67FE_, capacity'680B_) = ((((RT_m_4.R_app(connectionMap'6762_)) ((stopid1'6791_, stopid2'679A_)))):RT_x_3.t)
        in
            ((RT_s_23.R_all (fn ((tram1'68C1_, sid1'68C8_, arrt1'68CE_, dept1'68D5_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'68CE_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'68D5_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'6927_, sid2'692E_, arrt2'6934_, dept2'693B_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'6934_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'693B_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'68D5_, dept2'693B_))), headway'67F6_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'3A9D_) (stopid1'6791_, stopid2'679A_, timetable'6749_)), RT_s_23.R_fromList ([(tram1'68C1_, sid1'68C8_, arrt1'68CE_, dept1'68D5_)]))))))) (((getAllDepaturesUsingConnection'3A9D_) (stopid1'6791_, stopid2'679A_, timetable'6749_)))))
        end) ((connectionMap'6762_)))));
        
        fun isWellformed'AF6A_ (t'AFDB_, n'AFDE_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (376, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x173_'0_, x174_'0_, x175_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x174_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x175_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'AFDB_)))) andalso (let
            val (x176_'0_, x177_'0_) = ((n'AFDE_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x176_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x180_'0_, x181_'0_, x182_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x180_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x181_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x182_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x177_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:374:6: Argument of isWellformed" ^ RT_x_27.toString (t'AFDB_, n'AFDE_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'7215_) (t'AFDB_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (377, 8)); (((timeBetweenDeparturesIsValidHeadway'66C1_) (t'AFDB_, n'AFDE_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (378, 8)); ((RT_s_19.R_all (fn (plan'B101_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x183_'0_, x184_'0_, x185_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x184_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x185_'0_, RT_Int.fromLit "0"))
        end) (plan'B101_))) orelse (((timeBetweenStopsIsDrivingTime'5F55_) (plan'B101_, n'AFDE_)))) (RT_m_16.R_ran((t'AFDB_))))))));
        
        fun findArrivalRowInPlan'5401_ (stopid1'547A_, stopid2'5483_, plan'548C_, tram'5492_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (142, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'548C_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:140:5: Argument of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'547A_, stopid2'5483_, plan'548C_, tram'5492_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'548C_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:158:11: Precondition of findArrivalRowInPlan" ^ RT_x_25.toString (stopid1'547A_, stopid2'5483_, plan'548C_, tram'5492_) ^ " not satisfied") else let
            val (hStopId'5532_, hArrTime'553B_, hDepTime'5545_) = ((RT_l_15.R_hd(plan'548C_)):RT_x_14.t); 
            val (nStopId'5596_, nArrTime'559F_, nDepTime'55A9_) = ((((nextStop'2B63_) (RT_l_15.R_hd(plan'548C_), plan'548C_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'5532_, stopid1'547A_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (146, 33)); RT_Text.equ (nStopId'5596_, stopid2'5483_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (148, 11)); (tram'5492_, nStopId'5596_, nArrTime'559F_, nDepTime'55A9_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (150, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'548C_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (152, 13)); ((findArrivalRowInPlan'5401_) (stopid1'547A_, stopid2'5483_, RT_l_15.R_tl(plan'548C_), tram'5492_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (154, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun countOverLappingTimesForTrack'7FC3_ (tramid'8045_, deptime'804C_, arrtime'8055_, times'805E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (254, 9)); if not((RT_Nat.R_ge (deptime'804C_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (arrtime'8055_, RT_Int.fromLit "0")) andalso ((RT_s_29.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x144_'0_, x145_'0_, x146_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x145_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x146_'0_, RT_Int.fromLit "0"))
        end) (times'805E_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:252:7: Argument of countOverLappingTimesForTrack" ^ RT_x_30.toString (tramid'8045_, deptime'804C_, arrtime'8055_, times'805E_) ^ " not in subtype") else if RT_s_29.equ (times'805E_, RT_s_29.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (255, 14)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (257, 11)); let
            val (tramid2'8222_, deptime2'822B_, arrtime2'8235_) = ((RT_s_29.R_hd(times'805E_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'8045_, tramid2'8222_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (260, 37)); ((((RT_Nat.R_le (deptime'804C_, deptime2'822B_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (260, 62)); RT_Nat.R_le (deptime2'822B_, arrtime'8055_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (260, 85)); ((RT_Nat.R_le (deptime'804C_, arrtime2'8235_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (261, 9)); RT_Nat.R_le (arrtime2'8235_, arrtime'8055_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (261, 18)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'7FC3_) (tramid'8045_, deptime'804C_, arrtime'8055_, RT_s_29.R_diff (times'805E_, RT_s_29.R_fromList ([(tramid2'8222_, deptime2'822B_, arrtime2'8235_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (262, 18)); ((countOverLappingTimesForTrack'7FC3_) (tramid'8045_, deptime'804C_, arrtime'8055_, RT_s_29.R_diff (times'805E_, RT_s_29.R_fromList ([(tramid2'8222_, deptime2'822B_, arrtime2'8235_)])))))
        end));
        
        fun buildTimesForTramOnTrack'8C43_ (stopid1'8CC1_, stopid2'8CCA_, plan'8CD3_, tramid'8CD9_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (286, 9)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x150_'0_, x151_'0_, x152_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x151_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x152_'0_, RT_Int.fromLit "0"))
        end) (plan'8CD3_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:284:7: Argument of buildTimesForTramOnTrack" ^ RT_x_25.toString (stopid1'8CC1_, stopid2'8CCA_, plan'8CD3_, tramid'8CD9_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'8CD3_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (287, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (289, 11)); let
            val (sid'8EA2_, arrt'8EA7_, dept'8EAD_) = ((RT_l_15.R_hd(plan'8CD3_)):RT_x_14.t); 
            val (sid2'8F06_, arrt2'8F0C_, dept2'8F13_) = ((((nextStop'2B63_) ((sid'8EA2_, arrt'8EA7_, dept'8EAD_), plan'8CD3_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'8EA2_, stopid1'8CC1_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (293, 33)); RT_Text.equ (sid2'8F06_, stopid2'8CCA_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (294, 18)); RT_s_29.R_union (RT_s_29.R_fromList ([(tramid'8CD9_, dept'8EAD_, arrt2'8F0C_)]), ((buildTimesForTramOnTrack'8C43_) (stopid1'8CC1_, stopid2'8CCA_, RT_l_15.R_tl(plan'8CD3_), tramid'8CD9_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (295, 18)); ((buildTimesForTramOnTrack'8C43_) (stopid1'8CC1_, stopid2'8CCA_, RT_l_15.R_tl(plan'8CD3_), tramid'8CD9_)))
        end));
        
        fun buildAllTimesForTrack'8667_ (stopid1'86E1_, stopid2'86EA_, trams'86F3_, timetable'86FA_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (271, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x147_'0_, x148_'0_, x149_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x148_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x149_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'86FA_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:269:7: Argument of buildAllTimesForTrack" ^ RT_x_24.toString (stopid1'86E1_, stopid2'86EA_, trams'86F3_, timetable'86FA_) ^ " not in subtype") else if RT_s_11.equ (trams'86F3_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (272, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (274, 11)); let
            val tramid'88C5_ = ((RT_s_11.R_hd(trams'86F3_)):RT_Text.t)
        in
            RT_s_29.R_union (((buildTimesForTramOnTrack'8C43_) (stopid1'86E1_, stopid2'86EA_, ((RT_m_16.R_app(timetable'86FA_)) (tramid'88C5_)), tramid'88C5_)), ((buildAllTimesForTrack'8667_) (stopid1'86E1_, stopid2'86EA_, RT_s_11.R_diff (trams'86F3_, RT_s_11.R_fromList ([tramid'88C5_])), timetable'86FA_)))
        end));
        
        fun trackCapacityIsNotExceeded'7981_ (stopid1'7A00_, stopid2'7A09_, timetable'7A12_, connectionMap'7A1D_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (238, 8)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x136_'0_, x137_'0_, x138_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x137_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x138_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7A12_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x141_'0_, x142_'0_, x143_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x142_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x143_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7A1D_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:236:5: Argument of trackCapacityIsNotExceeded" ^ RT_x_28.toString (stopid1'7A00_, stopid2'7A09_, timetable'7A12_, connectionMap'7A1D_) ^ " not in subtype") else let
            val times1'7AB2_ = ((((buildAllTimesForTrack'8667_) (stopid1'7A00_, stopid2'7A09_, RT_m_16.R_dom((timetable'7A12_)), timetable'7A12_))):RT_s_29.t); 
            val times2'7B16_ = ((((buildAllTimesForTrack'8667_) (stopid2'7A09_, stopid1'7A00_, RT_m_16.R_dom((timetable'7A12_)), timetable'7A12_))):RT_s_29.t); 
            val (headway'7B7B_, drivingtime'7B84_, trackcapacity'7B91_) = ((((RT_m_4.R_app(connectionMap'7A1D_)) (stopid1'7A00_, stopid2'7A09_))):RT_x_3.t)
        in
            (((RT_s_29.R_all (fn ((tramid'7C48_, deptime'7C50_, arrtime'7C59_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'7C50_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'7C59_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'7FC3_) (tramid'7C48_, deptime'7C50_, arrtime'7C59_, times1'7AB2_))), trackcapacity'7B91_)))) (times1'7AB2_)))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (245, 15)); ((RT_s_29.R_all (fn ((tramid'7D15_, deptime'7D1D_, arrtime'7D26_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'7D1D_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'7D26_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'7FC3_) (tramid'7D15_, deptime'7D1D_, arrtime'7D26_, times2'7B16_))), trackcapacity'7B91_)))) (times2'7B16_))))
        end);
        
        fun allTrackCapacitiesAreNotExceeded'7661_ (timetable'76E6_, (capacityMap'76F2_, connectionMap'76FE_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (230, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x128_'0_, x129_'0_, x130_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'76E6_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'76F2_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x133_'0_, x134_'0_, x135_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x133_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x135_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'76FE_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:228:5: Argument of allTrackCapacitiesAreNotExceeded" ^ RT_x_27.toString (timetable'76E6_, (capacityMap'76F2_, connectionMap'76FE_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'7731_, stopid2'773A_):RT_x_2.t) => ((trackCapacityIsNotExceeded'7981_) (stopid1'7731_, stopid2'773A_, timetable'76E6_, connectionMap'76FE_))) ((connectionMap'76FE_)))));
        
        fun countOverLappingTimesForStop'9B7F_ (tramid'9C00_, arrtime'9C07_, deptime'9C10_, times'9C19_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (325, 9)); if not((RT_Nat.R_ge (arrtime'9C07_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (deptime'9C10_, RT_Int.fromLit "0")) andalso ((RT_s_29.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x164_'0_, x165_'0_, x166_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x165_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x166_'0_, RT_Int.fromLit "0"))
        end) (times'9C19_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:323:7: Argument of countOverLappingTimesForStop" ^ RT_x_30.toString (tramid'9C00_, arrtime'9C07_, deptime'9C10_, times'9C19_) ^ " not in subtype") else if RT_s_29.equ (times'9C19_, RT_s_29.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (326, 14)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (328, 11)); let
            val (tramid2'9DDE_, arrtime2'9DE7_, deptime2'9DF1_) = ((RT_s_29.R_hd(times'9C19_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'9C00_, tramid2'9DDE_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (331, 37)); ((((RT_Nat.R_le (arrtime'9C07_, arrtime2'9DE7_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (331, 62)); RT_Nat.R_le (arrtime2'9DE7_, deptime'9C10_)))) orelse (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (331, 85)); ((RT_Nat.R_le (arrtime'9C07_, deptime2'9DF1_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (332, 9)); RT_Nat.R_le (deptime2'9DF1_, deptime'9C10_)))))) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (332, 18)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForStop'9B7F_) (tramid'9C00_, arrtime'9C07_, deptime'9C10_, RT_s_29.R_diff (times'9C19_, RT_s_29.R_fromList ([(tramid2'9DDE_, arrtime2'9DE7_, deptime2'9DF1_)])))))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (333, 18)); ((countOverLappingTimesForStop'9B7F_) (tramid'9C00_, arrtime'9C07_, deptime'9C10_, RT_s_29.R_diff (times'9C19_, RT_s_29.R_fromList ([(tramid2'9DDE_, arrtime2'9DE7_, deptime2'9DF1_)])))))
        end));
        
        fun buildTimesForTramOnStop'A79B_ (stopid'A817_, plan'A81F_, tramid'A825_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (356, 9)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x170_'0_, x171_'0_, x172_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x171_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x172_'0_, RT_Int.fromLit "0"))
        end) (plan'A81F_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:354:7: Argument of buildTimesForTramOnStop" ^ RT_x_33.toString (stopid'A817_, plan'A81F_, tramid'A825_) ^ " not in subtype") else if RT_Nat.R_lt (RT_l_15.R_length(plan'A81F_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (357, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (359, 11)); let
            val (sid'A9FA_, arrt'A9FF_, dept'AA05_) = ((RT_l_15.R_hd(plan'A81F_)):RT_x_14.t)
        in
            if RT_Text.equ (sid'A9FA_, stopid'A817_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (363, 18)); RT_s_29.R_union (RT_s_29.R_fromList ([(tramid'A825_, arrt'A9FF_, dept'AA05_)]), ((buildTimesForTramOnStop'A79B_) (stopid'A817_, RT_l_15.R_tl(plan'A81F_), tramid'A825_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (364, 18)); ((buildTimesForTramOnStop'A79B_) (stopid'A817_, RT_l_15.R_tl(plan'A81F_), tramid'A825_)))
        end));
        
        fun buildAllTimesForStop'A223_ (stopid'A29C_, trams'A2A4_, timetable'A2AB_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (342, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x167_'0_, x168_'0_, x169_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x168_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x169_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'A2AB_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:340:7: Argument of buildAllTimesForStop" ^ RT_x_32.toString (stopid'A29C_, trams'A2A4_, timetable'A2AB_) ^ " not in subtype") else if RT_s_11.equ (trams'A2A4_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (343, 14)); RT_s_29.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (345, 11)); let
            val tramid'A481_ = ((RT_s_11.R_hd(trams'A2A4_)):RT_Text.t)
        in
            RT_s_29.R_union (((buildTimesForTramOnStop'A79B_) (stopid'A29C_, ((RT_m_16.R_app(timetable'A2AB_)) (tramid'A481_)), tramid'A481_)), ((buildAllTimesForStop'A223_) (stopid'A29C_, RT_s_11.R_diff (trams'A2A4_, RT_s_11.R_fromList ([tramid'A481_])), timetable'A2AB_)))
        end));
        
        fun stopCapacityIsNotExceeded'966B_ (stopid'96E9_, timetable'96F1_, capacityMap'96FC_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (312, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x161_'0_, x162_'0_, x163_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x162_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x163_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'96F1_)))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'96FC_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:310:7: Argument of stopCapacityIsNotExceeded" ^ RT_x_31.toString (stopid'96E9_, timetable'96F1_, capacityMap'96FC_) ^ " not in subtype") else let
            val times'979B_ = ((((buildAllTimesForStop'A223_) (stopid'96E9_, RT_m_16.R_dom((timetable'96F1_)), timetable'96F1_))):RT_s_29.t); 
            val capacity'97FF_ = ((((RT_m_1.R_app(capacityMap'96FC_)) (stopid'96E9_))):RT_Nat.t)
        in
            ((RT_s_29.R_all (fn ((tramid'98CD_, arrtime'98D5_, deptime'98DE_):RT_x_14.t) => not ((RT_Nat.R_ge (arrtime'98D5_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (deptime'98DE_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForStop'9B7F_) (tramid'98CD_, arrtime'98D5_, deptime'98DE_, times'979B_))), capacity'97FF_)))) (times'979B_)))
        end);
        
        fun allStopCapacitiesAreNotExceeded'934B_ (timetable'93CF_, (capacityMap'93DB_, connectionMap'93E7_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (304, 9)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x153_'0_, x154_'0_, x155_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x154_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x155_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'93CF_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'93DB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x158_'0_, x159_'0_, x160_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x159_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'93E7_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:302:7: Argument of allStopCapacitiesAreNotExceeded" ^ RT_x_27.toString (timetable'93CF_, (capacityMap'93DB_, connectionMap'93E7_)) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopid'941A_:RT_Text.t) => ((stopCapacityIsNotExceeded'966B_) (stopid'941A_, timetable'93CF_, capacityMap'93DB_))) ((capacityMap'93DB_)))));
        
        fun buildAllArrivalsUsingConnection'4EED_ (stopid1'4F71_, stopid2'4F7A_, trams'4F83_, timetable'4F8A_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (129, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4F8A_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:127:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_24.toString (stopid1'4F71_, stopid2'4F7A_, trams'4F83_, timetable'4F8A_) ^ " not in subtype") else if RT_s_11.equ (trams'4F83_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (130, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (132, 9)); let
            val tram'514B_ = ((RT_s_11.R_hd(trams'4F83_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findArrivalRowInPlan'5401_) (stopid1'4F71_, stopid2'4F7A_, ((RT_m_16.R_app(timetable'4F8A_)) (tram'514B_)), tram'514B_))]), ((buildAllArrivalsUsingConnection'4EED_) (stopid1'4F71_, stopid2'4F7A_, RT_s_11.R_diff (trams'4F83_, RT_s_11.R_fromList ([tram'514B_])), timetable'4F8A_)))
        end));
        
        fun getAllArrivalsUsingConnection'4B69_ (stopid1'4BEB_, stopid2'4BF4_, timetable'4BFD_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (120, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4BFD_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:118:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_22.toString (stopid1'4BEB_, stopid2'4BF4_, timetable'4BFD_) ^ " not in subtype") else let
            val allTrams'4C99_ = ((RT_m_16.R_dom(timetable'4BFD_)):RT_s_11.t)
        in
            ((buildAllArrivalsUsingConnection'4EED_) (stopid1'4BEB_, stopid2'4BF4_, allTrams'4C99_, timetable'4BFD_))
        end);
        
        fun timeBetweenArrivalIsValidHeadway'6D01_ (timetable'6D86_, (capacityMap'6D92_, connectionMap'6D9F_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (206, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x117_'0_, x118_'0_, x119_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6D86_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6D92_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x122_'0_, x123_'0_, x124_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x123_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6D9F_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:204:5: Argument of timeBetweenArrivalIsValidHeadway" ^ RT_x_27.toString (timetable'6D86_, (capacityMap'6D92_, connectionMap'6D9F_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'6DD1_, stopid2'6DDA_):RT_x_2.t) => let
            val (headway'6E36_, drivingTime'6E3E_, capacity'6E4B_) = ((((RT_m_4.R_app(connectionMap'6D9F_)) ((stopid1'6DD1_, stopid2'6DDA_)))):RT_x_3.t)
        in
            ((RT_s_23.R_all (fn ((tram1'6F01_, sid1'6F08_, arrt1'6F0E_, dept1'6F15_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'6F0E_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'6F15_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'6F67_, sid2'6F6E_, arrt2'6F74_, dept2'6F7B_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'6F74_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'6F7B_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'6F15_, dept2'6F7B_))), headway'6E36_)))) (RT_s_23.R_diff (((getAllArrivalsUsingConnection'4B69_) (stopid1'6DD1_, stopid2'6DDA_, timetable'6D86_)), RT_s_23.R_fromList ([(tram1'6F01_, sid1'6F08_, arrt1'6F0E_, dept1'6F15_)]))))))) (((getAllArrivalsUsingConnection'4B69_) (stopid1'6DD1_, stopid2'6DDA_, timetable'6D86_)))))
        end) ((connectionMap'6D9F_)))));
        
        fun isIn'2909_ (tramid'2972_, timetable'297A_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (32, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'297A_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:30:5: Argument of isIn" ^ RT_x_18.toString (tramid'2972_, timetable'297A_) ^ " not in subtype") else RT_m_16.R_mem (tramid'2972_, (timetable'297A_)));
        
        val empty'22CB_ = let val z__'22DD_ = RT_m_16.R_fromList [] in if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x186_'0_, x187_'0_, x188_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x187_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x188_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'22DD_)))) then (RSL.add_load_err("./TIMETABLE.rsl:14:25: Value " ^ RT_m_16.toString(z__'22DD_) ^ " of empty not in subtype"); z__'22DD_) else z__'22DD_ end;
        
        fun addStop'25EB_ (tramid'2657_, stopid'265F_, arrival'2667_, departure'2670_, timetable'267B_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (24, 9)); if not((RT_Nat.R_ge (arrival'2667_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'2670_, RT_Int.fromLit "0")) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'267B_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:22:7: Argument of addStop" ^ RT_x_20.toString (tramid'2657_, stopid'265F_, arrival'2667_, departure'2670_, timetable'267B_) ^ " not in subtype") else RT_m_16.R_override (timetable'267B_, RT_m_16.R_fromList ([(tramid'2657_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'267B_)) (tramid'2657_)), [(stopid'265F_, arrival'2667_, departure'2670_)]))])));
        
        fun addTram'23F7_ (tramid'2463_, timetable'246B_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (19, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'246B_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:17:7: Argument of addTram" ^ RT_x_18.toString (tramid'2463_, timetable'246B_) ^ " not in subtype") else RT_m_16.R_override (timetable'246B_, RT_m_16.R_fromList ([(tramid'2463_, ([]:RT_l_15.t))])));
        
        val plan6'113C_ = [(RT_Text.fromLit "B", RT_Int.fromLit "15", RT_Int.fromLit "17"), (RT_Text.fromLit "A", RT_Int.fromLit "29", RT_Int.fromLit "30"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val plan1'64D_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val plan5'10D8_ = [(RT_Text.fromLit "C", RT_Int.fromLit "5", RT_Int.fromLit "7"), (RT_Text.fromLit "B", RT_Int.fromLit "19", RT_Int.fromLit "21"), (RT_Text.fromLit "A", RT_Int.fromLit "31", RT_Int.fromLit "33"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "60", RT_Int.fromLit "3")];
        
        val plan2'6B1_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val timeTableWithExceededStopCapacities'11A0_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (RT_Text.fromLit "tram3", plan5'10D8_), (RT_Text.fromLit "tram4", plan6'113C_)]);
        
        val connectionMap'32D_ = RT_m_4.R_fromList ([((RT_Text.fromLit "B", RT_Text.fromLit "D"), (RT_Int.fromLit "2", RT_Int.fromLit "7", RT_Int.fromLit "2")), ((RT_Text.fromLit "A", RT_Text.fromLit "B"), (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1")), ((RT_Text.fromLit "B", RT_Text.fromLit "C"), (RT_Int.fromLit "2", RT_Int.fromLit "12", RT_Int.fromLit "3"))]);
        
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
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (206, 7), (214, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (120, 7), (124, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (132, 9), (137, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (130, 12), (131, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (129, 7), (137, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (304, 9), (306, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (312, 9), (319, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (345, 11), (350, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (343, 14), (344, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (342, 9), (350, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (364, 18), (365, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (363, 18), (364, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (359, 11), (367, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (357, 14), (358, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (356, 9), (367, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (332, 9), (332, 28));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (331, 62), (331, 80));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (331, 85), (332, 29));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (331, 37), (332, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (333, 18), (334, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (332, 18), (333, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (328, 11), (336, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (326, 14), (327, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (325, 9), (336, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (230, 7), (232, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (245, 15), (248, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (238, 8), (248, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (274, 11), (279, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (272, 14), (273, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (271, 9), (279, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (293, 33), (294, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (295, 18), (296, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (294, 18), (295, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (289, 11), (298, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (287, 14), (288, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (286, 9), (298, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (261, 9), (261, 28));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (260, 62), (260, 80));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (260, 85), (261, 29));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (260, 37), (261, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (262, 18), (263, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (261, 18), (262, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (257, 11), (265, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (255, 14), (256, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (254, 9), (265, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (154, 13), (155, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (152, 13), (153, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (146, 33), (147, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (150, 11), (156, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (148, 11), (149, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (142, 7), (161, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (378, 8), (381, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (377, 8), (381, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (376, 8), (381, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (190, 7), (198, 8));
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
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (219, 7), (223, 8));
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
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'AF6A_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s2_validDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'5F55_) (plan1'64D_, net'4BD_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'5F55_) (planInvalidDrivingTime'841_, net'4BD_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'AF6A_) (timetableInvalidDrivingTime'8A5_, net'4BD_)), false)));

(RSL.C_output "[s3_validHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'66C1_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'66C1_) (timetableInvalidDepartureHeadway'A35_, net'4BD_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'AF6A_) (timetableInvalidDepartureHeadway'A35_, net'4BD_)), false)));

(RSL.C_output "[s4_validHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'66C1_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'66C1_) (timetableDuplicateDepartureHeadway'BC5_, net'4BD_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'AF6A_) (timetableDuplicateDepartureHeadway'BC5_, net'4BD_)), false)));

(RSL.C_output "[s5_tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'7215_) (timetableWF'715_)), true)));

(RSL.C_output "[s5_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'7215_) (timetableWithoutStopTime'D55_)), false)));

(RSL.C_output "[s5_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'AF6A_) (timetableWithoutStopTime'D55_, net'4BD_)), false)));

(RSL.C_output "[s6_NumberOfTrainsOnTrackDontExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'7661_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s6_NumberOfTrainsOnTrackDoExceedTrackCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allTrackCapacitiesAreNotExceeded'7661_) (timetableWithExceededTrackCapacities'F49_, net'4BD_)), false)));

(RSL.C_output "[s7_NumberOfTrainsAtStopDontExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'934B_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s7_NumberOfTrainsAtStopDoExceedStopCapacity] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopCapacitiesAreNotExceeded'934B_) (timeTableWithExceededStopCapacities'11A0_, net'4BD_)), false)));

RSL.print_error_count();
R_coverage.save_marked();
