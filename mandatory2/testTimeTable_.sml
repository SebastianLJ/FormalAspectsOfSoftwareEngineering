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
    
structure RT_s_18 = RT_Set(structure Elem = RT_l_15);

structure RT_x_19 =
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
    
structure RT_x_20 =
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
    
structure RT_x_21 =
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
    
structure RT_s_22 = RT_Set(structure Elem = RT_x_14);

structure RT_x_23 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_s_18.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_s_18.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_s_18.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_18.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_24 =
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
    
structure RT_x_25 =
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
    
structure RT_x_26 =
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
        
        fun allStopsHaveConnection'7D05_ (capacityMap'7D80_, connectionMap'7D8D_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7D80_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7D8D_))))) then raise RSL.RSL_exception ("./NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'7D80_, connectionMap'7D8D_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'7DD4_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'7EA1_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'7DD4_, stopId2'7EA1_), (connectionMap'7D8D_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'7EA1_, stopId'7DD4_), (connectionMap'7D8D_))))) ((capacityMap'7D80_))))) ((capacityMap'7D80_)))));
        
        fun noSelfConnection'778D_ (capacityMap'7802_, connectionMap'780F_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7802_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'780F_))))) then raise RSL.RSL_exception ("./NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'7802_, connectionMap'780F_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'785D_, stopId2'7866_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'785D_, stopId2'7866_)) ((connectionMap'780F_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'7A49_ (capacityMap'7AD5_, connectionMap'7AE2_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7AD5_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7AE2_))))) then raise RSL.RSL_exception ("./NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'7AD5_, connectionMap'7AE2_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'7B19_, stopId2'7B22_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'7B19_, (capacityMap'7AD5_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'7B22_, (capacityMap'7AD5_)))) ((connectionMap'7AE2_)))));
        
        fun isWellformed'80ED_ net'815E_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'815E_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'815E_ ^ ")" ^ " not in subtype") else (((noSelfConnection'778D_) (net'815E_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'7A49_) (net'815E_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); ((allStopsHaveConnection'7D05_) (net'815E_)))));
        
        val empty'6405_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'7409_ (stopId1'747C_, stopId2'7485_, (capacityMap'748F_, connectionMap'749C_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'748F_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'749C_))))) then raise RSL.RSL_exception ("./NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'747C_, stopId2'7485_, (capacityMap'748F_, connectionMap'749C_)) ^ " not in subtype") else let
            val (headway'74D8_, drivingTime'74E1_, capacity'74EE_) = ((((RT_m_4.R_app(connectionMap'749C_)) (stopId1'747C_, stopId2'7485_))):RT_x_3.t)
        in
            drivingTime'74E1_
        end);
        
        fun insertStop'64CD_ (stopId'653C_, capacity'6544_, (capacityMap'654F_, connectionMap'655C_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'6544_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'654F_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'655C_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'653C_, capacity'6544_, (capacityMap'654F_, connectionMap'655C_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'654F_, RT_m_1.R_fromList ([(stopId'653C_, capacity'6544_)])), connectionMap'655C_));
        
        fun capacity'70E9_ (stopId1'7156_, stopId2'715F_, (capacityMap'7169_, connectionMap'7176_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7169_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7176_))))) then raise RSL.RSL_exception ("./NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'7156_, stopId2'715F_, (capacityMap'7169_, connectionMap'7176_)) ^ " not in subtype") else let
            val (headway'71B8_, drivingTime'71C1_, capacity'71CE_) = ((((RT_m_4.R_app(connectionMap'7176_)) (stopId1'7156_, stopId2'715F_))):RT_x_3.t)
        in
            capacity'71CE_
        end);
        
        fun addConnection'66C1_ (stopId1'6733_, stopId2'673C_, headway'6745_, capacity'674E_, drivingTime'6758_, (capacityMap'6766_, connectionMap'6773_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'6745_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'674E_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'6758_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6766_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6773_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'6733_, stopId2'673C_, headway'6745_, capacity'674E_, drivingTime'6758_, (capacityMap'6766_, connectionMap'6773_)) ^ " not in subtype") else (capacityMap'6766_, RT_m_4.R_override (connectionMap'6773_, RT_m_4.R_fromList ([((stopId1'6733_, stopId2'673C_), (headway'6745_, drivingTime'6758_, capacity'674E_))]))));
        
        fun minHeadway'6DC9_ (stopId1'6E38_, stopId2'6E41_, (capacityMap'6E4B_, connectionMap'6E58_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6E4B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6E58_))))) then raise RSL.RSL_exception ("./NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'6E38_, stopId2'6E41_, (capacityMap'6E4B_, connectionMap'6E58_)) ^ " not in subtype") else let
            val (headway'6E98_, drivingTime'6EA1_, capacity'6EAE_) = ((((RT_m_4.R_app(connectionMap'6E58_)) (stopId1'6E38_, stopId2'6E41_))):RT_x_3.t)
        in
            headway'6E98_
        end);
        
        fun isIn'68B5_ (stopId'691E_, (capacityMap'6927_, connecitonMap'6934_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6927_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'6934_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'691E_, (capacityMap'6927_, connecitonMap'6934_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'691E_, (capacityMap'6927_)));
        
        fun areDirectlyConnected'6BD5_ (stopId1'6C4E_, stopId2'6C57_, (capacityMap'6C61_, connectionMap'6C6E_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6C61_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6C6E_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'6C4E_, stopId2'6C57_, (capacityMap'6C61_, connectionMap'6C6E_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'6C4E_, stopId2'6C57_), (connectionMap'6C6E_)));
        
        fun capacity'6A45_ (stopId'6AB3_, (capacityMap'6ABB_, connectionMap'6AC8_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6ABB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6AC8_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'6AB3_, (capacityMap'6ABB_, connectionMap'6AC8_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'6ABB_)) (stopId'6AB3_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type Plan_ = RT_l_15.t;
        
        type ArrivalT_ = RT_Nat.t;
        
        type DepatureT_ = RT_Nat.t;
        
        fun isWellformed'5CFE_ (t'5D6F_, n'5D72_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (177, 28)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x111_'0_, x112_'0_, x113_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x113_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'5D6F_)))) andalso (let
            val (x114_'0_, x115_'0_) = ((n'5D72_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x114_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x118_'0_, x119_'0_, x120_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x120_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x115_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:176:6: Argument of isWellformed" ^ RT_x_26.toString (t'5D6F_, n'5D72_) ^ " not in subtype") else true);
        
        val empty'1E1B_ = let val z__'1E2D_ = RT_m_16.R_fromList [] in if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x121_'0_, x122_'0_, x123_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x123_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'1E2D_)))) then (RSL.add_load_err("./TIMETABLE.rsl:15:25: Value " ^ RT_m_16.toString(z__'1E2D_) ^ " of empty not in subtype"); z__'1E2D_) else z__'1E2D_ end;
        
        fun tramStopsAtAllStopsItPasses'552D_ timetable'55AD_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (158, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x108_'0_, x109_'0_, x110_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x110_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'55AD_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:156:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'55AD_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'55FC_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'5663_, arrTime'566B_, depTime'5674_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'566B_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'5674_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'5674_, arrTime'566B_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'55AD_)) (tramid'55FC_)))))) ((timetable'55AD_)))));
        
        fun addTram'1F47_ (tramid'1FB3_, timetable'1FBB_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (20, 9)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'1FBB_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:18:7: Argument of addTram" ^ RT_x_17.toString (tramid'1FB3_, timetable'1FBB_) ^ " not in subtype") else RT_m_16.R_override (timetable'1FBB_, RT_m_16.R_fromList ([(tramid'1FB3_, ([]:RT_l_15.t))])));
        
        fun nextStop'277B_ (planRow'27E8_, plan'27F1_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (41, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'27E8_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'27F1_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:39:7: Argument of nextStop" ^ RT_x_20.toString (planRow'27E8_, plan'27F1_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'27F1_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:65:13: Precondition of nextStop" ^ RT_x_20.toString (planRow'27E8_, plan'27F1_) ^ " not satisfied") else let
            val iPlanRow'28AB_ = ((RT_l_15.R_hd(plan'27F1_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'28AB_, planRow'27E8_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (46, 13)); let
                val (sid'2AA4_, arrt'2AA9_, dept'2AAF_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'27F1_)))):RT_x_14.t)
            in
                sid'2AA4_
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (53, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'27F1_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (55, 15)); ((nextStop'277B_) (planRow'27E8_, RT_l_15.R_tl(plan'27F1_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (57, 15)); let
                val (sid'2EF2_, arrt'2EF7_, dept'2EFD_) = ((iPlanRow'28AB_):RT_x_14.t)
            in
                sid'2EF2_
            end))
        end);
        
        fun findPlanRowInPlan'3DBD_ (stopid1'3E33_, stopid2'3E3C_, plan'3E45_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (98, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'3E45_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:96:5: Argument of findPlanRowInPlan" ^ RT_x_24.toString (stopid1'3E33_, stopid2'3E3C_, plan'3E45_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'3E45_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:114:11: Precondition of findPlanRowInPlan" ^ RT_x_24.toString (stopid1'3E33_, stopid2'3E3C_, plan'3E45_) ^ " not satisfied") else let
            val (hStopId'3EEE_, hArrTime'3EF7_, hDepTime'3F01_) = ((RT_l_15.R_hd(plan'3E45_)):RT_x_14.t); 
            val nStopId'3F51_ = ((((nextStop'277B_) (RT_l_15.R_hd(plan'3E45_), plan'3E45_))):RT_Text.t)
        in
            if (RT_Text.equ (hStopId'3EEE_, stopid1'3E33_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (102, 33)); RT_Text.equ (nStopId'3F51_, stopid2'3E3C_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (104, 11)); (hStopId'3EEE_, hArrTime'3EF7_, hDepTime'3F01_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (106, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'3E45_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (108, 13)); ((findPlanRowInPlan'3DBD_) (stopid1'3E33_, stopid2'3E3C_, RT_l_15.R_tl(plan'3E45_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (110, 13)); (RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllPlansUsingConnection'390D_ (stopid1'398E_, stopid2'3997_, plans'39A0_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'39A0_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:84:5: Argument of buildAllPlansUsingConnection" ^ RT_x_23.toString (stopid1'398E_, stopid2'3997_, plans'39A0_) ^ " not in subtype") else if RT_s_18.equ (plans'39A0_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (87, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (89, 9)); let
            val plan'3B6B_ = ((RT_s_18.R_hd(plans'39A0_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findPlanRowInPlan'3DBD_) (stopid1'398E_, stopid2'3997_, plan'3B6B_))]), ((buildAllPlansUsingConnection'390D_) (stopid1'398E_, stopid2'3997_, RT_s_18.R_diff (plans'39A0_, RT_s_18.R_fromList ([plan'3B6B_])))))
        end));
        
        fun getAllPlansUsingConnection'35ED_ (stopid1'366C_, stopid2'3675_, timetable'367E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (78, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'367E_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:76:5: Argument of getAllPlansUsingConnection" ^ RT_x_21.toString (stopid1'366C_, stopid2'3675_, timetable'367E_) ^ " not in subtype") else let
            val allPlans'371D_ = ((RT_m_16.R_ran((timetable'367E_))):RT_s_18.t)
        in
            ((buildAllPlansUsingConnection'390D_) (stopid1'366C_, stopid2'3675_, allPlans'371D_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'4F51_ (timetable'4FD9_, (capacityMap'4FE5_, connectionMap'4FF2_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (143, 7)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x100_'0_, x101_'0_, x102_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x101_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4FD9_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4FE5_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x105_'0_, x106_'0_, x107_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x105_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4FF2_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:141:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_26.toString (timetable'4FD9_, (capacityMap'4FE5_, connectionMap'4FF2_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'5021_, stopid2'502A_):RT_x_2.t) => let
            val (headway'5086_, drivingTime'508E_, capacity'509B_) = ((((RT_m_4.R_app(connectionMap'4FF2_)) ((stopid1'5021_, stopid2'502A_)))):RT_x_3.t)
        in
            ((RT_s_22.R_all (fn ((sid1'5151_, arrt1'5157_, dept1'515E_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt1'5157_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'515E_, RT_Int.fromLit "0"))) orelse (((RT_s_22.R_exists (fn ((sid2'51BA_, arrt2'51C0_, dept2'51C7_):RT_x_14.t) => ((RT_Nat.R_ge (arrt2'51C0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'51C7_, RT_Int.fromLit "0"))) andalso ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'515E_, dept2'51C7_))), headway'5086_)))) (RT_s_22.R_diff (((getAllPlansUsingConnection'35ED_) (stopid1'5021_, stopid2'502A_, timetable'4FD9_)), RT_s_22.R_fromList ([(sid1'5151_, arrt1'5157_, dept1'515E_)]))))))) (((getAllPlansUsingConnection'35ED_) (stopid1'5021_, stopid2'502A_, timetable'4FD9_)))))
        end) ((connectionMap'4FF2_)))));
        
        fun addStop'213B_ (tramid'21A7_, stopid'21AF_, arrival'21B7_, departure'21C0_, timetable'21CB_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (25, 9)); if not((RT_Nat.R_ge (arrival'21B7_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'21C0_, RT_Int.fromLit "0")) andalso ((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'21CB_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:23:7: Argument of addStop" ^ RT_x_19.toString (tramid'21A7_, stopid'21AF_, arrival'21B7_, departure'21C0_, timetable'21CB_) ^ " not in subtype") else RT_m_16.R_override (timetable'21CB_, RT_m_16.R_fromList ([(tramid'21A7_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'21CB_)) (tramid'21A7_)), [(stopid'21AF_, arrival'21B7_, departure'21C0_)]))])));
        
        fun getConnection'326B_ (stop1'32DD_, stop2'32E4_, (capacityMap'32EC_, connectionMap'32F9_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (69, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'32EC_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'32F9_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:67:7: Argument of getConnection" ^ RT_x_12.toString (stop1'32DD_, stop2'32E4_, (capacityMap'32EC_, connectionMap'32F9_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'32DD_, stop2'32E4_), (connectionMap'32F9_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (71, 9)); ((RT_m_4.R_app(connectionMap'32F9_)) ((stop1'32DD_, stop2'32E4_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (73, 9)); ((RT_m_4.R_app(connectionMap'32F9_)) ((stop2'32E4_, stop1'32DD_)))));
        
        fun isIn'25E9_ (tramid'2652_, timetable'265A_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (37, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'265A_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:35:5: Argument of isIn" ^ RT_x_17.toString (tramid'2652_, timetable'265A_) ^ " not in subtype") else RT_m_16.R_mem (tramid'2652_, (timetable'265A_)));
        
        fun timeBetweenStopsIsDrivingTime'4849_ (plan'48CB_, (capacityMap'48D2_, connectionMap'48DF_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (125, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (plan'48CB_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'48D2_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x97_'0_, x98_'0_, x99_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x98_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'48DF_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:123:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_25.toString (plan'48CB_, (capacityMap'48D2_, connectionMap'48DF_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'48CB_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (126, 9)); let
            val (stopid1'49E0_, arrTime1'49E9_, depTime1'49F3_) = ((RT_l_15.R_hd(plan'48CB_)):RT_x_14.t); 
            val (stopid2'4A44_, arrTime2'4A4D_, depTime2'4A57_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'48CB_)))):RT_x_14.t)
        in
            let
                val (headway'4B72_, drivingTime'4B7A_, capacity'4B87_) = ((((getConnection'326B_) (stopid1'49E0_, stopid2'4A44_, (capacityMap'48D2_, connectionMap'48DF_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'4A4D_, depTime1'49F3_), drivingTime'4B7A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (133, 53)); ((timeBetweenStopsIsDrivingTime'4849_) (RT_l_15.R_tl(plan'48CB_), (capacityMap'48D2_, connectionMap'48DF_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (137, 9)); true));
        
        val plan2'1589_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan1'1525_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timetable1'15ED_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'1525_), (RT_Text.fromLit "tram2", plan2'1589_)]);
        
        val CapacityD'909_ = RT_Int.fromLit "2";
        
        val StopA'3F5_ = RT_Text.fromLit "A";
        
        val StopD'8A5_ = RT_Text.fromLit "D";
        
        val CapacityA'459_ = RT_Int.fromLit "2";
        
        val CapacityC'779_ = RT_Int.fromLit "2";
        
        val StopB'585_ = RT_Text.fromLit "B";
        
        val StopC'715_ = RT_Text.fromLit "C";
        
        val CapacityB'5E9_ = RT_Int.fromLit "6";
        
        val stopCapacity'12CD_ = RT_m_1.R_fromList ([(StopA'3F5_, CapacityA'459_), (StopB'585_, CapacityB'5E9_), (StopC'715_, CapacityC'779_), (StopD'8A5_, CapacityD'909_)]);
        
        val HeadwayBD'10D9_ = RT_Int.fromLit "2";
        
        val DriveTimeAB'C29_ = RT_Int.fromLit "10";
        
        val CapacityBD'1075_ = RT_Int.fromLit "2";
        
        val CapacityAB'C8D_ = RT_Int.fromLit "1";
        
        val DriveTimeBD'1011_ = RT_Int.fromLit "7";
        
        val HeadwayAB'CF1_ = RT_Int.fromLit "1";
        
        val HeadwayBC'EE5_ = RT_Int.fromLit "2";
        
        val DriveTimeBC'E1D_ = RT_Int.fromLit "12";
        
        val CapacityBC'E81_ = RT_Int.fromLit "3";
        
        val connectionMap'1269_ = RT_m_4.R_fromList ([((StopB'585_, StopD'8A5_), (HeadwayBD'10D9_, DriveTimeBD'1011_, CapacityBD'1075_)), ((StopA'3F5_, StopB'585_), (HeadwayAB'CF1_, DriveTimeAB'C29_, CapacityAB'C8D_)), ((StopB'585_, StopC'715_), (HeadwayBC'EE5_, DriveTimeBC'E1D_, CapacityBC'E81_))]);
        
        val net'13F9_ = (stopCapacity'12CD_, connectionMap'1269_);
        
        val StopF'A35_ = RT_Text.fromLit "F";
        
        val CapacityF'A99_ = RT_Int.fromLit "2";
        
    end;
    
open testTimeTable;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (133, 53), (134, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (137, 9), (138, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (126, 9), (136, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (125, 7), (138, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (37, 7), (37, 33));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (73, 9), (74, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (71, 9), (72, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (69, 7), (74, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (25, 9), (33, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (143, 7), (151, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (78, 7), (82, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (89, 9), (94, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (87, 12), (88, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (86, 7), (94, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (110, 13), (111, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (108, 13), (109, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (102, 33), (103, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (106, 11), (112, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (104, 11), (105, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (98, 7), (116, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (57, 15), (62, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (55, 15), (56, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (53, 13), (63, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (46, 13), (52, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (41, 9), (65, 25));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (20, 9), (20, 38));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (158, 7), (162, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (177, 28), (179, 3));
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
(RSL.C_output "[ValidDrivingTime] " RT_Bool.toStringSafe (fn _ => ((timeBetweenStopsIsDrivingTime'4849_) (plan1'1525_, net'13F9_))));

(RSL.C_output "[ValidTimeBetweenDeparture] " RT_Bool.toStringSafe (fn _ => ((timeBetweenDeparturesIsValidHeadway'4F51_) (timetable1'15ED_, net'13F9_))));

(RSL.C_output "[tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => ((tramStopsAtAllStopsItPasses'552D_) (timetable1'15ED_))));

RSL.print_error_count();
R_coverage.save_marked();
