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
        
        fun allStopsHaveConnection'8921_ (capacityMap'899C_, connectionMap'89A9_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'899C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'89A9_))))) then raise RSL.RSL_exception ("./NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'899C_, connectionMap'89A9_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'89F0_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'8ABD_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'89F0_, stopId2'8ABD_), (connectionMap'89A9_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'8ABD_, stopId'89F0_), (connectionMap'89A9_))))) ((capacityMap'899C_))))) ((capacityMap'899C_)))));
        
        fun noSelfConnection'83A9_ (capacityMap'841E_, connectionMap'842B_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'841E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'842B_))))) then raise RSL.RSL_exception ("./NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'841E_, connectionMap'842B_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'8479_, stopId2'8482_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'8479_, stopId2'8482_)) ((connectionMap'842B_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'8665_ (capacityMap'86F1_, connectionMap'86FE_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'86F1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'86FE_))))) then raise RSL.RSL_exception ("./NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'86F1_, connectionMap'86FE_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'8735_, stopId2'873E_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'8735_, (capacityMap'86F1_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'873E_, (capacityMap'86F1_)))) ((connectionMap'86FE_)))));
        
        fun isWellformed'8D09_ net'8D7A_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'8D7A_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'8D7A_ ^ ")" ^ " not in subtype") else (((noSelfConnection'83A9_) (net'8D7A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'8665_) (net'8D7A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); ((allStopsHaveConnection'8921_) (net'8D7A_)))));
        
        val empty'7021_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'8025_ (stopId1'8098_, stopId2'80A1_, (capacityMap'80AB_, connectionMap'80B8_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'80AB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'80B8_))))) then raise RSL.RSL_exception ("./NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'8098_, stopId2'80A1_, (capacityMap'80AB_, connectionMap'80B8_)) ^ " not in subtype") else let
            val (headway'80F4_, drivingTime'80FD_, capacity'810A_) = ((((RT_m_4.R_app(connectionMap'80B8_)) (stopId1'8098_, stopId2'80A1_))):RT_x_3.t)
        in
            drivingTime'80FD_
        end);
        
        fun insertStop'70E9_ (stopId'7158_, capacity'7160_, (capacityMap'716B_, connectionMap'7178_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'7160_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'716B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7178_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'7158_, capacity'7160_, (capacityMap'716B_, connectionMap'7178_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'716B_, RT_m_1.R_fromList ([(stopId'7158_, capacity'7160_)])), connectionMap'7178_));
        
        fun capacity'7D05_ (stopId1'7D72_, stopId2'7D7B_, (capacityMap'7D85_, connectionMap'7D92_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7D85_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7D92_))))) then raise RSL.RSL_exception ("./NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'7D72_, stopId2'7D7B_, (capacityMap'7D85_, connectionMap'7D92_)) ^ " not in subtype") else let
            val (headway'7DD4_, drivingTime'7DDD_, capacity'7DEA_) = ((((RT_m_4.R_app(connectionMap'7D92_)) (stopId1'7D72_, stopId2'7D7B_))):RT_x_3.t)
        in
            capacity'7DEA_
        end);
        
        fun addConnection'72DD_ (stopId1'734F_, stopId2'7358_, headway'7361_, capacity'736A_, drivingTime'7374_, (capacityMap'7382_, connectionMap'738F_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'7361_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'736A_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'7374_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7382_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'738F_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'734F_, stopId2'7358_, headway'7361_, capacity'736A_, drivingTime'7374_, (capacityMap'7382_, connectionMap'738F_)) ^ " not in subtype") else (capacityMap'7382_, RT_m_4.R_override (connectionMap'738F_, RT_m_4.R_fromList ([((stopId1'734F_, stopId2'7358_), (headway'7361_, drivingTime'7374_, capacity'736A_))]))));
        
        fun minHeadway'79E5_ (stopId1'7A54_, stopId2'7A5D_, (capacityMap'7A67_, connectionMap'7A74_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7A67_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7A74_))))) then raise RSL.RSL_exception ("./NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'7A54_, stopId2'7A5D_, (capacityMap'7A67_, connectionMap'7A74_)) ^ " not in subtype") else let
            val (headway'7AB4_, drivingTime'7ABD_, capacity'7ACA_) = ((((RT_m_4.R_app(connectionMap'7A74_)) (stopId1'7A54_, stopId2'7A5D_))):RT_x_3.t)
        in
            headway'7AB4_
        end);
        
        fun isIn'74D1_ (stopId'753A_, (capacityMap'7543_, connecitonMap'7550_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7543_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'7550_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'753A_, (capacityMap'7543_, connecitonMap'7550_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'753A_, (capacityMap'7543_)));
        
        fun areDirectlyConnected'77F1_ (stopId1'786A_, stopId2'7873_, (capacityMap'787D_, connectionMap'788A_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'787D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'788A_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'786A_, stopId2'7873_, (capacityMap'787D_, connectionMap'788A_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'786A_, stopId2'7873_), (connectionMap'788A_)));
        
        fun capacity'7661_ (stopId'76CF_, (capacityMap'76D7_, connectionMap'76E4_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'76D7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'76E4_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'76CF_, (capacityMap'76D7_, connectionMap'76E4_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'76D7_)) (stopId'76CF_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type Plan_ = RT_l_15.t;
        
        type ArrivalT_ = RT_Nat.t;
        
        type DepatureT_ = RT_Nat.t;
        
        fun tramStopsAtAllStopsItPasses'601D_ timetable'609D_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (197, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x117_'0_, x118_'0_, x119_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'609D_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:195:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'609D_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'60EC_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'6153_, arrTime'615B_, depTime'6164_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'615B_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'6164_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'6164_, arrTime'615B_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'609D_)) (tramid'60EC_)))))) ((timetable'609D_)))));
        
        fun getConnection'2DBB_ (stop1'2E2D_, stop2'2E34_, (capacityMap'2E3C_, connectionMap'2E49_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (68, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'2E3C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'2E49_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:66:7: Argument of getConnection" ^ RT_x_12.toString (stop1'2E2D_, stop2'2E34_, (capacityMap'2E3C_, connectionMap'2E49_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'2E2D_, stop2'2E34_), (connectionMap'2E49_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9)); ((RT_m_4.R_app(connectionMap'2E49_)) ((stop1'2E2D_, stop2'2E34_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (72, 9)); ((RT_m_4.R_app(connectionMap'2E49_)) ((stop2'2E34_, stop1'2E2D_)))));
        
        fun timeBetweenStopsIsDrivingTime'5339_ (plan'53BB_, (capacityMap'53C2_, connectionMap'53CF_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (164, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (plan'53BB_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'53C2_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x106_'0_, x107_'0_, x108_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'53CF_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:162:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_25.toString (plan'53BB_, (capacityMap'53C2_, connectionMap'53CF_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'53BB_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (165, 9)); let
            val (stopid1'54D0_, arrTime1'54D9_, depTime1'54E3_) = ((RT_l_15.R_hd(plan'53BB_)):RT_x_14.t); 
            val (stopid2'5534_, arrTime2'553D_, depTime2'5547_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'53BB_)))):RT_x_14.t)
        in
            let
                val (headway'5662_, drivingTime'566A_, capacity'5677_) = ((((getConnection'2DBB_) (stopid1'54D0_, stopid2'5534_, (capacityMap'53C2_, connectionMap'53CF_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'553D_, depTime1'54E3_), drivingTime'566A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (172, 53)); ((timeBetweenStopsIsDrivingTime'5339_) (RT_l_15.R_tl(plan'53BB_), (capacityMap'53C2_, connectionMap'53CF_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (176, 9)); true));
        
        fun nextStop'232F_ (planRow'239C_, plan'23A5_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (41, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'239C_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'23A5_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:39:7: Argument of nextStop" ^ RT_x_20.toString (planRow'239C_, plan'23A5_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'23A5_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:64:13: Precondition of nextStop" ^ RT_x_20.toString (planRow'239C_, plan'23A5_) ^ " not satisfied") else let
            val iPlanRow'245F_ = ((RT_l_15.R_hd(plan'23A5_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'245F_, planRow'239C_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (46, 13)); let
                val (sid'2658_, arrt'265D_, dept'2663_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'23A5_)))):RT_x_14.t)
            in
                sid'2658_
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (52, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'23A5_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (54, 15)); ((nextStop'232F_) (planRow'239C_, RT_l_15.R_tl(plan'23A5_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (56, 15)); let
                val (sid'2A42_, arrt'2A47_, dept'2A4D_) = ((iPlanRow'245F_):RT_x_14.t)
            in
                sid'2A42_
            end))
        end);
        
        fun findDepartureRowInPlan'390D_ (stopid1'3988_, stopid2'3991_, plan'399A_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (97, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'399A_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:95:5: Argument of findDepartureRowInPlan" ^ RT_x_24.toString (stopid1'3988_, stopid2'3991_, plan'399A_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'399A_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:113:11: Precondition of findDepartureRowInPlan" ^ RT_x_24.toString (stopid1'3988_, stopid2'3991_, plan'399A_) ^ " not satisfied") else let
            val (hStopId'3A3E_, hArrTime'3A47_, hDepTime'3A51_) = ((RT_l_15.R_hd(plan'399A_)):RT_x_14.t); 
            val nStopId'3AA1_ = ((((nextStop'232F_) (RT_l_15.R_hd(plan'399A_), plan'399A_))):RT_Text.t)
        in
            if (RT_Text.equ (hStopId'3A3E_, stopid1'3988_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (101, 33)); RT_Text.equ (nStopId'3AA1_, stopid2'3991_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (103, 11)); (hStopId'3A3E_, hArrTime'3A47_, hDepTime'3A51_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (105, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'399A_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (107, 13)); ((findDepartureRowInPlan'390D_) (stopid1'3988_, stopid2'3991_, RT_l_15.R_tl(plan'399A_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (109, 13)); (RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'345D_ (stopid1'34E3_, stopid2'34EC_, plans'34F5_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (85, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'34F5_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:83:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_23.toString (stopid1'34E3_, stopid2'34EC_, plans'34F5_) ^ " not in subtype") else if RT_s_18.equ (plans'34F5_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (88, 9)); let
            val plan'36BB_ = ((RT_s_18.R_hd(plans'34F5_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findDepartureRowInPlan'390D_) (stopid1'34E3_, stopid2'34EC_, plan'36BB_))]), ((buildAllDeparturesUsingConnection'345D_) (stopid1'34E3_, stopid2'34EC_, RT_s_18.R_diff (plans'34F5_, RT_s_18.R_fromList ([plan'36BB_])))))
        end));
        
        fun getAllDepaturesUsingConnection'313D_ (stopid1'31C0_, stopid2'31C9_, timetable'31D2_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (77, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'31D2_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:75:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_21.toString (stopid1'31C0_, stopid2'31C9_, timetable'31D2_) ^ " not in subtype") else let
            val allPlans'326D_ = ((RT_m_16.R_ran((timetable'31D2_))):RT_s_18.t)
        in
            ((buildAllDeparturesUsingConnection'345D_) (stopid1'31C0_, stopid2'31C9_, allPlans'326D_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'5A41_ (timetable'5AC9_, (capacityMap'5AD5_, connectionMap'5AE2_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (182, 7)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x109_'0_, x110_'0_, x111_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x110_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5AC9_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'5AD5_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x114_'0_, x115_'0_, x116_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x116_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5AE2_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:180:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_26.toString (timetable'5AC9_, (capacityMap'5AD5_, connectionMap'5AE2_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'5B11_, stopid2'5B1A_):RT_x_2.t) => let
            val (headway'5B76_, drivingTime'5B7E_, capacity'5B8B_) = ((((RT_m_4.R_app(connectionMap'5AE2_)) ((stopid1'5B11_, stopid2'5B1A_)))):RT_x_3.t)
        in
            ((RT_s_22.R_all (fn ((sid1'5C41_, arrt1'5C47_, dept1'5C4E_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt1'5C47_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'5C4E_, RT_Int.fromLit "0"))) orelse (((RT_s_22.R_all (fn ((sid2'5CA7_, arrt2'5CAD_, dept2'5CB4_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt2'5CAD_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'5CB4_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'5C4E_, dept2'5CB4_))), headway'5B76_)))) (RT_s_22.R_diff (((getAllDepaturesUsingConnection'313D_) (stopid1'5B11_, stopid2'5B1A_, timetable'5AC9_)), RT_s_22.R_fromList ([(sid1'5C41_, arrt1'5C47_, dept1'5C4E_)]))))))) (((getAllDepaturesUsingConnection'313D_) (stopid1'5B11_, stopid2'5B1A_, timetable'5AC9_)))))
        end) ((connectionMap'5AE2_)))));
        
        fun isWellformed'6851_ (t'68C2_, n'68C5_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (218, 7)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x120_'0_, x121_'0_, x122_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'68C2_)))) andalso (let
            val (x123_'0_, x124_'0_) = ((n'68C5_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x123_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x127_'0_, x128_'0_, x129_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x124_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:216:5: Argument of isWellformed" ^ RT_x_26.toString (t'68C2_, n'68C5_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'601D_) (t'68C2_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (218, 41)); (((timeBetweenDeparturesIsValidHeadway'5A41_) (t'68C2_, n'68C5_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 7)); ((RT_s_18.R_all (fn (plan'6984_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x130_'0_, x131_'0_, x132_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x131_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0"))
        end) (plan'6984_))) orelse (((timeBetweenStopsIsDrivingTime'5339_) (plan'6984_, n'68C5_)))) (RT_m_16.R_ran((t'68C2_))))))));
        
        fun findArrivalRowInPlan'48AD_ (stopid1'4926_, stopid2'492F_, plan'4938_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (137, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'4938_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:135:5: Argument of findArrivalRowInPlan" ^ RT_x_24.toString (stopid1'4926_, stopid2'492F_, plan'4938_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'4938_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:153:11: Precondition of findArrivalRowInPlan" ^ RT_x_24.toString (stopid1'4926_, stopid2'492F_, plan'4938_) ^ " not satisfied") else let
            val (hStopId'49DE_, hArrTime'49E7_, hDepTime'49F1_) = ((RT_l_15.R_hd(plan'4938_)):RT_x_14.t); 
            val (nStopId'4A42_, nArrTime'4A4B_, nDepTime'4A55_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'4938_)))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'49DE_, stopid1'4926_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (141, 33)); RT_Text.equ (nStopId'4A42_, stopid2'492F_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (143, 11)); (nStopId'4A42_, nArrTime'4A4B_, nDepTime'4A55_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (145, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'4938_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (147, 13)); ((findArrivalRowInPlan'48AD_) (stopid1'4926_, stopid2'492F_, RT_l_15.R_tl(plan'4938_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (149, 13)); (RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        val empty'19CF_ = let val z__'19E1_ = RT_m_16.R_fromList [] in if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x133_'0_, x134_'0_, x135_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x135_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'19E1_)))) then (RSL.add_load_err("./TIMETABLE.rsl:15:25: Value " ^ RT_m_16.toString(z__'19E1_) ^ " of empty not in subtype"); z__'19E1_) else z__'19E1_ end;
        
        fun buildAllArrivalsUsingConnection'43FD_ (stopid1'4481_, stopid2'448A_, plans'4493_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (125, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'4493_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:123:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_23.toString (stopid1'4481_, stopid2'448A_, plans'4493_) ^ " not in subtype") else if RT_s_18.equ (plans'4493_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (126, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (128, 9)); let
            val plan'465B_ = ((RT_s_18.R_hd(plans'4493_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findArrivalRowInPlan'48AD_) (stopid1'4481_, stopid2'448A_, plan'465B_))]), ((buildAllArrivalsUsingConnection'43FD_) (stopid1'4481_, stopid2'448A_, RT_s_18.R_diff (plans'4493_, RT_s_18.R_fromList ([plan'465B_])))))
        end));
        
        fun addTram'1AFB_ (tramid'1B67_, timetable'1B6F_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (20, 9)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'1B6F_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:18:7: Argument of addTram" ^ RT_x_17.toString (tramid'1B67_, timetable'1B6F_) ^ " not in subtype") else RT_m_16.R_override (timetable'1B6F_, RT_m_16.R_fromList ([(tramid'1B67_, ([]:RT_l_15.t))])));
        
        fun getAllArrivalsUsingConnection'40DD_ (stopid1'415F_, stopid2'4168_, timetable'4171_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (117, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4171_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:115:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_21.toString (stopid1'415F_, stopid2'4168_, timetable'4171_) ^ " not in subtype") else let
            val allPlans'420D_ = ((RT_m_16.R_ran((timetable'4171_))):RT_s_18.t)
        in
            ((buildAllArrivalsUsingConnection'43FD_) (stopid1'415F_, stopid2'4168_, allPlans'420D_))
        end);
        
        fun addStop'1CEF_ (tramid'1D5B_, stopid'1D63_, arrival'1D6B_, departure'1D74_, timetable'1D7F_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (25, 9)); if not((RT_Nat.R_ge (arrival'1D6B_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'1D74_, RT_Int.fromLit "0")) andalso ((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'1D7F_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:23:7: Argument of addStop" ^ RT_x_19.toString (tramid'1D5B_, stopid'1D63_, arrival'1D6B_, departure'1D74_, timetable'1D7F_) ^ " not in subtype") else RT_m_16.R_override (timetable'1D7F_, RT_m_16.R_fromList ([(tramid'1D5B_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'1D7F_)) (tramid'1D5B_)), [(stopid'1D63_, arrival'1D6B_, departure'1D74_)]))])));
        
        fun isIn'219D_ (tramid'2206_, timetable'220E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (37, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'220E_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:35:5: Argument of isIn" ^ RT_x_17.toString (tramid'2206_, timetable'220E_) ^ " not in subtype") else RT_m_16.R_mem (tramid'2206_, (timetable'220E_)));
        
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
(R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (37, 7), (37, 33));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (25, 9), (33, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (117, 7), (121, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (20, 9), (20, 38));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (128, 9), (133, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (126, 12), (127, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (125, 7), (133, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (149, 13), (150, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (147, 13), (148, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (141, 33), (142, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (145, 11), (151, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (143, 11), (144, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (137, 7), (155, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (219, 7), (221, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (218, 41), (221, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (218, 7), (221, 3));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (182, 7), (190, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (77, 7), (81, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (88, 9), (93, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (86, 12), (87, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (85, 7), (93, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (109, 13), (110, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (107, 13), (108, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (101, 33), (102, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (105, 11), (111, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (103, 11), (104, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (97, 7), (113, 23));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (56, 15), (61, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (54, 15), (55, 16));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (52, 13), (62, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (46, 13), (51, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (41, 9), (64, 25));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (172, 53), (173, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (176, 9), (177, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (165, 9), (175, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (164, 7), (177, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (72, 9), (73, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9), (71, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (68, 7), (73, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (197, 7), (201, 8));
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
(RSL.C_output "[s1_WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'6851_) (timetableWF'715_, net'4BD_)), true)));

(RSL.C_output "[s2_InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'5339_) (planInvalidDrivingTime'841_, net'4BD_)), false)));

(RSL.C_output "[s2_NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'6851_) (timetableInvalidDrivingTime'8A5_, net'4BD_)), false)));

(RSL.C_output "[s3_invalidHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'5A41_) (timetableInvalidDepartureHeadway'A35_, net'4BD_)), false)));

(RSL.C_output "[s3_NotWellFormedDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'6851_) (timetableInvalidDepartureHeadway'A35_, net'4BD_)), false)));

(RSL.C_output "[s4_duplicateHeadwayBetweenDeparture] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenDeparturesIsValidHeadway'5A41_) (timetableDuplicateDepartureHeadway'BC5_, net'4BD_)), false)));

(RSL.C_output "[s4_NotWellFormedDuplicateDepatureHeadway] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'6851_) (timetableDuplicateDepartureHeadway'BC5_, net'4BD_)), false)));

(RSL.C_output "[s5_tramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((tramStopsAtAllStopsItPasses'601D_) (timetableWithoutStopTime'D55_)), false)));

(RSL.C_output "[s5_NotWellFormedTramDoesNotStopAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'6851_) (timetableWithoutStopTime'D55_, net'4BD_)), false)));

RSL.print_error_count();
R_coverage.save_marked();
