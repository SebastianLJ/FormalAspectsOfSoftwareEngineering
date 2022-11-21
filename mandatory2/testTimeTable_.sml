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
        
        fun allStopsHaveConnection'7E31_ (capacityMap'7EAC_, connectionMap'7EB9_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7EAC_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7EB9_))))) then raise RSL.RSL_exception ("./NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'7EAC_, connectionMap'7EB9_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'7F00_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'7FCD_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'7F00_, stopId2'7FCD_), (connectionMap'7EB9_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'7FCD_, stopId'7F00_), (connectionMap'7EB9_))))) ((capacityMap'7EAC_))))) ((capacityMap'7EAC_)))));
        
        fun noSelfConnection'78B9_ (capacityMap'792E_, connectionMap'793B_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'792E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'793B_))))) then raise RSL.RSL_exception ("./NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'792E_, connectionMap'793B_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'7989_, stopId2'7992_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'7989_, stopId2'7992_)) ((connectionMap'793B_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'7B75_ (capacityMap'7C01_, connectionMap'7C0E_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7C01_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7C0E_))))) then raise RSL.RSL_exception ("./NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'7C01_, connectionMap'7C0E_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'7C45_, stopId2'7C4E_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'7C45_, (capacityMap'7C01_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'7C4E_, (capacityMap'7C01_)))) ((connectionMap'7C0E_)))));
        
        fun isWellformed'8219_ net'828A_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'828A_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'828A_ ^ ")" ^ " not in subtype") else (((noSelfConnection'78B9_) (net'828A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'7B75_) (net'828A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); ((allStopsHaveConnection'7E31_) (net'828A_)))));
        
        val empty'6531_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'7535_ (stopId1'75A8_, stopId2'75B1_, (capacityMap'75BB_, connectionMap'75C8_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'75BB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'75C8_))))) then raise RSL.RSL_exception ("./NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'75A8_, stopId2'75B1_, (capacityMap'75BB_, connectionMap'75C8_)) ^ " not in subtype") else let
            val (headway'7604_, drivingTime'760D_, capacity'761A_) = ((((RT_m_4.R_app(connectionMap'75C8_)) (stopId1'75A8_, stopId2'75B1_))):RT_x_3.t)
        in
            drivingTime'760D_
        end);
        
        fun insertStop'65F9_ (stopId'6668_, capacity'6670_, (capacityMap'667B_, connectionMap'6688_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'6670_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'667B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6688_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'6668_, capacity'6670_, (capacityMap'667B_, connectionMap'6688_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'667B_, RT_m_1.R_fromList ([(stopId'6668_, capacity'6670_)])), connectionMap'6688_));
        
        fun capacity'7215_ (stopId1'7282_, stopId2'728B_, (capacityMap'7295_, connectionMap'72A2_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7295_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'72A2_))))) then raise RSL.RSL_exception ("./NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'7282_, stopId2'728B_, (capacityMap'7295_, connectionMap'72A2_)) ^ " not in subtype") else let
            val (headway'72E4_, drivingTime'72ED_, capacity'72FA_) = ((((RT_m_4.R_app(connectionMap'72A2_)) (stopId1'7282_, stopId2'728B_))):RT_x_3.t)
        in
            capacity'72FA_
        end);
        
        fun addConnection'67ED_ (stopId1'685F_, stopId2'6868_, headway'6871_, capacity'687A_, drivingTime'6884_, (capacityMap'6892_, connectionMap'689F_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'6871_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'687A_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'6884_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6892_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'689F_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'685F_, stopId2'6868_, headway'6871_, capacity'687A_, drivingTime'6884_, (capacityMap'6892_, connectionMap'689F_)) ^ " not in subtype") else (capacityMap'6892_, RT_m_4.R_override (connectionMap'689F_, RT_m_4.R_fromList ([((stopId1'685F_, stopId2'6868_), (headway'6871_, drivingTime'6884_, capacity'687A_))]))));
        
        fun minHeadway'6EF5_ (stopId1'6F64_, stopId2'6F6D_, (capacityMap'6F77_, connectionMap'6F84_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6F77_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6F84_))))) then raise RSL.RSL_exception ("./NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'6F64_, stopId2'6F6D_, (capacityMap'6F77_, connectionMap'6F84_)) ^ " not in subtype") else let
            val (headway'6FC4_, drivingTime'6FCD_, capacity'6FDA_) = ((((RT_m_4.R_app(connectionMap'6F84_)) (stopId1'6F64_, stopId2'6F6D_))):RT_x_3.t)
        in
            headway'6FC4_
        end);
        
        fun isIn'69E1_ (stopId'6A4A_, (capacityMap'6A53_, connecitonMap'6A60_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6A53_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'6A60_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'6A4A_, (capacityMap'6A53_, connecitonMap'6A60_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'6A4A_, (capacityMap'6A53_)));
        
        fun areDirectlyConnected'6D01_ (stopId1'6D7A_, stopId2'6D83_, (capacityMap'6D8D_, connectionMap'6D9A_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6D8D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6D9A_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'6D7A_, stopId2'6D83_, (capacityMap'6D8D_, connectionMap'6D9A_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'6D7A_, stopId2'6D83_), (connectionMap'6D9A_)));
        
        fun capacity'6B71_ (stopId'6BDF_, (capacityMap'6BE7_, connectionMap'6BF4_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6BE7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6BF4_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'6BDF_, (capacityMap'6BE7_, connectionMap'6BF4_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'6BE7_)) (stopId'6BDF_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type Plan_ = RT_l_15.t;
        
        type ArrivalT_ = RT_Nat.t;
        
        type DepatureT_ = RT_Nat.t;
        
        fun isWellformed'5E2A_ (t'5E9B_, n'5E9E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (179, 28)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x113_'0_, x114_'0_, x115_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'5E9B_)))) andalso (let
            val (x116_'0_, x117_'0_) = ((n'5E9E_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x116_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x120_'0_, x121_'0_, x122_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x120_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x117_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:178:6: Argument of isWellformed" ^ RT_x_26.toString (t'5E9B_, n'5E9E_) ^ " not in subtype") else true);
        
        val empty'1E7F_ = let val z__'1E91_ = RT_m_16.R_fromList [] in if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x123_'0_, x124_'0_, x125_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x125_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'1E91_)))) then (RSL.add_load_err("./TIMETABLE.rsl:15:25: Value " ^ RT_m_16.toString(z__'1E91_) ^ " of empty not in subtype"); z__'1E91_) else z__'1E91_ end;
        
        fun tramStopsAtAllStopsItPasses'54C9_ timetable'5549_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (156, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x110_'0_, x111_'0_, x112_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5549_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:154:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'5549_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'5598_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'55FF_, arrTime'5607_, depTime'5610_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'5607_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'5610_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'5610_, arrTime'5607_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'5549_)) (tramid'5598_)))))) ((timetable'5549_)))));
        
        fun addTram'1FAB_ (tramid'2017_, timetable'201F_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (20, 9)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'201F_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:18:7: Argument of addTram" ^ RT_x_17.toString (tramid'2017_, timetable'201F_) ^ " not in subtype") else RT_m_16.R_override (timetable'201F_, RT_m_16.R_fromList ([(tramid'2017_, ([]:RT_l_15.t))])));
        
        fun nextStop'27DF_ (planRow'284C_, plan'2855_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (41, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'284C_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'2855_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:39:7: Argument of nextStop" ^ RT_x_20.toString (planRow'284C_, plan'2855_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'2855_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:56:13: Precondition of nextStop" ^ RT_x_20.toString (planRow'284C_, plan'2855_) ^ " not satisfied") else let
            val iPlanRow'290F_ = ((RT_l_15.R_hd(plan'2855_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'290F_, planRow'284C_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (46, 13)); let
                val (sid'2B08_, arrt'2B0D_, dept'2B13_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'2855_)))):RT_x_14.t)
            in
                sid'2B08_
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (53, 13)); ((nextStop'27DF_) (planRow'284C_, RT_l_15.R_tl(plan'2855_))))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'4BCD_ (timetable'4C55_, (capacityMap'4C61_, connectionMap'4C6E_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (133, 7)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x102_'0_, x103_'0_, x104_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x104_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4C55_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4C61_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x107_'0_, x108_'0_, x109_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4C6E_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:131:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_26.toString (timetable'4C55_, (capacityMap'4C61_, connectionMap'4C6E_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'4C9D_, stopid2'4CA6_):RT_x_2.t) => let
            val (headway'4D02_, drivingTime'4D0A_, capacity'4D17_) = ((((RT_m_4.R_app(connectionMap'4C6E_)) ((stopid1'4C9D_, stopid2'4CA6_)))):RT_x_3.t)
        in
            ((RT_s_18.R_all (fn (plan'4DCC_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
                val (x126_'0_, x127_'0_, x128_'0_) = ((x_'0_):RT_x_14.t)
            in
                (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0"))
            end) (plan'4DCC_))) orelse (((RT_l_15.R_all (fn ((sid1'4E33_, arrt1'4E39_, dept1'4E40_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt1'4E39_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'4E40_, RT_Int.fromLit "0"))) orelse (not ((RT_Text.equ (sid1'4E33_, stopid1'4C9D_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (138, 13)); RT_Text.equ (((nextStop'27DF_) ((sid1'4E33_, arrt1'4E39_, dept1'4E40_), plan'4DCC_)), stopid2'4CA6_))) orelse (not (((RT_s_18.R_exists (fn (plan2'4F01_:RT_l_15.t) => ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
                val (x129_'0_, x130_'0_, x131_'0_) = ((x_'0_):RT_x_14.t)
            in
                (RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x131_'0_, RT_Int.fromLit "0"))
            end) (plan2'4F01_))) andalso (((RSL.C_not RT_l_15.equ) (plan2'4F01_, plan'4DCC_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (140, 15)); ((RT_l_15.R_all (fn ((sid2'4F61_, arrt2'4F67_, dept2'4F6E_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt2'4F67_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'4F6E_, RT_Int.fromLit "0"))) orelse (not ((RT_Text.equ (sid2'4F61_, stopid1'4C9D_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (141, 15)); RT_Text.equ (((nextStop'27DF_) ((sid2'4F61_, arrt2'4F67_, dept2'4F6E_), plan'4DCC_)), stopid2'4CA6_))) orelse (RT_Nat.R_lt (RT_Nat.R_abs((RT_Nat.R_sub (dept2'4F6E_, dept1'4E40_))), headway'4D02_)))) (plan2'4F01_)))))) (RT_m_16.R_ran((timetable'4C55_))))))))) (plan'4DCC_))))) (RT_m_16.R_ran((timetable'4C55_)))))
        end) ((connectionMap'4C6E_)))));
        
        fun getConnection'2F4B_ (stop1'2FBD_, stop2'2FC4_, (capacityMap'2FCC_, connectionMap'2FD9_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (60, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'2FCC_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'2FD9_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:58:7: Argument of getConnection" ^ RT_x_12.toString (stop1'2FBD_, stop2'2FC4_, (capacityMap'2FCC_, connectionMap'2FD9_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'2FBD_, stop2'2FC4_), (connectionMap'2FD9_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (62, 9)); ((RT_m_4.R_app(connectionMap'2FD9_)) ((stop2'2FC4_, stop1'2FBD_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (64, 9)); ((RT_m_4.R_app(connectionMap'2FD9_)) ((stop1'2FBD_, stop2'2FC4_)))));
        
        fun addStop'219F_ (tramid'220B_, stopid'2213_, arrival'221B_, departure'2224_, timetable'222F_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (25, 9)); if not((RT_Nat.R_ge (arrival'221B_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'2224_, RT_Int.fromLit "0")) andalso ((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'222F_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:23:7: Argument of addStop" ^ RT_x_19.toString (tramid'220B_, stopid'2213_, arrival'221B_, departure'2224_, timetable'222F_) ^ " not in subtype") else RT_m_16.R_override (timetable'222F_, RT_m_16.R_fromList ([(tramid'220B_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'222F_)) (tramid'220B_)), [(stopid'2213_, arrival'221B_, departure'2224_)]))])));
        
        fun findPlanRowInPlan'3A9D_ (stopid1'3B13_, stopid2'3B1C_, plan'3B25_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (89, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'3B25_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:87:5: Argument of findPlanRowInPlan" ^ RT_x_24.toString (stopid1'3B13_, stopid2'3B1C_, plan'3B25_) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'3B25_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (91, 9)); let
            val (hStopId'3C98_, hArrTime'3CA1_, hDepTime'3CAB_) = ((RT_l_15.R_hd(plan'3B25_)):RT_x_14.t); 
            val nStopId'3CFB_ = ((((nextStop'27DF_) (RT_l_15.R_hd(plan'3B25_), plan'3B25_))):RT_Text.t)
        in
            if (RT_Text.equ (hStopId'3C98_, stopid1'3B13_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (95, 35)); RT_Text.equ (nStopId'3CFB_, stopid2'3B1C_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (97, 13)); (hStopId'3C98_, hArrTime'3CA1_, hDepTime'3CAB_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (99, 13)); ((findPlanRowInPlan'3A9D_) (stopid1'3B13_, stopid2'3B1C_, RT_l_15.R_tl(plan'3B25_))))
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (103, 9)); (RT_Text.fromLit "0", RT_Int.fromLit "0", RT_Int.fromLit "0")));
        
        fun buildAllPlansUsingConnection'35ED_ (stopid1'366E_, stopid2'3677_, plans'3680_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (77, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'3680_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:75:5: Argument of buildAllPlansUsingConnection" ^ RT_x_23.toString (stopid1'366E_, stopid2'3677_, plans'3680_) ^ " not in subtype") else if RT_s_18.equ (plans'3680_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (78, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (80, 9)); let
            val plan'384B_ = ((RT_s_18.R_hd(plans'3680_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findPlanRowInPlan'3A9D_) (stopid1'366E_, stopid2'3677_, plan'384B_))]), ((buildAllPlansUsingConnection'35ED_) (stopid1'366E_, stopid2'3677_, RT_s_18.R_diff (plans'3680_, RT_s_18.R_fromList ([plan'384B_])))))
        end));
        
        fun getAllPlansUsingConnection'32CD_ (stopid1'334C_, stopid2'3355_, timetable'335E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (69, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'335E_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:67:5: Argument of getAllPlansUsingConnection" ^ RT_x_21.toString (stopid1'334C_, stopid2'3355_, timetable'335E_) ^ " not in subtype") else let
            val allPlans'33FD_ = ((RT_m_16.R_ran((timetable'335E_))):RT_s_18.t)
        in
            ((buildAllPlansUsingConnection'35ED_) (stopid1'334C_, stopid2'3355_, allPlans'33FD_))
        end);
        
        fun isIn'264D_ (tramid'26B6_, timetable'26BE_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (37, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'26BE_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:35:5: Argument of isIn" ^ RT_x_17.toString (tramid'26B6_, timetable'26BE_) ^ " not in subtype") else RT_m_16.R_mem (tramid'26B6_, (timetable'26BE_)));
        
        fun timeBetweenStopsIsDrivingTime'4529_ (plan'45AB_, net'45B1_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (116, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (plan'45AB_))) andalso (let
            val (x95_'0_, x96_'0_) = ((net'45B1_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x95_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x99_'0_, x100_'0_, x101_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x101_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x96_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:114:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_25.toString (plan'45AB_, net'45B1_) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'45AB_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (117, 9)); let
            val (stopid1'46C0_, arrTime1'46C9_, depTime1'46D3_) = ((RT_l_15.R_hd(plan'45AB_)):RT_x_14.t); 
            val (stopid2'4724_, arrTime2'472D_, depTime2'4737_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'45AB_)))):RT_x_14.t)
        in
            let
                val (headway'4852_, drivingTime'485A_, capacity'4867_) = ((((getConnection'2F4B_) (stopid1'46C0_, stopid2'4724_, net'45B1_))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (depTime1'46D3_, arrTime2'472D_), drivingTime'485A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (124, 53)); ((timeBetweenStopsIsDrivingTime'4529_) (RT_l_15.R_tl(plan'45AB_), net'45B1_)))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (128, 9)); true));
        
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
(R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (124, 53), (125, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (128, 9), (129, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (117, 9), (127, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (116, 7), (129, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (37, 7), (37, 33));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (69, 7), (73, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (80, 9), (85, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (78, 12), (79, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (77, 7), (85, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (95, 35), (96, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (99, 13), (100, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (97, 13), (98, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (103, 9), (104, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (91, 9), (102, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (89, 7), (107, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (25, 9), (33, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (64, 9), (65, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (62, 9), (63, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (60, 7), (65, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (141, 15), (141, 63));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (140, 15), (144, 17));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (138, 13), (138, 61));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (133, 7), (149, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (53, 13), (54, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (46, 13), (52, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (41, 9), (56, 25));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (20, 9), (20, 38));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (156, 7), (160, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (179, 28), (181, 3));
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
(RSL.C_output "[t01] " RT_s_22.toStringSafe (fn _ => ((getAllPlansUsingConnection'32CD_) (RT_Text.fromLit "A", RT_Text.fromLit "B", timetable1'15ED_))));

(RSL.C_output "[ValidDrivingTime] " RT_Bool.toStringSafe (fn _ => ((timeBetweenStopsIsDrivingTime'4529_) (plan1'1525_, net'13F9_))));

(RSL.C_output "[ValidTimeBetweenDeparture] " RT_Bool.toStringSafe (fn _ => ((timeBetweenDeparturesIsValidHeadway'4BCD_) (timetable1'15ED_, net'13F9_))));

(RSL.C_output "[tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => ((tramStopsAtAllStopsItPasses'54C9_) (timetable1'15ED_))));

RSL.print_error_count();
R_coverage.save_marked();
