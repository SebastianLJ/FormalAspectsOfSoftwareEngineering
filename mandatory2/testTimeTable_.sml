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
        
        fun allStopsHaveConnection'8151_ (capacityMap'81CC_, connectionMap'81D9_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'81CC_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'81D9_))))) then raise RSL.RSL_exception ("./NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'81CC_, connectionMap'81D9_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'8220_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'82ED_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'8220_, stopId2'82ED_), (connectionMap'81D9_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'82ED_, stopId'8220_), (connectionMap'81D9_))))) ((capacityMap'81CC_))))) ((capacityMap'81CC_)))));
        
        fun noSelfConnection'7BD9_ (capacityMap'7C4E_, connectionMap'7C5B_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7C4E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7C5B_))))) then raise RSL.RSL_exception ("./NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'7C4E_, connectionMap'7C5B_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'7CA9_, stopId2'7CB2_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'7CA9_, stopId2'7CB2_)) ((connectionMap'7C5B_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'7E95_ (capacityMap'7F21_, connectionMap'7F2E_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7F21_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7F2E_))))) then raise RSL.RSL_exception ("./NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'7F21_, connectionMap'7F2E_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'7F65_, stopId2'7F6E_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'7F65_, (capacityMap'7F21_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'7F6E_, (capacityMap'7F21_)))) ((connectionMap'7F2E_)))));
        
        fun isWellformed'8539_ net'85AA_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'85AA_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'85AA_ ^ ")" ^ " not in subtype") else (((noSelfConnection'7BD9_) (net'85AA_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'7E95_) (net'85AA_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); ((allStopsHaveConnection'8151_) (net'85AA_)))));
        
        val empty'6851_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'7855_ (stopId1'78C8_, stopId2'78D1_, (capacityMap'78DB_, connectionMap'78E8_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'78DB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'78E8_))))) then raise RSL.RSL_exception ("./NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'78C8_, stopId2'78D1_, (capacityMap'78DB_, connectionMap'78E8_)) ^ " not in subtype") else let
            val (headway'7924_, drivingTime'792D_, capacity'793A_) = ((((RT_m_4.R_app(connectionMap'78E8_)) (stopId1'78C8_, stopId2'78D1_))):RT_x_3.t)
        in
            drivingTime'792D_
        end);
        
        fun insertStop'6919_ (stopId'6988_, capacity'6990_, (capacityMap'699B_, connectionMap'69A8_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'6990_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'699B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'69A8_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'6988_, capacity'6990_, (capacityMap'699B_, connectionMap'69A8_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'699B_, RT_m_1.R_fromList ([(stopId'6988_, capacity'6990_)])), connectionMap'69A8_));
        
        fun capacity'7535_ (stopId1'75A2_, stopId2'75AB_, (capacityMap'75B5_, connectionMap'75C2_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'75B5_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'75C2_))))) then raise RSL.RSL_exception ("./NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'75A2_, stopId2'75AB_, (capacityMap'75B5_, connectionMap'75C2_)) ^ " not in subtype") else let
            val (headway'7604_, drivingTime'760D_, capacity'761A_) = ((((RT_m_4.R_app(connectionMap'75C2_)) (stopId1'75A2_, stopId2'75AB_))):RT_x_3.t)
        in
            capacity'761A_
        end);
        
        fun addConnection'6B0D_ (stopId1'6B7F_, stopId2'6B88_, headway'6B91_, capacity'6B9A_, drivingTime'6BA4_, (capacityMap'6BB2_, connectionMap'6BBF_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'6B91_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'6B9A_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'6BA4_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6BB2_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6BBF_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'6B7F_, stopId2'6B88_, headway'6B91_, capacity'6B9A_, drivingTime'6BA4_, (capacityMap'6BB2_, connectionMap'6BBF_)) ^ " not in subtype") else (capacityMap'6BB2_, RT_m_4.R_override (connectionMap'6BBF_, RT_m_4.R_fromList ([((stopId1'6B7F_, stopId2'6B88_), (headway'6B91_, drivingTime'6BA4_, capacity'6B9A_))]))));
        
        fun minHeadway'7215_ (stopId1'7284_, stopId2'728D_, (capacityMap'7297_, connectionMap'72A4_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7297_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'72A4_))))) then raise RSL.RSL_exception ("./NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'7284_, stopId2'728D_, (capacityMap'7297_, connectionMap'72A4_)) ^ " not in subtype") else let
            val (headway'72E4_, drivingTime'72ED_, capacity'72FA_) = ((((RT_m_4.R_app(connectionMap'72A4_)) (stopId1'7284_, stopId2'728D_))):RT_x_3.t)
        in
            headway'72E4_
        end);
        
        fun isIn'6D01_ (stopId'6D6A_, (capacityMap'6D73_, connecitonMap'6D80_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6D73_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'6D80_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'6D6A_, (capacityMap'6D73_, connecitonMap'6D80_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'6D6A_, (capacityMap'6D73_)));
        
        fun areDirectlyConnected'7021_ (stopId1'709A_, stopId2'70A3_, (capacityMap'70AD_, connectionMap'70BA_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'70AD_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'70BA_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'709A_, stopId2'70A3_, (capacityMap'70AD_, connectionMap'70BA_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'709A_, stopId2'70A3_), (connectionMap'70BA_)));
        
        fun capacity'6E91_ (stopId'6EFF_, (capacityMap'6F07_, connectionMap'6F14_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6F07_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6F14_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'6EFF_, (capacityMap'6F07_, connectionMap'6F14_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'6F07_)) (stopId'6EFF_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type Plan_ = RT_l_15.t;
        
        type ArrivalT_ = RT_Nat.t;
        
        type DepatureT_ = RT_Nat.t;
        
        fun tramStopsAtAllStopsItPasses'584D_ timetable'58CD_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (197, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x117_'0_, x118_'0_, x119_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'58CD_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:195:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'58CD_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'591C_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'5983_, arrTime'598B_, depTime'5994_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'598B_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'5994_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'5994_, arrTime'598B_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'58CD_)) (tramid'591C_)))))) ((timetable'58CD_)))));
        
        fun getConnection'25EB_ (stop1'265D_, stop2'2664_, (capacityMap'266C_, connectionMap'2679_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (68, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'266C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'2679_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:66:7: Argument of getConnection" ^ RT_x_12.toString (stop1'265D_, stop2'2664_, (capacityMap'266C_, connectionMap'2679_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'265D_, stop2'2664_), (connectionMap'2679_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9)); ((RT_m_4.R_app(connectionMap'2679_)) ((stop1'265D_, stop2'2664_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (72, 9)); ((RT_m_4.R_app(connectionMap'2679_)) ((stop2'2664_, stop1'265D_)))));
        
        fun timeBetweenStopsIsDrivingTime'4B69_ (plan'4BEB_, (capacityMap'4BF2_, connectionMap'4BFF_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (164, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (plan'4BEB_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4BF2_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x106_'0_, x107_'0_, x108_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4BFF_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:162:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_25.toString (plan'4BEB_, (capacityMap'4BF2_, connectionMap'4BFF_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'4BEB_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (165, 9)); let
            val (stopid1'4D00_, arrTime1'4D09_, depTime1'4D13_) = ((RT_l_15.R_hd(plan'4BEB_)):RT_x_14.t); 
            val (stopid2'4D64_, arrTime2'4D6D_, depTime2'4D77_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'4BEB_)))):RT_x_14.t)
        in
            let
                val (headway'4E92_, drivingTime'4E9A_, capacity'4EA7_) = ((((getConnection'25EB_) (stopid1'4D00_, stopid2'4D64_, (capacityMap'4BF2_, connectionMap'4BFF_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'4D6D_, depTime1'4D13_), drivingTime'4E9A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (172, 53)); ((timeBetweenStopsIsDrivingTime'4B69_) (RT_l_15.R_tl(plan'4BEB_), (capacityMap'4BF2_, connectionMap'4BFF_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (176, 9)); true));
        
        fun nextStop'1B5F_ (planRow'1BCC_, plan'1BD5_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (41, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'1BCC_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'1BD5_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:39:7: Argument of nextStop" ^ RT_x_20.toString (planRow'1BCC_, plan'1BD5_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'1BD5_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:64:13: Precondition of nextStop" ^ RT_x_20.toString (planRow'1BCC_, plan'1BD5_) ^ " not satisfied") else let
            val iPlanRow'1C8F_ = ((RT_l_15.R_hd(plan'1BD5_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'1C8F_, planRow'1BCC_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (46, 13)); let
                val (sid'1E88_, arrt'1E8D_, dept'1E93_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'1BD5_)))):RT_x_14.t)
            in
                sid'1E88_
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (52, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'1BD5_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (54, 15)); ((nextStop'1B5F_) (planRow'1BCC_, RT_l_15.R_tl(plan'1BD5_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (56, 15)); let
                val (sid'2272_, arrt'2277_, dept'227D_) = ((iPlanRow'1C8F_):RT_x_14.t)
            in
                sid'2272_
            end))
        end);
        
        fun findDepartureRowInPlan'313D_ (stopid1'31B8_, stopid2'31C1_, plan'31CA_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (97, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'31CA_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:95:5: Argument of findDepartureRowInPlan" ^ RT_x_24.toString (stopid1'31B8_, stopid2'31C1_, plan'31CA_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'31CA_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:113:11: Precondition of findDepartureRowInPlan" ^ RT_x_24.toString (stopid1'31B8_, stopid2'31C1_, plan'31CA_) ^ " not satisfied") else let
            val (hStopId'326E_, hArrTime'3277_, hDepTime'3281_) = ((RT_l_15.R_hd(plan'31CA_)):RT_x_14.t); 
            val nStopId'32D1_ = ((((nextStop'1B5F_) (RT_l_15.R_hd(plan'31CA_), plan'31CA_))):RT_Text.t)
        in
            if (RT_Text.equ (hStopId'326E_, stopid1'31B8_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (101, 33)); RT_Text.equ (nStopId'32D1_, stopid2'31C1_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (103, 11)); (hStopId'326E_, hArrTime'3277_, hDepTime'3281_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (105, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'31CA_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (107, 13)); ((findDepartureRowInPlan'313D_) (stopid1'31B8_, stopid2'31C1_, RT_l_15.R_tl(plan'31CA_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (109, 13)); (RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'2C8D_ (stopid1'2D13_, stopid2'2D1C_, plans'2D25_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (85, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'2D25_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:83:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_23.toString (stopid1'2D13_, stopid2'2D1C_, plans'2D25_) ^ " not in subtype") else if RT_s_18.equ (plans'2D25_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (88, 9)); let
            val plan'2EEB_ = ((RT_s_18.R_hd(plans'2D25_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findDepartureRowInPlan'313D_) (stopid1'2D13_, stopid2'2D1C_, plan'2EEB_))]), ((buildAllDeparturesUsingConnection'2C8D_) (stopid1'2D13_, stopid2'2D1C_, RT_s_18.R_diff (plans'2D25_, RT_s_18.R_fromList ([plan'2EEB_])))))
        end));
        
        fun getAllDepaturesUsingConnection'296D_ (stopid1'29F0_, stopid2'29F9_, timetable'2A02_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (77, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'2A02_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:75:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_21.toString (stopid1'29F0_, stopid2'29F9_, timetable'2A02_) ^ " not in subtype") else let
            val allPlans'2A9D_ = ((RT_m_16.R_ran((timetable'2A02_))):RT_s_18.t)
        in
            ((buildAllDeparturesUsingConnection'2C8D_) (stopid1'29F0_, stopid2'29F9_, allPlans'2A9D_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'5271_ (timetable'52F9_, (capacityMap'5305_, connectionMap'5312_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (182, 7)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x109_'0_, x110_'0_, x111_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x110_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'52F9_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'5305_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x114_'0_, x115_'0_, x116_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x116_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5312_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:180:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_26.toString (timetable'52F9_, (capacityMap'5305_, connectionMap'5312_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'5341_, stopid2'534A_):RT_x_2.t) => let
            val (headway'53A6_, drivingTime'53AE_, capacity'53BB_) = ((((RT_m_4.R_app(connectionMap'5312_)) ((stopid1'5341_, stopid2'534A_)))):RT_x_3.t)
        in
            ((RT_s_22.R_all (fn ((sid1'5471_, arrt1'5477_, dept1'547E_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt1'5477_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'547E_, RT_Int.fromLit "0"))) orelse (((RT_s_22.R_exists (fn ((sid2'54DA_, arrt2'54E0_, dept2'54E7_):RT_x_14.t) => ((RT_Nat.R_ge (arrt2'54E0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'54E7_, RT_Int.fromLit "0"))) andalso ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'547E_, dept2'54E7_))), headway'53A6_)))) (RT_s_22.R_diff (((getAllDepaturesUsingConnection'296D_) (stopid1'5341_, stopid2'534A_, timetable'52F9_)), RT_s_22.R_fromList ([(sid1'5471_, arrt1'5477_, dept1'547E_)]))))))) (((getAllDepaturesUsingConnection'296D_) (stopid1'5341_, stopid2'534A_, timetable'52F9_)))))
        end) ((connectionMap'5312_)))));
        
        fun isWellformed'6081_ (t'60F2_, n'60F5_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (218, 7)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x120_'0_, x121_'0_, x122_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'60F2_)))) andalso (let
            val (x123_'0_, x124_'0_) = ((n'60F5_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x123_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x127_'0_, x128_'0_, x129_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x124_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:216:5: Argument of isWellformed" ^ RT_x_26.toString (t'60F2_, n'60F5_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'584D_) (t'60F2_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (218, 41)); (((timeBetweenDeparturesIsValidHeadway'5271_) (t'60F2_, n'60F5_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (219, 7)); ((RT_s_18.R_all (fn (plan'61B4_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x130_'0_, x131_'0_, x132_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x131_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0"))
        end) (plan'61B4_))) orelse (((timeBetweenStopsIsDrivingTime'4B69_) (plan'61B4_, n'60F5_)))) (RT_m_16.R_ran((t'60F2_))))))));
        
        fun findArrivalRowInPlan'40DD_ (stopid1'4156_, stopid2'415F_, plan'4168_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (137, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'4168_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:135:5: Argument of findArrivalRowInPlan" ^ RT_x_24.toString (stopid1'4156_, stopid2'415F_, plan'4168_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'4168_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:153:11: Precondition of findArrivalRowInPlan" ^ RT_x_24.toString (stopid1'4156_, stopid2'415F_, plan'4168_) ^ " not satisfied") else let
            val (hStopId'420E_, hArrTime'4217_, hDepTime'4221_) = ((RT_l_15.R_hd(plan'4168_)):RT_x_14.t); 
            val (nStopId'4272_, nArrTime'427B_, nDepTime'4285_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'4168_)))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'420E_, stopid1'4156_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (141, 33)); RT_Text.equ (nStopId'4272_, stopid2'415F_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (143, 11)); (nStopId'4272_, nArrTime'427B_, nDepTime'4285_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (145, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'4168_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (147, 13)); ((findArrivalRowInPlan'40DD_) (stopid1'4156_, stopid2'415F_, RT_l_15.R_tl(plan'4168_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (149, 13)); (RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        val empty'11FF_ = let val z__'1211_ = RT_m_16.R_fromList [] in if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x133_'0_, x134_'0_, x135_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x135_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'1211_)))) then (RSL.add_load_err("./TIMETABLE.rsl:15:25: Value " ^ RT_m_16.toString(z__'1211_) ^ " of empty not in subtype"); z__'1211_) else z__'1211_ end;
        
        fun buildAllArrivalsUsingConnection'3C2D_ (stopid1'3CB1_, stopid2'3CBA_, plans'3CC3_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (125, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'3CC3_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:123:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_23.toString (stopid1'3CB1_, stopid2'3CBA_, plans'3CC3_) ^ " not in subtype") else if RT_s_18.equ (plans'3CC3_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (126, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (128, 9)); let
            val plan'3E8B_ = ((RT_s_18.R_hd(plans'3CC3_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findArrivalRowInPlan'40DD_) (stopid1'3CB1_, stopid2'3CBA_, plan'3E8B_))]), ((buildAllArrivalsUsingConnection'3C2D_) (stopid1'3CB1_, stopid2'3CBA_, RT_s_18.R_diff (plans'3CC3_, RT_s_18.R_fromList ([plan'3E8B_])))))
        end));
        
        fun addTram'132B_ (tramid'1397_, timetable'139F_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (20, 9)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'139F_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:18:7: Argument of addTram" ^ RT_x_17.toString (tramid'1397_, timetable'139F_) ^ " not in subtype") else RT_m_16.R_override (timetable'139F_, RT_m_16.R_fromList ([(tramid'1397_, ([]:RT_l_15.t))])));
        
        fun getAllArrivalsUsingConnection'390D_ (stopid1'398F_, stopid2'3998_, timetable'39A1_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (117, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'39A1_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:115:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_21.toString (stopid1'398F_, stopid2'3998_, timetable'39A1_) ^ " not in subtype") else let
            val allPlans'3A3D_ = ((RT_m_16.R_ran((timetable'39A1_))):RT_s_18.t)
        in
            ((buildAllArrivalsUsingConnection'3C2D_) (stopid1'398F_, stopid2'3998_, allPlans'3A3D_))
        end);
        
        fun addStop'151F_ (tramid'158B_, stopid'1593_, arrival'159B_, departure'15A4_, timetable'15AF_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (25, 9)); if not((RT_Nat.R_ge (arrival'159B_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'15A4_, RT_Int.fromLit "0")) andalso ((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'15AF_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:23:7: Argument of addStop" ^ RT_x_19.toString (tramid'158B_, stopid'1593_, arrival'159B_, departure'15A4_, timetable'15AF_) ^ " not in subtype") else RT_m_16.R_override (timetable'15AF_, RT_m_16.R_fromList ([(tramid'158B_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'15AF_)) (tramid'158B_)), [(stopid'1593_, arrival'159B_, departure'15A4_)]))])));
        
        fun isIn'19CD_ (tramid'1A36_, timetable'1A3E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (37, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'1A3E_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:35:5: Argument of isIn" ^ RT_x_17.toString (tramid'1A36_, timetable'1A3E_) ^ " not in subtype") else RT_m_16.R_mem (tramid'1A36_, (timetable'1A3E_)));
        
        val planInvalidDrivingTime'841_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "8", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan1'64D_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timetableInvalidDrivingTime'8A5_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", planInvalidDrivingTime'841_)]);
        
        val stopCapacity'391_ = RT_m_1.R_fromList ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2")]);
        
        val connectionMap'32D_ = RT_m_4.R_fromList ([((RT_Text.fromLit "B", RT_Text.fromLit "D"), (RT_Int.fromLit "2", RT_Int.fromLit "7", RT_Int.fromLit "2")), ((RT_Text.fromLit "A", RT_Text.fromLit "B"), (RT_Int.fromLit "1", RT_Int.fromLit "10", RT_Int.fromLit "1")), ((RT_Text.fromLit "B", RT_Text.fromLit "C"), (RT_Int.fromLit "2", RT_Int.fromLit "12", RT_Int.fromLit "3"))]);
        
        val net'4BD_ = (stopCapacity'391_, connectionMap'32D_);
        
        val plan2'6B1_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val timetable1'715_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'64D_), (RT_Text.fromLit "tram2", plan2'6B1_)]);
        
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
(RSL.C_output "[WellFormedTimetable] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'6081_) (timetable1'715_, net'4BD_)), true)));

(RSL.C_output "[InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'4B69_) (planInvalidDrivingTime'841_, net'4BD_)), false)));

(RSL.C_output "[NotWellFormedWithInvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'6081_) (timetableInvalidDrivingTime'8A5_, net'4BD_)), false)));

(RSL.C_output "[ValidTimeBetweenDeparture] " RT_Bool.toStringSafe (fn _ => ((timeBetweenDeparturesIsValidHeadway'5271_) (timetable1'715_, net'4BD_))));

(RSL.C_output "[tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => ((tramStopsAtAllStopsItPasses'584D_) (timetable1'715_))));

RSL.print_error_count();
R_coverage.save_marked();
