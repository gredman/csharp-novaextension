(class_declaration
 name: (identifier) @name
 (#set! role class)
 ) @subtree

; (class_declaration
;    bases: (base_list (_) @name)
;  ) @reference.class

(interface_declaration
 name: (identifier) @name
 (#set! role interface)
 ) @subtree

; (interface_declaration
;  bases: (base_list (_) @name)
;  ) @reference.interface

(method_declaration
 name: (identifier) @name
 (#set! role method)
 ) @subtree

(struct_declaration
 name: (identifier) @name
 (#set! role struct)
 ) @subtree

(record_declaration
 name: (identifier) @name
 (#set! role class)
 ) @subtree

(record_struct_declaration
 name: (identifier) @name
 (#set! role struct)
 ) @subtree

(enum_declaration
 name: (identifier) @name
 (#set! role enum)
 ) @subtree

(property_declaration
 name: (identifier) @name
 (#set! role property)
 ) @subtree

(field_declaration
 (variable_declaration
  (variable_declarator
   (identifier))) @name
 (#set! role variable)
 ) @subtree

(enum_member_declaration
 name: (identifier) @name
 (#set! role enum-member)
 ) @subtree

; (object_creation_expression
;  type: (identifier) @name
;  ) @reference.class

; (type_parameter_constraints_clause
;  target: (identifier) @name
;  ) @reference.class

; (type_constraint
;  type: (identifier) @name
;  ) @reference.class

; (variable_declaration
;  type: (identifier) @name
;  ) @reference.class

; (invocation_expression
;  function:
;   (member_access_expression
;     name: (identifier) @name
;  )
; ) @reference.send

; (namespace_declaration
;  name: (identifier) @name
; ) @definition.module
