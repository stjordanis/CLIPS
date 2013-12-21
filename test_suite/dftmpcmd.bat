(clear)
(deftemplate d1)
(deftemplate d2 (field x))
(deftemplate d3 (field x (type STRING)))
(deftemplate d4 (field x) (multifield y) (field z))
(deftemplate d5 
  (field x (type ?VARIABLE) (default 30))
  (field y (type STRING SYMBOL) (allowed-symbols a b) (allowed-strings "a" "b"))
  (field z (type NUMBER) (allowed-integers 1) (allowed-floats 3.5))
  (field w (type NUMBER) (range 3.5 9))
  (multifield q (type SYMBOL NUMBER) (allowed-symbols x) (default)))
(deftemplate d6 
  (multifield q (cardinality 2 6))
  (field x (type ?VARIABLE) (default ?NONE))
  (field y (type STRING SYMBOL) (allowed-symbols ?VARIABLE)))
(deftemplate *)
(list-deftemplates d6)
(list-deftemplates)
(ppdeftemplate d1)
(ppdeftemplate d2)
(ppdeftemplate d3)
(ppdeftemplate d4)
(ppdeftemplate d5)
(ppdeftemplate d6)
(get-dynamic-constraint-checking)
(get-dynamic-constraint-checking TRUE)
(assert (d3 (x 7)))
(facts)
(assert (d3 (x =(read))))
7
(facts)
(retract *)
(set-dynamic-constraint-checking)
(set-dynamic-constraint-checking TRUE FALSE)
(set-dynamic-constraint-checking 10)
(get-dynamic-constraint-checking)
(set-dynamic-constraint-checking TRUE)
(assert (d3 (x 8)))
(facts)
(assert (d3 (x =(read))))
8
(facts)
(retract *)
(set-dynamic-constraint-checking FALSE)
(get-dynamic-constraint-checking)
(undeftemplate)
(undeftemplate 10)
(undeftemplate bad-name)
(undeftemplate d6 10)
(list-deftemplates)
(undeftemplate d1)
(undeftemplate d2)
(undeftemplate d3)
(list-deftemplates)
(undeffacts initial-fact)
(undeftemplate *)
(list-deftemplates)
(undeftemplate *)
(list-deftemplates)
(clear) ; Some new 6.0 features
(deftemplate BOGUS::d5)
(defmodule FOO)
(deftemplate FOO::d1)
(deftemplate FOO::d2)
(defmodule BAR)
(deftemplate BAR::d2)
(deftemplate BAR::d3)
(list-deftemplates BOGUS)
(list-deftemplates FOO 7)
(list-deftemplates FOO)
(list-deftemplates BAR)
(list-deftemplates)
(list-deftemplates *)
(get-deftemplate-list 7)
(get-deftemplate-list BOGUS 7)
(get-deftemplate-list)
(get-deftemplate-list BOGUS)
(get-deftemplate-list FOO)
(get-deftemplate-list BAR)
(get-deftemplate-list *)
(ppdeftemplate d1)
(ppdeftemplate d2)
(ppdeftemplate d3)
(ppdeftemplate BOGUS::d2)
(ppdeftemplate FOO::d1)
(ppdeftemplate FOO::d2)
(ppdeftemplate FOO::d3)
(ppdeftemplate BAR::d1)
(ppdeftemplate BAR::d2)
(ppdeftemplate BAR::d3)
(deftemplate-module)
(deftemplate-module bogus)
(deftemplate-module d3 7)
(deftemplate-module d2)
(deftemplate-module d3)
(deftemplate-module FOO::d1)
(deftemplate-module FOO::d2)
(deftemplate-module BAR::d2)
(deftemplate-module BAR::d3)
(undeftemplate BOGUS::d2)
(undeftemplate FOO::d2)
(list-deftemplates *)
(undeftemplate BAR::d2)
(list-deftemplates *)
(undeftemplate *)
(list-deftemplates *)
