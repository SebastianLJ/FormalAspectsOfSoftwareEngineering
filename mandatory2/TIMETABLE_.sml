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
        
<<<<<<< HEAD
        fun allStopsHaveConnection'6595_ (capacityMap'6610_, connectionMap'661D_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6610_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'661D_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'6610_, connectionMap'661D_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'6664_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'6731_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'6664_, stopId2'6731_), (connectionMap'661D_))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'6731_, stopId'6664_), (connectionMap'661D_))))) ((capacityMap'6610_))))) ((capacityMap'6610_)))));
        
        fun noSelfConnection'601D_ (capacityMap'6092_, connectionMap'609F_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6092_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'609F_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'6092_, connectionMap'609F_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'60ED_, stopId2'60F6_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'60ED_, stopId2'60F6_)) ((connectionMap'609F_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'62D9_ (capacityMap'6365_, connectionMap'6372_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6365_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6372_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'6365_, connectionMap'6372_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'63A9_, stopId2'63B2_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'63A9_, (capacityMap'6365_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'63B2_, (capacityMap'6365_)))) ((connectionMap'6372_)))));
        
        fun isWellformed'697D_ net'69EE_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'69EE_):RT_x_5.t)
=======
        fun allStopsHaveConnection'5D61_ (capacityMap'5DDC_, connectionMap'5DE9_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'5DDC_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5DE9_))))) then raise RSL.RSL_exception ("./NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'5DDC_, connectionMap'5DE9_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'5E30_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'5EFD_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'5E30_, stopId2'5EFD_), (connectionMap'5DE9_))) orelse (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'5EFD_, stopId'5E30_), (connectionMap'5DE9_))))) ((capacityMap'5DDC_))))) ((capacityMap'5DDC_)))));
        
        fun noSelfConnection'57E9_ (capacityMap'585E_, connectionMap'586B_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'585E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'586B_))))) then raise RSL.RSL_exception ("./NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'585E_, connectionMap'586B_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'58B9_, stopId2'58C2_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'58B9_, stopId2'58C2_)) ((connectionMap'586B_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'5AA5_ (capacityMap'5B31_, connectionMap'5B3E_) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'5B31_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5B3E_))))) then raise RSL.RSL_exception ("./NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'5B31_, connectionMap'5B3E_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'5B75_, stopId2'5B7E_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'5B75_, (capacityMap'5B31_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'5B7E_, (capacityMap'5B31_)))) ((connectionMap'5B3E_)))));
        
        fun isWellformed'6149_ net'61BA_ = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'61BA_):RT_x_5.t)
>>>>>>> 3918287d6924cf5e10983d6ce5eb95c59518458a
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
<<<<<<< HEAD
        end) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'69EE_ ^ ")" ^ " not in subtype") else (((noSelfConnection'601D_) (net'69EE_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'62D9_) (net'69EE_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (92, 7)); ((allStopsHaveConnection'6595_) (net'69EE_)))));
        
        val empty'4C95_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'5C99_ (stopId1'5D0C_, stopId2'5D15_, (capacityMap'5D1F_, connectionMap'5D2C_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'5D1F_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5D2C_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'5D0C_, stopId2'5D15_, (capacityMap'5D1F_, connectionMap'5D2C_)) ^ " not in subtype") else let
            val (headway'5D68_, drivingTime'5D71_, capacity'5D7E_) = ((((RT_m_4.R_app(connectionMap'5D2C_)) (stopId1'5D0C_, stopId2'5D15_))):RT_x_3.t)
        in
            drivingTime'5D71_
        end);
        
        fun insertStop'4D5D_ (stopId'4DCC_, capacity'4DD4_, (capacityMap'4DDF_, connectionMap'4DEC_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'4DD4_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4DDF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4DEC_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'4DCC_, capacity'4DD4_, (capacityMap'4DDF_, connectionMap'4DEC_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'4DDF_, RT_m_1.R_fromList ([(stopId'4DCC_, capacity'4DD4_)])), connectionMap'4DEC_));
        
        fun capacity'5979_ (stopId1'59E6_, stopId2'59EF_, (capacityMap'59F9_, connectionMap'5A06_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'59F9_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5A06_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'59E6_, stopId2'59EF_, (capacityMap'59F9_, connectionMap'5A06_)) ^ " not in subtype") else let
            val (headway'5A48_, drivingTime'5A51_, capacity'5A5E_) = ((((RT_m_4.R_app(connectionMap'5A06_)) (stopId1'59E6_, stopId2'59EF_))):RT_x_3.t)
        in
            capacity'5A5E_
        end);
        
        fun addConnection'4F51_ (stopId1'4FC3_, stopId2'4FCC_, headway'4FD5_, capacity'4FDE_, drivingTime'4FE8_, (capacityMap'4FF6_, connectionMap'5003_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'4FD5_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'4FDE_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'4FE8_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4FF6_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5003_)))))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'4FC3_, stopId2'4FCC_, headway'4FD5_, capacity'4FDE_, drivingTime'4FE8_, (capacityMap'4FF6_, connectionMap'5003_)) ^ " not in subtype") else (capacityMap'4FF6_, RT_m_4.R_override (connectionMap'5003_, RT_m_4.R_fromList ([((stopId1'4FC3_, stopId2'4FCC_), (headway'4FD5_, drivingTime'4FE8_, capacity'4FDE_))]))));
        
        fun minHeadway'5659_ (stopId1'56C8_, stopId2'56D1_, (capacityMap'56DB_, connectionMap'56E8_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'56DB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'56E8_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'56C8_, stopId2'56D1_, (capacityMap'56DB_, connectionMap'56E8_)) ^ " not in subtype") else let
            val (headway'5728_, drivingTime'5731_, capacity'573E_) = ((((RT_m_4.R_app(connectionMap'56E8_)) (stopId1'56C8_, stopId2'56D1_))):RT_x_3.t)
        in
            headway'5728_
        end);
        
        fun isIn'5145_ (stopId'51AE_, (capacityMap'51B7_, connecitonMap'51C4_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'51B7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'51C4_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'51AE_, (capacityMap'51B7_, connecitonMap'51C4_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'51AE_, (capacityMap'51B7_)));
        
        fun areDirectlyConnected'5465_ (stopId1'54DE_, stopId2'54E7_, (capacityMap'54F1_, connectionMap'54FE_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'54F1_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'54FE_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'54DE_, stopId2'54E7_, (capacityMap'54F1_, connectionMap'54FE_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'54DE_, stopId2'54E7_), (connectionMap'54FE_)));
        
        fun capacity'52D5_ (stopId'5343_, (capacityMap'534B_, connectionMap'5358_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'534B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'5358_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'5343_, (capacityMap'534B_, connectionMap'5358_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'534B_)) (stopId'5343_)));
=======
        end) then raise RSL.RSL_exception ("./NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'61BA_ ^ ")" ^ " not in subtype") else (((noSelfConnection'57E9_) (net'61BA_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'5AA5_) (net'61BA_))) andalso (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (92, 7)); ((allStopsHaveConnection'5D61_) (net'61BA_)))));
        
        val empty'4461_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'5465_ (stopId1'54D8_, stopId2'54E1_, (capacityMap'54EB_, connectionMap'54F8_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'54EB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'54F8_))))) then raise RSL.RSL_exception ("./NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'54D8_, stopId2'54E1_, (capacityMap'54EB_, connectionMap'54F8_)) ^ " not in subtype") else let
            val (headway'5534_, drivingTime'553D_, capacity'554A_) = ((((RT_m_4.R_app(connectionMap'54F8_)) (stopId1'54D8_, stopId2'54E1_))):RT_x_3.t)
        in
            drivingTime'553D_
        end);
        
        fun insertStop'4529_ (stopId'4598_, capacity'45A0_, (capacityMap'45AB_, connectionMap'45B8_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'45A0_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'45AB_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'45B8_)))))) then raise RSL.RSL_exception ("./NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'4598_, capacity'45A0_, (capacityMap'45AB_, connectionMap'45B8_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'45AB_, RT_m_1.R_fromList ([(stopId'4598_, capacity'45A0_)])), connectionMap'45B8_));
        
        fun capacity'5145_ (stopId1'51B2_, stopId2'51BB_, (capacityMap'51C5_, connectionMap'51D2_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'51C5_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'51D2_))))) then raise RSL.RSL_exception ("./NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'51B2_, stopId2'51BB_, (capacityMap'51C5_, connectionMap'51D2_)) ^ " not in subtype") else let
            val (headway'5214_, drivingTime'521D_, capacity'522A_) = ((((RT_m_4.R_app(connectionMap'51D2_)) (stopId1'51B2_, stopId2'51BB_))):RT_x_3.t)
        in
            capacity'522A_
        end);
        
        fun addConnection'471D_ (stopId1'478F_, stopId2'4798_, headway'47A1_, capacity'47AA_, drivingTime'47B4_, (capacityMap'47C2_, connectionMap'47CF_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'47A1_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'47AA_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'47B4_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'47C2_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'47CF_)))))))) then raise RSL.RSL_exception ("./NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'478F_, stopId2'4798_, headway'47A1_, capacity'47AA_, drivingTime'47B4_, (capacityMap'47C2_, connectionMap'47CF_)) ^ " not in subtype") else (capacityMap'47C2_, RT_m_4.R_override (connectionMap'47CF_, RT_m_4.R_fromList ([((stopId1'478F_, stopId2'4798_), (headway'47A1_, drivingTime'47B4_, capacity'47AA_))]))));
        
        fun minHeadway'4E25_ (stopId1'4E94_, stopId2'4E9D_, (capacityMap'4EA7_, connectionMap'4EB4_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4EA7_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4EB4_))))) then raise RSL.RSL_exception ("./NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'4E94_, stopId2'4E9D_, (capacityMap'4EA7_, connectionMap'4EB4_)) ^ " not in subtype") else let
            val (headway'4EF4_, drivingTime'4EFD_, capacity'4F0A_) = ((((RT_m_4.R_app(connectionMap'4EB4_)) (stopId1'4E94_, stopId2'4E9D_))):RT_x_3.t)
        in
            headway'4EF4_
        end);
        
        fun isIn'4911_ (stopId'497A_, (capacityMap'4983_, connecitonMap'4990_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4983_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'4990_))))) then raise RSL.RSL_exception ("./NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'497A_, (capacityMap'4983_, connecitonMap'4990_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'497A_, (capacityMap'4983_)));
        
        fun areDirectlyConnected'4C31_ (stopId1'4CAA_, stopId2'4CB3_, (capacityMap'4CBD_, connectionMap'4CCA_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4CBD_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4CCA_))))) then raise RSL.RSL_exception ("./NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'4CAA_, stopId2'4CB3_, (capacityMap'4CBD_, connectionMap'4CCA_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'4CAA_, stopId2'4CB3_), (connectionMap'4CCA_)));
        
        fun capacity'4AA1_ (stopId'4B0F_, (capacityMap'4B17_, connectionMap'4B24_)) = (R_coverage.cancel(RT_Text.fromLit "./NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4B17_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4B24_))))) then raise RSL.RSL_exception ("./NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'4B0F_, (capacityMap'4B17_, connectionMap'4B24_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'4B17_)) (stopId'4B0F_)));
>>>>>>> 3918287d6924cf5e10983d6ce5eb95c59518458a
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type Plan_ = RT_l_15.t;
        
<<<<<<< HEAD
        type ArrivalT_ = RT_Nat.t;
        
        type DepatureT_ = RT_Nat.t;
        
        fun isWellformed'458E_ (t'45FF_, n'4602_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (179, 28)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x113_'0_, x114_'0_, x115_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'45FF_)))) andalso (let
            val (x116_'0_, x117_'0_) = ((n'4602_):RT_x_5.t)
=======
        fun isWellformed'3D5A_ (t'3DCB_, n'3DCE_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (158, 28)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x113_'0_, x114_'0_, x115_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'3DCB_)))) andalso (let
            val (x116_'0_, x117_'0_) = ((n'3DCE_):RT_x_5.t)
>>>>>>> 3918287d6924cf5e10983d6ce5eb95c59518458a
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x116_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x120_'0_, x121_'0_, x122_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x120_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x117_'0_))))
<<<<<<< HEAD
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:178:6: Argument of isWellformed" ^ RT_x_26.toString (t'45FF_, n'4602_) ^ " not in subtype") else true);
        
        val empty'5E3_ = let val z__'5F5_ = RT_m_16.R_fromList [] in if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x123_'0_, x124_'0_, x125_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x125_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'5F5_)))) then (RSL.add_load_err("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:15:25: Value " ^ RT_m_16.toString(z__'5F5_) ^ " of empty not in subtype"); z__'5F5_) else z__'5F5_ end;
        
        fun tramStopsAtAllStopsItPasses'3C2D_ timetable'3CAD_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (156, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x110_'0_, x111_'0_, x112_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3CAD_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:154:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'3CAD_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'3CFC_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'3D63_, arrTime'3D6B_, depTime'3D74_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'3D6B_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'3D74_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'3D74_, arrTime'3D6B_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'3CAD_)) (tramid'3CFC_)))))) ((timetable'3CAD_)))));
        
        fun addTram'70F_ (tramid'77B_, timetable'783_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (20, 9)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'783_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:18:7: Argument of addTram" ^ RT_x_17.toString (tramid'77B_, timetable'783_) ^ " not in subtype") else RT_m_16.R_override (timetable'783_, RT_m_16.R_fromList ([(tramid'77B_, ([]:RT_l_15.t))])));
        
        fun nextStop'F43_ (planRow'FB0_, plan'FB9_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (41, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'FB0_):RT_x_14.t)
=======
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:157:6: Argument of isWellformed" ^ RT_x_26.toString (t'3DCB_, n'3DCE_) ^ " not in subtype") else true);
        
        val empty'4B7_ = let val z__'4C9_ = RT_m_16.R_fromList [] in if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x123_'0_, x124_'0_, x125_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x125_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'4C9_)))) then (RSL.add_load_err("./TIMETABLE.rsl:12:25: Value " ^ RT_m_16.toString(z__'4C9_) ^ " of empty not in subtype"); z__'4C9_) else z__'4C9_ end;
        
        fun tramStopsAtAllStopsItPasses'390D_ timetable'398D_ = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (148, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x110_'0_, x111_'0_, x112_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'398D_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:146:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'398D_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'39DC_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'3A43_, arrTime'3A4B_, depTime'3A54_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'3A4B_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'3A54_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'3A54_, arrTime'3A4B_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'398D_)) (tramid'39DC_)))))) ((timetable'398D_)))));
        
        fun addTram'5E3_ (tramid'64F_, timetable'657_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (17, 9)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'657_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:15:7: Argument of addTram" ^ RT_x_17.toString (tramid'64F_, timetable'657_) ^ " not in subtype") else RT_m_16.R_override (timetable'657_, RT_m_16.R_fromList ([(tramid'64F_, ([]:RT_l_15.t))])));
        
        fun nextStop'BBF_ (planRow'C2C_, plan'C35_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (32, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'C2C_):RT_x_14.t)
>>>>>>> 3918287d6924cf5e10983d6ce5eb95c59518458a
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
<<<<<<< HEAD
        end) (plan'FB9_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:39:7: Argument of nextStop" ^ RT_x_20.toString (planRow'FB0_, plan'FB9_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'FB9_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:56:13: Precondition of nextStop" ^ RT_x_20.toString (planRow'FB0_, plan'FB9_) ^ " not satisfied") else let
            val iPlanRow'1073_ = ((RT_l_15.R_hd(plan'FB9_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'1073_, planRow'FB0_) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (46, 13)); let
                val (sid'126C_, arrt'1271_, dept'1277_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'FB9_)))):RT_x_14.t)
            in
                sid'126C_
            end) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (53, 13)); ((nextStop'F43_) (planRow'FB0_, RT_l_15.R_tl(plan'FB9_))))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'3331_ (timetable'33B9_, (capacityMap'33C5_, connectionMap'33D2_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (133, 7)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x102_'0_, x103_'0_, x104_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x104_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'33B9_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'33C5_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x107_'0_, x108_'0_, x109_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'33D2_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:131:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_26.toString (timetable'33B9_, (capacityMap'33C5_, connectionMap'33D2_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'3401_, stopid2'340A_):RT_x_2.t) => let
            val (headway'3466_, drivingTime'346E_, capacity'347B_) = ((((RT_m_4.R_app(connectionMap'33D2_)) ((stopid1'3401_, stopid2'340A_)))):RT_x_3.t)
        in
            ((RT_s_18.R_all (fn (plan'3530_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
                val (x126_'0_, x127_'0_, x128_'0_) = ((x_'0_):RT_x_14.t)
            in
                (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0"))
            end) (plan'3530_))) orelse (((RT_l_15.R_all (fn ((sid1'3597_, arrt1'359D_, dept1'35A4_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt1'359D_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'35A4_, RT_Int.fromLit "0"))) orelse (not ((RT_Text.equ (sid1'3597_, stopid1'3401_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (138, 13)); RT_Text.equ (((nextStop'F43_) ((sid1'3597_, arrt1'359D_, dept1'35A4_), plan'3530_)), stopid2'340A_))) orelse (not (((RT_s_18.R_exists (fn (plan2'3665_:RT_l_15.t) => ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
                val (x129_'0_, x130_'0_, x131_'0_) = ((x_'0_):RT_x_14.t)
            in
                (RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x131_'0_, RT_Int.fromLit "0"))
            end) (plan2'3665_))) andalso (((RSL.C_not RT_l_15.equ) (plan2'3665_, plan'3530_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (140, 15)); ((RT_l_15.R_all (fn ((sid2'36C5_, arrt2'36CB_, dept2'36D2_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt2'36CB_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'36D2_, RT_Int.fromLit "0"))) orelse (not ((RT_Text.equ (sid2'36C5_, stopid1'3401_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (141, 15)); RT_Text.equ (((nextStop'F43_) ((sid2'36C5_, arrt2'36CB_, dept2'36D2_), plan'3530_)), stopid2'340A_))) orelse (RT_Nat.R_lt (RT_Nat.R_abs((RT_Nat.R_sub (dept2'36D2_, dept1'35A4_))), headway'3466_)))) (plan2'3665_)))))) (RT_m_16.R_ran((timetable'33B9_))))))))) (plan'3530_))))) (RT_m_16.R_ran((timetable'33B9_)))))
        end) ((connectionMap'33D2_)))));
        
        fun getConnection'16AF_ (stop1'1721_, stop2'1728_, (capacityMap'1730_, connectionMap'173D_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (60, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'1730_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'173D_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:58:7: Argument of getConnection" ^ RT_x_12.toString (stop1'1721_, stop2'1728_, (capacityMap'1730_, connectionMap'173D_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'1721_, stop2'1728_), (connectionMap'173D_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (62, 9)); ((RT_m_4.R_app(connectionMap'173D_)) ((stop2'1728_, stop1'1721_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (64, 9)); ((RT_m_4.R_app(connectionMap'173D_)) ((stop1'1721_, stop2'1728_)))));
        
        fun addStop'903_ (tramid'96F_, stopid'977_, arrival'97F_, departure'988_, timetable'993_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (25, 9)); if not((RT_Nat.R_ge (arrival'97F_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'988_, RT_Int.fromLit "0")) andalso ((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'993_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:23:7: Argument of addStop" ^ RT_x_19.toString (tramid'96F_, stopid'977_, arrival'97F_, departure'988_, timetable'993_) ^ " not in subtype") else RT_m_16.R_override (timetable'993_, RT_m_16.R_fromList ([(tramid'96F_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'993_)) (tramid'96F_)), [(stopid'977_, arrival'97F_, departure'988_)]))])));
        
        fun findPlanRowInPlan'2201_ (stopid1'2277_, stopid2'2280_, plan'2289_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (89, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'2289_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:87:5: Argument of findPlanRowInPlan" ^ RT_x_24.toString (stopid1'2277_, stopid2'2280_, plan'2289_) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'2289_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (91, 9)); let
            val (hStopId'23FC_, hArrTime'2405_, hDepTime'240F_) = ((RT_l_15.R_hd(plan'2289_)):RT_x_14.t); 
            val nStopId'245F_ = ((((nextStop'F43_) (RT_l_15.R_hd(plan'2289_), plan'2289_))):RT_Text.t)
        in
            if (RT_Text.equ (hStopId'23FC_, stopid1'2277_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (95, 35)); RT_Text.equ (nStopId'245F_, stopid2'2280_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (97, 13)); (hStopId'23FC_, hArrTime'2405_, hDepTime'240F_)) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (99, 13)); ((findPlanRowInPlan'2201_) (stopid1'2277_, stopid2'2280_, RT_l_15.R_tl(plan'2289_))))
        end) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (103, 9)); (RT_Text.fromLit "0", RT_Int.fromLit "0", RT_Int.fromLit "0")));
        
        fun buildAllPlansUsingConnection'1D51_ (stopid1'1DD2_, stopid2'1DDB_, plans'1DE4_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (77, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'1DE4_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:75:5: Argument of buildAllPlansUsingConnection" ^ RT_x_23.toString (stopid1'1DD2_, stopid2'1DDB_, plans'1DE4_) ^ " not in subtype") else if RT_s_18.equ (plans'1DE4_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (78, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (80, 9)); let
            val plan'1FAF_ = ((RT_s_18.R_hd(plans'1DE4_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findPlanRowInPlan'2201_) (stopid1'1DD2_, stopid2'1DDB_, plan'1FAF_))]), ((buildAllPlansUsingConnection'1D51_) (stopid1'1DD2_, stopid2'1DDB_, RT_s_18.R_diff (plans'1DE4_, RT_s_18.R_fromList ([plan'1FAF_])))))
        end));
        
        fun getAllPlansUsingConnection'1A31_ (stopid1'1AB0_, stopid2'1AB9_, timetable'1AC2_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (69, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'1AC2_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:67:5: Argument of getAllPlansUsingConnection" ^ RT_x_21.toString (stopid1'1AB0_, stopid2'1AB9_, timetable'1AC2_) ^ " not in subtype") else let
            val allPlans'1B61_ = ((RT_m_16.R_ran((timetable'1AC2_))):RT_s_18.t)
        in
            ((buildAllPlansUsingConnection'1D51_) (stopid1'1AB0_, stopid2'1AB9_, allPlans'1B61_))
        end);
        
        fun isIn'DB1_ (tramid'E1A_, timetable'E22_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (37, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'E22_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:35:5: Argument of isIn" ^ RT_x_17.toString (tramid'E1A_, timetable'E22_) ^ " not in subtype") else RT_m_16.R_mem (tramid'E1A_, (timetable'E22_)));
        
        fun timeBetweenStopsIsDrivingTime'2C8D_ (plan'2D0F_, net'2D15_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (116, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (plan'2D0F_))) andalso (let
            val (x95_'0_, x96_'0_) = ((net'2D15_):RT_x_5.t)
=======
        end) (plan'C35_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:30:7: Argument of nextStop" ^ RT_x_20.toString (planRow'C2C_, plan'C35_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'C35_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("./TIMETABLE.rsl:47:13: Precondition of nextStop" ^ RT_x_20.toString (planRow'C2C_, plan'C35_) ^ " not satisfied") else let
            val iPlanRow'CEF_ = ((RT_l_15.R_hd(plan'C35_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'CEF_, planRow'C2C_) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (37, 13)); let
                val (sid'EE8_, arrt'EED_, dept'EF3_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'C35_)))):RT_x_14.t)
            in
                sid'EE8_
            end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (44, 13)); ((nextStop'BBF_) (planRow'C2C_, RT_l_15.R_tl(plan'C35_))))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'2FAD_ (timetable'3035_, (capacityMap'3041_, connectionMap'304E_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (124, 7)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x102_'0_, x103_'0_, x104_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x104_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'3035_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'3041_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x107_'0_, x108_'0_, x109_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x109_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'304E_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:122:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_26.toString (timetable'3035_, (capacityMap'3041_, connectionMap'304E_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'307D_, stopid2'3086_):RT_x_2.t) => let
            val (headway'30E2_, drivingTime'30EA_, capacity'30F7_) = ((((RT_m_4.R_app(connectionMap'304E_)) ((stopid1'307D_, stopid2'3086_)))):RT_x_3.t)
        in
            ((RT_s_18.R_all (fn (plan'31AC_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
                val (x126_'0_, x127_'0_, x128_'0_) = ((x_'0_):RT_x_14.t)
            in
                (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0"))
            end) (plan'31AC_))) orelse (((RT_l_15.R_all (fn ((sid1'3213_, arrt1'3219_, dept1'3220_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt1'3219_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'3220_, RT_Int.fromLit "0"))) orelse (not ((RT_Text.equ (sid1'3213_, stopid1'307D_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (129, 13)); RT_Text.equ (((nextStop'BBF_) ((sid1'3213_, arrt1'3219_, dept1'3220_), plan'31AC_)), stopid2'3086_))) orelse (not (((RT_s_18.R_exists (fn (plan2'32E1_:RT_l_15.t) => ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
                val (x129_'0_, x130_'0_, x131_'0_) = ((x_'0_):RT_x_14.t)
            in
                (RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x131_'0_, RT_Int.fromLit "0"))
            end) (plan2'32E1_))) andalso (((RSL.C_not RT_l_15.equ) (plan2'32E1_, plan'31AC_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (131, 15)); ((RT_l_15.R_all (fn ((sid2'3341_, arrt2'3347_, dept2'334E_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt2'3347_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'334E_, RT_Int.fromLit "0"))) orelse (not ((RT_Text.equ (sid2'3341_, stopid1'307D_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (132, 15)); RT_Text.equ (((nextStop'BBF_) ((sid2'3341_, arrt2'3347_, dept2'334E_), plan'31AC_)), stopid2'3086_))) orelse (RT_Nat.R_lt (RT_Nat.R_abs((RT_Nat.R_sub (dept2'334E_, dept1'3220_))), headway'30E2_)))) (plan2'32E1_)))))) (RT_m_16.R_ran((timetable'3035_))))))))) (plan'31AC_))))) (RT_m_16.R_ran((timetable'3035_)))))
        end) ((connectionMap'304E_)))));
        
        fun getConnection'132B_ (stop1'139D_, stop2'13A4_, (capacityMap'13AC_, connectionMap'13B9_)) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (51, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'13AC_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'13B9_))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:49:7: Argument of getConnection" ^ RT_x_12.toString (stop1'139D_, stop2'13A4_, (capacityMap'13AC_, connectionMap'13B9_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'139D_, stop2'13A4_), (connectionMap'13B9_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (53, 9)); ((RT_m_4.R_app(connectionMap'13B9_)) ((stop2'13A4_, stop1'139D_)))) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (55, 9)); ((RT_m_4.R_app(connectionMap'13B9_)) ((stop1'139D_, stop2'13A4_)))));
        
        fun addStop'7D7_ (tramid'843_, stopid'84B_, arrival'853_, departure'85C_, timetable'867_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (22, 9)); if not((RT_Nat.R_ge (arrival'853_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'85C_, RT_Int.fromLit "0")) andalso ((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'867_)))))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:20:7: Argument of addStop" ^ RT_x_19.toString (tramid'843_, stopid'84B_, arrival'853_, departure'85C_, timetable'867_) ^ " not in subtype") else RT_m_16.R_override (timetable'867_, RT_m_16.R_fromList ([(tramid'843_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'867_)) (tramid'843_)), [(stopid'84B_, arrival'853_, departure'85C_)]))])));
        
        fun findPlanRowInPlan'1E7D_ (stopid1'1EF3_, stopid2'1EFC_, plan'1F05_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (80, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'1F05_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:78:5: Argument of findPlanRowInPlan" ^ RT_x_24.toString (stopid1'1EF3_, stopid2'1EFC_, plan'1F05_) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'1F05_), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (82, 9)); let
            val (hStopId'2078_, hArrTime'2081_, hDepTime'208B_) = ((RT_l_15.R_hd(plan'1F05_)):RT_x_14.t); 
            val nStopId'20DB_ = ((((nextStop'BBF_) (RT_l_15.R_hd(plan'1F05_), plan'1F05_))):RT_Text.t)
        in
            if (RT_Text.equ (hStopId'2078_, stopid1'1EF3_)) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (86, 35)); RT_Text.equ (nStopId'20DB_, stopid2'1EFC_)) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (88, 13)); (hStopId'2078_, hArrTime'2081_, hDepTime'208B_)) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (90, 13)); ((findPlanRowInPlan'1E7D_) (stopid1'1EF3_, stopid2'1EFC_, RT_l_15.R_tl(plan'1F05_))))
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (94, 9)); (RT_Text.fromLit "0", RT_Int.fromLit "0", RT_Int.fromLit "0")));
        
        fun buildAllPlansUsingConnection'19CD_ (stopid1'1A4E_, stopid2'1A57_, plans'1A60_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (68, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'1A60_))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:66:5: Argument of buildAllPlansUsingConnection" ^ RT_x_23.toString (stopid1'1A4E_, stopid2'1A57_, plans'1A60_) ^ " not in subtype") else if RT_s_18.equ (plans'1A60_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (69, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (71, 9)); let
            val plan'1C2B_ = ((RT_s_18.R_hd(plans'1A60_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findPlanRowInPlan'1E7D_) (stopid1'1A4E_, stopid2'1A57_, plan'1C2B_))]), ((buildAllPlansUsingConnection'19CD_) (stopid1'1A4E_, stopid2'1A57_, RT_s_18.R_diff (plans'1A60_, RT_s_18.R_fromList ([plan'1C2B_])))))
        end));
        
        fun getAllPlansUsingConnection'16AD_ (stopid1'172C_, stopid2'1735_, timetable'173E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (60, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'173E_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:58:5: Argument of getAllPlansUsingConnection" ^ RT_x_21.toString (stopid1'172C_, stopid2'1735_, timetable'173E_) ^ " not in subtype") else let
            val allPlans'17DD_ = ((RT_m_16.R_ran((timetable'173E_))):RT_s_18.t)
        in
            ((buildAllPlansUsingConnection'19CD_) (stopid1'172C_, stopid2'1735_, allPlans'17DD_))
        end);
        
        fun isIn'A2D_ (tramid'A96_, timetable'A9E_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (28, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'A9E_)))) then raise RSL.RSL_exception ("./TIMETABLE.rsl:26:5: Argument of isIn" ^ RT_x_17.toString (tramid'A96_, timetable'A9E_) ^ " not in subtype") else RT_m_16.R_mem (tramid'A96_, (timetable'A9E_)));
        
        fun timeBetweenStopsIsDrivingTime'2909_ (plan'298B_, net'2991_) = (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (107, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (plan'298B_))) andalso (let
            val (x95_'0_, x96_'0_) = ((net'2991_):RT_x_5.t)
>>>>>>> 3918287d6924cf5e10983d6ce5eb95c59518458a
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x95_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x99_'0_, x100_'0_, x101_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x101_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x96_'0_))))
<<<<<<< HEAD
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:114:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_25.toString (plan'2D0F_, net'2D15_) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'2D0F_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (117, 9)); let
            val (stopid1'2E24_, arrTime1'2E2D_, depTime1'2E37_) = ((RT_l_15.R_hd(plan'2D0F_)):RT_x_14.t); 
            val (stopid2'2E88_, arrTime2'2E91_, depTime2'2E9B_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'2D0F_)))):RT_x_14.t)
        in
            let
                val (headway'2FB6_, drivingTime'2FBE_, capacity'2FCB_) = ((((getConnection'16AF_) (stopid1'2E24_, stopid2'2E88_, net'2D15_))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (depTime1'2E37_, arrTime2'2E91_), drivingTime'2FBE_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (124, 53)); ((timeBetweenStopsIsDrivingTime'2C8D_) (RT_l_15.R_tl(plan'2D0F_), net'2D15_)))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (128, 9)); true));
=======
        end)) then raise RSL.RSL_exception ("./TIMETABLE.rsl:105:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_25.toString (plan'298B_, net'2991_) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'298B_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (108, 9)); let
            val (stopid1'2AA0_, arrTime1'2AA9_, depTime1'2AB3_) = ((RT_l_15.R_hd(plan'298B_)):RT_x_14.t); 
            val (stopid2'2B04_, arrTime2'2B0D_, depTime2'2B17_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'298B_)))):RT_x_14.t)
        in
            let
                val (headway'2C32_, drivingTime'2C3A_, capacity'2C47_) = ((((getConnection'132B_) (stopid1'2AA0_, stopid2'2B04_, net'2991_))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (depTime1'2AB3_, arrTime2'2B0D_), drivingTime'2C3A_))) andalso (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (115, 53)); ((timeBetweenStopsIsDrivingTime'2909_) (RT_l_15.R_tl(plan'298B_), net'2991_)))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "./TIMETABLE.rsl", (119, 9)); true));
>>>>>>> 3918287d6924cf5e10983d6ce5eb95c59518458a
        
    end;
    
open TIMETABLE;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
<<<<<<< HEAD
(R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (124, 53), (125, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (128, 9), (129, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (117, 9), (127, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (116, 7), (129, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (37, 7), (37, 33));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (69, 7), (73, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (80, 9), (85, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (78, 12), (79, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (77, 7), (85, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (95, 35), (96, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (99, 13), (100, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (97, 13), (98, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (103, 9), (104, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (91, 9), (102, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (89, 7), (107, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (25, 9), (33, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (64, 9), (65, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (62, 9), (63, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (60, 7), (65, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (141, 15), (141, 63));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (140, 15), (144, 17));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (138, 13), (138, 61));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (133, 7), (149, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (53, 13), (54, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (46, 13), (52, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (41, 9), (56, 25));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (20, 9), (20, 38));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (156, 7), (160, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (179, 28), (181, 3));
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
=======
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
>>>>>>> 3918287d6924cf5e10983d6ce5eb95c59518458a
RSL.print_error_count();
R_coverage.save_marked();
