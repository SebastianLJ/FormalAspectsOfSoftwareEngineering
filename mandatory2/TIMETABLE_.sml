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
        type t = RT_Text.t * RT_Text.t * RT_m_16.t * RT_m_4.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_m_16.equ(#3 x, #3 y) andalso 
                             RT_m_4.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_m_16.toString(#3 x )) ^ "," ^
                             (RT_m_4.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_m_16.typeToString ()) ^ " >< " ^
                              (RT_m_4.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_28 =
    struct
        type t = RT_Text.t * RT_Nat.t * RT_Nat.t * RT_s_22.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Nat.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_s_22.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Nat.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_s_22.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_s_22.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_29 =
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
    
structure RT_x_30 =
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
    
structure RT_x_31 =
    struct
        type t = RT_Text.t * RT_m_16.t * RT_m_1.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_m_16.equ(#2 x, #2 y) andalso 
                             RT_m_1.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_m_16.toString(#2 x )) ^ "," ^
                             (RT_m_1.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_m_16.typeToString ()) ^ " >< " ^
                              (RT_m_1.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_32 =
    struct
        type t = RT_Text.t * RT_s_11.t * RT_m_16.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_s_11.equ(#2 x, #2 y) andalso 
                             RT_m_16.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_s_11.toString(#2 x )) ^ "," ^
                             (RT_m_16.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_11.typeToString ()) ^ " >< " ^
                              (RT_m_16.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_33 =
    struct
        type t = RT_Text.t * RT_l_15.t * RT_Text.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_l_15.equ(#2 x, #2 y) andalso 
                             RT_Text.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_l_15.toString(#2 x )) ^ "," ^
                             (RT_Text.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
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
        
        fun allStopsHaveConnection'AC49_ (capacityMap'ACC4_, connectionMap'ACD1_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (80, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'ACC4_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x53_'0_, x54_'0_, x55_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x53_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x54_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x55_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'ACD1_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:78:5: Argument of allStopsHaveConnection" ^ RT_x_5.toString (capacityMap'ACC4_, connectionMap'ACD1_) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopId'AD18_:RT_Text.t) => ((RT_m_1.R_exists (fn (stopId2'ADE5_:RT_Text.t) => ((RT_m_4.R_mem ((stopId'AD18_, stopId2'ADE5_), (connectionMap'ACD1_))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (85, 13)); RT_m_4.R_mem ((stopId2'ADE5_, stopId'AD18_), (connectionMap'ACD1_))))) ((capacityMap'ACC4_))))) ((capacityMap'ACC4_)))));
        
        fun noSelfConnection'A6D1_ (capacityMap'A746_, connectionMap'A753_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (66, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'A746_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x43_'0_, x44_'0_, x45_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x44_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x45_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'A753_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:64:5: Argument of noSelfConnection" ^ RT_x_5.toString (capacityMap'A746_, connectionMap'A753_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'A7A1_, stopId2'A7AA_):RT_x_2.t) => (RSL.C_not RT_Text.equ) (stopId1'A7A1_, stopId2'A7AA_)) ((connectionMap'A753_)))));
        
        fun allStopsInConnectionMapAreInCapacityMap'A98D_ (capacityMap'AA19_, connectionMap'AA26_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (73, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'AA19_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x48_'0_, x49_'0_, x50_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x49_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'AA26_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:71:5: Argument of allStopsInConnectionMapAreInCapacityMap" ^ RT_x_5.toString (capacityMap'AA19_, connectionMap'AA26_) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopId1'AA5D_, stopId2'AA66_):RT_x_2.t) => (RT_m_1.R_mem (stopId1'AA5D_, (capacityMap'AA19_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (75, 42)); RT_m_1.R_mem (stopId2'AA66_, (capacityMap'AA19_)))) ((connectionMap'AA26_)))));
        
        fun isWellformed'B031_ net'B0A2_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (90, 7)); if not(let
            val (x56_'0_, x57_'0_) = ((net'B0A2_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x56_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x60_'0_, x61_'0_, x62_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x62_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x57_'0_))))
        end) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:88:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'B0A2_ ^ ")" ^ " not in subtype") else (((noSelfConnection'A6D1_) (net'B0A2_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (91, 7)); (((allStopsInConnectionMapAreInCapacityMap'A98D_) (net'B0A2_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (92, 7)); ((allStopsHaveConnection'AC49_) (net'B0A2_)))));
        
        val empty'9349_ = (RT_m_1.R_fromList [], RT_m_4.R_fromList []);
        
        fun minDrivingTime'A34D_ (stopId1'A3C0_, stopId2'A3C9_, (capacityMap'A3D3_, connectionMap'A3E0_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (57, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'A3D3_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x38_'0_, x39_'0_, x40_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x38_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x40_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'A3E0_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:55:5: Argument of minDrivingTime" ^ RT_x_12.toString (stopId1'A3C0_, stopId2'A3C9_, (capacityMap'A3D3_, connectionMap'A3E0_)) ^ " not in subtype") else let
            val (headway'A41C_, drivingTime'A425_, capacity'A432_) = ((((RT_m_4.R_app(connectionMap'A3E0_)) (stopId1'A3C0_, stopId2'A3C9_))):RT_x_3.t)
        in
            drivingTime'A425_
        end);
        
        fun insertStop'9411_ (stopId'9480_, capacity'9488_, (capacityMap'9493_, connectionMap'94A0_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (18, 7)); if not((RT_Nat.R_ge (capacity'9488_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'9493_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x3_'0_, x4_'0_, x5_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x3_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x5_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'94A0_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:16:5: Argument of insertStop" ^ RT_x_6.toString (stopId'9480_, capacity'9488_, (capacityMap'9493_, connectionMap'94A0_)) ^ " not in subtype") else (RT_m_1.R_override (capacityMap'9493_, RT_m_1.R_fromList ([(stopId'9480_, capacity'9488_)])), connectionMap'94A0_));
        
        fun capacity'A02D_ (stopId1'A09A_, stopId2'A0A3_, (capacityMap'A0AD_, connectionMap'A0BA_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (49, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'A0AD_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'A0BA_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:47:5: Argument of capacity" ^ RT_x_12.toString (stopId1'A09A_, stopId2'A0A3_, (capacityMap'A0AD_, connectionMap'A0BA_)) ^ " not in subtype") else let
            val (headway'A0FC_, drivingTime'A105_, capacity'A112_) = ((((RT_m_4.R_app(connectionMap'A0BA_)) (stopId1'A09A_, stopId2'A0A3_))):RT_x_3.t)
        in
            capacity'A112_
        end);
        
        fun addConnection'9605_ (stopId1'9677_, stopId2'9680_, headway'9689_, capacity'9692_, drivingTime'969C_, (capacityMap'96AA_, connectionMap'96B7_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (23, 7)); if not((RT_Nat.R_ge (headway'9689_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (capacity'9692_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (drivingTime'969C_, RT_Int.fromLit "0")) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'96AA_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x8_'0_, x9_'0_, x10_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x10_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'96B7_)))))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:21:5: Argument of addConnection" ^ RT_x_9.toString (stopId1'9677_, stopId2'9680_, headway'9689_, capacity'9692_, drivingTime'969C_, (capacityMap'96AA_, connectionMap'96B7_)) ^ " not in subtype") else (capacityMap'96AA_, RT_m_4.R_override (connectionMap'96B7_, RT_m_4.R_fromList ([((stopId1'9677_, stopId2'9680_), (headway'9689_, drivingTime'969C_, capacity'9692_))]))));
        
        fun minHeadway'9D0D_ (stopId1'9D7C_, stopId2'9D85_, (capacityMap'9D8F_, connectionMap'9D9C_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (41, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'9D8F_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x28_'0_, x29_'0_, x30_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x29_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'9D9C_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:39:5: Argument of minHeadway" ^ RT_x_12.toString (stopId1'9D7C_, stopId2'9D85_, (capacityMap'9D8F_, connectionMap'9D9C_)) ^ " not in subtype") else let
            val (headway'9DDC_, drivingTime'9DE5_, capacity'9DF2_) = ((((RT_m_4.R_app(connectionMap'9D9C_)) (stopId1'9D7C_, stopId2'9D85_))):RT_x_3.t)
        in
            headway'9DDC_
        end);
        
        fun isIn'97F9_ (stopId'9862_, (capacityMap'986B_, connecitonMap'9878_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (28, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'986B_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x13_'0_, x14_'0_, x15_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x14_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x15_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connecitonMap'9878_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:26:5: Argument of isIn" ^ RT_x_10.toString (stopId'9862_, (capacityMap'986B_, connecitonMap'9878_)) ^ " not in subtype") else RT_m_1.R_mem (stopId'9862_, (capacityMap'986B_)));
        
        fun areDirectlyConnected'9B19_ (stopId1'9B92_, stopId2'9B9B_, (capacityMap'9BA5_, connectionMap'9BB2_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (36, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'9BA5_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x23_'0_, x24_'0_, x25_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x23_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x25_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'9BB2_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:34:5: Argument of areDirectlyConnected" ^ RT_x_12.toString (stopId1'9B92_, stopId2'9B9B_, (capacityMap'9BA5_, connectionMap'9BB2_)) ^ " not in subtype") else RT_m_4.R_mem ((stopId1'9B92_, stopId2'9B9B_), (connectionMap'9BB2_)));
        
        fun capacity'9989_ (stopId'99F7_, (capacityMap'99FF_, connectionMap'9A0C_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl", (32, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'99FF_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x18_'0_, x19_'0_, x20_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x18_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x19_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'9A0C_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/NET.rsl:30:5: Argument of capacity" ^ RT_x_10.toString (stopId'99F7_, (capacityMap'99FF_, connectionMap'9A0C_)) ^ " not in subtype") else ((RT_m_1.R_app(capacityMap'99FF_)) (stopId'99F7_)));
        
        type TimeTable_ = RT_m_16.t;
        
        type TramId_ = RT_Text.t;
        
        type PlanRow_ = RT_x_14.t;
        
        type Plan_ = RT_l_15.t;
        
        fun tramStopsAtAllStopsItPasses'4DC1_ timetable'4E41_ = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (201, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x117_'0_, x118_'0_, x119_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x118_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'4E41_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:199:5: Argument of tramStopsAtAllStopsItPasses" ^ "(" ^ RT_m_16.toString timetable'4E41_ ^ ")" ^ " not in subtype") else ((RT_m_16.R_all (fn (tramid'4E90_:RT_Text.t) => ((RT_l_15.R_all (fn ((stopid'4EF7_, arrTime'4EFF_, depTime'4F08_):RT_x_14.t) => not ((RT_Nat.R_ge (arrTime'4EFF_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (depTime'4F08_, RT_Int.fromLit "0"))) orelse (RT_Nat.R_ge (RT_Nat.R_sub (depTime'4F08_, arrTime'4EFF_), RT_Int.fromLit "1"))) (((RT_m_16.R_app(timetable'4E41_)) (tramid'4E90_)))))) ((timetable'4E41_)))));
        
        fun getConnection'183F_ (stop1'18B1_, stop2'18B8_, (capacityMap'18C0_, connectionMap'18CD_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (64, 7)); if not(((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'18C0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x80_'0_, x81_'0_, x82_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x80_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x81_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'18CD_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:62:7: Argument of getConnection" ^ RT_x_12.toString (stop1'18B1_, stop2'18B8_, (capacityMap'18C0_, connectionMap'18CD_)) ^ " not in subtype") else if RT_m_4.R_mem ((stop1'18B1_, stop2'18B8_), (connectionMap'18CD_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (66, 9)); ((RT_m_4.R_app(connectionMap'18CD_)) ((stop1'18B1_, stop2'18B8_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (68, 9)); ((RT_m_4.R_app(connectionMap'18CD_)) ((stop2'18B8_, stop1'18B1_)))));
        
        fun timeBetweenStopsIsDrivingTime'40DD_ (plan'415F_, (capacityMap'4166_, connectionMap'4173_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (168, 7)); if not(((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x101_'0_, x102_'0_, x103_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x103_'0_, RT_Int.fromLit "0"))
        end) (plan'415F_))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'4166_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x106_'0_, x107_'0_, x108_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x107_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'4173_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:166:5: Argument of timeBetweenStopsIsDrivingTime" ^ RT_x_25.toString (plan'415F_, (capacityMap'4166_, connectionMap'4173_)) ^ " not in subtype") else if RT_Nat.R_gt (RT_l_15.R_length(plan'415F_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (169, 9)); let
            val (stopid1'4274_, arrTime1'427D_, depTime1'4287_) = ((RT_l_15.R_hd(plan'415F_)):RT_x_14.t); 
            val (stopid2'42D8_, arrTime2'42E1_, depTime2'42EB_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'415F_)))):RT_x_14.t)
        in
            let
                val (headway'4406_, drivingTime'440E_, capacity'441B_) = ((((getConnection'183F_) (stopid1'4274_, stopid2'42D8_, (capacityMap'4166_, connectionMap'4173_)))):RT_x_3.t)
            in
                ((RT_Nat.R_ge (RT_Nat.R_sub (arrTime2'42E1_, depTime1'4287_), drivingTime'440E_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (176, 53)); ((timeBetweenStopsIsDrivingTime'40DD_) (RT_l_15.R_tl(plan'415F_), (capacityMap'4166_, connectionMap'4173_))))
            end
        end) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (180, 9)); true));
        
        fun nextStop'D4F_ (planRow'DBC_, plan'DC5_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (36, 9)); if not((let
            val (x72_'0_, x73_'0_, x74_'0_) = ((planRow'DBC_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x75_'0_, x76_'0_, x77_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x77_'0_, RT_Int.fromLit "0"))
        end) (plan'DC5_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:34:7: Argument of nextStop" ^ RT_x_20.toString (planRow'DBC_, plan'DC5_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'DC5_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:59:13: Precondition of nextStop" ^ RT_x_20.toString (planRow'DBC_, plan'DC5_) ^ " not satisfied") else let
            val iPlanRow'E7F_ = ((RT_l_15.R_hd(plan'DC5_)):RT_x_14.t)
        in
            if RT_x_14.equ (iPlanRow'E7F_, planRow'DBC_) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (41, 13)); let
                val (sid'1078_, arrt'107D_, dept'1083_) = ((RT_l_15.R_hd((RT_l_15.R_tl(plan'DC5_)))):RT_x_14.t)
            in
                (sid'1078_, arrt'107D_, dept'1083_)
            end) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (47, 13)); if RT_Nat.R_gt (RT_l_15.R_length((RT_l_15.R_tl(plan'DC5_))), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (49, 15)); ((nextStop'D4F_) (planRow'DBC_, RT_l_15.R_tl(plan'DC5_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (51, 15)); let
                val (sid'1462_, arrt'1467_, dept'146D_) = ((iPlanRow'E7F_):RT_x_14.t)
            in
                iPlanRow'E7F_
            end))
        end);
        
        fun findDepartureRowInPlan'2521_ (stopid1'259C_, stopid2'25A5_, plan'25AE_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (97, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x89_'0_, x90_'0_, x91_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x90_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0"))
        end) (plan'25AE_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:95:5: Argument of findDepartureRowInPlan" ^ RT_x_24.toString (stopid1'259C_, stopid2'25A5_, plan'25AE_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'25AE_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:113:11: Precondition of findDepartureRowInPlan" ^ RT_x_24.toString (stopid1'259C_, stopid2'25A5_, plan'25AE_) ^ " not satisfied") else let
            val (hStopId'2652_, hArrTime'265B_, hDepTime'2665_) = ((RT_l_15.R_hd(plan'25AE_)):RT_x_14.t); 
            val (nStopId'26B6_, nArrTime'26BF_, nDepTime'26C9_) = ((((nextStop'D4F_) (RT_l_15.R_hd(plan'25AE_), plan'25AE_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'2652_, stopid1'259C_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (101, 33)); RT_Text.equ (nStopId'26B6_, stopid2'25A5_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (103, 11)); (hStopId'2652_, hArrTime'265B_, hDepTime'2665_)) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (105, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'25AE_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (107, 13)); ((findDepartureRowInPlan'2521_) (stopid1'259C_, stopid2'25A5_, RT_l_15.R_tl(plan'25AE_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (109, 13)); (RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun buildAllDeparturesUsingConnection'200D_ (stopid1'2093_, stopid2'209C_, plans'20A5_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (84, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x86_'0_, x87_'0_, x88_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x88_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'20A5_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:82:5: Argument of buildAllDeparturesUsingConnection" ^ RT_x_23.toString (stopid1'2093_, stopid2'209C_, plans'20A5_) ^ " not in subtype") else if RT_s_18.equ (plans'20A5_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (85, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (87, 9)); let
            val plan'226B_ = ((RT_s_18.R_hd(plans'20A5_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findDepartureRowInPlan'2521_) (stopid1'2093_, stopid2'209C_, plan'226B_))]), ((buildAllDeparturesUsingConnection'200D_) (stopid1'2093_, stopid2'209C_, RT_s_18.R_diff (plans'20A5_, RT_s_18.R_fromList ([plan'226B_])))))
        end));
        
        fun getAllDepaturesUsingConnection'1C89_ (stopid1'1D0C_, stopid2'1D15_, timetable'1D1E_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (75, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x83_'0_, x84_'0_, x85_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x84_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'1D1E_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:73:5: Argument of getAllDepaturesUsingConnection" ^ RT_x_21.toString (stopid1'1D0C_, stopid2'1D15_, timetable'1D1E_) ^ " not in subtype") else let
            val allPlans'1DB9_ = ((RT_m_16.R_ran((timetable'1D1E_))):RT_s_18.t)
        in
            ((buildAllDeparturesUsingConnection'200D_) (stopid1'1D0C_, stopid2'1D15_, allPlans'1DB9_))
        end);
        
        fun timeBetweenDeparturesIsValidHeadway'4849_ (timetable'48D1_, (capacityMap'48DD_, connectionMap'48EA_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (187, 7)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x109_'0_, x110_'0_, x111_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x110_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'48D1_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'48DD_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x114_'0_, x115_'0_, x116_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x114_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x116_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'48EA_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:185:5: Argument of timeBetweenDeparturesIsValidHeadway" ^ RT_x_26.toString (timetable'48D1_, (capacityMap'48DD_, connectionMap'48EA_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'4919_, stopid2'4922_):RT_x_2.t) => let
            val (headway'497E_, drivingTime'4986_, capacity'4993_) = ((((RT_m_4.R_app(connectionMap'48EA_)) ((stopid1'4919_, stopid2'4922_)))):RT_x_3.t)
        in
            ((RT_s_22.R_all (fn ((sid1'4A49_, arrt1'4A4F_, dept1'4A56_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt1'4A4F_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept1'4A56_, RT_Int.fromLit "0"))) orelse (((RT_s_22.R_all (fn ((sid2'4AAF_, arrt2'4AB5_, dept2'4ABC_):RT_x_14.t) => not ((RT_Nat.R_ge (arrt2'4AB5_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (dept2'4ABC_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_ge (RT_Nat.R_abs((RT_Nat.R_sub (dept1'4A56_, dept2'4ABC_))), headway'497E_)))) (RT_s_22.R_diff (((getAllDepaturesUsingConnection'1C89_) (stopid1'4919_, stopid2'4922_, timetable'48D1_)), RT_s_22.R_fromList ([(sid1'4A49_, arrt1'4A4F_, dept1'4A56_)]))))))) (((getAllDepaturesUsingConnection'1C89_) (stopid1'4919_, stopid2'4922_, timetable'48D1_)))))
        end) ((connectionMap'48EA_)))));
        
        fun isWellformed'8B16_ (t'8B87_, n'8B8A_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (358, 8)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x165_'0_, x166_'0_, x167_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x166_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x167_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(t'8B87_)))) andalso (let
            val (x168_'0_, x169_'0_) = ((n'8B8A_):RT_x_5.t)
        in
            ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(x168_'0_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
                val (x172_'0_, x173_'0_, x174_'0_) = ((x_'0_):RT_x_3.t)
            in
                (RT_Nat.R_ge (x172_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x173_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x174_'0_, RT_Int.fromLit "0")))
            end) (RT_m_4.R_ran(x169_'0_))))
        end)) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:356:6: Argument of isWellformed" ^ RT_x_26.toString (t'8B87_, n'8B8A_) ^ " not in subtype") else (((tramStopsAtAllStopsItPasses'4DC1_) (t'8B87_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (358, 42)); (((timeBetweenDeparturesIsValidHeadway'4849_) (t'8B87_, n'8B8A_))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (359, 8)); ((RT_s_18.R_all (fn (plan'8C49_:RT_l_15.t) => not ((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x175_'0_, x176_'0_, x177_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x176_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x177_'0_, RT_Int.fromLit "0"))
        end) (plan'8C49_))) orelse (((timeBetweenStopsIsDrivingTime'40DD_) (plan'8C49_, n'8B8A_)))) (RT_m_16.R_ran((t'8B87_))))))));
        
        fun findArrivalRowInPlan'35ED_ (stopid1'3666_, stopid2'366F_, plan'3678_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (140, 7)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0"))
        end) (plan'3678_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:138:5: Argument of findArrivalRowInPlan" ^ RT_x_24.toString (stopid1'3666_, stopid2'366F_, plan'3678_) ^ " not in subtype") else if not(RT_Nat.R_gt (RT_l_15.R_length(plan'3678_), RT_Int.fromLit "1")) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:156:11: Precondition of findArrivalRowInPlan" ^ RT_x_24.toString (stopid1'3666_, stopid2'366F_, plan'3678_) ^ " not satisfied") else let
            val (hStopId'371E_, hArrTime'3727_, hDepTime'3731_) = ((RT_l_15.R_hd(plan'3678_)):RT_x_14.t); 
            val (nStopId'3782_, nArrTime'378B_, nDepTime'3795_) = ((((nextStop'D4F_) (RT_l_15.R_hd(plan'3678_), plan'3678_))):RT_x_14.t)
        in
            if (RT_Text.equ (hStopId'371E_, stopid1'3666_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (144, 33)); RT_Text.equ (nStopId'3782_, stopid2'366F_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (146, 11)); (nStopId'3782_, nArrTime'378B_, nDepTime'3795_)) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (148, 11)); if RT_Nat.R_gt (RT_l_15.R_length(RT_l_15.R_tl(plan'3678_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (150, 13)); ((findArrivalRowInPlan'35ED_) (stopid1'3666_, stopid2'366F_, RT_l_15.R_tl(plan'3678_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (152, 13)); (RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")))
        end);
        
        fun countOverLappingTimesForTrack'5B6F_ (tramid'5BF1_, deptime'5BF8_, arrtime'5C01_, times'5C0A_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (236, 9)); if not((RT_Nat.R_ge (deptime'5BF8_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (arrtime'5C01_, RT_Int.fromLit "0")) andalso ((RT_s_22.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x136_'0_, x137_'0_, x138_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x137_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x138_'0_, RT_Int.fromLit "0"))
        end) (times'5C0A_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:234:7: Argument of countOverLappingTimesForTrack" ^ RT_x_28.toString (tramid'5BF1_, deptime'5BF8_, arrtime'5C01_, times'5C0A_) ^ " not in subtype") else if RT_s_22.equ (times'5C0A_, RT_s_22.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (237, 14)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (239, 11)); let
            val (tramid2'5DCE_, deptime2'5DD7_, arrtime2'5DE1_) = ((RT_s_22.R_hd(times'5C0A_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'5BF1_, tramid2'5DCE_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (242, 37)); ((((RT_Nat.R_le (deptime'5BF8_, deptime2'5DD7_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (242, 62)); RT_Nat.R_le (deptime2'5DD7_, arrtime'5C01_)))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (242, 85)); ((RT_Nat.R_le (deptime'5BF8_, arrtime2'5DE1_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (243, 9)); RT_Nat.R_le (arrtime2'5DE1_, arrtime'5C01_)))))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (243, 18)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'5B6F_) (tramid'5BF1_, deptime'5BF8_, arrtime'5C01_, RT_s_22.R_diff (times'5C0A_, RT_s_22.R_fromList ([(tramid2'5DCE_, deptime2'5DD7_, arrtime2'5DE1_)])))))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (244, 18)); ((countOverLappingTimesForTrack'5B6F_) (tramid'5BF1_, deptime'5BF8_, arrtime'5C01_, RT_s_22.R_diff (times'5C0A_, RT_s_22.R_fromList ([(tramid2'5DCE_, deptime2'5DD7_, arrtime2'5DE1_)])))))
        end));
        
        fun buildTimesForTramOnTrack'67EF_ (stopid1'686D_, stopid2'6876_, plan'687F_, tramid'6885_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (268, 9)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x142_'0_, x143_'0_, x144_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x143_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x144_'0_, RT_Int.fromLit "0"))
        end) (plan'687F_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:266:7: Argument of buildTimesForTramOnTrack" ^ RT_x_30.toString (stopid1'686D_, stopid2'6876_, plan'687F_, tramid'6885_) ^ " not in subtype") else if RT_Nat.R_le (RT_l_15.R_length(plan'687F_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (269, 14)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (271, 11)); let
            val (sid'6A4E_, arrt'6A53_, dept'6A59_) = ((RT_l_15.R_hd(plan'687F_)):RT_x_14.t); 
            val (sid2'6AB2_, arrt2'6AB8_, dept2'6ABF_) = ((((nextStop'D4F_) ((sid'6A4E_, arrt'6A53_, dept'6A59_), plan'687F_))):RT_x_14.t)
        in
            if (RT_Text.equ (sid'6A4E_, stopid1'686D_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (275, 33)); RT_Text.equ (sid2'6AB2_, stopid2'6876_)) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (276, 18)); RT_s_22.R_union (RT_s_22.R_fromList ([(tramid'6885_, dept'6A59_, arrt2'6AB8_)]), ((buildTimesForTramOnTrack'67EF_) (stopid1'686D_, stopid2'6876_, RT_l_15.R_tl(plan'687F_), tramid'6885_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (277, 18)); ((buildTimesForTramOnTrack'67EF_) (stopid1'686D_, stopid2'6876_, RT_l_15.R_tl(plan'687F_), tramid'6885_)))
        end));
        
        fun buildAllTimesForTrack'6213_ (stopid1'628D_, stopid2'6296_, trams'629F_, timetable'62A6_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (253, 9)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x139_'0_, x140_'0_, x141_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x140_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'62A6_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:251:7: Argument of buildAllTimesForTrack" ^ RT_x_29.toString (stopid1'628D_, stopid2'6296_, trams'629F_, timetable'62A6_) ^ " not in subtype") else if RT_s_11.equ (trams'629F_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (254, 14)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (256, 11)); let
            val tramid'6471_ = ((RT_s_11.R_hd(trams'629F_)):RT_Text.t)
        in
            RT_s_22.R_union (((buildTimesForTramOnTrack'67EF_) (stopid1'628D_, stopid2'6296_, ((RT_m_16.R_app(timetable'62A6_)) (tramid'6471_)), tramid'6471_)), ((buildAllTimesForTrack'6213_) (stopid1'628D_, stopid2'6296_, RT_s_11.R_diff (trams'629F_, RT_s_11.R_fromList ([tramid'6471_])), timetable'62A6_)))
        end));
        
        fun trackCapacityIsNotExceeded'552D_ (stopid1'55AC_, stopid2'55B5_, timetable'55BE_, connectionMap'55C9_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (220, 8)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x128_'0_, x129_'0_, x130_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x129_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'55BE_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x133_'0_, x134_'0_, x135_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x133_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x134_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x135_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'55C9_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:218:5: Argument of trackCapacityIsNotExceeded" ^ RT_x_27.toString (stopid1'55AC_, stopid2'55B5_, timetable'55BE_, connectionMap'55C9_) ^ " not in subtype") else let
            val times1'565E_ = ((((buildAllTimesForTrack'6213_) (stopid1'55AC_, stopid2'55B5_, RT_m_16.R_dom((timetable'55BE_)), timetable'55BE_))):RT_s_22.t); 
            val times2'56C2_ = ((((buildAllTimesForTrack'6213_) (stopid2'55B5_, stopid1'55AC_, RT_m_16.R_dom((timetable'55BE_)), timetable'55BE_))):RT_s_22.t); 
            val (headway'5727_, drivingtime'5730_, trackcapacity'573D_) = ((((RT_m_4.R_app(connectionMap'55C9_)) (stopid1'55AC_, stopid2'55B5_))):RT_x_3.t)
        in
            (((RT_s_22.R_all (fn ((tramid'57F4_, deptime'57FC_, arrtime'5805_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'57FC_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'5805_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'5B6F_) (tramid'57F4_, deptime'57FC_, arrtime'5805_, times1'565E_))), trackcapacity'573D_)))) (times1'565E_)))) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (227, 15)); ((RT_s_22.R_all (fn ((tramid'58C1_, deptime'58C9_, arrtime'58D2_):RT_x_14.t) => not ((RT_Nat.R_ge (deptime'58C9_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (arrtime'58D2_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForTrack'5B6F_) (tramid'58C1_, deptime'58C9_, arrtime'58D2_, times2'56C2_))), trackcapacity'573D_)))) (times2'56C2_))))
        end);
        
        fun allTrackCapacitiesAreNotExceeded'520D_ (timetable'5292_, (capacityMap'529E_, connectionMap'52AA_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (212, 7)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x120_'0_, x121_'0_, x122_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x122_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'5292_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'529E_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x125_'0_, x126_'0_, x127_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x125_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'52AA_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:210:5: Argument of allTrackCapacitiesAreNotExceeded" ^ RT_x_26.toString (timetable'5292_, (capacityMap'529E_, connectionMap'52AA_)) ^ " not in subtype") else ((RT_m_4.R_all (fn ((stopid1'52DD_, stopid2'52E6_):RT_x_2.t) => ((trackCapacityIsNotExceeded'552D_) (stopid1'52DD_, stopid2'52E6_, timetable'5292_, connectionMap'52AA_))) ((connectionMap'52AA_)))));
        
        fun countOverLappingTimesForStop'772B_ (tramid'77AC_, arrtime'77B3_, deptime'77BC_, times'77C5_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (307, 9)); if not((RT_Nat.R_ge (arrtime'77B3_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (deptime'77BC_, RT_Int.fromLit "0")) andalso ((RT_s_22.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x156_'0_, x157_'0_, x158_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x157_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0"))
        end) (times'77C5_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:305:7: Argument of countOverLappingTimesForStop" ^ RT_x_28.toString (tramid'77AC_, arrtime'77B3_, deptime'77BC_, times'77C5_) ^ " not in subtype") else if RT_s_22.equ (times'77C5_, RT_s_22.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (308, 14)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (310, 11)); let
            val (tramid2'798A_, arrtime2'7993_, deptime2'799D_) = ((RT_s_22.R_hd(times'77C5_)):RT_x_14.t)
        in
            if ((RSL.C_not RT_Text.equ) (tramid'77AC_, tramid2'798A_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (313, 37)); ((((RT_Nat.R_le (arrtime'77B3_, arrtime2'7993_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (313, 62)); RT_Nat.R_le (arrtime2'7993_, deptime'77BC_)))) orelse (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (313, 85)); ((RT_Nat.R_le (arrtime'77B3_, deptime2'799D_)) andalso (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (314, 9)); RT_Nat.R_le (deptime2'799D_, deptime'77BC_)))))) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (314, 18)); RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForStop'772B_) (tramid'77AC_, arrtime'77B3_, deptime'77BC_, RT_s_22.R_diff (times'77C5_, RT_s_22.R_fromList ([(tramid2'798A_, arrtime2'7993_, deptime2'799D_)])))))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (315, 18)); ((countOverLappingTimesForStop'772B_) (tramid'77AC_, arrtime'77B3_, deptime'77BC_, RT_s_22.R_diff (times'77C5_, RT_s_22.R_fromList ([(tramid2'798A_, arrtime2'7993_, deptime2'799D_)])))))
        end));
        
        fun buildTimesForTramOnStop'8347_ (stopid'83C3_, plan'83CB_, tramid'83D1_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (338, 9)); if not((RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x162_'0_, x163_'0_, x164_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x163_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x164_'0_, RT_Int.fromLit "0"))
        end) (plan'83CB_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:336:7: Argument of buildTimesForTramOnStop" ^ RT_x_33.toString (stopid'83C3_, plan'83CB_, tramid'83D1_) ^ " not in subtype") else if RT_Nat.R_lt (RT_l_15.R_length(plan'83CB_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (339, 14)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (341, 11)); let
            val (sid'85A6_, arrt'85AB_, dept'85B1_) = ((RT_l_15.R_hd(plan'83CB_)):RT_x_14.t)
        in
            if RT_Text.equ (sid'85A6_, stopid'83C3_) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (345, 18)); RT_s_22.R_union (RT_s_22.R_fromList ([(tramid'83D1_, arrt'85AB_, dept'85B1_)]), ((buildTimesForTramOnStop'8347_) (stopid'83C3_, RT_l_15.R_tl(plan'83CB_), tramid'83D1_)))) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (346, 18)); ((buildTimesForTramOnStop'8347_) (stopid'83C3_, RT_l_15.R_tl(plan'83CB_), tramid'83D1_)))
        end));
        
        fun buildAllTimesForStop'7DCF_ (stopid'7E48_, trams'7E50_, timetable'7E57_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (324, 9)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x159_'0_, x160_'0_, x161_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x161_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'7E57_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:322:7: Argument of buildAllTimesForStop" ^ RT_x_32.toString (stopid'7E48_, trams'7E50_, timetable'7E57_) ^ " not in subtype") else if RT_s_11.equ (trams'7E50_, RT_s_11.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (325, 14)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (327, 11)); let
            val tramid'802D_ = ((RT_s_11.R_hd(trams'7E50_)):RT_Text.t)
        in
            RT_s_22.R_union (((buildTimesForTramOnStop'8347_) (stopid'7E48_, ((RT_m_16.R_app(timetable'7E57_)) (tramid'802D_)), tramid'802D_)), ((buildAllTimesForStop'7DCF_) (stopid'7E48_, RT_s_11.R_diff (trams'7E50_, RT_s_11.R_fromList ([tramid'802D_])), timetable'7E57_)))
        end));
        
        fun stopCapacityIsNotExceeded'7217_ (stopid'7295_, timetable'729D_, capacityMap'72A8_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (294, 9)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x153_'0_, x154_'0_, x155_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x154_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x155_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'729D_)))) andalso ((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'72A8_))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:292:7: Argument of stopCapacityIsNotExceeded" ^ RT_x_31.toString (stopid'7295_, timetable'729D_, capacityMap'72A8_) ^ " not in subtype") else let
            val times'7347_ = ((((buildAllTimesForStop'7DCF_) (stopid'7295_, RT_m_16.R_dom((timetable'729D_)), timetable'729D_))):RT_s_22.t); 
            val capacity'73AB_ = ((((RT_m_1.R_app(capacityMap'72A8_)) (stopid'7295_))):RT_Nat.t)
        in
            ((RT_s_22.R_all (fn ((tramid'7479_, arrtime'7481_, deptime'748A_):RT_x_14.t) => not ((RT_Nat.R_ge (arrtime'7481_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (deptime'748A_, RT_Int.fromLit "0"))) orelse ((RT_Nat.R_le (RT_Nat.R_add (RT_Int.fromLit "1", ((countOverLappingTimesForStop'772B_) (tramid'7479_, arrtime'7481_, deptime'748A_, times'7347_))), capacity'73AB_)))) (times'7347_)))
        end);
        
        fun allStopCapacitiesAreNotExceeded'6EF7_ (timetable'6F7B_, (capacityMap'6F87_, connectionMap'6F93_)) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (286, 9)); if not(((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x145_'0_, x146_'0_, x147_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x146_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x147_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6F7B_)))) andalso (((RT_s_7.R_all (fn (x_'0_:RT_Nat.t) => RT_Nat.R_ge (x_'0_, RT_Int.fromLit "0")) (RT_m_1.R_ran(capacityMap'6F87_)))) andalso ((RT_s_8.R_all (fn (x_'0_:RT_x_3.t) => let
            val (x150_'0_, x151_'0_, x152_'0_) = ((x_'0_):RT_x_3.t)
        in
            (RT_Nat.R_ge (x150_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x151_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x152_'0_, RT_Int.fromLit "0")))
        end) (RT_m_4.R_ran(connectionMap'6F93_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:284:7: Argument of allStopCapacitiesAreNotExceeded" ^ RT_x_26.toString (timetable'6F7B_, (capacityMap'6F87_, connectionMap'6F93_)) ^ " not in subtype") else ((RT_m_1.R_all (fn (stopid'6FC6_:RT_Text.t) => ((stopCapacityIsNotExceeded'7217_) (stopid'6FC6_, timetable'6F7B_, capacityMap'6F87_))) ((capacityMap'6F87_)))));
        
        val empty'51B_ = let val z__'52D_ = RT_m_16.R_fromList [] in if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x178_'0_, x179_'0_, x180_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x179_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x180_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(z__'52D_)))) then (RSL.add_load_err("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:13:25: Value " ^ RT_m_16.toString(z__'52D_) ^ " of empty not in subtype"); z__'52D_) else z__'52D_ end;
        
        fun buildAllArrivalsUsingConnection'30D9_ (stopid1'315D_, stopid2'3166_, plans'316F_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (127, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x95_'0_, x96_'0_, x97_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x96_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x97_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (plans'316F_))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:125:5: Argument of buildAllArrivalsUsingConnection" ^ RT_x_23.toString (stopid1'315D_, stopid2'3166_, plans'316F_) ^ " not in subtype") else if RT_s_18.equ (plans'316F_, RT_s_18.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (128, 12)); RT_s_22.R_fromList []) else (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (130, 9)); let
            val plan'3337_ = ((RT_s_18.R_hd(plans'316F_)):RT_l_15.t)
        in
            RT_s_22.R_union (RT_s_22.R_fromList ([((findArrivalRowInPlan'35ED_) (stopid1'315D_, stopid2'3166_, plan'3337_))]), ((buildAllArrivalsUsingConnection'30D9_) (stopid1'315D_, stopid2'3166_, RT_s_18.R_diff (plans'316F_, RT_s_18.R_fromList ([plan'3337_])))))
        end));
        
        fun addTram'647_ (tramid'6B3_, timetable'6BB_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (18, 9)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x63_'0_, x64_'0_, x65_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x64_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'6BB_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:16:7: Argument of addTram" ^ RT_x_17.toString (tramid'6B3_, timetable'6BB_) ^ " not in subtype") else RT_m_16.R_override (timetable'6BB_, RT_m_16.R_fromList ([(tramid'6B3_, ([]:RT_l_15.t))])));
        
        fun getAllArrivalsUsingConnection'2D55_ (stopid1'2DD7_, stopid2'2DE0_, timetable'2DE9_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (118, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x92_'0_, x93_'0_, x94_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x93_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x94_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'2DE9_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:116:5: Argument of getAllArrivalsUsingConnection" ^ RT_x_21.toString (stopid1'2DD7_, stopid2'2DE0_, timetable'2DE9_) ^ " not in subtype") else let
            val allPlans'2E85_ = ((RT_m_16.R_ran((timetable'2DE9_))):RT_s_18.t)
        in
            ((buildAllArrivalsUsingConnection'30D9_) (stopid1'2DD7_, stopid2'2DE0_, allPlans'2E85_))
        end);
        
        fun addStop'83B_ (tramid'8A7_, stopid'8AF_, arrival'8B7_, departure'8C0_, timetable'8CB_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (23, 9)); if not((RT_Nat.R_ge (arrival'8B7_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departure'8C0_, RT_Int.fromLit "0")) andalso ((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x66_'0_, x67_'0_, x68_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x68_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'8CB_)))))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:21:7: Argument of addStop" ^ RT_x_19.toString (tramid'8A7_, stopid'8AF_, arrival'8B7_, departure'8C0_, timetable'8CB_) ^ " not in subtype") else RT_m_16.R_override (timetable'8CB_, RT_m_16.R_fromList ([(tramid'8A7_, RT_l_15.R_concat (((RT_m_16.R_app(timetable'8CB_)) (tramid'8A7_)), [(stopid'8AF_, arrival'8B7_, departure'8C0_)]))])));
        
        fun isIn'B59_ (tramid'BC2_, timetable'BCA_) = (R_coverage.cancel(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (31, 7)); if not((RT_s_18.R_all (fn (x_'0_:RT_l_15.t) => (RT_l_15.R_all (fn (x_'0_:RT_x_14.t) => let
            val (x69_'0_, x70_'0_, x71_'0_) = ((x_'0_):RT_x_14.t)
        in
            (RT_Nat.R_ge (x70_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x71_'0_, RT_Int.fromLit "0"))
        end) (x_'0_))) (RT_m_16.R_ran(timetable'BCA_)))) then raise RSL.RSL_exception ("/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl:29:5: Argument of isIn" ^ RT_x_17.toString (tramid'BC2_, timetable'BCA_) ^ " not in subtype") else RT_m_16.R_mem (tramid'BC2_, (timetable'BCA_)));
        
    end;
    
open TIMETABLE;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (31, 7), (31, 33));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (23, 9), (25, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (118, 7), (122, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (18, 9), (18, 38));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (130, 9), (135, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (128, 12), (129, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (127, 7), (135, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (286, 9), (288, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (294, 9), (301, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (327, 11), (332, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (325, 14), (326, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (324, 9), (332, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (346, 18), (347, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (345, 18), (346, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (341, 11), (349, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (339, 14), (340, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (338, 9), (349, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (314, 9), (314, 28));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (313, 62), (313, 80));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (313, 85), (314, 29));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (313, 37), (314, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (315, 18), (316, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (314, 18), (315, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (310, 11), (318, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (308, 14), (309, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (307, 9), (318, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (212, 7), (214, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (227, 15), (230, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (220, 8), (230, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (256, 11), (261, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (254, 14), (255, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (253, 9), (261, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (275, 33), (276, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (277, 18), (278, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (276, 18), (277, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (271, 11), (280, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (269, 14), (270, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (268, 9), (280, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (243, 9), (243, 28));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (242, 62), (242, 80));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (242, 85), (243, 29));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (242, 37), (243, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (244, 18), (245, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (243, 18), (244, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (239, 11), (247, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (237, 14), (238, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (236, 9), (247, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (152, 13), (153, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (150, 13), (151, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (144, 33), (145, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (148, 11), (154, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (146, 11), (147, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (140, 7), (158, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (359, 8), (362, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (358, 42), (362, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (358, 8), (362, 3));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (187, 7), (195, 8));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (75, 7), (79, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (87, 9), (92, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (85, 12), (86, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (84, 7), (92, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (109, 13), (110, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (107, 13), (108, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (101, 33), (102, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (105, 11), (111, 9));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (103, 11), (104, 12));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (97, 7), (113, 23));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (51, 15), (56, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (49, 15), (50, 16));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (47, 13), (57, 11));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (41, 13), (46, 14));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (36, 9), (59, 25));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (176, 53), (177, 13));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (180, 9), (181, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (169, 9), (179, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (168, 7), (181, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (68, 9), (69, 7));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (66, 9), (67, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (64, 7), (69, 10));
R_coverage.mark(RT_Text.fromLit "/home/noah/Documents/FormalAspectsOfSoftwareEngineering/mandatory2/TIMETABLE.rsl", (201, 7), (205, 8));
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
