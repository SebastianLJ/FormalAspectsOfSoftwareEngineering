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
        
        fun allStopsHaveConnection'5401_ (capacityMap'547C_, connectionMap'5489_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (79, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'547C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5489_))))) then raise RSL.RSL_exception ("NET.rsl:77:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'547C_, connectionMap'5489_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'54D0_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'559D_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'54D0_, stopId2'559D_), (connectionMap'5489_))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (84, 13)); RT_m_4.R_mem ((stopId2'559D_, stopId'54D0_), (connectionMap'5489_))))) ((capacityMap'547C_))))) ((capacityMap'547C_)))));
        
        fun noSelfConnection'4E89_ (capacityMap'4EFE_, connectionMap'4F0B_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (65, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4EFE_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4F0B_))))) then raise RSL.RSL_exception ("NET.rsl:63:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'4EFE_, connectionMap'4F0B_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'4F59_, stopId2'4F62_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'4F59_, stopId2'4F62_)) ((connectionMap'4F0B_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'5145_ (capacityMap'51D1_, connectionMap'51DE_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (72, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'51D1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'51DE_))))) then raise RSL.RSL_exception ("NET.rsl:70:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'51D1_, connectionMap'51DE_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'5215_, stopId2'521E_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'5215_, (capacityMap'51D1_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (74, 42)); RT_m_1.R_mem (stopId2'521E_, (capacityMap'51D1_)))) ((connectionMap'51DE_)))));
        
        fun isWellformed'57E9_ net'585A_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (89, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'585A_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("NET.rsl:87:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'585A_ ^ ")" ^ " not in subtype") else (((noSelfConnection'4E89_) (net'585A_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (90, 7)); (((allStopsInConnectionMapAreInCapacityMap'5145_) (net'585A_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (91, 7)); ((allStopsHaveConnection'5401_) (net'585A_)))));
        
        val empty'3B01_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'4B05_ (stopId1'4B78_, stopId2'4B81_, (capacityMap'4B8B_, connectionMap'4B98_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (56, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4B8B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4B98_))))) then raise RSL.RSL_exception ("NET.rsl:54:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'4B78_, stopId2'4B81_, (capacityMap'4B8B_, connectionMap'4B98_)) ^ " not in subtype") else let
            val (headway'4BD4_, drivingTime'4BDD_, capacity'4BEA_) = ((((RT_m_4.R_app(connectionMap'4B98_)) (stopId1'4B78_, stopId2'4B81_))):RT_x_3.t)
        in
            drivingTime'4BDD_
        end);
        
        fun insertStop'3BC9_ (stopId'3C38_, capacity'3C40_, (capacityMap'3C4B_, connectionMap'3C58_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (17, 7)); if not((RT_Nat.R_ge (capacity'3C40_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'3C4B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'3C58_)))))) then raise RSL.RSL_exception ("NET.rsl:15:5: Argument of insertStop" ^ RT_x_6.toString (stopId'3C38_, capacity'3C40_, (capacityMap'3C4B_, connectionMap'3C58_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'3C4B_, RT_m_1.R_fromList ([(stopId'3C38_, capacity'3C40_)])), connectionMap'3C58_));
        
        fun capacity'47E5_ (stopId1'4852_, stopId2'485B_, (capacityMap'4865_, connectionMap'4872_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (48, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4865_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4872_))))) then raise RSL.RSL_exception ("NET.rsl:46:5: Argument of capacity" ^ RT_x_12.toString (stopId1'4852_, stopId2'485B_, (capacityMap'4865_, connectionMap'4872_)) ^ " not in subtype") else let
            val (headway'48B4_, drivingTime'48BD_, capacity'48CA_) = ((((RT_m_4.R_app(connectionMap'4872_)) (stopId1'4852_, stopId2'485B_))):RT_x_3.t)
        in
            capacity'48CA_
        end);
        
        fun addConnection'3DBD_ (stopId1'3E2F_, stopId2'3E38_, headway'3E41_, capacity'3E4A_, drivingTime'3E54_, (capacityMap'3E62_, connectionMap'3E6F_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (22, 7)); if not((RT_Nat.R_ge (headway'3E41_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'3E4A_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'3E54_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'3E62_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'3E6F_)))))))) then raise RSL.RSL_exception ("NET.rsl:20:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'3E2F_, stopId2'3E38_, headway'3E41_, capacity'3E4A_, drivingTime'3E54_, (capacityMap'3E62_, connectionMap'3E6F_)) ^ " not in subtype") else (capacityMap'3E62_, RT_m_4.R_override (connectionMap'3E6F_, RT_m_4.R_fromList ([((stopId1'3E2F_, stopId2'3E38_), (headway'3E41_, drivingTime'3E54_, capacity'3E4A_))]))));
        
        fun minHeadway'44C5_ (stopId1'4534_, stopId2'453D_, (capacityMap'4547_, connectionMap'4554_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (40, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4547_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4554_))))) then raise RSL.RSL_exception ("NET.rsl:38:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'4534_, stopId2'453D_, (capacityMap'4547_, connectionMap'4554_)) ^ " not in subtype") else let
            val (headway'4594_, drivingTime'459D_, capacity'45AA_) = ((((RT_m_4.R_app(connectionMap'4554_)) (stopId1'4534_, stopId2'453D_))):RT_x_3.t)
        in
            headway'4594_
        end);
        
        fun isIn'3FB1_ (stopId'401A_, (capacityMap'4023_, connecitonMap'4030_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (27, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4023_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'4030_))))) then raise RSL.RSL_exception ("NET.rsl:25:5: Argument of isIn" ^ RT_x_10.toString (stopId'401A_, (capacityMap'4023_, connecitonMap'4030_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'401A_, (capacityMap'4023_)));
        
        fun areDirectlyConnected'42D1_ (stopId1'434A_, stopId2'4353_, (capacityMap'435D_, connectionMap'436A_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (35, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'435D_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'436A_))))) then raise RSL.RSL_exception ("NET.rsl:33:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'434A_, stopId2'4353_, (capacityMap'435D_, connectionMap'436A_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'434A_, stopId2'4353_), (connectionMap'436A_)));
        
        fun capacity'4141_ (stopId'41AF_, (capacityMap'41B7_, connectionMap'41C4_)) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (31, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'41B7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'41C4_))))) then raise RSL.RSL_exception ("NET.rsl:29:5: Argument of capacity" ^ RT_x_10.toString (stopId'41AF_, (capacityMap'41B7_, connectionMap'41C4_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'41B7_)) (stopId'41AF_)));
        
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
        
        val connectionMapSelfConnection'1455_ = RT_m_4.R_fromList ([((StopB'519_, StopB'519_), (HeadwayBD'106D_, DriveTimeBD'FA5_, CapacityBD'1009_)), ((StopA'389_, StopB'519_), (HeadwayAB'C85_, DriveTimeAB'BBD_, CapacityAB'C21_)), ((StopB'519_, StopC'6A9_), (HeadwayBC'E79_, DriveTimeBC'DB1_, CapacityBC'E15_)), ((StopD'839_, StopF'9C9_), (HeadwayBD'106D_, DriveTimeBD'FA5_, CapacityBD'1009_))]);
        
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
        
        val Net2'15E5_ = (stopCapacity2'138D_, connectionMap'11FD_);
        
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
(RSL.C_output "[T_insertStop] " RT_Bool.toStringSafe (fn _ => RT_x_5.equ (((insertStop'3BC9_) (StopF'9C9_, CapacityF'A2D_, Net'1581_)), NetWithAddedStop'1649_)));

(RSL.C_output "[T_addConnection] " RT_Bool.toStringSafe (fn _ => RT_x_5.equ (((addConnection'3DBD_) (StopA'389_, StopB'519_, HeadwayAB'C85_, CapacityAB'C21_, DriveTimeAB'BBD_, Net'1581_)), Net'1581_)));

(RSL.C_output "[T_AisIn] " RT_Bool.toStringSafe (fn _ => ((isIn'3FB1_) (StopA'389_, Net'1581_))));

(RSL.C_output "[T_FisNotIn] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'3FB1_) (StopF'9C9_, Net'1581_)), false)));

(RSL.C_output "[T_charAisIn] " RT_Bool.toStringSafe (fn _ => ((isIn'3FB1_) (RT_Text.fromLit "A", Net'1581_))));

(RSL.C_output "[T_charBisIn] " RT_Bool.toStringSafe (fn _ => ((isIn'3FB1_) (RT_Text.fromLit "B", Net'1581_))));

(RSL.C_output "[T_charTisNotIn] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'3FB1_) (RT_Text.fromLit "T", Net'1581_)), false)));

(RSL.C_output "[T_charQisNotIn] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'3FB1_) (RT_Text.fromLit "Q", Net'1581_)), false)));

(RSL.C_output "[T_isInInsertStop] " RT_Bool.toStringSafe (fn _ => ((isIn'3FB1_) (StopF'9C9_, ((insertStop'3BC9_) (StopF'9C9_, RT_Int.fromLit "2", Net'1581_))))));

(RSL.C_output "[T_checkCapacityB] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'4141_) (StopB'519_, Net'1581_)), RT_Int.fromLit "6")));

(RSL.C_output "[T_checkCapacityA] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'4141_) (StopA'389_, Net'1581_)), RT_Int.fromLit "2")));

(RSL.C_output "[T_checkFalseCapacityB] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((capacity'4141_) (StopB'519_, Net'1581_)), RT_Int.fromLit "3")));

(RSL.C_output "[T_checkFalseCapacityA] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((capacity'4141_) (StopA'389_, Net'1581_)), RT_Int.fromLit "8")));

(RSL.C_output "[T_checkDirectConnectionAB] " RT_Bool.toStringSafe (fn _ => ((areDirectlyConnected'42D1_) (StopA'389_, StopB'519_, Net'1581_))));

(RSL.C_output "[T_checkNotExistingDirectConnectionAC] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areDirectlyConnected'42D1_) (StopA'389_, StopC'6A9_, Net'1581_)), false)));

(RSL.C_output "[T_checkDirectConnectionBC] " RT_Bool.toStringSafe (fn _ => ((areDirectlyConnected'42D1_) (StopB'519_, StopC'6A9_, Net'1581_))));

(RSL.C_output "[T_ExistingMinimumHeadwayAB] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minHeadway'44C5_) (StopA'389_, StopB'519_, Net'1581_)), HeadwayAB'C85_)));

(RSL.C_output "[T_ExistingMinimumHeadwayBC] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minHeadway'44C5_) (StopB'519_, StopC'6A9_, Net'1581_)), HeadwayBC'E79_)));

(RSL.C_output "[T_ExistingMinimumHeadwayBD] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minHeadway'44C5_) (StopB'519_, StopD'839_, Net'1581_)), HeadwayBD'106D_)));

(RSL.C_output "[T_FalseExisting_MinimumHeadwayAB] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((minHeadway'44C5_) (StopA'389_, StopB'519_, Net'1581_)), HeadwayBD'106D_)));

(RSL.C_output "[T_ExistingCapacityAB] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'47E5_) (StopA'389_, StopB'519_, Net'1581_)), CapacityAB'C21_)));

(RSL.C_output "[T_ExistingCapacityBC] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'47E5_) (StopB'519_, StopC'6A9_, Net'1581_)), CapacityBC'E15_)));

(RSL.C_output "[T_ExistingCapacityBD] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'47E5_) (StopB'519_, StopD'839_, Net'1581_)), CapacityBD'1009_)));

(RSL.C_output "[T_FalseCapacityBD] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((capacity'47E5_) (StopB'519_, StopD'839_, Net'1581_)), CapacityAB'C21_)));

(RSL.C_output "[T_ExistingMinimumDrivingTimeAB] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'4B05_) (StopA'389_, StopB'519_, Net'1581_)), DriveTimeAB'BBD_)));

(RSL.C_output "[T_ExistingMinimumDrivingTimeBC] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'4B05_) (StopB'519_, StopC'6A9_, Net'1581_)), DriveTimeBC'DB1_)));

(RSL.C_output "[T_ExistingMinimumDrivingTimeBD] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'4B05_) (StopB'519_, StopD'839_, Net'1581_)), DriveTimeBD'FA5_)));

(RSL.C_output "[T_FalseMinimumDrivingTimeAB] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((minDrivingTime'4B05_) (StopA'389_, StopB'519_, Net'1581_)), DriveTimeBD'FA5_)));

(RSL.C_output "[T_NotExistingSelfConnection] " RT_Bool.toStringSafe (fn _ => ((noSelfConnection'4E89_) (Net'1581_))));

(RSL.C_output "[T_ExistingSelfConnection] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((noSelfConnection'4E89_) (NetWithSelfConnect'16AD_)), false)));

(RSL.C_output "[T_allStopsInConnectionMapAreInCapacityMap] " RT_Bool.toStringSafe (fn _ => ((allStopsInConnectionMapAreInCapacityMap'5145_) (Net'1581_))));

(RSL.C_output "[T_allStopsInConnectionMapAreNotInCapacityMap] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInConnectionMapAreInCapacityMap'5145_) ((stopCapacity'1261_, connectionMap2'1329_))), false)));

(RSL.C_output "[T_allStopsHaveConnection] " RT_Bool.toStringSafe (fn _ => ((allStopsHaveConnection'5401_) (Net'1581_))));

(RSL.C_output "[T_allStopsDoesnotHaveConnection] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsHaveConnection'5401_) (Net2'15E5_)), false)));

(RSL.C_output "[T_validNet] " RT_Bool.toStringSafe (fn _ => ((isWellformed'57E9_) (Net'1581_))));

(RSL.C_output "[T_NotValidNet] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'57E9_) (Net2'15E5_)), false)));

(RSL.C_output "[T_NotValidNetCheckinginDifferentWay] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'57E9_) ((stopCapacity2'138D_, connectionMap'11FD_))), false)));

RSL.print_error_count();
R_coverage.save_marked();
