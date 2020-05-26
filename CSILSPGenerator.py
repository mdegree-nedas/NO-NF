import random as rd
import pandas as pd
import gurobipy as gb

class Generator:
    """
    Classe utilizzata per generare un'istanza randomica e feasible per il
    CSILSP


    Attributes
    ----------
    T : int
        Number of periods in the horizon

    d : dict
        Customer aggregate demand that must be delivered at the end of period t

    C : dict
        Production/Supply capacity at period t

    h : dict
        Holding cost per unit of product in stock at the end of period t

    p : dict
        Unit production/supplying cost in period t

    s : dict
        Fixed setup cost in period t


    Methods
    -------
    generate()
        Genera un'istanza randomica e feasible del CSILSP 

    printData()
        Metodo che ritorna un Pandas.DataFrame contenente
        una rappresentazione dei dati del problema

    seed()
        Initialize internal state of the random number generator

    get_T()
        Returns value T

    get_d()
        Returns value d

    get_C()
        Returns value C

    get_h()
        Returns value h

    get_p()
        Returns value p

    get_s()
        Returns value s
    """


    def __init__(self,T):
        """
        Parameters
        ----------
        T : int
            Number of periods in the horizon
        """
        
        self.T = T

    def generate(self,a=1,b=6):
        """
        Genera un'istanza randomica e feasible del CSILSP
        
        Parameters
        ----------
        a : int
            Lower bound of random values (a <= N).
            Default = 1
        b : int
            Upper bound of random values (N <= b).
            Default = 6
        
        """
        
        self.h = { i:rd.randint(a,b) for i in range(self.T) }
        self.p = { i:rd.randint(a,b) for i in range(self.T) }
        self.s = { i:rd.randint(a,b) for i in range(self.T) }
        # generazione d e C
        self.d = { i:rd.randint(a,b) for i in range(self.T) }
        self.C = { i:rd.randint(a,b) for i in range(self.T) }
        for t in range(self.T):
            for k in range(t+1):
                # infeasibility check
                if self.C[k] < self.d[k]:
                    # make feasible
                    self.C[k] += self.d[k]

    def printData(self):
        """Metodo che ritorna un Pandas.DataFrame contenente una rappresentazione dei dati del problema"""
        
        data = {'T':list(range(self.T)), 'd':list(self.d.values()),\
                 'C':list(self.C.values()),'h':list(self.h.values()),\
                 'p':list(self.p.values()),'s':list(self.s.values())}
        df = pd.DataFrame(data,columns=list('dChps'))
        df.index.rename('T',inplace=True)
        return df

    def seed(self,a=None):
        """
        Initialize internal state of the random number generator
        
        Parameters
        ----------
        a : None|int|long
            Random seed passed to Python random class.
            Default = None
        """
        if a:
            rd.seed(a)

    # getters
    def get_T(self):
        """Returns value T"""
        return self.T
    
    def get_d(self):
        """Returns value d"""
        return self.d
    
    def get_C(self):
        """Returns value C"""
        return self.C

    def get_h(self):
        """Returns value h"""
        return self.h

    def get_p(self):
        """Returns value p"""
        return self.p

    def get_s(self):
        """Returns value s"""
        return self.s


class GeneratorTW_CS:
    """
    Classe utilizzata per generare un'istanza randomica e feasible per il
    CSILSP-CS (con Time Windows che possono essere anche incluse strettamente)


    Attributes
    ----------
    T : int
        Number of periods in the horizon

    d_w : dict
        Time Window demand

    d : dict
        Customer aggregate demand that must be delivered at the end of period t

    C : dict
        Production/Supply capacity at period t

    h : dict
        Holding cost per unit of product in stock at the end of period t

    p : dict
        Unit production/supplying cost in period t

    s : dict
        Fixed setup cost in period t


    Methods
    -------
    generate()
        Genera un'istanza randomica e feasible del CSILSP con Time Windows costumer specific

    printData()
        Metodo che ritorna un Pandas.DataFrame contenente
        una rappresentazione di tutti i dati del problema tranne che per l'attributo d_w

    seed()
        Initialize internal state of the random number generator

    get_T()
        Returns value T

    get_d()
        Returns value d

    get_dw()
        Returns value d_w

    get_C()
        Returns value C

    get_h()
        Returns value h

    get_p()
        Returns value p

    get_s()
        Returns value s
    """

    
    def __init__(self,T):
        """
        Parameters
        ----------
        T : int
            Number of periods in the horizon
        """
        
        self.T = T

    def generate(self,a=1,b=6,dw_a=0,dw_b=4):
        """
        Genera un'istanza randomica e feasible del CSILSP con Time Windows costumer specific
        
        Parameters
        ----------
        a : int
            Lower bound of random values (a <= N).
            Default = 1
            
        b : int
            Upper bound of random values (N <= b).
            Default = 6
            
        dw_a : int
            Lower bound of random d_w values (dw_a <= N).
            Default = 0
            
        dw_b : int
            Upper bound of random d_w values (N <= dw_b).
            Default = 4
            
        """
        
        self.h = { i:rd.randint(a,b) for i in range(self.T) }
        self.p = { i:rd.randint(a,b) for i in range(self.T) }
        self.s = { i:rd.randint(a,b) for i in range(self.T) }
        # generazione d, d_w (time windows) e C
        self.d_w = { (i,j):(rd.randint(dw_a,dw_b) if i != j else 0) for i in range(self.T) for j in range(i,self.T) }
        self.C = { i:rd.randint(a,b) for i in range(self.T) }
        for t2 in range(self.T):
            for t1 in range(t2+1):
                sum_C = (gb.quicksum(self.C[k] for k in range(t1,t2+1))).getValue()
                sum_k_l = (gb.quicksum(self.d_w[k,l] for k in range(t1,t2+1) for l in range(k,t2+1))).getValue()
                # infeasibility check
                if sum_C < sum_k_l:
                    # make feasible
                    for k in range(t1,t2+1):
                        self.C[k] += sum_k_l
        self.d = { t:(gb.quicksum(self.d_w[t1,t] for t1 in range(t+1))).getValue() for t in range(self.T) }

    def printData(self):
        """Metodo che ritorna un Pandas.DataFrame contenente una rappresentazione di tutti i dati del problema tranne che per l'attributo d_w"""
        
        data = {'T':list(range(self.T)), 'd':list(self.d.values()),\
                 'C':list(self.C.values()),'h':list(self.h.values()),\
                 'p':list(self.p.values()),'s':list(self.s.values())}
        df = pd.DataFrame(data,columns=list('dChps'))
        df.index.rename('T',inplace=True)
        return df

    def seed(self,a=None):
        """
        Initialize internal state of the random number generator
        
        Parameters
        ----------
        a : None|int|long
            Random seed passed to Python random class.
            Default = None
        """
        
        if a:
            rd.seed(a)

    # getters
    def get_T(self):
        """Returns value T"""
        return self.T

    def get_dw(self):
        """Returns value d_w"""
        return self.d_w
    
    def get_d(self):
        """Returns value d"""
        return self.d
    
    def get_C(self):
        """Returns value C"""
        return self.C

    def get_h(self):
        """Returns value h"""
        return self.h

    def get_p(self):
        """Returns value p"""
        return self.p

    def get_s(self):
        """Returns value s"""
        return self.s



class GeneratorTW_NCS:
    """
    Classe utilizzata per generare un'istanza randomica e feasible per il
    CSILSP-NCS (con Time Windows non incluse strettamente)


    Attributes
    ----------
    T : int
        Number of periods in the horizon

    d_w : dict
        Time Window demand

    d : dict
        Customer aggregate demand that must be delivered at the end of period t

    C : dict
        Production/Supply capacity at period t

    h : dict
        Holding cost per unit of product in stock at the end of period t

    p : dict
        Unit production/supplying cost in period t

    s : dict
        Fixed setup cost in period t


    Methods
    -------
    generate()
        Genera un'istanza randomica e feasible del CSILSP con Time Windows non-costumer specific

    printData()
        Metodo che ritorna un Pandas.DataFrame contenente
        una rappresentazione di tutti i dati del problema tranne che per l'attributo d_w

    seed()
        Initialize internal state of the random number generator

    get_T()
        Returns value T

    get_d()
        Returns value d

    get_dw()
        Returns value d_w

    get_C()
        Returns value C

    get_h()
        Returns value h

    get_p()
        Returns value p

    get_s()
        Returns value s
    """

    
    def __init__(self,T):
        """
        Parameters
        ----------
        T : int
            Number of periods in the horizon
        """
        
        self.T = T

    def generate(self,a=1,b=6,dw_a=0,dw_b=4):
        """
        Genera un'istanza randomica e feasible del CSILSP con Time Windows non-costumer specific
        
        Parameters
        ----------
        a : int
            Lower bound of random values (a <= N).
            Default = 1
            
        b : int
            Upper bound of random values (N <= b).
            Default = 6
            
        dw_a : int
            Lower bound of random d_w values (dw_a <= N).
            Default = 0
            
        dw_b : int
            Upper bound of random d_w values (N <= dw_b).
            Default = 4
            
        """
        
        self.h = { i:rd.randint(a,b) for i in range(self.T) }
        self.p = { i:rd.randint(a,b) for i in range(self.T) }
        self.s = { i:rd.randint(a,b) for i in range(self.T) }
        # generazione d, d_w (time windows) e C
        self.d_w = { (i,j):(rd.randint(dw_a,dw_b) if i != j else 0) for i in range(self.T) for j in range(i,self.T) }

        # controllo per generazione di time windows non strettamente inclusive
        for t1,t2 in self.d_w:
            for t3,t4 in self.d_w:
                if (self.d_w[t1,t2] != 0) and (self.d_w[t3,t4] != 0):
                    # time windows (t1,t2) e (t3,t4) sono attive
                    if ((t1 <= t3 and t2 <= t4) or (t1 >= t3 and t2 >= t4)):
                        # OKAY, time window (t3,t4) non inclusa strettamente
                        pass
                    else:
                        # time window (t3,t4) inclusa strettamente in (t1,t2), eliminiamo (t3,t4)
                        self.d_w[t3,t4] = 0
                        
        self.C = { i:rd.randint(a,b) for i in range(self.T) }
        for t2 in range(self.T):
            for t1 in range(t2+1):
                sum_C = (gb.quicksum(self.C[k] for k in range(t1,t2+1))).getValue()
                sum_k_l = (gb.quicksum(self.d_w[k,l] for k in range(t1,t2+1) for l in range(k,t2+1))).getValue()
                # infeasibility check
                if sum_C < sum_k_l:
                    # make feasible
                    for k in range(t1,t2+1):
                        self.C[k] += sum_k_l
        self.d = { t:(gb.quicksum(self.d_w[t1,t] for t1 in range(t+1))).getValue() for t in range(self.T) }

    def printData(self):
        """Metodo che ritorna un Pandas.DataFrame contenente una rappresentazione di tutti i dati del problema tranne che per l'attributo d_w"""
        
        data = {'T':list(range(self.T)), 'd':list(self.d.values()),\
                 'C':list(self.C.values()),'h':list(self.h.values()),\
                 'p':list(self.p.values()),'s':list(self.s.values())}
        df = pd.DataFrame(data,columns=list('dChps'))
        df.index.rename('T',inplace=True)
        return df

    def seed(self,a=None):
        """
        Initialize internal state of the random number generator
        
        Parameters
        ----------
        a : None|int|long
            Random seed passed to Python random class.
            Default = None
        """
        
        if a:
            rd.seed(a)

    # getters
    def get_T(self):
        """Returns value T"""
        return self.T

    def get_dw(self):
        """Returns value d_w"""
        return self.d_w
    
    def get_d(self):
        """Returns value d"""
        return self.d
    
    def get_C(self):
        """Returns value C"""
        return self.C

    def get_h(self):
        """Returns value h"""
        return self.h

    def get_p(self):
        """Returns value p"""
        return self.p

    def get_s(self):
        """Returns value s"""
        return self.s
