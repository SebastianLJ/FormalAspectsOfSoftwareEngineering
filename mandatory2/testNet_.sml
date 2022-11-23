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
        
        type Connection_ = RT_x_3.t;
        
        type ConnectionMap_ = RT_m_4.t;
        
        fun allStopsHaveConnection'5465_ (capacityMap'54E0_, connectionMap'54ED_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'54E0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'54ED_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'54E0_, connectionMap'54ED_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'5534_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'5601_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'5534_, stopId2'5601_), (connectionMap'54ED_))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'5601_, stopId'5534_), (connectionMap'54ED_))))) ((capacityMap'54E0_))))) ((capacityMap'54E0_)))));
        
        fun noSelfConnection'4EED_ (capacityMap'4F62_, connectionMap'4F6F_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4F62_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4F6F_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'4F62_, connectionMap'4F6F_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'4FBD_, stopId2'4FC6_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'4FBD_, stopId2'4FC6_)) ((connectionMap'4F6F_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'51A9_ (capacityMap'5235_, connectionMap'5242_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'5235_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5242_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'5235_, connectionMap'5242_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'5279_, stopId2'5282_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'5279_, (capacityMap'5235_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'5282_, (capacityMap'5235_)))) ((connectionMap'5242_)))));
        
        fun isWellformed'584D_ net'58BE_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'58BE_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'58BE_ ^ ")" ^ " not in subtype") else (((noSelfConnection'4EED_) (net'58BE_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'51A9_) (net'58BE_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (92, 7)); ((allStopsHaveConnection'5465_) (net'58BE_)))));
        
        val empty'3B65_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'4B69_ (stopId1'4BDC_, stopId2'4BE5_, (capacityMap'4BEF_, connectionMap'4BFC_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4BEF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4BFC_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'4BDC_, stopId2'4BE5_, (capacityMap'4BEF_, connectionMap'4BFC_)) ^ " not in subtype") else let
            val (headway'4C38_, drivingTime'4C41_, capacity'4C4E_) = ((((RT_m_4.R_app(connectionMap'4BFC_)) (stopId1'4BDC_, stopId2'4BE5_))):RT_x_3.t)
        in
            drivingTime'4C41_
        end);
        
        fun insertStop'3C2D_ (stopId'3C9C_, capacity'3CA4_, (capacityMap'3CAF_, connectionMap'3CBC_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'3CA4_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'3CAF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'3CBC_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'3C9C_, capacity'3CA4_, (capacityMap'3CAF_, connectionMap'3CBC_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'3CAF_, RT_m_1.R_fromList ([(stopId'3C9C_, capacity'3CA4_)])), connectionMap'3CBC_));
        
        fun capacity'4849_ (stopId1'48B6_, stopId2'48BF_, (capacityMap'48C9_, connectionMap'48D6_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'48C9_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'48D6_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'48B6_, stopId2'48BF_, (capacityMap'48C9_, connectionMap'48D6_)) ^ " not in subtype") else let
            val (headway'4918_, drivingTime'4921_, capacity'492E_) = ((((RT_m_4.R_app(connectionMap'48D6_)) (stopId1'48B6_, stopId2'48BF_))):RT_x_3.t)
        in
            capacity'492E_
        end);
        
        fun addConnection'3E21_ (stopId1'3E93_, stopId2'3E9C_, headway'3EA5_, capacity'3EAE_, drivingTime'3EB8_, (capacityMap'3EC6_, connectionMap'3ED3_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'3EA5_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'3EAE_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'3EB8_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'3EC6_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'3ED3_)))))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'3E93_, stopId2'3E9C_, headway'3EA5_, capacity'3EAE_, drivingTime'3EB8_, (capacityMap'3EC6_, connectionMap'3ED3_)) ^ " not in subtype") else (capacityMap'3EC6_, RT_m_4.R_override (connectionMap'3ED3_, RT_m_4.R_fromList ([((stopId1'3E93_, stopId2'3E9C_), (headway'3EA5_, drivingTime'3EB8_, capacity'3EAE_))]))));
        
        fun minHeadway'4529_ (stopId1'4598_, stopId2'45A1_, (capacityMap'45AB_, connectionMap'45B8_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'45AB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'45B8_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'4598_, stopId2'45A1_, (capacityMap'45AB_, connectionMap'45B8_)) ^ " not in subtype") else let
            val (headway'45F8_, drivingTime'4601_, capacity'460E_) = ((((RT_m_4.R_app(connectionMap'45B8_)) (stopId1'4598_, stopId2'45A1_))):RT_x_3.t)
        in
            headway'45F8_
        end);
        
        fun isIn'4015_ (stopId'407E_, (capacityMap'4087_, connecitonMap'4094_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4087_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'4094_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'407E_, (capacityMap'4087_, connecitonMap'4094_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'407E_, (capacityMap'4087_)));
        
        fun areDirectlyConnected'4335_ (stopId1'43AE_, stopId2'43B7_, (capacityMap'43C1_, connectionMap'43CE_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'43C1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'43CE_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'43AE_, stopId2'43B7_, (capacityMap'43C1_, connectionMap'43CE_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'43AE_, stopId2'43B7_), (connectionMap'43CE_)));
        
        fun capacity'41A5_ (stopId'4213_, (capacityMap'421B_, connectionMap'4228_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'421B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4228_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'4213_, (capacityMap'421B_, connectionMap'4228_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'421B_)) (stopId'4213_)));
        
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
(R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (32, 7), (32, 26));
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
(RSL.C_output "[T_insertStop] " RT_Bool.toStringSafe (fn _ => RT_x_5.equ (((insertStop'3C2D_) (StopF'9C9_, CapacityF'A2D_, Net'1581_)), NetWithAddedStop'1649_)));

(RSL.C_output "[T_addConnection] " RT_Bool.toStringSafe (fn _ => RT_x_5.equ (((addConnection'3E21_) (StopA'389_, StopB'519_, HeadwayAB'C85_, CapacityAB'C21_, DriveTimeAB'BBD_, Net'1581_)), Net'1581_)));

(RSL.C_output "[T_AisIn] " RT_Bool.toStringSafe (fn _ => ((isIn'4015_) (StopA'389_, Net'1581_))));

(RSL.C_output "[T_FisNotIn] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4015_) (StopF'9C9_, Net'1581_)), false)));

(RSL.C_output "[T_charAisIn] " RT_Bool.toStringSafe (fn _ => ((isIn'4015_) (RT_Text.fromLit "A", Net'1581_))));

(RSL.C_output "[T_charBisIn] " RT_Bool.toStringSafe (fn _ => ((isIn'4015_) (RT_Text.fromLit "B", Net'1581_))));

(RSL.C_output "[T_charTisNotIn] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4015_) (RT_Text.fromLit "T", Net'1581_)), false)));

(RSL.C_output "[T_charQisNotIn] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isIn'4015_) (RT_Text.fromLit "Q", Net'1581_)), false)));

(RSL.C_output "[T_isInInsertStop] " RT_Bool.toStringSafe (fn _ => ((isIn'4015_) (StopF'9C9_, ((insertStop'3C2D_) (StopF'9C9_, RT_Int.fromLit "2", Net'1581_))))));

(RSL.C_output "[T_checkCapacityB] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'41A5_) (StopB'519_, Net'1581_)), RT_Int.fromLit "6")));

(RSL.C_output "[T_checkCapacityA] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'41A5_) (StopA'389_, Net'1581_)), RT_Int.fromLit "2")));

(RSL.C_output "[T_checkFalseCapacityB] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((capacity'41A5_) (StopB'519_, Net'1581_)), RT_Int.fromLit "3")));

(RSL.C_output "[T_checkFalseCapacityA] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((capacity'41A5_) (StopA'389_, Net'1581_)), RT_Int.fromLit "8")));

(RSL.C_output "[T_checkDirectConnectionAB] " RT_Bool.toStringSafe (fn _ => ((areDirectlyConnected'4335_) (StopA'389_, StopB'519_, Net'1581_))));

(RSL.C_output "[T_checkNotExistingDirectConnectionAC] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areDirectlyConnected'4335_) (StopA'389_, StopC'6A9_, Net'1581_)), false)));

(RSL.C_output "[T_checkDirectConnectionBC] " RT_Bool.toStringSafe (fn _ => ((areDirectlyConnected'4335_) (StopB'519_, StopC'6A9_, Net'1581_))));

(RSL.C_output "[T_ExistingMinimumHeadwayAB] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minHeadway'4529_) (StopA'389_, StopB'519_, Net'1581_)), HeadwayAB'C85_)));

(RSL.C_output "[T_ExistingMinimumHeadwayBC] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minHeadway'4529_) (StopB'519_, StopC'6A9_, Net'1581_)), HeadwayBC'E79_)));

(RSL.C_output "[T_ExistingMinimumHeadwayBD] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minHeadway'4529_) (StopB'519_, StopD'839_, Net'1581_)), HeadwayBD'106D_)));

(RSL.C_output "[T_FalseExisting_MinimumHeadwayAB] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((minHeadway'4529_) (StopA'389_, StopB'519_, Net'1581_)), HeadwayBD'106D_)));

(RSL.C_output "[T_ExistingCapacityAB] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'4849_) (StopA'389_, StopB'519_, Net'1581_)), CapacityAB'C21_)));

(RSL.C_output "[T_ExistingCapacityBC] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'4849_) (StopB'519_, StopC'6A9_, Net'1581_)), CapacityBC'E15_)));

(RSL.C_output "[T_ExistingCapacityBD] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'4849_) (StopB'519_, StopD'839_, Net'1581_)), CapacityBD'1009_)));

(RSL.C_output "[T_FalseCapacityBD] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((capacity'4849_) (StopB'519_, StopD'839_, Net'1581_)), CapacityAB'C21_)));

(RSL.C_output "[T_ExistingMinimumDrivingTimeAB] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'4B69_) (StopA'389_, StopB'519_, Net'1581_)), DriveTimeAB'BBD_)));

(RSL.C_output "[T_ExistingMinimumDrivingTimeBC] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'4B69_) (StopB'519_, StopC'6A9_, Net'1581_)), DriveTimeBC'DB1_)));

(RSL.C_output "[T_ExistingMinimumDrivingTimeBD] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'4B69_) (StopB'519_, StopD'839_, Net'1581_)), DriveTimeBD'FA5_)));

(RSL.C_output "[T_FalseMinimumDrivingTimeAB] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((minDrivingTime'4B69_) (StopA'389_, StopB'519_, Net'1581_)), DriveTimeBD'FA5_)));

(RSL.C_output "[T_NotExistingSelfConnection] " RT_Bool.toStringSafe (fn _ => ((noSelfConnection'4EED_) (Net'1581_))));

(RSL.C_output "[T_ExistingSelfConnection] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((noSelfConnection'4EED_) (NetWithSelfConnect'16AD_)), false)));

(RSL.C_output "[T_allStopsInConnectionMapAreInCapacityMap] " RT_Bool.toStringSafe (fn _ => ((allStopsInConnectionMapAreInCapacityMap'51A9_) (Net'1581_))));

(RSL.C_output "[T_allStopsInConnectionMapAreNotInCapacityMap] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsInConnectionMapAreInCapacityMap'51A9_) ((stopCapacity'1261_, connectionMap2'1329_))), false)));

(RSL.C_output "[T_allStopsHaveConnection] " RT_Bool.toStringSafe (fn _ => ((allStopsHaveConnection'5465_) (Net'1581_))));

(RSL.C_output "[T_allStopsDoesnotHaveConnection] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((allStopsHaveConnection'5465_) (Net2'15E5_)), false)));

(RSL.C_output "[T_validNet] " RT_Bool.toStringSafe (fn _ => ((isWellformed'584D_) (Net'1581_))));

(RSL.C_output "[T_NotValidNet] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'584D_) (Net2'15E5_)), false)));

(RSL.C_output "[T_NotValidNetCheckinginDifferentWay] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'584D_) ((stopCapacity2'138D_, connectionMap'11FD_))), false)));

RSL.print_error_count();
R_coverage.save_marked();
