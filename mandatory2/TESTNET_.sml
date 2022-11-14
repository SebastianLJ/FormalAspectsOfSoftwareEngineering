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
        
        fun allStopsHaveConnection'5591_ (capacityMap'560C_, connectionMap'5619_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (79, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'560C_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5619_))))) then raise RSL.RSL_exception ("./NET.rsl:77:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'560C_, connectionMap'5619_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'5660_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'572D_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'5660_, stopId2'572D_), (connectionMap'5619_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (84, 13)); RT_m_4.R_mem ((stopId2'572D_, stopId'5660_), (connectionMap'5619_))))) ((capacityMap'560C_))))) ((capacityMap'560C_)))));
        
        fun noSelfConnection'5019_ (capacityMap'508E_, connectionMap'509B_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (65, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'508E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'509B_))))) then raise RSL.RSL_exception ("./NET.rsl:63:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'508E_, connectionMap'509B_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'50E9_, stopId2'50F2_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'50E9_, stopId2'50F2_)) ((connectionMap'509B_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'52D5_ (capacityMap'5361_, connectionMap'536E_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (72, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'5361_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'536E_))))) then raise RSL.RSL_exception ("./NET.rsl:70:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'5361_, connectionMap'536E_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'53A5_, stopId2'53AE_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'53A5_, (capacityMap'5361_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (74, 42)); RT_m_1.R_mem (stopId2'53AE_, (capacityMap'5361_)))) ((connectionMap'536E_)))));
        
        fun isWellformed'5979_ net'59EA_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (89, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'59EA_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("./NET.rsl:87:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'59EA_ ^ ")" ^ " not in subtype") else (((noSelfConnection'5019_) (net'59EA_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (90, 7)); (((allStopsInConnectionMapAreInCapacityMap'52D5_) (net'59EA_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); ((allStopsHaveConnection'5591_) (net'59EA_)))));
        
        val empty'3C91_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'4C95_ (stopId1'4D08_, stopId2'4D11_, (capacityMap'4D1B_, connectionMap'4D28_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (56, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4D1B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4D28_))))) then raise RSL.RSL_exception ("./NET.rsl:54:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'4D08_, stopId2'4D11_, (capacityMap'4D1B_, connectionMap'4D28_)) ^ " not in subtype") else let
            val (headway'4D64_, drivingTime'4D6D_, capacity'4D7A_) = ((((RT_m_4.R_app(connectionMap'4D28_)) (stopId1'4D08_, stopId2'4D11_))):RT_x_3.t)
        in
            drivingTime'4D6D_
        end);
        
        fun insertStop'3D59_ (stopId'3DC8_, capacity'3DD0_, (capacityMap'3DDB_, connectionMap'3DE8_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (17, 7)); if not((RT_Nat.R_ge (capacity'3DD0_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'3DDB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'3DE8_)))))) then raise RSL.RSL_exception ("./NET.rsl:15:5: Argument of insertStop" ^ RT_x_6.toString (stopId'3DC8_, capacity'3DD0_, (capacityMap'3DDB_, connectionMap'3DE8_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'3DDB_, RT_m_1.R_fromList ([(stopId'3DC8_, capacity'3DD0_)])), connectionMap'3DE8_));
        
        fun capacity'4975_ (stopId1'49E2_, stopId2'49EB_, (capacityMap'49F5_, connectionMap'4A02_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (48, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'49F5_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4A02_))))) then raise RSL.RSL_exception ("./NET.rsl:46:5: Argument of capacity" ^ RT_x_12.toString (stopId1'49E2_, stopId2'49EB_, (capacityMap'49F5_, connectionMap'4A02_)) ^ " not in subtype") else let
            val (headway'4A44_, drivingTime'4A4D_, capacity'4A5A_) = ((((RT_m_4.R_app(connectionMap'4A02_)) (stopId1'49E2_, stopId2'49EB_))):RT_x_3.t)
        in
            capacity'4A5A_
        end);
        
        fun addConnection'3F4D_ (stopId1'3FBF_, stopId2'3FC8_, headway'3FD1_, capacity'3FDA_, drivingTime'3FE4_, (capacityMap'3FF2_, connectionMap'3FFF_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (22, 7)); if not((RT_Nat.R_ge (headway'3FD1_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'3FDA_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'3FE4_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'3FF2_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'3FFF_)))))))) then raise RSL.RSL_exception ("./NET.rsl:20:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'3FBF_, stopId2'3FC8_, headway'3FD1_, capacity'3FDA_, drivingTime'3FE4_, (capacityMap'3FF2_, connectionMap'3FFF_)) ^ " not in subtype") else (capacityMap'3FF2_, RT_m_4.R_override (connectionMap'3FFF_, RT_m_4.R_fromList ([((stopId1'3FBF_, stopId2'3FC8_), (headway'3FD1_, drivingTime'3FE4_, capacity'3FDA_))]))));
        
        fun minHeadway'4655_ (stopId1'46C4_, stopId2'46CD_, (capacityMap'46D7_, connectionMap'46E4_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (40, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'46D7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'46E4_))))) then raise RSL.RSL_exception ("./NET.rsl:38:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'46C4_, stopId2'46CD_, (capacityMap'46D7_, connectionMap'46E4_)) ^ " not in subtype") else let
            val (headway'4724_, drivingTime'472D_, capacity'473A_) = ((((RT_m_4.R_app(connectionMap'46E4_)) (stopId1'46C4_, stopId2'46CD_))):RT_x_3.t)
        in
            headway'4724_
        end);
        
        fun isIn'4141_ (stopId'41AA_, (capacityMap'41B3_, connecitonMap'41C0_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (27, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'41B3_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'41C0_))))) then raise RSL.RSL_exception ("./NET.rsl:25:5: Argument of isIn" ^ RT_x_10.toString (stopId'41AA_, (capacityMap'41B3_, connecitonMap'41C0_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'41AA_, (capacityMap'41B3_)));
        
        fun areDirectlyConnected'4461_ (stopId1'44DA_, stopId2'44E3_, (capacityMap'44ED_, connectionMap'44FA_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (35, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'44ED_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'44FA_))))) then raise RSL.RSL_exception ("./NET.rsl:33:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'44DA_, stopId2'44E3_, (capacityMap'44ED_, connectionMap'44FA_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'44DA_, stopId2'44E3_), (connectionMap'44FA_)));
        
        fun capacity'42D1_ (stopId'433F_, (capacityMap'4347_, connectionMap'4354_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (31, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4347_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4354_))))) then raise RSL.RSL_exception ("./NET.rsl:29:5: Argument of capacity" ^ RT_x_10.toString (stopId'433F_, (capacityMap'4347_, connectionMap'4354_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'4347_)) (stopId'433F_)));
        
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
(R_coverage.mark(RT_Text.fromLit "./NET.rsl", (31, 7), (31, 26));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (35, 7), (35, 49));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (27, 7), (27, 35));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (40, 7), (43, 10));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (22, 7), (23, 7));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (48, 7), (51, 10));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (17, 7), (17, 59));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (56, 7), (61, 7));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (91, 7), (92, 3));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (90, 7), (92, 3));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (89, 7), (92, 3));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (74, 42), (74, 71));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (72, 7), (74, 72));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (65, 7), (67, 28));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (84, 13), (84, 54));
R_coverage.mark(RT_Text.fromLit "./NET.rsl", (79, 7), (84, 57)));
(RSL.C_output "[T01] " RT_Bool.toStringSafe (fn _ => RT_x_5.equ (((insertStop'3D59_) (StopF'9C9_, CapacityF'A2D_, Net'1581_)), NetWithAddedStop'1649_)));

(RSL.C_output "[t02] " RT_Bool.toStringSafe (fn _ => RT_x_5.equ (((addConnection'3F4D_) (StopA'389_, StopB'519_, HeadwayAB'C85_, CapacityAB'C21_, DriveTimeAB'BBD_, Net'1581_)), Net'1581_)));

(RSL.C_output "[t03] " RT_Bool.toStringSafe (fn _ => RT_x_5.equ (((addConnection'3F4D_) (StopB'519_, StopC'6A9_, HeadwayBC'E79_, CapacityBC'E15_, DriveTimeBC'DB1_, Net'1581_)), Net'1581_)));

(RSL.C_output "[t04] " RT_Bool.toStringSafe (fn _ => RT_x_5.equ (((addConnection'3F4D_) (StopB'519_, StopD'839_, HeadwayBD'106D_, CapacityBD'1009_, DriveTimeBD'FA5_, Net'1581_)), Net'1581_)));

(RSL.C_output "[T05] " RT_Bool.toStringSafe (fn _ => ((isIn'4141_) (StopA'389_, Net'1581_))));

(RSL.C_output "[T06] " RT_Bool.toStringSafe (fn _ => ((isIn'4141_) (StopF'9C9_, Net'1581_))));

(RSL.C_output "[T07] " RT_Bool.toStringSafe (fn _ => ((isIn'4141_) (RT_Text.fromLit "A", Net'1581_))));

(RSL.C_output "[T08] " RT_Bool.toStringSafe (fn _ => ((isIn'4141_) (RT_Text.fromLit "B", Net'1581_))));

(RSL.C_output "[T09] " RT_Bool.toStringSafe (fn _ => ((isIn'4141_) (RT_Text.fromLit "T", Net'1581_))));

(RSL.C_output "[T10] " RT_Bool.toStringSafe (fn _ => ((isIn'4141_) (RT_Text.fromLit "Q", Net'1581_))));

(RSL.C_output "[T11] " RT_Bool.toStringSafe (fn _ => ((isIn'4141_) (StopF'9C9_, ((insertStop'3D59_) (StopF'9C9_, RT_Int.fromLit "2", Net'1581_))))));

(RSL.C_output "[T12] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'42D1_) (StopB'519_, Net'1581_)), RT_Int.fromLit "6")));

(RSL.C_output "[T13] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'42D1_) (StopA'389_, Net'1581_)), RT_Int.fromLit "2")));

(RSL.C_output "[T14] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'42D1_) (StopB'519_, Net'1581_)), RT_Int.fromLit "3")));

(RSL.C_output "[T15] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'42D1_) (StopB'519_, Net'1581_)), RT_Int.fromLit "8")));

(RSL.C_output "[T16] " RT_Bool.toStringSafe (fn _ => ((areDirectlyConnected'4461_) (StopA'389_, StopB'519_, Net'1581_))));

(RSL.C_output "[T17] " RT_Bool.toStringSafe (fn _ => ((areDirectlyConnected'4461_) (StopA'389_, StopC'6A9_, Net'1581_))));

(RSL.C_output "[T18] " RT_Bool.toStringSafe (fn _ => ((areDirectlyConnected'4461_) (StopB'519_, StopC'6A9_, Net'1581_))));

(RSL.C_output "[t19] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minHeadway'4655_) (StopA'389_, StopB'519_, Net'1581_)), HeadwayAB'C85_)));

(RSL.C_output "[t20] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minHeadway'4655_) (StopB'519_, StopC'6A9_, Net'1581_)), HeadwayBC'E79_)));

(RSL.C_output "[t21] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minHeadway'4655_) (StopB'519_, StopD'839_, Net'1581_)), HeadwayBD'106D_)));

(RSL.C_output "[t22] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minHeadway'4655_) (StopA'389_, StopD'839_, Net'1581_)), HeadwayAB'C85_)));

(RSL.C_output "[t23] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((minHeadway'4655_) (StopA'389_, StopB'519_, Net'1581_)), HeadwayBD'106D_)));

(RSL.C_output "[t24] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'4975_) (StopA'389_, StopB'519_, Net'1581_)), CapacityAB'C21_)));

(RSL.C_output "[t25] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'4975_) (StopB'519_, StopC'6A9_, Net'1581_)), CapacityBC'E15_)));

(RSL.C_output "[t26] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'4975_) (StopB'519_, StopD'839_, Net'1581_)), CapacityBD'1009_)));

(RSL.C_output "[t27] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((capacity'4975_) (StopA'389_, StopD'839_, Net'1581_)), CapacityBD'1009_)));

(RSL.C_output "[t28] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((capacity'4975_) (StopB'519_, StopD'839_, Net'1581_)), CapacityAB'C21_)));

(RSL.C_output "[t29] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'4C95_) (StopA'389_, StopB'519_, Net'1581_)), DriveTimeAB'BBD_)));

(RSL.C_output "[t30] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'4C95_) (StopB'519_, StopC'6A9_, Net'1581_)), DriveTimeBC'DB1_)));

(RSL.C_output "[t31] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'4C95_) (StopB'519_, StopD'839_, Net'1581_)), DriveTimeBD'FA5_)));

(RSL.C_output "[t32] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((minDrivingTime'4C95_) (StopA'389_, StopF'9C9_, Net'1581_)), DriveTimeBD'FA5_)));

(RSL.C_output "[t33] " RT_Bool.toStringSafe (fn _ => (RSL.C_not RT_Nat.equ) (((minDrivingTime'4C95_) (StopA'389_, StopB'519_, Net'1581_)), DriveTimeBD'FA5_)));

(RSL.C_output "[T34] " RT_Bool.toStringSafe (fn _ => ((noSelfConnection'5019_) (Net'1581_))));

(RSL.C_output "[T35] " RT_Bool.toStringSafe (fn _ => ((noSelfConnection'5019_) (NetWithSelfConnect'16AD_))));

(RSL.C_output "[T36] " RT_Bool.toStringSafe (fn _ => ((allStopsInConnectionMapAreInCapacityMap'52D5_) (Net'1581_))));

(RSL.C_output "[T37] " RT_Bool.toStringSafe (fn _ => ((allStopsInConnectionMapAreInCapacityMap'52D5_) ((stopCapacity2'138D_, connectionMap'11FD_)))));

(RSL.C_output "[T38] " RT_Bool.toStringSafe (fn _ => ((allStopsHaveConnection'5591_) (Net'1581_))));

(RSL.C_output "[T39] " RT_Bool.toStringSafe (fn _ => ((allStopsHaveConnection'5591_) (Net2'15E5_))));

(RSL.C_output "[T40] " RT_Bool.toStringSafe (fn _ => ((isWellformed'5979_) (Net'1581_))));

(RSL.C_output "[T41] " RT_Bool.toStringSafe (fn _ => ((isWellformed'5979_) (Net2'15E5_))));

(RSL.C_output "[T42] " RT_Bool.toStringSafe (fn _ => ((isWellformed'5979_) ((stopCapacity2'138D_, connectionMap'11FD_)))));

RSL.print_error_count();
R_coverage.save_marked();
