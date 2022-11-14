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

structure testNet =
    struct
        type Net_ = RT_x_5.t;
        
        type Headway_ = RT_Nat.t;
        
        type DrivingTime_ = RT_Nat.t;
        
        type Time_ = RT_Nat.t;
        
        type Capacity_ = RT_Nat.t;
        
        type StopId_ = RT_Text.t;
        
        type CapacityMap_ = RT_m_1.t;
        
        type ConnectionMap_ = RT_m_4.t;
        
        fun allStopsHaveConnection'552D_ (capacityMap'55A8_, connectionMap'55B5_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (79, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'55A8_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'55B5_))))) then raise RSL.RSL_exception ("NET.rsl:77:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'55A8_, connectionMap'55B5_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'55FC_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'56C9_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'55FC_, stopId2'56C9_), (connectionMap'55B5_))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (84, 13)); RT_m_4.R_mem ((stopId2'56C9_, stopId'55FC_), (connectionMap'55B5_))))) ((capacityMap'55A8_))))) ((capacityMap'55A8_)))));
        
        fun noSelfConnection'4FB5_ (capacityMap'502A_, connectionMap'5037_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (65, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'502A_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5037_))))) then raise RSL.RSL_exception ("NET.rsl:63:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'502A_, connectionMap'5037_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'5085_, stopId2'508E_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'5085_, stopId2'508E_)) ((connectionMap'5037_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'5271_ (capacityMap'52FD_, connectionMap'530A_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (72, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'52FD_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'530A_))))) then raise RSL.RSL_exception ("NET.rsl:70:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'52FD_, connectionMap'530A_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'5341_, stopId2'534A_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'5341_, (capacityMap'52FD_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (74, 42)); RT_m_1.R_mem (stopId2'534A_, (capacityMap'52FD_)))) ((connectionMap'530A_)))));
        
        fun isWellformed'5915_ net'5986_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (89, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'5986_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("NET.rsl:87:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'5986_ ^ ")" ^ " not in subtype") else (((noSelfConnection'4FB5_) (net'5986_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (90, 7)); (((allStopsInConnectionMapAreInCapacityMap'5271_) (net'5986_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (91, 7)); ((allStopsHaveConnection'552D_) (net'5986_)))));
        
        val empty'3C2D_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'4C31_ (stopId1'4CA4_, stopId2'4CAD_, (capacityMap'4CB7_, connectionMap'4CC4_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (56, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4CB7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4CC4_))))) then raise RSL.RSL_exception ("NET.rsl:54:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'4CA4_, stopId2'4CAD_, (capacityMap'4CB7_, connectionMap'4CC4_)) ^ " not in subtype") else let
            val (headway'4D00_, drivingTime'4D09_, capacity'4D16_) = ((((RT_m_4.R_app(connectionMap'4CC4_)) (stopId1'4CA4_, stopId2'4CAD_))):RT_x_3.t)
        in
            drivingTime'4D09_
        end);
        
        fun insertStop'3CF5_ (stopId'3D64_, capacity'3D6C_, (capacityMap'3D77_, connectionMap'3D84_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (17, 7)); if not((RT_Nat.R_ge (capacity'3D6C_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'3D77_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'3D84_)))))) then raise RSL.RSL_exception ("NET.rsl:15:5: Argument of insertStop" ^ RT_x_6.toString (stopId'3D64_, capacity'3D6C_, (capacityMap'3D77_, connectionMap'3D84_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'3D77_, RT_m_1.R_fromList ([(stopId'3D64_, capacity'3D6C_)])), connectionMap'3D84_));
        
        fun capacity'4911_ (stopId1'497E_, stopId2'4987_, (capacityMap'4991_, connectionMap'499E_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (48, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4991_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'499E_))))) then raise RSL.RSL_exception ("NET.rsl:46:5: Argument of capacity" ^ RT_x_12.toString (stopId1'497E_, stopId2'4987_, (capacityMap'4991_, connectionMap'499E_)) ^ " not in subtype") else let
            val (headway'49E0_, drivingTime'49E9_, capacity'49F6_) = ((((RT_m_4.R_app(connectionMap'499E_)) (stopId1'497E_, stopId2'4987_))):RT_x_3.t)
        in
            capacity'49F6_
        end);
        
        fun addConnection'3EE9_ (stopId1'3F5B_, stopId2'3F64_, headway'3F6D_, capacity'3F76_, drivingTime'3F80_, (capacityMap'3F8E_, connectionMap'3F9B_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (22, 7)); if not((RT_Nat.R_ge (headway'3F6D_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'3F76_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'3F80_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'3F8E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'3F9B_)))))))) then raise RSL.RSL_exception ("NET.rsl:20:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'3F5B_, stopId2'3F64_, headway'3F6D_, capacity'3F76_, drivingTime'3F80_, (capacityMap'3F8E_, connectionMap'3F9B_)) ^ " not in subtype") else (capacityMap'3F8E_, RT_m_4.R_override (connectionMap'3F9B_, RT_m_4.R_fromList ([((stopId1'3F5B_, stopId2'3F64_), (headway'3F6D_, drivingTime'3F80_, capacity'3F76_))]))));
        
        fun minHeadway'45F1_ (stopId1'4660_, stopId2'4669_, (capacityMap'4673_, connectionMap'4680_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (40, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4673_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4680_))))) then raise RSL.RSL_exception ("NET.rsl:38:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'4660_, stopId2'4669_, (capacityMap'4673_, connectionMap'4680_)) ^ " not in subtype") else let
            val (headway'46C0_, drivingTime'46C9_, capacity'46D6_) = ((((RT_m_4.R_app(connectionMap'4680_)) (stopId1'4660_, stopId2'4669_))):RT_x_3.t)
        in
            headway'46C0_
        end);
        
        fun isIn'40DD_ (stopId'4146_, (capacityMap'414F_, connecitonMap'415C_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (27, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'414F_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'415C_))))) then raise RSL.RSL_exception ("NET.rsl:25:5: Argument of isIn" ^ RT_x_10.toString (stopId'4146_, (capacityMap'414F_, connecitonMap'415C_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'4146_, (capacityMap'414F_)));
        
        fun areDirectlyConnected'43FD_ (stopId1'4476_, stopId2'447F_, (capacityMap'4489_, connectionMap'4496_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (35, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4489_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4496_))))) then raise RSL.RSL_exception ("NET.rsl:33:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'4476_, stopId2'447F_, (capacityMap'4489_, connectionMap'4496_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'4476_, stopId2'447F_), (connectionMap'4496_)));
        
        fun capacity'426D_ (stopId'42DB_, (capacityMap'42E3_, connectionMap'42F0_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (31, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'42E3_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'42F0_))))) then raise RSL.RSL_exception ("NET.rsl:29:5: Argument of capacity" ^ RT_x_10.toString (stopId'42DB_, (capacityMap'42E3_, connectionMap'42F0_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'42E3_)) (stopId'42DB_)));
        
        val HeadwayBD'106D_ = RT_Int.fromLit "2";
        
        val StopA'389_ = RT_Text.fromLit "A";
        
        val CapacityBD'1009_ = RT_Int.fromLit "2";
        
        val StopB'519_ = RT_Text.fromLit "B";
        
        val DriveTimeBD'FA5_ = RT_Int.fromLit "7";
        
        val StopC'6A9_ = RT_Text.fromLit "C";
        
        val HeadwayBC'E79_ = RT_Int.fromLit "2";
        
        val StopD'839_ = RT_Text.fromLit "D";
        
        val CapacityBC'E15_ = RT_Int.fromLit "3";
        
        val StopF'9C9_ = RT_Text.fromLit "F";
        
        val DriveTimeBC'DB1_ = RT_Int.fromLit "12";
        
        val DriveTimeAB'BBD_ = RT_Int.fromLit "10";
        
        val HeadwayAB'C85_ = RT_Int.fromLit "1";
        
        val CapacityAB'C21_ = RT_Int.fromLit "1";
        
        val connectionMapSelfConnection'1455_ = RT_m_4.R_fromList ([((StopB'519_, StopD'839_), (HeadwayBD'106D_, DriveTimeBD'FA5_, CapacityBD'1009_)), ((StopA'389_, StopB'519_), (HeadwayAB'C85_, DriveTimeAB'BBD_, CapacityAB'C21_)), ((StopB'519_, StopC'6A9_), (HeadwayBC'E79_, DriveTimeBC'DB1_, CapacityBC'E15_)), ((StopD'839_, StopF'9C9_), (HeadwayBD'106D_, DriveTimeBD'FA5_, CapacityBD'1009_))]);
        
        val CapacityC'70D_ = RT_Int.fromLit "2";
        
        val CapacityD'89D_ = RT_Int.fromLit "2";
        
        val CapacityA'3ED_ = RT_Int.fromLit "2";
        
        val CapacityB'57D_ = RT_Int.fromLit "6";
        
        val stopCapacity'1261_ = RT_m_1.R_fromList ([(StopA'389_, CapacityA'3ED_), (StopB'519_, CapacityB'57D_), (StopC'6A9_, CapacityC'70D_), (StopD'839_, CapacityD'89D_)]);
        
        val NetWithSelfConnect'16AD_ = (stopCapacity'1261_, connectionMapSelfConnection'1455_);
        
        val connectionMap2'1329_ = RT_m_4.R_fromList ([((StopB'519_, StopD'839_), (HeadwayBD'106D_, DriveTimeBD'FA5_, CapacityBD'1009_)), ((StopA'389_, StopB'519_), (HeadwayAB'C85_, DriveTimeAB'BBD_, CapacityAB'C21_)), ((StopB'519_, StopC'6A9_), (HeadwayBC'E79_, DriveTimeBC'DB1_, CapacityBC'E15_)), ((StopD'839_, StopF'9C9_), (HeadwayBD'106D_, DriveTimeBD'FA5_, CapacityBD'1009_))]);
        
        val connectionMap'11FD_ = RT_m_4.R_fromList ([((StopB'519_, StopD'839_), (HeadwayBD'106D_, DriveTimeBD'FA5_, CapacityBD'1009_)), ((StopA'389_, StopB'519_), (HeadwayAB'C85_, DriveTimeAB'BBD_, CapacityAB'C21_)), ((StopB'519_, StopC'6A9_), (HeadwayBC'E79_, DriveTimeBC'DB1_, CapacityBC'E15_))]);
        
        val CapacityF'A2D_ = RT_Int.fromLit "2";
        
        val stopCapacity2'138D_ = RT_m_1.R_fromList ([(StopA'389_, CapacityA'3ED_), (StopB'519_, CapacityB'57D_), (StopC'6A9_, CapacityC'70D_), (StopD'839_, CapacityD'89D_), (StopF'9C9_, CapacityF'A2D_)]);
        
        val Net'1581_ = (stopCapacity'1261_, connectionMap'11FD_);
        
        val NetWithAddedStop'1649_ = (stopCapacity2'138D_, connectionMap'11FD_);
        
        val Net2'15E5_ = (stopCapacity2'138D_, connectionMap2'1329_);
        
    end;
    
open testNet;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "NET.rsl", (31, 7), (31, 26));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (35, 7), (35, 49));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (27, 7), (27, 35));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (40, 7), (43, 10));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (22, 7), (23, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (48, 7), (51, 10));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (17, 7), (17, 59));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (56, 7), (61, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (91, 7), (92, 3));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (90, 7), (92, 3));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (89, 7), (92, 3));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (74, 42), (74, 71));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (72, 7), (74, 72));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (65, 7), (67, 28));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (84, 13), (84, 54));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (79, 7), (84, 57)));
(RSL.C_output "[T_insertStop] " RT_Bool.toStringSafe (fn _ => RT_x_5.equ (((insertStop'3CF5_) (StopF'9C9_, CapacityF'A2D_, Net'1581_)), NetWithAddedStop'1649_)));

(RSL.C_output "[T_addConnection] " RT_Bool.toStringSafe (fn _ => RT_x_5.equ (((addConnection'3EE9_) (StopA'389_, StopB'519_, HeadwayAB'C85_, CapacityAB'C21_, DriveTimeAB'BBD_, Net'1581_)), Net'1581_)));

(RSL.C_output "[T_AisIn] " RT_Bool.toStringSafe (fn _ => ((isIn'40DD_) (StopA'389_, Net'1581_))));

(RSL.C_output "[T_FisNotIn] " RT_Bool.toStringSafe (fn _ => ((isIn'40DD_) (StopF'9C9_, Net'1581_))));

(RSL.C_output "[T_charAisIn] " RT_Bool.toStringSafe (fn _ => ((isIn'40DD_) (RT_Text.fromLit "A", Net'1581_))));

(RSL.C_output "[T_charBisIn] " RT_Bool.toStringSafe (fn _ => ((isIn'40DD_) (RT_Text.fromLit "B", Net'1581_))));

(RSL.C_output "[T_charTisNotIn] " RT_Bool.toStringSafe (fn _ => ((isIn'40DD_) (RT_Text.fromLit "T", Net'1581_))));

(RSL.C_output "[T_charQisNotIn] " RT_Bool.toStringSafe (fn _ => ((isIn'40DD_) (RT_Text.fromLit "Q", Net'1581_))));

(RSL.C_output "[T_isInInsertStop] " RT_Bool.toStringSafe (fn _ => ((isIn'40DD_) (StopF'9C9_, ((insertStop'3CF5_) (StopF'9C9_, RT_Int.fromLit "2", Net'1581_))))));

(RSL.C_output "[T_checkCapacityB] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'426D_) (StopB'519_, Net'1581_)), RT_Int.fromLit "6")));

(RSL.C_output "[T_checkCapacityA] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'426D_) (StopA'389_, Net'1581_)), RT_Int.fromLit "2")));

(RSL.C_output "[T_checkFalseCapacityB] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'426D_) (StopB'519_, Net'1581_)), RT_Int.fromLit "3")));

(RSL.C_output "[T_checkFalseCapacityA] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'426D_) (StopA'389_, Net'1581_)), RT_Int.fromLit "8")));

(RSL.C_output "[T_checkDirectConnectionAB] " RT_Bool.toStringSafe (fn _ => ((areDirectlyConnected'43FD_) (StopA'389_, StopB'519_, Net'1581_))));

(RSL.C_output "[T_checkNotExistingDirectConnectionAC] " RT_Bool.toStringSafe (fn _ => ((areDirectlyConnected'43FD_) (StopA'389_, StopC'6A9_, Net'1581_))));

(RSL.C_output "[T_checkDirectConnectionBC] " RT_Bool.toStringSafe (fn _ => ((areDirectlyConnected'43FD_) (StopB'519_, StopC'6A9_, Net'1581_))));

(RSL.C_output "[T_ExistingMinimumHeadwayAB] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minHeadway'45F1_) (StopA'389_, StopB'519_, Net'1581_)), HeadwayAB'C85_)));

(RSL.C_output "[T_ExistingMinimumHeadwayBC] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minHeadway'45F1_) (StopB'519_, StopC'6A9_, Net'1581_)), HeadwayBC'E79_)));

(RSL.C_output "[T_ExistingMinimumHeadwayBD] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minHeadway'45F1_) (StopB'519_, StopD'839_, Net'1581_)), HeadwayBD'106D_)));

(RSL.C_output "[T_NotExistingExistingMinimumHeadwayAB] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minHeadway'45F1_) (StopA'389_, StopD'839_, Net'1581_)), HeadwayAB'C85_)));

(RSL.C_output "[T_IsnotPresent_MinimumHeadwayAB] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((minHeadway'45F1_) (StopA'389_, StopB'519_, Net'1581_)), HeadwayBD'106D_)));

(RSL.C_output "[T_ExistingCapacityAB] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'4911_) (StopA'389_, StopB'519_, Net'1581_)), CapacityAB'C21_)));

(RSL.C_output "[T_ExistingCapacityBC] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'4911_) (StopB'519_, StopC'6A9_, Net'1581_)), CapacityBC'E15_)));

(RSL.C_output "[T_ExistingCapacityBD] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'4911_) (StopB'519_, StopD'839_, Net'1581_)), CapacityBD'1009_)));

(RSL.C_output "[T_NotExistingCapacityAD] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'4911_) (StopA'389_, StopD'839_, Net'1581_)), CapacityBD'1009_)));

(RSL.C_output "[T_FalseCapacityBD] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((capacity'4911_) (StopB'519_, StopD'839_, Net'1581_)), CapacityAB'C21_)));

(RSL.C_output "[T_ExistingMinimumDrivingTimeAB] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'4C31_) (StopA'389_, StopB'519_, Net'1581_)), DriveTimeAB'BBD_)));

(RSL.C_output "[T_ExistingMinimumDrivingTimeBC] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'4C31_) (StopB'519_, StopC'6A9_, Net'1581_)), DriveTimeBC'DB1_)));

(RSL.C_output "[T_ExistingMinimumDrivingTimeBD] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'4C31_) (StopB'519_, StopD'839_, Net'1581_)), DriveTimeBD'FA5_)));

(RSL.C_output "[T_ExistingMinimumDrivingTimeAF] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'4C31_) (StopA'389_, StopF'9C9_, Net'1581_)), DriveTimeBD'FA5_)));

(RSL.C_output "[T_FalseMinimumDrivingTimeAB] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((minDrivingTime'4C31_) (StopA'389_, StopB'519_, Net'1581_)), DriveTimeBD'FA5_)));

(RSL.C_output "[T_NotExistingSelfConnection] " RT_Bool.toStringSafe (fn _ => ((noSelfConnection'4FB5_) (Net'1581_))));

(RSL.C_output "[T_ExistingSelfConnection] " RT_Bool.toStringSafe (fn _ => ((noSelfConnection'4FB5_) (NetWithSelfConnect'16AD_))));

(RSL.C_output "[T_allStopsInConnectionMapAreInCapacityMap] " RT_Bool.toStringSafe (fn _ => ((allStopsInConnectionMapAreInCapacityMap'5271_) (Net'1581_))));

(RSL.C_output "[T_allStopsInConnectionMapAreNotInCapacityMap] " RT_Bool.toStringSafe (fn _ => ((allStopsInConnectionMapAreInCapacityMap'5271_) ((stopCapacity2'138D_, connectionMap'11FD_)))));

(RSL.C_output "[T_allStopsHaveConnection] " RT_Bool.toStringSafe (fn _ => ((allStopsHaveConnection'552D_) (Net'1581_))));

(RSL.C_output "[T_allStopsDoesnotHaveConnection] " RT_Bool.toStringSafe (fn _ => ((allStopsHaveConnection'552D_) (Net2'15E5_))));

(RSL.C_output "[T_validNet] " RT_Bool.toStringSafe (fn _ => ((isWellformed'5915_) (Net'1581_))));

(RSL.C_output "[T_NotValidNet] " RT_Bool.toStringSafe (fn _ => ((isWellformed'5915_) (Net2'15E5_))));

(RSL.C_output "[T_NotValidNetCheckinginDifferentWay] " RT_Bool.toStringSafe (fn _ => ((isWellformed'5915_) ((stopCapacity2'138D_, connectionMap'11FD_)))));

RSL.print_error_count();
R_coverage.save_marked();
