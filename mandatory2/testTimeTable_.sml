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
        
        fun allStopsHaveConnection'859D_ (capacityMap'8618_, connectionMap'8625_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'8618_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'8625_))))) then raise RSL.RSL_exception ("./NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'8618_, connectionMap'8625_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'866C_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'8739_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'866C_, stopId2'8739_), (connectionMap'8625_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'8739_, stopId'866C_), (connectionMap'8625_))))) ((capacityMap'8618_))))) ((capacityMap'8618_)))));
        
        fun noSelfConnection'8025_ (capacityMap'809A_, connectionMap'80A7_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'809A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'80A7_))))) then raise RSL.RSL_exception ("./NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'809A_, connectionMap'80A7_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'80F5_, stopId2'80FE_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'80F5_, stopId2'80FE_)) ((connectionMap'80A7_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'82E1_ (capacityMap'836D_, connectionMap'837A_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'836D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'837A_))))) then raise RSL.RSL_exception ("./NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'836D_, connectionMap'837A_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'83B1_, stopId2'83BA_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'83B1_, (capacityMap'836D_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'83BA_, (capacityMap'836D_)))) ((connectionMap'837A_)))));
        
        fun isWellformed'8985_ net'89F6_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'89F6_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'89F6_ ^ ")" ^ " not in subtype") else (((noSelfConnection'8025_) (net'89F6_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'82E1_) (net'89F6_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); ((allStopsHaveConnection'859D_) (net'89F6_)))));
        
        val empty'6C9D_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'7CA1_ (stopId1'7D14_, stopId2'7D1D_, (capacityMap'7D27_, connectionMap'7D34_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7D27_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7D34_))))) then raise RSL.RSL_exception ("./NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'7D14_, stopId2'7D1D_, (capacityMap'7D27_, connectionMap'7D34_)) ^ " not in subtype") else let
            val (headway'7D70_, drivingTime'7D79_, capacity'7D86_) = ((((RT_m_4.R_app(connectionMap'7D34_)) (stopId1'7D14_, stopId2'7D1D_))):RT_x_3.t)
        in
            drivingTime'7D79_
        end);
        
        fun insertStop'6D65_ (stopId'6DD4_, capacity'6DDC_, (capacityMap'6DE7_, connectionMap'6DF4_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'6DDC_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6DE7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6DF4_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'6DD4_, capacity'6DDC_, (capacityMap'6DE7_, connectionMap'6DF4_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'6DE7_, RT_m_1.R_fromList ([(stopId'6DD4_, capacity'6DDC_)])), connectionMap'6DF4_));
        
        fun capacity'7981_ (stopId1'79EE_, stopId2'79F7_, (capacityMap'7A01_, connectionMap'7A0E_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7A01_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7A0E_))))) then raise RSL.RSL_exception ("./NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'79EE_, stopId2'79F7_, (capacityMap'7A01_, connectionMap'7A0E_)) ^ " not in subtype") else let
            val (headway'7A50_, drivingTime'7A59_, capacity'7A66_) = ((((RT_m_4.R_app(connectionMap'7A0E_)) (stopId1'79EE_, stopId2'79F7_))):RT_x_3.t)
        in
            capacity'7A66_
        end);
        
        fun addConnection'6F59_ (stopId1'6FCB_, stopId2'6FD4_, headway'6FDD_, capacity'6FE6_, drivingTime'6FF0_, (capacityMap'6FFE_, connectionMap'700B_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'6FDD_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'6FE6_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'6FF0_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6FFE_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'700B_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'6FCB_, stopId2'6FD4_, headway'6FDD_, capacity'6FE6_, drivingTime'6FF0_, (capacityMap'6FFE_, connectionMap'700B_)) ^ " not in subtype") else (capacityMap'6FFE_, RT_m_4.R_override (connectionMap'700B_, RT_m_4.R_fromList ([((stopId1'6FCB_, stopId2'6FD4_), (headway'6FDD_, drivingTime'6FF0_, capacity'6FE6_))]))));
        
        fun minHeadway'7661_ (stopId1'76D0_, stopId2'76D9_, (capacityMap'76E3_, connectionMap'76F0_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'76E3_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'76F0_))))) then raise RSL.RSL_exception ("./NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'76D0_, stopId2'76D9_, (capacityMap'76E3_, connectionMap'76F0_)) ^ " not in subtype") else let
            val (headway'7730_, drivingTime'7739_, capacity'7746_) = ((((RT_m_4.R_app(connectionMap'76F0_)) (stopId1'76D0_, stopId2'76D9_))):RT_x_3.t)
        in
            headway'7730_
        end);
        
        fun isIn'714D_ (stopId'71B6_, (capacityMap'71BF_, connecitonMap'71CC_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'71BF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'71CC_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'71B6_, (capacityMap'71BF_, connecitonMap'71CC_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'71B6_, (capacityMap'71BF_)));
        
        fun areDirectlyConnected'746D_ (stopId1'74E6_, stopId2'74EF_, (capacityMap'74F9_, connectionMap'7506_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'74F9_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7506_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'74E6_, stopId2'74EF_, (capacityMap'74F9_, connectionMap'7506_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'74E6_, stopId2'74EF_), (connectionMap'7506_)));
        
        fun capacity'72DD_ (stopId'734B_, (capacityMap'7353_, connectionMap'7360_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7353_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7360_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'734B_, (capacityMap'7353_, connectionMap'7360_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'7353_)) (stopId'734B_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type Plan_ = RT_l_15.t;
        
        type ArrivalT_ = RT_Nat.t;
        
        type DepatureT_ = RT_Nat.t;
        
        fun isWellformed'6596_ (t'6607_, n'660A_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (198, 28)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x113_'0_, x114_'0_, x115_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'6607_)))) andalso (let
            val (x116_'0_, x117_'0_) = ((n'660A_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x116_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x120_'0_, x121_'0_, x122_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x120_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x117_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:197:6: Argument of isWellformed" ^ RT_x_26.toString (t'6607_, n'660A_) ^ " not in subtype") else true);
        
        val empty'1E7F_ = let val z__'1E91_ = RT_m_16.R_fromList [] in if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x123_'0_, x124_'0_, x125_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x125_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'1E91_)))) then (RSL.add_load_err("./TIMETABLE.rsl:15:25: Value " ^ RT_m_16.toString(z__'1E91_) ^ " of empty not in subtype"); z__'1E91_) else z__'1E91_ end;
        
        fun tramStopsAtAllStopsItPasses'5C35_ timetable'5CB5_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (175, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x110_'0_, x111_'0_, x112_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5CB5_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:173:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'5CB5_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'5D04_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'5D6B_, arrTime'5D73_, depTime'5D7C_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'5D73_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'5D7C_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'5D7C_, arrTime'5D73_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'5CB5_)) (tramid'5D04_)))))) ((timetable'5CB5_)))));
        
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
        end) (plan'2855_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:39:7: Argument of nextStop" ^ RT_x_20.toString (planRow'284C_, plan'2855_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'2855_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:65:13: Precondition of nextStop" ^ RT_x_20.toString (planRow'284C_, plan'2855_) ^ " not satisfied") else let
            val iPlanRow'290F_ = ((RT_l_15.R_hd(plan'2855_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'290F_, planRow'284C_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (46, 13)); let
                val (sid'2B08_, arrt'2B0D_, dept'2B13_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'2855_)))):RT_x_14.t)
            in
                sid'2B08_
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (53, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'2855_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (55, 15)); ((nextStop'27DF_) (planRow'284C_, RT_l_15.R_tl(plan'2855_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (57, 15)); let
                val (sid'2F56_, arrt'2F5B_, dept'2F61_) = ((iPlanRow'290F_):RT_x_14.t)
            in
                sid'2F56_
            end))
        end);
        
        fun findPlanRowInPlan'3E21_ (stopid1'3E97_, stopid2'3EA0_, plan'3EA9_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (98, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'3EA9_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:96:5: Argument of findPlanRowInPlan" ^ RT_x_24.toString (stopid1'3E97_, stopid2'3EA0_, plan'3EA9_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'3EA9_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:114:11: Precondition of findPlanRowInPlan" ^ RT_x_24.toString (stopid1'3E97_, stopid2'3EA0_, plan'3EA9_) ^ " not satisfied") else let
            val (hStopId'3F52_, hArrTime'3F5B_, hDepTime'3F65_) = ((RT_l_15.R_hd(plan'3EA9_)):RT_x_14.t); 
            val nStopId'3FB5_ = ((((nextStop'27DF_) (RT_l_15.R_hd(plan'3EA9_), plan'3EA9_))):RT_Text.t)
        in
            if (RT_Text.equ (hStopId'3F52_, stopid1'3E97_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (102, 33)); RT_Text.equ (nStopId'3FB5_, stopid2'3EA0_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (104, 11)); (hStopId'3F52_, hArrTime'3F5B_, hDepTime'3F65_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (106, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'3EA9_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (108, 13)); ((findPlanRowInPlan'3E21_) (stopid1'3E97_, stopid2'3EA0_, RT_l_15.R_tl(plan'3EA9_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (110, 13)); (RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllPlansUsingConnection'3971_ (stopid1'39F2_, stopid2'39FB_, plans'3A04_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'3A04_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:84:5: Argument of buildAllPlansUsingConnection" ^ RT_x_23.toString (stopid1'39F2_, stopid2'39FB_, plans'3A04_) ^ " not in subtype") else if RT_s_18.equ (plans'3A04_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (87, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (89, 9)); let
            val plan'3BCF_ = ((RT_s_18.R_hd(plans'3A04_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findPlanRowInPlan'3E21_) (stopid1'39F2_, stopid2'39FB_, plan'3BCF_))]), ((buildAllPlansUsingConnection'3971_) (stopid1'39F2_, stopid2'39FB_, RT_s_18.R_diff (plans'3A04_, RT_s_18.R_fromList ([plan'3BCF_])))))
        end));
        
        fun getAllPlansUsingConnection'3651_ (stopid1'36D0_, stopid2'36D9_, timetable'36E2_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (78, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'36E2_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:76:5: Argument of getAllPlansUsingConnection" ^ RT_x_21.toString (stopid1'36D0_, stopid2'36D9_, timetable'36E2_) ^ " not in subtype") else let
            val allPlans'3781_ = ((RT_m_16.R_ran((timetable'36E2_))):RT_s_18.t)
        in
            ((buildAllPlansUsingConnection'3971_) (stopid1'36D0_, stopid2'36D9_, allPlans'3781_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'4F51_ (timetable'4FD9_, (capacityMap'4FE5_, connectionMap'4FF2_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (142, 7)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x102_'0_, x103_'0_, x104_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x104_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4FD9_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4FE5_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x107_'0_, x108_'0_, x109_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4FF2_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:140:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_26.toString (timetable'4FD9_, (capacityMap'4FE5_, connectionMap'4FF2_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'5021_, stopid2'502A_):RT_x_2.t) => let
            val (headway'5086_, drivingTime'508E_, capacity'509B_) = ((((RT_m_4.R_app(connectionMap'4FF2_)) ((stopid1'5021_, stopid2'502A_)))):RT_x_3.t)
        in
            ((RT_s_22.R_all (fn ((sid1'5151_, arrt1'5157_, dept1'515E_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt1'5157_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'515E_, RT_Int.fromLit "0"))) orelse (((RT_s_22.R_exists (fn ((sid2'51BA_, arrt2'51C0_, dept2'51C7_):RT_x_14.t) => ((RT_Nat.R_ge (arrt2'51C0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'51C7_, RT_Int.fromLit "0"))) andalso ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'515E_, dept2'51C7_))), headway'5086_)))) (RT_s_22.R_diff (((getAllPlansUsingConnection'3651_) (stopid1'5021_, stopid2'502A_, timetable'4FD9_)), RT_s_22.R_fromList ([(sid1'5151_, arrt1'5157_, dept1'515E_)]))))))) (((getAllPlansUsingConnection'3651_) (stopid1'5021_, stopid2'502A_, timetable'4FD9_)))))
        end) ((connectionMap'4FF2_)))));
        
        fun addStop'219F_ (tramid'220B_, stopid'2213_, arrival'221B_, departure'2224_, timetable'222F_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (25, 9)); if not((RT_Nat.R_ge (arrival'221B_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'2224_, RT_Int.fromLit "0")) andalso ((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'222F_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:23:7: Argument of addStop" ^ RT_x_19.toString (tramid'220B_, stopid'2213_, arrival'221B_, departure'2224_, timetable'222F_) ^ " not in subtype") else RT_m_16.R_override (timetable'222F_, RT_m_16.R_fromList ([(tramid'220B_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'222F_)) (tramid'220B_)), [(stopid'2213_, arrival'221B_, departure'2224_)]))])));
        
        fun getConnection'32CF_ (stop1'3341_, stop2'3348_, (capacityMap'3350_, connectionMap'335D_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (69, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'3350_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'335D_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:67:7: Argument of getConnection" ^ RT_x_12.toString (stop1'3341_, stop2'3348_, (capacityMap'3350_, connectionMap'335D_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'3341_, stop2'3348_), (connectionMap'335D_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (71, 9)); ((RT_m_4.R_app(connectionMap'335D_)) ((stop2'3348_, stop1'3341_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (73, 9)); ((RT_m_4.R_app(connectionMap'335D_)) ((stop1'3341_, stop2'3348_)))));
        
        fun isIn'264D_ (tramid'26B6_, timetable'26BE_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (37, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'26BE_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:35:5: Argument of isIn" ^ RT_x_17.toString (tramid'26B6_, timetable'26BE_) ^ " not in subtype") else RT_m_16.R_mem (tramid'26B6_, (timetable'26BE_)));
        
        fun timeBetweenStopsIsDrivingTime'48AD_ (plan'492F_, net'4935_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (125, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (plan'492F_))) andalso (let
            val (x95_'0_, x96_'0_) = ((net'4935_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x95_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x99_'0_, x100_'0_, x101_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x101_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x96_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:123:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_25.toString (plan'492F_, net'4935_) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'492F_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (126, 9)); let
            val (stopid1'4A44_, arrTime1'4A4D_, depTime1'4A57_) = ((RT_l_15.R_hd(plan'492F_)):RT_x_14.t); 
            val (stopid2'4AA8_, arrTime2'4AB1_, depTime2'4ABB_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'492F_)))):RT_x_14.t)
        in
            let
                val (headway'4BD6_, drivingTime'4BDE_, capacity'4BEB_) = ((((getConnection'32CF_) (stopid1'4A44_, stopid2'4AA8_, net'4935_))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (depTime1'4A57_, arrTime2'4AB1_), drivingTime'4BDE_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (133, 53)); ((timeBetweenStopsIsDrivingTime'48AD_) (RT_l_15.R_tl(plan'492F_), net'4935_)))
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
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (142, 7), (150, 8));
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
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (175, 7), (179, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (198, 28), (200, 3));
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
(RSL.C_output "[t01] " RT_s_22.toStringSafe (fn _ => ((getAllPlansUsingConnection'3651_) (RT_Text.fromLit "B", RT_Text.fromLit "D", timetable1'15ED_))));

(RSL.C_output "[ValidDrivingTime] " RT_Bool.toStringSafe (fn _ => ((timeBetweenStopsIsDrivingTime'48AD_) (plan1'1525_, net'13F9_))));

(RSL.C_output "[ValidTimeBetweenDeparture] " RT_Bool.toStringSafe (fn _ => ((timeBetweenDeparturesIsValidHeadway'4F51_) (timetable1'15ED_, net'13F9_))));

(RSL.C_output "[tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => ((tramStopsAtAllStopsItPasses'5C35_) (timetable1'15ED_))));

RSL.print_error_count();
R_coverage.save_marked();
