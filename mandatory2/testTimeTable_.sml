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
        
        fun allStopsHaveConnection'8DD1_ (capacityMap'8E4C_, connectionMap'8E59_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'8E4C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'8E59_))))) then raise RSL.RSL_exception ("./NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'8E4C_, connectionMap'8E59_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'8EA0_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'8F6D_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'8EA0_, stopId2'8F6D_), (connectionMap'8E59_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'8F6D_, stopId'8EA0_), (connectionMap'8E59_))))) ((capacityMap'8E4C_))))) ((capacityMap'8E4C_)))));
        
        fun noSelfConnection'8859_ (capacityMap'88CE_, connectionMap'88DB_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'88CE_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'88DB_))))) then raise RSL.RSL_exception ("./NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'88CE_, connectionMap'88DB_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'8929_, stopId2'8932_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'8929_, stopId2'8932_)) ((connectionMap'88DB_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'8B15_ (capacityMap'8BA1_, connectionMap'8BAE_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'8BA1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'8BAE_))))) then raise RSL.RSL_exception ("./NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'8BA1_, connectionMap'8BAE_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'8BE5_, stopId2'8BEE_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'8BE5_, (capacityMap'8BA1_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'8BEE_, (capacityMap'8BA1_)))) ((connectionMap'8BAE_)))));
        
        fun isWellformed'91B9_ net'922A_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'922A_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'922A_ ^ ")" ^ " not in subtype") else (((noSelfConnection'8859_) (net'922A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'8B15_) (net'922A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); ((allStopsHaveConnection'8DD1_) (net'922A_)))));
        
        val empty'74D1_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'84D5_ (stopId1'8548_, stopId2'8551_, (capacityMap'855B_, connectionMap'8568_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'855B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'8568_))))) then raise RSL.RSL_exception ("./NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'8548_, stopId2'8551_, (capacityMap'855B_, connectionMap'8568_)) ^ " not in subtype") else let
            val (headway'85A4_, drivingTime'85AD_, capacity'85BA_) = ((((RT_m_4.R_app(connectionMap'8568_)) (stopId1'8548_, stopId2'8551_))):RT_x_3.t)
        in
            drivingTime'85AD_
        end);
        
        fun insertStop'7599_ (stopId'7608_, capacity'7610_, (capacityMap'761B_, connectionMap'7628_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'7610_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'761B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7628_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'7608_, capacity'7610_, (capacityMap'761B_, connectionMap'7628_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'761B_, RT_m_1.R_fromList ([(stopId'7608_, capacity'7610_)])), connectionMap'7628_));
        
        fun capacity'81B5_ (stopId1'8222_, stopId2'822B_, (capacityMap'8235_, connectionMap'8242_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'8235_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'8242_))))) then raise RSL.RSL_exception ("./NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'8222_, stopId2'822B_, (capacityMap'8235_, connectionMap'8242_)) ^ " not in subtype") else let
            val (headway'8284_, drivingTime'828D_, capacity'829A_) = ((((RT_m_4.R_app(connectionMap'8242_)) (stopId1'8222_, stopId2'822B_))):RT_x_3.t)
        in
            capacity'829A_
        end);
        
        fun addConnection'778D_ (stopId1'77FF_, stopId2'7808_, headway'7811_, capacity'781A_, drivingTime'7824_, (capacityMap'7832_, connectionMap'783F_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'7811_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'781A_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'7824_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7832_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'783F_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'77FF_, stopId2'7808_, headway'7811_, capacity'781A_, drivingTime'7824_, (capacityMap'7832_, connectionMap'783F_)) ^ " not in subtype") else (capacityMap'7832_, RT_m_4.R_override (connectionMap'783F_, RT_m_4.R_fromList ([((stopId1'77FF_, stopId2'7808_), (headway'7811_, drivingTime'7824_, capacity'781A_))]))));
        
        fun minHeadway'7E95_ (stopId1'7F04_, stopId2'7F0D_, (capacityMap'7F17_, connectionMap'7F24_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7F17_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7F24_))))) then raise RSL.RSL_exception ("./NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'7F04_, stopId2'7F0D_, (capacityMap'7F17_, connectionMap'7F24_)) ^ " not in subtype") else let
            val (headway'7F64_, drivingTime'7F6D_, capacity'7F7A_) = ((((RT_m_4.R_app(connectionMap'7F24_)) (stopId1'7F04_, stopId2'7F0D_))):RT_x_3.t)
        in
            headway'7F64_
        end);
        
        fun isIn'7981_ (stopId'79EA_, (capacityMap'79F3_, connecitonMap'7A00_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'79F3_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'7A00_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'79EA_, (capacityMap'79F3_, connecitonMap'7A00_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'79EA_, (capacityMap'79F3_)));
        
        fun areDirectlyConnected'7CA1_ (stopId1'7D1A_, stopId2'7D23_, (capacityMap'7D2D_, connectionMap'7D3A_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7D2D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7D3A_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'7D1A_, stopId2'7D23_, (capacityMap'7D2D_, connectionMap'7D3A_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'7D1A_, stopId2'7D23_), (connectionMap'7D3A_)));
        
        fun capacity'7B11_ (stopId'7B7F_, (capacityMap'7B87_, connectionMap'7B94_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'7B87_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'7B94_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'7B7F_, (capacityMap'7B87_, connectionMap'7B94_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'7B87_)) (stopId'7B7F_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type Plan_ = RT_l_15.t;
        
        type ArrivalT_ = RT_Nat.t;
        
        type DepatureT_ = RT_Nat.t;
        
        fun isWellformed'6DCA_ (t'6E3B_, n'6E3E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (217, 28)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x120_'0_, x121_'0_, x122_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'6E3B_)))) andalso (let
            val (x123_'0_, x124_'0_) = ((n'6E3E_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x123_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x127_'0_, x128_'0_, x129_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x124_'0_))))
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:216:6: Argument of isWellformed" ^ RT_x_26.toString (t'6E3B_, n'6E3E_) ^ " not in subtype") else true);
        
        val empty'1F47_ = let val z__'1F59_ = RT_m_16.R_fromList [] in if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x130_'0_, x131_'0_, x132_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x131_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'1F59_)))) then (RSL.add_load_err("./TIMETABLE.rsl:15:25: Value " ^ RT_m_16.toString(z__'1F59_) ^ " of empty not in subtype"); z__'1F59_) else z__'1F59_ end;
        
        fun tramStopsAtAllStopsItPasses'6595_ timetable'6615_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (197, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x117_'0_, x118_'0_, x119_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6615_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:195:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'6615_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'6664_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'66CB_, arrTime'66D3_, depTime'66DC_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'66D3_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'66DC_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'66DC_, arrTime'66D3_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'6615_)) (tramid'6664_)))))) ((timetable'6615_)))));
        
        fun addTram'2073_ (tramid'20DF_, timetable'20E7_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (20, 9)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'20E7_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:18:7: Argument of addTram" ^ RT_x_17.toString (tramid'20DF_, timetable'20E7_) ^ " not in subtype") else RT_m_16.R_override (timetable'20E7_, RT_m_16.R_fromList ([(tramid'20DF_, ([]:RT_l_15.t))])));
        
        fun nextStop'28A7_ (planRow'2914_, plan'291D_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (41, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'2914_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'291D_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:39:7: Argument of nextStop" ^ RT_x_20.toString (planRow'2914_, plan'291D_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'291D_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:64:13: Precondition of nextStop" ^ RT_x_20.toString (planRow'2914_, plan'291D_) ^ " not satisfied") else let
            val iPlanRow'29D7_ = ((RT_l_15.R_hd(plan'291D_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'29D7_, planRow'2914_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (46, 13)); let
                val (sid'2BD0_, arrt'2BD5_, dept'2BDB_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'291D_)))):RT_x_14.t)
            in
                sid'2BD0_
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (52, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'291D_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (54, 15)); ((nextStop'28A7_) (planRow'2914_, RT_l_15.R_tl(plan'291D_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (56, 15)); let
                val (sid'2FBA_, arrt'2FBF_, dept'2FC5_) = ((iPlanRow'29D7_):RT_x_14.t)
            in
                sid'2FBA_
            end))
        end);
        
        fun findDepartureRowInPlan'3E85_ (stopid1'3F00_, stopid2'3F09_, plan'3F12_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (97, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'3F12_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:95:5: Argument of findDepartureRowInPlan" ^ RT_x_24.toString (stopid1'3F00_, stopid2'3F09_, plan'3F12_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'3F12_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:113:11: Precondition of findDepartureRowInPlan" ^ RT_x_24.toString (stopid1'3F00_, stopid2'3F09_, plan'3F12_) ^ " not satisfied") else let
            val (hStopId'3FB6_, hArrTime'3FBF_, hDepTime'3FC9_) = ((RT_l_15.R_hd(plan'3F12_)):RT_x_14.t); 
            val nStopId'4019_ = ((((nextStop'28A7_) (RT_l_15.R_hd(plan'3F12_), plan'3F12_))):RT_Text.t)
        in
            if (RT_Text.equ (hStopId'3FB6_, stopid1'3F00_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (101, 33)); RT_Text.equ (nStopId'4019_, stopid2'3F09_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (103, 11)); (hStopId'3FB6_, hArrTime'3FBF_, hDepTime'3FC9_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (105, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'3F12_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (107, 13)); ((findDepartureRowInPlan'3E85_) (stopid1'3F00_, stopid2'3F09_, RT_l_15.R_tl(plan'3F12_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (109, 13)); (RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'39D5_ (stopid1'3A5B_, stopid2'3A64_, plans'3A6D_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (85, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'3A6D_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:83:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_23.toString (stopid1'3A5B_, stopid2'3A64_, plans'3A6D_) ^ " not in subtype") else if RT_s_18.equ (plans'3A6D_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (88, 9)); let
            val plan'3C33_ = ((RT_s_18.R_hd(plans'3A6D_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findDepartureRowInPlan'3E85_) (stopid1'3A5B_, stopid2'3A64_, plan'3C33_))]), ((buildAllDeparturesUsingConnection'39D5_) (stopid1'3A5B_, stopid2'3A64_, RT_s_18.R_diff (plans'3A6D_, RT_s_18.R_fromList ([plan'3C33_])))))
        end));
        
        fun getAllDepaturesUsingConnection'36B5_ (stopid1'3738_, stopid2'3741_, timetable'374A_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (77, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'374A_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:75:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_21.toString (stopid1'3738_, stopid2'3741_, timetable'374A_) ^ " not in subtype") else let
            val allPlans'37E5_ = ((RT_m_16.R_ran((timetable'374A_))):RT_s_18.t)
        in
            ((buildAllDeparturesUsingConnection'39D5_) (stopid1'3738_, stopid2'3741_, allPlans'37E5_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'5FB9_ (timetable'6041_, (capacityMap'604D_, connectionMap'605A_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (182, 7)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x109_'0_, x110_'0_, x111_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x110_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6041_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'604D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x114_'0_, x115_'0_, x116_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x116_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'605A_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:180:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_26.toString (timetable'6041_, (capacityMap'604D_, connectionMap'605A_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'6089_, stopid2'6092_):RT_x_2.t) => let
            val (headway'60EE_, drivingTime'60F6_, capacity'6103_) = ((((RT_m_4.R_app(connectionMap'605A_)) ((stopid1'6089_, stopid2'6092_)))):RT_x_3.t)
        in
            ((RT_s_22.R_all (fn ((sid1'61B9_, arrt1'61BF_, dept1'61C6_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt1'61BF_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'61C6_, RT_Int.fromLit "0"))) orelse (((RT_s_22.R_exists (fn ((sid2'6222_, arrt2'6228_, dept2'622F_):RT_x_14.t) => ((RT_Nat.R_ge (arrt2'6228_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'622F_, RT_Int.fromLit "0"))) andalso ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'61C6_, dept2'622F_))), headway'60EE_)))) (RT_s_22.R_diff (((getAllDepaturesUsingConnection'36B5_) (stopid1'6089_, stopid2'6092_, timetable'6041_)), RT_s_22.R_fromList ([(sid1'61B9_, arrt1'61BF_, dept1'61C6_)]))))))) (((getAllDepaturesUsingConnection'36B5_) (stopid1'6089_, stopid2'6092_, timetable'6041_)))))
        end) ((connectionMap'605A_)))));
        
        fun addStop'2267_ (tramid'22D3_, stopid'22DB_, arrival'22E3_, departure'22EC_, timetable'22F7_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (25, 9)); if not((RT_Nat.R_ge (arrival'22E3_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'22EC_, RT_Int.fromLit "0")) andalso ((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'22F7_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:23:7: Argument of addStop" ^ RT_x_19.toString (tramid'22D3_, stopid'22DB_, arrival'22E3_, departure'22EC_, timetable'22F7_) ^ " not in subtype") else RT_m_16.R_override (timetable'22F7_, RT_m_16.R_fromList ([(tramid'22D3_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'22F7_)) (tramid'22D3_)), [(stopid'22DB_, arrival'22E3_, departure'22EC_)]))])));
        
        fun getConnection'3333_ (stop1'33A5_, stop2'33AC_, (capacityMap'33B4_, connectionMap'33C1_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (68, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'33B4_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'33C1_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:66:7: Argument of getConnection" ^ RT_x_12.toString (stop1'33A5_, stop2'33AC_, (capacityMap'33B4_, connectionMap'33C1_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'33A5_, stop2'33AC_), (connectionMap'33C1_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9)); ((RT_m_4.R_app(connectionMap'33C1_)) ((stop1'33A5_, stop2'33AC_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (72, 9)); ((RT_m_4.R_app(connectionMap'33C1_)) ((stop2'33AC_, stop1'33A5_)))));
        
        fun isIn'2715_ (tramid'277E_, timetable'2786_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (37, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'2786_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:35:5: Argument of isIn" ^ RT_x_17.toString (tramid'277E_, timetable'2786_) ^ " not in subtype") else RT_m_16.R_mem (tramid'277E_, (timetable'2786_)));
        
        fun timeBetweenStopsIsDrivingTime'58B1_ (plan'5933_, (capacityMap'593A_, connectionMap'5947_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (164, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (plan'5933_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'593A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x106_'0_, x107_'0_, x108_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5947_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:162:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_25.toString (plan'5933_, (capacityMap'593A_, connectionMap'5947_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'5933_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (165, 9)); let
            val (stopid1'5A48_, arrTime1'5A51_, depTime1'5A5B_) = ((RT_l_15.R_hd(plan'5933_)):RT_x_14.t); 
            val (stopid2'5AAC_, arrTime2'5AB5_, depTime2'5ABF_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'5933_)))):RT_x_14.t)
        in
            let
                val (headway'5BDA_, drivingTime'5BE2_, capacity'5BEF_) = ((((getConnection'3333_) (stopid1'5A48_, stopid2'5AAC_, (capacityMap'593A_, connectionMap'5947_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'5AB5_, depTime1'5A5B_), drivingTime'5BE2_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (172, 53)); ((timeBetweenStopsIsDrivingTime'58B1_) (RT_l_15.R_tl(plan'5933_), (capacityMap'593A_, connectionMap'5947_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (176, 9)); true));
        
        fun findArrivalRowInPlan'4E25_ (stopid1'4E9E_, stopid2'4EA7_, plan'4EB0_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (137, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'4EB0_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:135:5: Argument of findArrivalRowInPlan" ^ RT_x_24.toString (stopid1'4E9E_, stopid2'4EA7_, plan'4EB0_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'4EB0_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:153:11: Precondition of findArrivalRowInPlan" ^ RT_x_24.toString (stopid1'4E9E_, stopid2'4EA7_, plan'4EB0_) ^ " not satisfied") else let
            val (hStopId'4F56_, hArrTime'4F5F_, hDepTime'4F69_) = ((RT_l_15.R_hd(plan'4EB0_)):RT_x_14.t); 
            val (nStopId'4FBA_, nArrTime'4FC3_, nDepTime'4FCD_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'4EB0_)))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'4F56_, stopid1'4E9E_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (141, 33)); RT_Text.equ (nStopId'4FBA_, stopid2'4EA7_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (143, 11)); (nStopId'4FBA_, nArrTime'4FC3_, nDepTime'4FCD_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (145, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'4EB0_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (147, 13)); ((findArrivalRowInPlan'4E25_) (stopid1'4E9E_, stopid2'4EA7_, RT_l_15.R_tl(plan'4EB0_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (149, 13)); (RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllArrivalsUsingConnection'4975_ (stopid1'49F9_, stopid2'4A02_, plans'4A0B_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (125, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'4A0B_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:123:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_23.toString (stopid1'49F9_, stopid2'4A02_, plans'4A0B_) ^ " not in subtype") else if RT_s_18.equ (plans'4A0B_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (126, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (128, 9)); let
            val plan'4BD3_ = ((RT_s_18.R_hd(plans'4A0B_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findArrivalRowInPlan'4E25_) (stopid1'49F9_, stopid2'4A02_, plan'4BD3_))]), ((buildAllArrivalsUsingConnection'4975_) (stopid1'49F9_, stopid2'4A02_, RT_s_18.R_diff (plans'4A0B_, RT_s_18.R_fromList ([plan'4BD3_])))))
        end));
        
        fun getAllArrivalsUsingConnection'4655_ (stopid1'46D7_, stopid2'46E0_, timetable'46E9_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (117, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'46E9_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:115:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_21.toString (stopid1'46D7_, stopid2'46E0_, timetable'46E9_) ^ " not in subtype") else let
            val allPlans'4785_ = ((RT_m_16.R_ran((timetable'46E9_))):RT_s_18.t)
        in
            ((buildAllArrivalsUsingConnection'4975_) (stopid1'46D7_, stopid2'46E0_, allPlans'4785_))
        end);
        
        val plan2'1589_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val plan1'1525_ = [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")];
        
        val timetable1'1651_ = RT_m_16.R_fromList ([(RT_Text.fromLit "tram1", plan1'1525_), (RT_Text.fromLit "tram2", plan2'1589_)]);
        
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
        
        val planInvalidDrivingTime'15ED_ = [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "8", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")];
        
        val CapacityF'A99_ = RT_Int.fromLit "2";
        
        val StopF'A35_ = RT_Text.fromLit "F";
        
    end;
    
open testTimeTable;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (117, 7), (121, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (128, 9), (133, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (126, 12), (127, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (125, 7), (133, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (149, 13), (150, 11));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (147, 13), (148, 14));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (141, 33), (142, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (145, 11), (151, 9));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (143, 11), (144, 12));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (137, 7), (155, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (172, 53), (173, 13));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (176, 9), (177, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (165, 9), (175, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (164, 7), (177, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (37, 7), (37, 33));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (72, 9), (73, 7));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (70, 9), (71, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (68, 7), (73, 10));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (25, 9), (33, 7));
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
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (20, 9), (20, 38));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (197, 7), (201, 8));
R_coverage.mark(RT_Text.fromLit "./TIMETABLE.rsl", (217, 28), (219, 3));
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
(RSL.C_output "[ValidDrivingTime] " RT_Bool.toStringSafe (fn _ => ((timeBetweenStopsIsDrivingTime'58B1_) (plan1'1525_, net'13F9_))));

(RSL.C_output "[InvalidDrivingTime] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((timeBetweenStopsIsDrivingTime'58B1_) (planInvalidDrivingTime'15ED_, net'13F9_)), false)));

(RSL.C_output "[ValidTimeBetweenDeparture] " RT_Bool.toStringSafe (fn _ => ((timeBetweenDeparturesIsValidHeadway'5FB9_) (timetable1'1651_, net'13F9_))));

(RSL.C_output "[tramStopsAtAllStopsItPasses] " RT_Bool.toStringSafe (fn _ => ((tramStopsAtAllStopsItPasses'6595_) (timetable1'1651_))));

(RSL.C_output "[findArrivalRowInPlan] " RT_s_22.toStringSafe (fn _ => ((getAllArrivalsUsingConnection'4655_) (RT_Text.fromLit "A", RT_Text.fromLit "B", timetable1'1651_))));

RSL.print_error_count();
R_coverage.save_marked();
