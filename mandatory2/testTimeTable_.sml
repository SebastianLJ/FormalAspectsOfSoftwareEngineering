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
        type t = RT_Text.t * RT_Text.t * RT_s_19.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_s_19.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_s_19.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_19.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_28 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_l_15.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_l_15.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_l_15.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_l_15.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_29 =
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
    
structure RT_x_30 =
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
        
        fun allStopsHaveConnection'8985_ (capacityMap'8A00_, connectionMap'8A0D_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'8A00_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'8A0D_))))) then raise RSL.RSL_exception ("./NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'8A00_, connectionMap'8A0D_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'8A54_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'8B21_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'8A54_, stopId2'8B21_), (connectionMap'8A0D_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'8B21_, stopId'8A54_), (connectionMap'8A0D_))))) ((capacityMap'8A00_))))) ((capacityMap'8A00_)))));
        
        fun noSelfConnection'840D_ (capacityMap'8482_, connectionMap'848F_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'8482_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'848F_))))) then raise RSL.RSL_exception ("./NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'8482_, connectionMap'848F_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'84DD_, stopId2'84E6_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'84DD_, stopId2'84E6_)) ((connectionMap'848F_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'86C9_ (capacityMap'8755_, connectionMap'8762_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'8755_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'8762_))))) then raise RSL.RSL_exception ("./NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'8755_, connectionMap'8762_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'8799_, stopId2'87A2_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'8799_, (capacityMap'8755_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'87A2_, (capacityMap'8755_)))) ((connectionMap'8762_)))));
        
        fun isWellformed'8D6D_ net'8DDE_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'8DDE_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'8DDE_ ^ ")" ^ " not in subtype") else (((noSelfConnection'840D_) (net'8DDE_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'86C9_) (net'8DDE_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); ((allStopsHaveConnection'8985_) (net'8DDE_)))));
        
        val empty'7085_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'8089_ (stopId1'80FC_, stopId2'8105_, (capacityMap'810F_, connectionMap'811C_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'810F_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'811C_))))) then raise RSL.RSL_exception ("./NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'80FC_, stopId2'8105_, (capacityMap'810F_, connectionMap'811C_)) ^ " not in subtype") else let
            val (headway'8158_, drivingTime'8161_, capacity'816E_) = ((((RT_m_4.R_app(connectionMap'811C_)) (stopId1'80FC_, stopId2'8105_))):RT_x_3.t)
        in
            drivingTime'8161_
        end);
        
        fun insertStop'714D_ (stopId'71BC_, capacity'71C4_, (capacityMap'71CF_, connectionMap'71DC_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'71C4_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'71CF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'71DC_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'71BC_, capacity'71C4_, (capacityMap'71CF_, connectionMap'71DC_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'71CF_, RT_m_1.R_fromList ([(stopId'71BC_, capacity'71C4_)])), connectionMap'71DC_));
        
        fun capacity'7D69_ (stopId1'7DD6_, stopId2'7DDF_, (capacityMap'7DE9_, connectionMap'7DF6_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7DE9_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7DF6_))))) then raise RSL.RSL_exception ("./NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'7DD6_, stopId2'7DDF_, (capacityMap'7DE9_, connectionMap'7DF6_)) ^ " not in subtype") else let
            val (headway'7E38_, drivingTime'7E41_, capacity'7E4E_) = ((((RT_m_4.R_app(connectionMap'7DF6_)) (stopId1'7DD6_, stopId2'7DDF_))):RT_x_3.t)
        in
            capacity'7E4E_
        end);
        
        fun addConnection'7341_ (stopId1'73B3_, stopId2'73BC_, headway'73C5_, capacity'73CE_, drivingTime'73D8_, (capacityMap'73E6_, connectionMap'73F3_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'73C5_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'73CE_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'73D8_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'73E6_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'73F3_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'73B3_, stopId2'73BC_, headway'73C5_, capacity'73CE_, drivingTime'73D8_, (capacityMap'73E6_, connectionMap'73F3_)) ^ " not in subtype") else (capacityMap'73E6_, RT_m_4.R_override (connectionMap'73F3_, RT_m_4.R_fromList ([((stopId1'73B3_, stopId2'73BC_), (headway'73C5_, drivingTime'73D8_, capacity'73CE_))]))));
        
        fun minHeadway'7A49_ (stopId1'7AB8_, stopId2'7AC1_, (capacityMap'7ACB_, connectionMap'7AD8_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7ACB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7AD8_))))) then raise RSL.RSL_exception ("./NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'7AB8_, stopId2'7AC1_, (capacityMap'7ACB_, connectionMap'7AD8_)) ^ " not in subtype") else let
            val (headway'7B18_, drivingTime'7B21_, capacity'7B2E_) = ((((RT_m_4.R_app(connectionMap'7AD8_)) (stopId1'7AB8_, stopId2'7AC1_))):RT_x_3.t)
        in
            headway'7B18_
        end);
        
        fun isIn'7535_ (stopId'759E_, (capacityMap'75A7_, connecitonMap'75B4_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'75A7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'75B4_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'759E_, (capacityMap'75A7_, connecitonMap'75B4_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'759E_, (capacityMap'75A7_)));
        
        fun areDirectlyConnected'7855_ (stopId1'78CE_, stopId2'78D7_, (capacityMap'78E1_, connectionMap'78EE_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'78E1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'78EE_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'78CE_, stopId2'78D7_, (capacityMap'78E1_, connectionMap'78EE_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'78CE_, stopId2'78D7_), (connectionMap'78EE_)));
        
        fun capacity'76C5_ (stopId'7733_, (capacityMap'773B_, connectionMap'7748_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'773B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7748_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'7733_, (capacityMap'773B_, connectionMap'7748_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'773B_)) (stopId'7733_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type TramPlanRow_ = RT_x_17.t;
        
        type Plan_ = RT_l_15.t;
        
        type ArrivalT_ = RT_Nat.t;
        
        type DepatureT_ = RT_Nat.t;
        
        fun tramStopsAtAllStopsItPasses'6081_ timetable'6101_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (198, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x117_'0_, x118_'0_, x119_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6101_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:196:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'6101_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'6150_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'61B7_, arrTime'61BF_, depTime'61C8_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'61BF_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'61C8_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'61C8_, arrTime'61BF_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'6101_)) (tramid'6150_)))))) ((timetable'6101_)))));
        
        fun getConnection'2E1F_ (stop1'2E91_, stop2'2E98_, (capacityMap'2EA0_, connectionMap'2EAD_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (69, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'2EA0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'2EAD_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:67:7: Argument of getConnection" ^ RT_x_12.toString (stop1'2E91_, stop2'2E98_, (capacityMap'2EA0_, connectionMap'2EAD_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'2E91_, stop2'2E98_), (connectionMap'2EAD_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (71, 9)); ((RT_m_4.R_app(connectionMap'2EAD_)) ((stop1'2E91_, stop2'2E98_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (73, 9)); ((RT_m_4.R_app(connectionMap'2EAD_)) ((stop2'2E98_, stop1'2E91_)))));
        
        fun timeBetweenStopsIsDrivingTime'539D_ (plan'541F_, (capacityMap'5426_, connectionMap'5433_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (165, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (plan'541F_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'5426_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x106_'0_, x107_'0_, x108_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5433_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:163:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_29.toString (plan'541F_, (capacityMap'5426_, connectionMap'5433_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'541F_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (166, 9)); let
            val (stopid1'5534_, arrTime1'553D_, depTime1'5547_) = ((RT_l_15.R_hd(plan'541F_)):RT_x_14.t); 
            val (stopid2'5598_, arrTime2'55A1_, depTime2'55AB_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'541F_)))):RT_x_14.t)
        in
            let
                val (headway'56C6_, drivingTime'56CE_, capacity'56DB_) = ((((getConnection'2E1F_) (stopid1'5534_, stopid2'5598_, (capacityMap'5426_, connectionMap'5433_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'55A1_, depTime1'5547_), drivingTime'56CE_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (173, 53)); ((timeBetweenStopsIsDrivingTime'539D_) (RT_l_15.R_tl(plan'541F_), (capacityMap'5426_, connectionMap'5433_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (177, 9)); true));
        
        fun nextStop'2393_ (planRow'2400_, plan'2409_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (42, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'2400_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'2409_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:40:7: Argument of nextStop" ^ RT_x_21.toString (planRow'2400_, plan'2409_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'2409_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:65:13: Precondition of nextStop" ^ RT_x_21.toString (planRow'2400_, plan'2409_) ^ " not satisfied") else let
            val iPlanRow'24C3_ = ((RT_l_15.R_hd(plan'2409_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'24C3_, planRow'2400_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (47, 13)); let
                val (sid'26BC_, arrt'26C1_, dept'26C7_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'2409_)))):RT_x_14.t)
            in
                (sid'26BC_, arrt'26C1_, dept'26C7_)
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (53, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'2409_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (55, 15)); ((nextStop'2393_) (planRow'2400_, RT_l_15.R_tl(plan'2409_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (57, 15)); let
                val (sid'2AA6_, arrt'2AAB_, dept'2AB1_) = ((iPlanRow'24C3_):RT_x_14.t)
            in
                iPlanRow'24C3_
            end))
        end);
        
        fun findDepartureRowInPlan'3971_ (stopid1'39EC_, stopid2'39F5_, plan'39FE_, tram'3A04_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (98, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'39FE_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:96:5: Argument of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'39EC_, stopid2'39F5_, plan'39FE_, tram'3A04_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'39FE_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:114:11: Precondition of findDepartureRowInPlan" ^ RT_x_25.toString (stopid1'39EC_, stopid2'39F5_, plan'39FE_, tram'3A04_) ^ " not satisfied") else let
            val (hStopId'3AA2_, hArrTime'3AAB_, hDepTime'3AB5_) = ((RT_l_15.R_hd(plan'39FE_)):RT_x_14.t); 
            val (nStopId'3B06_, nArrTime'3B0F_, nDepTime'3B19_) = ((((nextStop'2393_) (RT_l_15.R_hd(plan'39FE_), plan'39FE_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'3AA2_, stopid1'39EC_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (102, 33)); RT_Text.equ (nStopId'3B06_, stopid2'39F5_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (104, 11)); (tram'3A04_, hStopId'3AA2_, hArrTime'3AAB_, hDepTime'3AB5_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (106, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'39FE_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (108, 13)); ((findDepartureRowInPlan'3971_) (stopid1'39EC_, stopid2'39F5_, RT_l_15.R_tl(plan'39FE_), tram'3A04_))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (110, 13)); (RT_Text.fromLit "", RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'34C1_ (stopid1'3547_, stopid2'3550_, trams'3559_, timetable'3560_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3560_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:84:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_24.toString (stopid1'3547_, stopid2'3550_, trams'3559_, timetable'3560_) ^ " not in subtype") else if RT_s_11.equ (trams'3559_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (87, 12)); RT_s_23.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (89, 9)); let
            val tram'371F_ = ((RT_s_11.R_hd(trams'3559_)):RT_Text.t)
        in
            RT_s_23.R_union (RT_s_23.R_fromList ([((findDepartureRowInPlan'3971_) (stopid1'3547_, stopid2'3550_, ((RT_m_16.R_app(timetable'3560_)) (tram'371F_)), tram'371F_))]), ((buildAllDeparturesUsingConnection'34C1_) (stopid1'3547_, stopid2'3550_, RT_s_11.R_diff (trams'3559_, RT_s_11.R_fromList ([tram'371F_])), timetable'3560_)))
        end));
        
        fun getAllDepaturesUsingConnection'31A1_ (stopid1'3224_, stopid2'322D_, timetable'3236_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (78, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3236_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:76:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_22.toString (stopid1'3224_, stopid2'322D_, timetable'3236_) ^ " not in subtype") else let
            val allTrams'32D1_ = ((RT_m_16.R_dom(timetable'3236_)):RT_s_11.t)
        in
            ((buildAllDeparturesUsingConnection'34C1_) (stopid1'3224_, stopid2'322D_, allTrams'32D1_, timetable'3236_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'5AA5_ (timetable'5B2D_, (capacityMap'5B39_, connectionMap'5B46_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (183, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x109_'0_, x110_'0_, x111_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x110_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5B2D_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'5B39_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x114_'0_, x115_'0_, x116_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x116_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5B46_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:181:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_30.toString (timetable'5B2D_, (capacityMap'5B39_, connectionMap'5B46_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'5B75_, stopid2'5B7E_):RT_x_2.t) => let
            val (headway'5BDA_, drivingTime'5BE2_, capacity'5BEF_) = ((((RT_m_4.R_app(connectionMap'5B46_)) ((stopid1'5B75_, stopid2'5B7E_)))):RT_x_3.t)
        in
            ((RT_s_23.R_all (fn ((tram1'5CA5_, sid1'5CAC_, arrt1'5CB2_, dept1'5CB9_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt1'5CB2_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'5CB9_, RT_Int.fromLit "0"))) orelse (((RT_s_23.R_all (fn ((tram2'5D0B_, sid2'5D12_, arrt2'5D18_, dept2'5D1F_):RT_x_17.t) => not ((RT_Nat.R_ge (arrt2'5D18_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'5D1F_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'5CB9_, dept2'5D1F_))), headway'5BDA_)))) (RT_s_23.R_diff (((getAllDepaturesUsingConnection'31A1_) (stopid1'5B75_, stopid2'5B7E_, timetable'5B2D_)), RT_s_23.R_fromList ([(tram1'5CA5_, sid1'5CAC_, arrt1'5CB2_, dept1'5CB9_)]))))))) (((getAllDepaturesUsingConnection'31A1_) (stopid1'5B75_, stopid2'5B7E_, timetable'5B2D_)))))
        end) ((connectionMap'5B46_)))));
        
        fun isWellformed'68B5_ (t'6926_, n'6929_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 7)); if not(((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x120_'0_, x121_'0_, x122_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'6926_)))) andalso (let
            val (x123_'0_, x124_'0_) = ((n'6929_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x123_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x127_'0_, x128_'0_, x129_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x124_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:217:5: Argument of isWellformed" ^ RT_x_30.toString (t'6926_, n'6929_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'6081_) (t'6926_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 41)); (((timeBetweenDeparturesIsValidHeadway'5AA5_) (t'6926_, n'6929_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (220, 7)); ((RT_s_19.R_all (fn (plan'69E8_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x130_'0_, x131_'0_, x132_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x131_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0"))
        end) (plan'69E8_))) orelse (((timeBetweenStopsIsDrivingTime'539D_) (plan'69E8_, n'6929_)))) (RT_m_16.R_ran((t'6926_))))))));
        
        fun findArrivalRowInPlan'4911_ (stopid1'498A_, stopid2'4993_, plan'499C_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (138, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'499C_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:136:5: Argument of findArrivalRowInPlan" ^ RT_x_28.toString (stopid1'498A_, stopid2'4993_, plan'499C_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'499C_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:154:11: Precondition of findArrivalRowInPlan" ^ RT_x_28.toString (stopid1'498A_, stopid2'4993_, plan'499C_) ^ " not satisfied") else let
            val (hStopId'4A42_, hArrTime'4A4B_, hDepTime'4A55_) = ((RT_l_15.R_hd(plan'499C_)):RT_x_14.t); 
            val (nStopId'4AA6_, nArrTime'4AAF_, nDepTime'4AB9_) = ((((nextStop'2393_) (RT_l_15.R_hd(plan'499C_), plan'499C_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'4A42_, stopid1'498A_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (142, 33)); RT_Text.equ (nStopId'4AA6_, stopid2'4993_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (144, 11)); (nStopId'4AA6_, nArrTime'4AAF_, nDepTime'4AB9_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (146, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'499C_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (148, 13)); ((findArrivalRowInPlan'4911_) (stopid1'498A_, stopid2'4993_, RT_l_15.R_tl(plan'499C_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (150, 13)); (RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        val empty'1A33_ = let val z__'1A45_ = RT_m_16.R_fromList [] in if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x133_'0_, x134_'0_, x135_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x135_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'1A45_)))) then (RSL.add_load_err("./TIMETABLE.rsl:16:25: Value " ^ RT_m_16.toString(z__'1A45_) ^ " of empty not in subtype"); z__'1A45_) else z__'1A45_ end;
        
        fun buildAllArrivalsUsingConnection'4461_ (stopid1'44E5_, stopid2'44EE_, plans'44F7_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (126, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'44F7_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:124:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_27.toString (stopid1'44E5_, stopid2'44EE_, plans'44F7_) ^ " not in subtype") else if RT_s_19.equ (plans'44F7_, RT_s_19.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (127, 12)); RT_s_26.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (129, 9)); let
            val plan'46BF_ = ((RT_s_19.R_hd(plans'44F7_)):RT_l_15.t)
        in
            RT_s_26.R_union (RT_s_26.R_fromList ([((findArrivalRowInPlan'4911_) (stopid1'44E5_, stopid2'44EE_, plan'46BF_))]), ((buildAllArrivalsUsingConnection'4461_) (stopid1'44E5_, stopid2'44EE_, RT_s_19.R_diff (plans'44F7_, RT_s_19.R_fromList ([plan'46BF_])))))
        end));
        
        fun addTram'1B5F_ (tramid'1BCB_, timetable'1BD3_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (21, 9)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'1BD3_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:19:7: Argument of addTram" ^ RT_x_18.toString (tramid'1BCB_, timetable'1BD3_) ^ " not in subtype") else RT_m_16.R_override (timetable'1BD3_, RT_m_16.R_fromList ([(tramid'1BCB_, ([]:RT_l_15.t))])));
        
        fun getAllArrivalsUsingConnection'4141_ (stopid1'41C3_, stopid2'41CC_, timetable'41D5_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (118, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'41D5_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:116:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_22.toString (stopid1'41C3_, stopid2'41CC_, timetable'41D5_) ^ " not in subtype") else let
            val allPlans'4271_ = ((RT_m_16.R_ran((timetable'41D5_))):RT_s_19.t)
        in
            ((buildAllArrivalsUsingConnection'4461_) (stopid1'41C3_, stopid2'41CC_, allPlans'4271_))
        end);
        
        fun addStop'1D53_ (tramid'1DBF_, stopid'1DC7_, arrival'1DCF_, departure'1DD8_, timetable'1DE3_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (26, 9)); if not((RT_Nat.R_ge (arrival'1DCF_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'1DD8_, RT_Int.fromLit "0")) andalso ((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'1DE3_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:24:7: Argument of addStop" ^ RT_x_20.toString (tramid'1DBF_, stopid'1DC7_, arrival'1DCF_, departure'1DD8_, timetable'1DE3_) ^ " not in subtype") else RT_m_16.R_override (timetable'1DE3_, RT_m_16.R_fromList ([(tramid'1DBF_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'1DE3_)) (tramid'1DBF_)), [(stopid'1DC7_, arrival'1DCF_, departure'1DD8_)]))])));
        
        fun isIn'2201_ (tramid'226A_, timetable'2272_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (38, 7)); if not((RT_s_19.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'2272_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:36:5: Argument of isIn" ^ RT_x_18.toString (tramid'226A_, timetable'2272_) ^ " not in subtype") else RT_m_16.R_mem (tramid'226A_, (timetable'2272_)));
        
        val planWithoutStopTime'CF1_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "12"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timetableWithoutStopTime'D55_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", planWithoutStopTime'CF1_)]);
        
        val planDuplicateDepartureHeadway'B61_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "14", RT_Int.fromLit "16")];
        
        val plan1'64D_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val plan2'6B1_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val timetableDuplicateDepartureHeadway'BC5_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (RT_Text.fromLit "tram3", planDuplicateDepartureHeadway'B61_)]);
        
        val timetableWF'715_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_)]);
        
        val stopCapacity'391_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2")]);
        
        val connectionMap'32D_ = RT_m_4.R_fromList ([((RT_Text.fromLit "B", RT_Text.fromLit "D"), (RT_Int.fromLit "2", RT_Int.fromLit "7", RT_Int.fromLit "2")), ((RT_Text.fromLit "A", RT_Text.fromLit "B"), (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1")), ((RT_Text.fromLit "B", RT_Text.fromLit "C"), (RT_Int.fromLit "2", RT_Int.fromLit "12", RT_Int.fromLit "3"))]);
        
        val net'4BD_ = (stopCapacity'391_, connectionMap'32D_);
        
        val planShortDepartureHeadway'9D1_ = [(RT_Text.fromLit "B", RT_Int.fromLit "0", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "30", RT_Int.fromLit "60")];
        
        val timetableInvalidDepartureHeadway'A35_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_), (RT_Text.fromLit "tram3", planShortDepartureHeadway'9D1_)]);
        
        val planInvalidDrivingTime'841_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "8", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val timetableInvalidDrivingTime'8A5_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", planInvalidDrivingTime'841_)]);
        
    end;
    
open testTimeTable;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (38, 7), (38, 33));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (26, 9), (34, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (118, 7), (122, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (21, 9), (21, 38));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (129, 9), (134, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (127, 12), (128, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (126, 7), (134, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (150, 13), (151, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (148, 13), (149, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (142, 33), (143, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (146, 11), (152, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (144, 11), (145, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (138, 7), (156, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (220, 7), (222, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (219, 41), (222, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (219, 7), (222, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (183, 7), (191, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (78, 7), (82, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (89, 9), (94, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (87, 12), (88, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (86, 7), (94, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (110, 13), (111, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (108, 13), (109, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (102, 33), (103, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (106, 11), (112, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (104, 11), (105, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (98, 7), (114, 23));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (57, 15), (62, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (55, 15), (56, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (53, 13), (63, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (47, 13), (52, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (42, 9), (65, 25));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (173, 53), (174, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (177, 9), (178, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (166, 9), (176, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (165, 7), (178, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (73, 9), (74, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (71, 9), (72, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (69, 7), (74, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (198, 7), (202, 8));
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
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'68B5_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'539D_) (planInvalidDrivingTime'841_, net'4BD_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'68B5_) (timetableInvalidDrivingTime'8A5_, net'4BD_)), false)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'5AA5_) (timetableInvalidDepartureHeadway'A35_, net'4BD_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'68B5_) (timetableInvalidDepartureHeadway'A35_, net'4BD_)), false)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'5AA5_) (timetableDuplicateDepartureHeadway'BC5_, net'4BD_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'68B5_) (timetableDuplicateDepartureHeadway'BC5_, net'4BD_)), false)));

(RSL.C_output "[s5_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'6081_) (timetableWithoutStopTime'D55_)), false)));

(RSL.C_output "[s5_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'68B5_) (timetableWithoutStopTime'D55_, net'4BD_)), false)));

RSL.print_error_count();
R_coverage.save_marked();
