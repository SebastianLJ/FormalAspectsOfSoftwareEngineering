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
        
        fun allStopsHaveConnection'74D1_ (capacityMap'754C_, connectionMap'7559_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'754C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7559_))))) then raise RSL.RSL_exception ("./NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'754C_, connectionMap'7559_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'75A0_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'766D_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'75A0_, stopId2'766D_), (connectionMap'7559_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'766D_, stopId'75A0_), (connectionMap'7559_))))) ((capacityMap'754C_))))) ((capacityMap'754C_)))));
        
        fun noSelfConnection'6F59_ (capacityMap'6FCE_, connectionMap'6FDB_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6FCE_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6FDB_))))) then raise RSL.RSL_exception ("./NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'6FCE_, connectionMap'6FDB_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'7029_, stopId2'7032_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'7029_, stopId2'7032_)) ((connectionMap'6FDB_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'7215_ (capacityMap'72A1_, connectionMap'72AE_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'72A1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'72AE_))))) then raise RSL.RSL_exception ("./NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'72A1_, connectionMap'72AE_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'72E5_, stopId2'72EE_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'72E5_, (capacityMap'72A1_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'72EE_, (capacityMap'72A1_)))) ((connectionMap'72AE_)))));
        
        fun isWellformed'78B9_ net'792A_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'792A_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'792A_ ^ ")" ^ " not in subtype") else (((noSelfConnection'6F59_) (net'792A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'7215_) (net'792A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); ((allStopsHaveConnection'74D1_) (net'792A_)))));
        
        val empty'5BD1_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'6BD5_ (stopId1'6C48_, stopId2'6C51_, (capacityMap'6C5B_, connectionMap'6C68_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6C5B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6C68_))))) then raise RSL.RSL_exception ("./NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'6C48_, stopId2'6C51_, (capacityMap'6C5B_, connectionMap'6C68_)) ^ " not in subtype") else let
            val (headway'6CA4_, drivingTime'6CAD_, capacity'6CBA_) = ((((RT_m_4.R_app(connectionMap'6C68_)) (stopId1'6C48_, stopId2'6C51_))):RT_x_3.t)
        in
            drivingTime'6CAD_
        end);
        
        fun insertStop'5C99_ (stopId'5D08_, capacity'5D10_, (capacityMap'5D1B_, connectionMap'5D28_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'5D10_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'5D1B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5D28_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'5D08_, capacity'5D10_, (capacityMap'5D1B_, connectionMap'5D28_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'5D1B_, RT_m_1.R_fromList ([(stopId'5D08_, capacity'5D10_)])), connectionMap'5D28_));
        
        fun capacity'68B5_ (stopId1'6922_, stopId2'692B_, (capacityMap'6935_, connectionMap'6942_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6935_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6942_))))) then raise RSL.RSL_exception ("./NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'6922_, stopId2'692B_, (capacityMap'6935_, connectionMap'6942_)) ^ " not in subtype") else let
            val (headway'6984_, drivingTime'698D_, capacity'699A_) = ((((RT_m_4.R_app(connectionMap'6942_)) (stopId1'6922_, stopId2'692B_))):RT_x_3.t)
        in
            capacity'699A_
        end);
        
        fun addConnection'5E8D_ (stopId1'5EFF_, stopId2'5F08_, headway'5F11_, capacity'5F1A_, drivingTime'5F24_, (capacityMap'5F32_, connectionMap'5F3F_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'5F11_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'5F1A_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'5F24_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'5F32_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5F3F_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'5EFF_, stopId2'5F08_, headway'5F11_, capacity'5F1A_, drivingTime'5F24_, (capacityMap'5F32_, connectionMap'5F3F_)) ^ " not in subtype") else (capacityMap'5F32_, RT_m_4.R_override (connectionMap'5F3F_, RT_m_4.R_fromList ([((stopId1'5EFF_, stopId2'5F08_), (headway'5F11_, drivingTime'5F24_, capacity'5F1A_))]))));
        
        fun minHeadway'6595_ (stopId1'6604_, stopId2'660D_, (capacityMap'6617_, connectionMap'6624_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6617_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6624_))))) then raise RSL.RSL_exception ("./NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'6604_, stopId2'660D_, (capacityMap'6617_, connectionMap'6624_)) ^ " not in subtype") else let
            val (headway'6664_, drivingTime'666D_, capacity'667A_) = ((((RT_m_4.R_app(connectionMap'6624_)) (stopId1'6604_, stopId2'660D_))):RT_x_3.t)
        in
            headway'6664_
        end);
        
        fun isIn'6081_ (stopId'60EA_, (capacityMap'60F3_, connecitonMap'6100_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'60F3_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'6100_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'60EA_, (capacityMap'60F3_, connecitonMap'6100_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'60EA_, (capacityMap'60F3_)));
        
        fun areDirectlyConnected'63A1_ (stopId1'641A_, stopId2'6423_, (capacityMap'642D_, connectionMap'643A_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'642D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'643A_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'641A_, stopId2'6423_, (capacityMap'642D_, connectionMap'643A_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'641A_, stopId2'6423_), (connectionMap'643A_)));
        
        fun capacity'6211_ (stopId'627F_, (capacityMap'6287_, connectionMap'6294_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6287_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6294_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'627F_, (capacityMap'6287_, connectionMap'6294_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'6287_)) (stopId'627F_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type Plan_ = RT_l_15.t;
        
        fun isWellformed'54CA_ (t'553B_, n'553E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (158, 28)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x113_'0_, x114_'0_, x115_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'553B_)))) andalso (let
            val (x116_'0_, x117_'0_) = ((n'553E_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x116_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x120_'0_, x121_'0_, x122_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x120_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x117_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:157:6: Argument of isWellformed" ^ RT_x_26.toString (t'553B_, n'553E_) ^ " not in subtype") else true);
        
        val empty'1C27_ = let val z__'1C39_ = RT_m_16.R_fromList [] in if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x123_'0_, x124_'0_, x125_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x125_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'1C39_)))) then (RSL.add_load_err("./TIMETABLE.rsl:12:25: Value " ^ RT_m_16.toString(z__'1C39_) ^ " of empty not in subtype"); z__'1C39_) else z__'1C39_ end;
        
        fun tramStopsAtAllStopsItPasses'507D_ timetable'50FD_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (148, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x110_'0_, x111_'0_, x112_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'50FD_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:146:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'50FD_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'514C_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'51B3_, arrTime'51BB_, depTime'51C4_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'51BB_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'51C4_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'51C4_, arrTime'51BB_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'50FD_)) (tramid'514C_)))))) ((timetable'50FD_)))));
        
        fun addTram'1D53_ (tramid'1DBF_, timetable'1DC7_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (17, 9)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'1DC7_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:15:7: Argument of addTram" ^ RT_x_17.toString (tramid'1DBF_, timetable'1DC7_) ^ " not in subtype") else RT_m_16.R_override (timetable'1DC7_, RT_m_16.R_fromList ([(tramid'1DBF_, ([]:RT_l_15.t))])));
        
        fun nextStop'232F_ (planRow'239C_, plan'23A5_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (32, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'239C_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'23A5_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:30:7: Argument of nextStop" ^ RT_x_20.toString (planRow'239C_, plan'23A5_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'23A5_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:47:13: Precondition of nextStop" ^ RT_x_20.toString (planRow'239C_, plan'23A5_) ^ " not satisfied") else let
            val iPlanRow'245F_ = ((RT_l_15.R_hd(plan'23A5_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'245F_, planRow'239C_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (37, 13)); let
                val (sid'2658_, arrt'265D_, dept'2663_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'23A5_)))):RT_x_14.t)
            in
                sid'2658_
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (44, 13)); ((nextStop'232F_) (planRow'239C_, RT_l_15.R_tl(plan'23A5_))))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'471D_ (timetable'47A5_, (capacityMap'47B1_, connectionMap'47BE_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (124, 7)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x102_'0_, x103_'0_, x104_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x104_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'47A5_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'47B1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x107_'0_, x108_'0_, x109_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'47BE_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:122:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_26.toString (timetable'47A5_, (capacityMap'47B1_, connectionMap'47BE_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'47ED_, stopid2'47F6_):RT_x_2.t) => let
            val (headway'4852_, drivingTime'485A_, capacity'4867_) = ((((RT_m_4.R_app(connectionMap'47BE_)) ((stopid1'47ED_, stopid2'47F6_)))):RT_x_3.t)
        in
            ((RT_s_18.R_all (fn (plan'491C_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
                val (x126_'0_, x127_'0_, x128_'0_) = ((x_'0_):RT_x_14.t)
            in
                (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0"))
            end) (plan'491C_))) orelse (((RT_l_15.R_all (fn ((sid1'4983_, arrt1'4989_, dept1'4990_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt1'4989_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'4990_, RT_Int.fromLit "0"))) orelse (not ((RT_Text.equ (sid1'4983_, stopid1'47ED_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (129, 13)); RT_Text.equ (((nextStop'232F_) ((sid1'4983_, arrt1'4989_, dept1'4990_), plan'491C_)), stopid2'47F6_))) orelse (not (((RT_s_18.R_exists (fn (plan2'4A51_:RT_l_15.t) => ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
                val (x129_'0_, x130_'0_, x131_'0_) = ((x_'0_):RT_x_14.t)
            in
                (RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x131_'0_, RT_Int.fromLit "0"))
            end) (plan2'4A51_))) andalso (((RSL.C_not RT_l_15.equ) (plan2'4A51_, plan'491C_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (131, 15)); ((RT_l_15.R_all (fn ((sid2'4AB1_, arrt2'4AB7_, dept2'4ABE_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt2'4AB7_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'4ABE_, RT_Int.fromLit "0"))) orelse (not ((RT_Text.equ (sid2'4AB1_, stopid1'47ED_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (132, 15)); RT_Text.equ (((nextStop'232F_) ((sid2'4AB1_, arrt2'4AB7_, dept2'4ABE_), plan'491C_)), stopid2'47F6_))) orelse (RT_Nat.R_lt (RT_Nat.R_abs((RT_Nat.R_sub (dept2'4ABE_, dept1'4990_))), headway'4852_)))) (plan2'4A51_)))))) (RT_m_16.R_ran((timetable'47A5_))))))))) (plan'491C_))))) (RT_m_16.R_ran((timetable'47A5_)))))
        end) ((connectionMap'47BE_)))));
        
        fun getConnection'2A9B_ (stop1'2B0D_, stop2'2B14_, (capacityMap'2B1C_, connectionMap'2B29_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (51, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'2B1C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'2B29_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:49:7: Argument of getConnection" ^ RT_x_12.toString (stop1'2B0D_, stop2'2B14_, (capacityMap'2B1C_, connectionMap'2B29_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'2B0D_, stop2'2B14_), (connectionMap'2B29_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (53, 9)); ((RT_m_4.R_app(connectionMap'2B29_)) ((stop2'2B14_, stop1'2B0D_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (55, 9)); ((RT_m_4.R_app(connectionMap'2B29_)) ((stop1'2B0D_, stop2'2B14_)))));
        
        fun addStop'1F47_ (tramid'1FB3_, stopid'1FBB_, arrival'1FC3_, departure'1FCC_, timetable'1FD7_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (22, 9)); if not((RT_Nat.R_ge (arrival'1FC3_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'1FCC_, RT_Int.fromLit "0")) andalso ((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'1FD7_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:20:7: Argument of addStop" ^ RT_x_19.toString (tramid'1FB3_, stopid'1FBB_, arrival'1FC3_, departure'1FCC_, timetable'1FD7_) ^ " not in subtype") else RT_m_16.R_override (timetable'1FD7_, RT_m_16.R_fromList ([(tramid'1FB3_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'1FD7_)) (tramid'1FB3_)), [(stopid'1FBB_, arrival'1FC3_, departure'1FCC_)]))])));
        
        fun findPlanRowInPlan'35ED_ (stopid1'3663_, stopid2'366C_, plan'3675_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (80, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'3675_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:78:5: Argument of findPlanRowInPlan" ^ RT_x_24.toString (stopid1'3663_, stopid2'366C_, plan'3675_) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'3675_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (82, 9)); let
            val (hStopId'37E8_, hArrTime'37F1_, hDepTime'37FB_) = ((RT_l_15.R_hd(plan'3675_)):RT_x_14.t); 
            val nStopId'384B_ = ((((nextStop'232F_) (RT_l_15.R_hd(plan'3675_), plan'3675_))):RT_Text.t)
        in
            if (RT_Text.equ (hStopId'37E8_, stopid1'3663_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 35)); RT_Text.equ (nStopId'384B_, stopid2'366C_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (88, 13)); (hStopId'37E8_, hArrTime'37F1_, hDepTime'37FB_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (90, 13)); ((findPlanRowInPlan'35ED_) (stopid1'3663_, stopid2'366C_, RT_l_15.R_tl(plan'3675_))))
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (94, 9)); (RT_Text.fromLit "0", RT_Int.fromLit "0", RT_Int.fromLit "0")));
        
        fun buildAllPlansUsingConnection'313D_ (stopid1'31BE_, stopid2'31C7_, plans'31D0_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (68, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'31D0_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:66:5: Argument of buildAllPlansUsingConnection" ^ RT_x_23.toString (stopid1'31BE_, stopid2'31C7_, plans'31D0_) ^ " not in subtype") else if RT_s_18.equ (plans'31D0_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (69, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (71, 9)); let
            val plan'339B_ = ((RT_s_18.R_hd(plans'31D0_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findPlanRowInPlan'35ED_) (stopid1'31BE_, stopid2'31C7_, plan'339B_))]), ((buildAllPlansUsingConnection'313D_) (stopid1'31BE_, stopid2'31C7_, RT_s_18.R_diff (plans'31D0_, RT_s_18.R_fromList ([plan'339B_])))))
        end));
        
        fun getAllPlansUsingConnection'2E1D_ (stopid1'2E9C_, stopid2'2EA5_, timetable'2EAE_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (60, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'2EAE_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:58:5: Argument of getAllPlansUsingConnection" ^ RT_x_21.toString (stopid1'2E9C_, stopid2'2EA5_, timetable'2EAE_) ^ " not in subtype") else let
            val allPlans'2F4D_ = ((RT_m_16.R_ran((timetable'2EAE_))):RT_s_18.t)
        in
            ((buildAllPlansUsingConnection'313D_) (stopid1'2E9C_, stopid2'2EA5_, allPlans'2F4D_))
        end);
        
        fun isIn'219D_ (tramid'2206_, timetable'220E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (28, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'220E_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:26:5: Argument of isIn" ^ RT_x_17.toString (tramid'2206_, timetable'220E_) ^ " not in subtype") else RT_m_16.R_mem (tramid'2206_, (timetable'220E_)));
        
        fun timeBetweenStopsIsDrivingTime'4079_ (plan'40FB_, net'4101_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (107, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (plan'40FB_))) andalso (let
            val (x95_'0_, x96_'0_) = ((net'4101_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x95_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x99_'0_, x100_'0_, x101_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x101_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x96_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:105:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_25.toString (plan'40FB_, net'4101_) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'40FB_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (108, 9)); let
            val (stopid1'4210_, arrTime1'4219_, depTime1'4223_) = ((RT_l_15.R_hd(plan'40FB_)):RT_x_14.t); 
            val (stopid2'4274_, arrTime2'427D_, depTime2'4287_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'40FB_)))):RT_x_14.t)
        in
            let
                val (headway'43A2_, drivingTime'43AA_, capacity'43B7_) = ((((getConnection'2A9B_) (stopid1'4210_, stopid2'4274_, net'4101_))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (depTime1'4223_, arrTime2'427D_), drivingTime'43AA_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (115, 53)); ((timeBetweenStopsIsDrivingTime'4079_) (RT_l_15.R_tl(plan'40FB_), net'4101_)))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (119, 9)); true));
        
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
        
        val Net'13F9_ = (stopCapacity'12CD_, connectionMap'1269_);
        
        val StopF'A35_ = RT_Text.fromLit "F";
        
        val CapacityF'A99_ = RT_Int.fromLit "2";
        
    end;
    
open testTimeTable;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (115, 53), (116, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (119, 9), (120, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (108, 9), (118, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (107, 7), (120, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (28, 7), (28, 33));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (60, 7), (64, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (71, 9), (76, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (69, 12), (70, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (68, 7), (76, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (86, 35), (87, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (90, 13), (91, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (88, 13), (89, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (94, 9), (95, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (82, 9), (93, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (80, 7), (98, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (22, 9), (24, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (55, 9), (56, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (53, 9), (54, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (51, 7), (56, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (132, 15), (132, 63));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (131, 15), (135, 17));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (129, 13), (129, 61));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (124, 7), (141, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (44, 13), (45, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (37, 13), (43, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (32, 9), (47, 25));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (17, 9), (17, 38));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (148, 7), (152, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (158, 28), (160, 3));
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
(RSL.C_output "[t01] " RT_s_22.toStringSafe (fn _ => ((getAllPlansUsingConnection'2E1D_) (RT_Text.fromLit "A", RT_Text.fromLit "B", timetable1'15ED_))));

RSL.print_error_count();
R_coverage.save_marked();
