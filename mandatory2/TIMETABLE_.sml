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
    
structure RT_x_27 =
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
    
structure RT_x_28 =
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
    
structure TIMETABLE =
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
        
        fun allStopsHaveConnection'8BDD_ (capacityMap'8C58_, connectionMap'8C65_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'8C58_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'8C65_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'8C58_, connectionMap'8C65_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'8CAC_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'8D79_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'8CAC_, stopId2'8D79_), (connectionMap'8C65_))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'8D79_, stopId'8CAC_), (connectionMap'8C65_))))) ((capacityMap'8C58_))))) ((capacityMap'8C58_)))));
        
        fun noSelfConnection'8665_ (capacityMap'86DA_, connectionMap'86E7_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'86DA_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'86E7_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'86DA_, connectionMap'86E7_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'8735_, stopId2'873E_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'8735_, stopId2'873E_)) ((connectionMap'86E7_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'8921_ (capacityMap'89AD_, connectionMap'89BA_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'89AD_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'89BA_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'89AD_, connectionMap'89BA_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'89F1_, stopId2'89FA_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'89F1_, (capacityMap'89AD_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'89FA_, (capacityMap'89AD_)))) ((connectionMap'89BA_)))));
        
        fun isWellformed'8FC5_ net'9036_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'9036_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'9036_ ^ ")" ^ " not in subtype") else (((noSelfConnection'8665_) (net'9036_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'8921_) (net'9036_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (92, 7)); ((allStopsHaveConnection'8BDD_) (net'9036_)))));
        
        val empty'72DD_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'82E1_ (stopId1'8354_, stopId2'835D_, (capacityMap'8367_, connectionMap'8374_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'8367_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'8374_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'8354_, stopId2'835D_, (capacityMap'8367_, connectionMap'8374_)) ^ " not in subtype") else let
            val (headway'83B0_, drivingTime'83B9_, capacity'83C6_) = ((((RT_m_4.R_app(connectionMap'8374_)) (stopId1'8354_, stopId2'835D_))):RT_x_3.t)
        in
            drivingTime'83B9_
        end);
        
        fun insertStop'73A5_ (stopId'7414_, capacity'741C_, (capacityMap'7427_, connectionMap'7434_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'741C_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7427_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7434_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'7414_, capacity'741C_, (capacityMap'7427_, connectionMap'7434_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'7427_, RT_m_1.R_fromList ([(stopId'7414_, capacity'741C_)])), connectionMap'7434_));
        
        fun capacity'7FC1_ (stopId1'802E_, stopId2'8037_, (capacityMap'8041_, connectionMap'804E_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'8041_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'804E_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'802E_, stopId2'8037_, (capacityMap'8041_, connectionMap'804E_)) ^ " not in subtype") else let
            val (headway'8090_, drivingTime'8099_, capacity'80A6_) = ((((RT_m_4.R_app(connectionMap'804E_)) (stopId1'802E_, stopId2'8037_))):RT_x_3.t)
        in
            capacity'80A6_
        end);
        
        fun addConnection'7599_ (stopId1'760B_, stopId2'7614_, headway'761D_, capacity'7626_, drivingTime'7630_, (capacityMap'763E_, connectionMap'764B_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'761D_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'7626_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'7630_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'763E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'764B_)))))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'760B_, stopId2'7614_, headway'761D_, capacity'7626_, drivingTime'7630_, (capacityMap'763E_, connectionMap'764B_)) ^ " not in subtype") else (capacityMap'763E_, RT_m_4.R_override (connectionMap'764B_, RT_m_4.R_fromList ([((stopId1'760B_, stopId2'7614_), (headway'761D_, drivingTime'7630_, capacity'7626_))]))));
        
        fun minHeadway'7CA1_ (stopId1'7D10_, stopId2'7D19_, (capacityMap'7D23_, connectionMap'7D30_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7D23_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7D30_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'7D10_, stopId2'7D19_, (capacityMap'7D23_, connectionMap'7D30_)) ^ " not in subtype") else let
            val (headway'7D70_, drivingTime'7D79_, capacity'7D86_) = ((((RT_m_4.R_app(connectionMap'7D30_)) (stopId1'7D10_, stopId2'7D19_))):RT_x_3.t)
        in
            headway'7D70_
        end);
        
        fun isIn'778D_ (stopId'77F6_, (capacityMap'77FF_, connecitonMap'780C_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'77FF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'780C_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'77F6_, (capacityMap'77FF_, connecitonMap'780C_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'77F6_, (capacityMap'77FF_)));
        
        fun areDirectlyConnected'7AAD_ (stopId1'7B26_, stopId2'7B2F_, (capacityMap'7B39_, connectionMap'7B46_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7B39_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7B46_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'7B26_, stopId2'7B2F_, (capacityMap'7B39_, connectionMap'7B46_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'7B26_, stopId2'7B2F_), (connectionMap'7B46_)));
        
        fun capacity'791D_ (stopId'798B_, (capacityMap'7993_, connectionMap'79A0_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7993_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'79A0_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'798B_, (capacityMap'7993_, connectionMap'79A0_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'7993_)) (stopId'798B_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type Plan_ = RT_l_15.t;
        
        type ArrivalT_ = RT_Nat.t;
        
        type DepatureT_ = RT_Nat.t;
        
        fun tramStopsAtAllStopsItPasses'4C31_ timetable'4CB1_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (197, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x117_'0_, x118_'0_, x119_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4CB1_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:195:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'4CB1_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'4D00_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'4D67_, arrTime'4D6F_, depTime'4D78_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'4D6F_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'4D78_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'4D78_, arrTime'4D6F_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'4CB1_)) (tramid'4D00_)))))) ((timetable'4CB1_)))));
        
        fun getConnection'19CF_ (stop1'1A41_, stop2'1A48_, (capacityMap'1A50_, connectionMap'1A5D_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (68, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'1A50_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'1A5D_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:66:7: Argument of getConnection" ^ RT_x_12.toString (stop1'1A41_, stop2'1A48_, (capacityMap'1A50_, connectionMap'1A5D_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'1A41_, stop2'1A48_), (connectionMap'1A5D_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (70, 9)); ((RT_m_4.R_app(connectionMap'1A5D_)) ((stop1'1A41_, stop2'1A48_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (72, 9)); ((RT_m_4.R_app(connectionMap'1A5D_)) ((stop2'1A48_, stop1'1A41_)))));
        
        fun timeBetweenStopsIsDrivingTime'3F4D_ (plan'3FCF_, (capacityMap'3FD6_, connectionMap'3FE3_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (164, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (plan'3FCF_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'3FD6_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x106_'0_, x107_'0_, x108_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'3FE3_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:162:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_25.toString (plan'3FCF_, (capacityMap'3FD6_, connectionMap'3FE3_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'3FCF_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (165, 9)); let
            val (stopid1'40E4_, arrTime1'40ED_, depTime1'40F7_) = ((RT_l_15.R_hd(plan'3FCF_)):RT_x_14.t); 
            val (stopid2'4148_, arrTime2'4151_, depTime2'415B_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'3FCF_)))):RT_x_14.t)
        in
            let
                val (headway'4276_, drivingTime'427E_, capacity'428B_) = ((((getConnection'19CF_) (stopid1'40E4_, stopid2'4148_, (capacityMap'3FD6_, connectionMap'3FE3_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'4151_, depTime1'40F7_), drivingTime'427E_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (172, 53)); ((timeBetweenStopsIsDrivingTime'3F4D_) (RT_l_15.R_tl(plan'3FCF_), (capacityMap'3FD6_, connectionMap'3FE3_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (176, 9)); true));
        
        fun nextStop'F43_ (planRow'FB0_, plan'FB9_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (41, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'FB0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'FB9_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:39:7: Argument of nextStop" ^ RT_x_20.toString (planRow'FB0_, plan'FB9_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'FB9_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:64:13: Precondition of nextStop" ^ RT_x_20.toString (planRow'FB0_, plan'FB9_) ^ " not satisfied") else let
            val iPlanRow'1073_ = ((RT_l_15.R_hd(plan'FB9_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'1073_, planRow'FB0_) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (46, 13)); let
                val (sid'126C_, arrt'1271_, dept'1277_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'FB9_)))):RT_x_14.t)
            in
                (sid'126C_, arrt'1271_, dept'1277_)
            end) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (52, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'FB9_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (54, 15)); ((nextStop'F43_) (planRow'FB0_, RT_l_15.R_tl(plan'FB9_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (56, 15)); let
                val (sid'1656_, arrt'165B_, dept'1661_) = ((iPlanRow'1073_):RT_x_14.t)
            in
                iPlanRow'1073_
            end))
        end);
        
        fun findDepartureRowInPlan'2521_ (stopid1'259C_, stopid2'25A5_, plan'25AE_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (97, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'25AE_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:95:5: Argument of findDepartureRowInPlan" ^ RT_x_24.toString (stopid1'259C_, stopid2'25A5_, plan'25AE_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'25AE_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:113:11: Precondition of findDepartureRowInPlan" ^ RT_x_24.toString (stopid1'259C_, stopid2'25A5_, plan'25AE_) ^ " not satisfied") else let
            val (hStopId'2652_, hArrTime'265B_, hDepTime'2665_) = ((RT_l_15.R_hd(plan'25AE_)):RT_x_14.t); 
            val (nStopId'26B6_, nArrTime'26BF_, nDepTime'26C9_) = ((((nextStop'F43_) (RT_l_15.R_hd(plan'25AE_), plan'25AE_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'2652_, stopid1'259C_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (101, 33)); RT_Text.equ (nStopId'26B6_, stopid2'25A5_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (103, 11)); (hStopId'2652_, hArrTime'265B_, hDepTime'2665_)) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (105, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'25AE_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (107, 13)); ((findDepartureRowInPlan'2521_) (stopid1'259C_, stopid2'25A5_, RT_l_15.R_tl(plan'25AE_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (109, 13)); (RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'2071_ (stopid1'20F7_, stopid2'2100_, plans'2109_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (85, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'2109_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:83:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_23.toString (stopid1'20F7_, stopid2'2100_, plans'2109_) ^ " not in subtype") else if RT_s_18.equ (plans'2109_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (86, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (88, 9)); let
            val plan'22CF_ = ((RT_s_18.R_hd(plans'2109_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findDepartureRowInPlan'2521_) (stopid1'20F7_, stopid2'2100_, plan'22CF_))]), ((buildAllDeparturesUsingConnection'2071_) (stopid1'20F7_, stopid2'2100_, RT_s_18.R_diff (plans'2109_, RT_s_18.R_fromList ([plan'22CF_])))))
        end));
        
        fun getAllDepaturesUsingConnection'1D51_ (stopid1'1DD4_, stopid2'1DDD_, timetable'1DE6_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (77, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'1DE6_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:75:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_21.toString (stopid1'1DD4_, stopid2'1DDD_, timetable'1DE6_) ^ " not in subtype") else let
            val allPlans'1E81_ = ((RT_m_16.R_ran((timetable'1DE6_))):RT_s_18.t)
        in
            ((buildAllDeparturesUsingConnection'2071_) (stopid1'1DD4_, stopid2'1DDD_, allPlans'1E81_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'4655_ (timetable'46DD_, (capacityMap'46E9_, connectionMap'46F6_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (182, 7)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x109_'0_, x110_'0_, x111_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x110_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'46DD_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'46E9_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x114_'0_, x115_'0_, x116_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x116_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'46F6_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:180:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_26.toString (timetable'46DD_, (capacityMap'46E9_, connectionMap'46F6_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'4725_, stopid2'472E_):RT_x_2.t) => let
            val (headway'478A_, drivingTime'4792_, capacity'479F_) = ((((RT_m_4.R_app(connectionMap'46F6_)) ((stopid1'4725_, stopid2'472E_)))):RT_x_3.t)
        in
            ((RT_s_22.R_all (fn ((sid1'4855_, arrt1'485B_, dept1'4862_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt1'485B_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'4862_, RT_Int.fromLit "0"))) orelse (((RT_s_22.R_all (fn ((sid2'48BB_, arrt2'48C1_, dept2'48C8_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt2'48C1_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'48C8_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'4862_, dept2'48C8_))), headway'478A_)))) (RT_s_22.R_diff (((getAllDepaturesUsingConnection'1D51_) (stopid1'4725_, stopid2'472E_, timetable'46DD_)), RT_s_22.R_fromList ([(sid1'4855_, arrt1'485B_, dept1'4862_)]))))))) (((getAllDepaturesUsingConnection'1D51_) (stopid1'4725_, stopid2'472E_, timetable'46DD_)))))
        end) ((connectionMap'46F6_)))));
        
        fun isWellformed'6AAA_ (t'6B1B_, n'6B1E_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (275, 8)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x126_'0_, x127_'0_, x128_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'6B1B_)))) andalso (let
            val (x129_'0_, x130_'0_) = ((n'6B1E_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x129_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x133_'0_, x134_'0_, x135_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x133_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x135_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x130_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:273:6: Argument of isWellformed" ^ RT_x_26.toString (t'6B1B_, n'6B1E_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'4C31_) (t'6B1B_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (275, 42)); (((timeBetweenDeparturesIsValidHeadway'4655_) (t'6B1B_, n'6B1E_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (276, 8)); ((RT_s_18.R_all (fn (plan'6BDD_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x136_'0_, x137_'0_, x138_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x137_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x138_'0_, RT_Int.fromLit "0"))
        end) (plan'6BDD_))) orelse (((timeBetweenStopsIsDrivingTime'3F4D_) (plan'6BDD_, n'6B1E_)))) (RT_m_16.R_ran((t'6B1B_))))))));
        
        fun findArrivalRowInPlan'34C1_ (stopid1'353A_, stopid2'3543_, plan'354C_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (137, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'354C_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:135:5: Argument of findArrivalRowInPlan" ^ RT_x_24.toString (stopid1'353A_, stopid2'3543_, plan'354C_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'354C_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:153:11: Precondition of findArrivalRowInPlan" ^ RT_x_24.toString (stopid1'353A_, stopid2'3543_, plan'354C_) ^ " not satisfied") else let
            val (hStopId'35F2_, hArrTime'35FB_, hDepTime'3605_) = ((RT_l_15.R_hd(plan'354C_)):RT_x_14.t); 
            val (nStopId'3656_, nArrTime'365F_, nDepTime'3669_) = ((((nextStop'F43_) (RT_l_15.R_hd(plan'354C_), plan'354C_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'35F2_, stopid1'353A_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (141, 33)); RT_Text.equ (nStopId'3656_, stopid2'3543_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (143, 11)); (nStopId'3656_, nArrTime'365F_, nDepTime'3669_)) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (145, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'354C_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (147, 13)); ((findArrivalRowInPlan'34C1_) (stopid1'353A_, stopid2'3543_, RT_l_15.R_tl(plan'354C_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (149, 13)); (RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildTimesForTramOnTrack'63A4_ (stopid1'6422_, stopid2'642B_, plan'6434_, tramid'643A_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (257, 11)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x123_'0_, x124_'0_, x125_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x125_'0_, RT_Int.fromLit "0"))
        end) (plan'6434_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:255:8: Argument of buildTimesForTramOnTrack" ^ RT_x_28.toString (stopid1'6422_, stopid2'642B_, plan'6434_, tramid'643A_) ^ " not in subtype") else if RT_l_15.equ (plan'6434_, ([]:RT_l_15.t)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (258, 16)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (260, 13)); let
            val (sid'6604_, arrt'6609_, dept'660F_) = ((RT_l_15.R_hd(plan'6434_)):RT_x_14.t); 
            val (sid2'6668_, arrt2'666E_, dept2'6675_) = ((((nextStop'F43_) ((sid'6604_, arrt'6609_, dept'660F_), plan'6434_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'6604_, stopid1'6422_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (264, 35)); RT_Text.equ (sid2'6668_, stopid2'642B_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (265, 20)); RT_s_22.R_union (RT_s_22.R_fromList ([(tramid'643A_, dept'660F_, arrt2'666E_)]), ((buildTimesForTramOnTrack'63A4_) (stopid1'6422_, stopid2'642B_, RT_l_15.R_tl(plan'6434_), tramid'643A_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (266, 20)); ((buildTimesForTramOnTrack'63A4_) (stopid1'6422_, stopid2'642B_, RT_l_15.R_tl(plan'6434_), tramid'643A_)))
        end));
        
        fun buildAllTimesForTrack'5E2B_ (stopid1'5EA5_, stopid2'5EAE_, trams'5EB7_, timetable'5EBE_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (243, 9)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x120_'0_, x121_'0_, x122_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5EBE_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:241:7: Argument of buildAllTimesForTrack" ^ RT_x_27.toString (stopid1'5EA5_, stopid2'5EAE_, trams'5EB7_, timetable'5EBE_) ^ " not in subtype") else if RT_s_11.equ (trams'5EB7_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (244, 14)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (246, 11)); let
            val tramid'6089_ = ((RT_s_11.R_hd(trams'5EB7_)):RT_Text.t)
        in
            RT_s_22.R_union (((buildTimesForTramOnTrack'63A4_) (stopid1'5EA5_, stopid2'5EAE_, ((RT_m_16.R_app(timetable'5EBE_)) (tramid'6089_)), tramid'6089_)), ((buildAllTimesForTrack'5E2B_) (stopid1'5EA5_, stopid2'5EAE_, RT_s_11.R_diff (trams'5EB7_, RT_s_11.R_fromList ([tramid'6089_])), timetable'5EBE_)))
        end));
        
        val empty'5E3_ = let val z__'5F5_ = RT_m_16.R_fromList [] in if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x139_'0_, x140_'0_, x141_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x140_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'5F5_)))) then (RSL.add_load_err("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:15:25: Value " ^ RT_m_16.toString(z__'5F5_) ^ " of empty not in subtype"); z__'5F5_) else z__'5F5_ end;
        
        fun buildAllArrivalsUsingConnection'3011_ (stopid1'3095_, stopid2'309E_, plans'30A7_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (125, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'30A7_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:123:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_23.toString (stopid1'3095_, stopid2'309E_, plans'30A7_) ^ " not in subtype") else if RT_s_18.equ (plans'30A7_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (126, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (128, 9)); let
            val plan'326F_ = ((RT_s_18.R_hd(plans'30A7_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findArrivalRowInPlan'34C1_) (stopid1'3095_, stopid2'309E_, plan'326F_))]), ((buildAllArrivalsUsingConnection'3011_) (stopid1'3095_, stopid2'309E_, RT_s_18.R_diff (plans'30A7_, RT_s_18.R_fromList ([plan'326F_])))))
        end));
        
        fun addTram'70F_ (tramid'77B_, timetable'783_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (20, 9)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'783_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:18:7: Argument of addTram" ^ RT_x_17.toString (tramid'77B_, timetable'783_) ^ " not in subtype") else RT_m_16.R_override (timetable'783_, RT_m_16.R_fromList ([(tramid'77B_, ([]:RT_l_15.t))])));
        
        fun getAllArrivalsUsingConnection'2CF1_ (stopid1'2D73_, stopid2'2D7C_, timetable'2D85_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (117, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'2D85_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:115:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_21.toString (stopid1'2D73_, stopid2'2D7C_, timetable'2D85_) ^ " not in subtype") else let
            val allPlans'2E21_ = ((RT_m_16.R_ran((timetable'2D85_))):RT_s_18.t)
        in
            ((buildAllArrivalsUsingConnection'3011_) (stopid1'2D73_, stopid2'2D7C_, allPlans'2E21_))
        end);
        
        fun addStop'903_ (tramid'96F_, stopid'977_, arrival'97F_, departure'988_, timetable'993_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (25, 9)); if not((RT_Nat.R_ge (arrival'97F_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'988_, RT_Int.fromLit "0")) andalso ((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'993_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:23:7: Argument of addStop" ^ RT_x_19.toString (tramid'96F_, stopid'977_, arrival'97F_, departure'988_, timetable'993_) ^ " not in subtype") else RT_m_16.R_override (timetable'993_, RT_m_16.R_fromList ([(tramid'96F_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'993_)) (tramid'96F_)), [(stopid'977_, arrival'97F_, departure'988_)]))])));
        
        fun isIn'DB1_ (tramid'E1A_, timetable'E22_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (37, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'E22_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:35:5: Argument of isIn" ^ RT_x_17.toString (tramid'E1A_, timetable'E22_) ^ " not in subtype") else RT_m_16.R_mem (tramid'E1A_, (timetable'E22_)));
        
    end;
    
open TIMETABLE;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (37, 7), (37, 33));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (25, 9), (33, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (117, 7), (121, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (20, 9), (20, 38));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (128, 9), (133, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (126, 12), (127, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (125, 7), (133, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (246, 11), (251, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (244, 14), (245, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (243, 9), (251, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (264, 35), (265, 18));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (266, 20), (267, 15));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (265, 20), (266, 18));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (260, 13), (269, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (258, 16), (259, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (257, 11), (269, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (149, 13), (150, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (147, 13), (148, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (141, 33), (142, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (145, 11), (151, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (143, 11), (144, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (137, 7), (155, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (276, 8), (279, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (275, 42), (279, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (275, 8), (279, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (182, 7), (190, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (77, 7), (81, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (88, 9), (93, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (86, 12), (87, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (85, 7), (93, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (109, 13), (110, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (107, 13), (108, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (101, 33), (102, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (105, 11), (111, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (103, 11), (104, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (97, 7), (113, 23));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (56, 15), (61, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (54, 15), (55, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (52, 13), (62, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (46, 13), (51, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (41, 9), (64, 25));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (172, 53), (173, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (176, 9), (177, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (165, 9), (175, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (164, 7), (177, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (72, 9), (73, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (70, 9), (71, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (68, 7), (73, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (197, 7), (201, 8));
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
RSL.print_error_count();
R_coverage.save_marked();
