;; Methods
(method_declaration (identifier) @identifier.type (identifier) @identifier.method)

;; Types
(interface_declaration name: (identifier) @definition.protocol)
(class_declaration name: (identifier) @definition.class)
(enum_declaration name: (identifier) @definition.enum)
(struct_declaration (identifier) @definition.struct)
(record_declaration (identifier) @definition.struct)
(record_struct_declaration (identifier) @definition.struct)
(namespace_declaration name: (identifier) @definition)

(constructor_declaration name: (identifier) @definition)
(destructor_declaration name: (identifier) @definition)

[

  (nullable_type)
  (pointer_type)
  (function_pointer_type)
  (predefined_type)
] @identifier.type

(implicit_type) @keyword

;; Enum
(enum_member_declaration (identifier) @property.definition)

;; Literals
[
  (real_literal)
  (integer_literal)
] @value.number

[
  (character_literal)
  (string_literal)
  (verbatim_string_literal)
  "\""
  "$\""
  "@$\""
  "$@\""
 ] @string

 [
  (interpolated_string_text)
  (interpolated_verbatim_string_text)
] @string-template

(boolean_literal) @value.boolean
(null_literal) @value.null
(void_keyword) @keyword

;; Comments
(comment) @comment

; ;; Tokens
; [
;   ";"
;   "."
;   ","
; ] @punctuation.delimiter

[
  "--"
  "-"
  "-="
  "&"
  "&&"
  "+"
  "++"
  "+="
  "<"
  "<<"
  "="
  "=="
  "!"
  "!="
  "=>"
  ">"
  ">>"
  "|"
  "||"
  "?"
  "??"
  "^"
  "~"
  "*"
  "/"
  "%"
  ":"
] @operator

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
]  @bracket

;; Keywords
(modifier) @keyword.modifier
(this_expression) @keyword.self
(escape_sequence) @keyword

[
  "as"
  "base"
  "break"
  "case"
  "catch"
  "checked"
  "class"
  "continue"
  "default"
  "delegate"
  "do"
  "else"
  "enum"
  "event"
  "explicit"
  "finally"
  "for"
  "foreach"
  "goto"
  "if"
  "implicit"
  "interface"
  "is"
  "lock"
  "namespace"
  "operator"
  "params"
  "return"
  "sizeof"
  "stackalloc"
  "struct"
  "switch"
  "throw"
  "try"
  "typeof"
  "unchecked"
  "using"
  "while"
  "new"
  "await"
  "in"
  "yield"
  "get"
  "set"
  "when"
  "out"
  "ref"
  "from"
  "where"
  "select"
  "record"
  "init"
  "with"
  "let"
] @keyword


;; Linq
(from_clause (identifier) @identifier.variable)
(group_clause)
(order_by_clause)
(select_clause (identifier) @identifier.variable)
(query_continuation (identifier) @identifier.variable) @keyword

;; Record
(with_expression
  (with_initializer_expression
    (simple_assignment_expression
      (identifier) @identifier.variable)))

;; Exprs
(binary_expression (identifier) @identifier.variable (identifier) @identifier.variable)
(binary_expression (identifier)* @identifier.variable)
(conditional_expression (identifier) @identifier.variable)
(prefix_unary_expression (identifier) @identifier.variable)
(postfix_unary_expression (identifier)* @identifier.variable)
(assignment_expression (identifier) @identifier.variable)
(cast_expression (identifier) @identifier.type (identifier) @identifier.variable)

;; Class
(base_list (identifier) @identifier.type)
(property_declaration (generic_name))
(property_declaration
  type: (nullable_type) @identifier.type
  name: (identifier) @identifier.property)
(property_declaration
  type: (predefined_type) @identifier.type
  name: (identifier) @identifier.property)
(property_declaration
  type: (identifier) @identifier.type
  name: (identifier) @identifier.property)

;; Lambda
(lambda_expression) @identifier.variable

;; Attribute
(attribute) @identifier.type

;; Parameter
(parameter
  type: (identifier) @identifier.type
  name: (identifier) @identifier.argument)
(parameter (identifier) @identifier.argument)
(parameter_modifier) @keyword.modifier

;; Typeof
(type_of_expression (identifier) @identifier.type)

;; Variable
(variable_declaration (identifier) @identifier.type)
(variable_declarator (identifier) @identifier.variable)

;; Return
(return_statement (identifier) @identifier.variable)
(yield_statement (identifier) @identifier.variable)

;; Type
(generic_name (identifier) @identifier.type)
(type_parameter (identifier) @property.definition)
(type_argument_list (identifier) @identifier.type)

;; Type constraints
(type_parameter_constraints_clause (identifier) @property.definition)
(type_constraint (identifier) @identifier.type)

;; Exception
(catch_declaration (identifier) @identifier.type (identifier) @variable)
(catch_declaration (identifier) @identifier.type)

;; Switch
(switch_statement (identifier) @identifier.variable)
(switch_expression (identifier) @identifier.variable)

;; Lock statement
(lock_statement (identifier) @identifier.variable)
