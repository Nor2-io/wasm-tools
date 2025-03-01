(component
  (type (;0;)
    (component
      (type (;0;)
        (instance
          (type (;0;) u32)
          (export (;1;) "pollable" (type (eq 0)))
        )
      )
      (import (interface "wasi:poll/poll") (instance (;0;) (type 0)))
      (alias export 0 "pollable" (type (;1;)))
      (type (;2;)
        (instance
          (alias outer 1 1 (type (;0;)))
          (export (;1;) "pollable" (type (eq 0)))
          (type (;2;) (record (field "f" u8)))
          (export (;3;) "stream-error" (type (eq 2)))
          (type (;4;) u32)
          (export (;5;) "input-stream" (type (eq 4)))
          (type (;6;) u32)
          (export (;7;) "output-stream" (type (eq 6)))
        )
      )
      (import (interface "wasi:io/streams") (instance (;1;) (type 2)))
      (alias export 1 "input-stream" (type (;3;)))
      (alias export 1 "output-stream" (type (;4;)))
      (type (;5;)
        (instance
          (alias outer 1 3 (type (;0;)))
          (export (;1;) "input-stream" (type (eq 0)))
          (alias outer 1 4 (type (;2;)))
          (export (;3;) "output-stream" (type (eq 2)))
          (alias outer 1 1 (type (;4;)))
          (export (;5;) "pollable" (type (eq 4)))
          (type (;6;) (variant (case "get") (case "head") (case "post") (case "put") (case "delete") (case "connect") (case "options") (case "trace") (case "patch") (case "other" string)))
          (export (;7;) "method" (type (eq 6)))
          (type (;8;) (variant (case "HTTP") (case "HTTPS") (case "other" string)))
          (export (;9;) "scheme" (type (eq 8)))
          (type (;10;) (variant (case "invalid-url" string) (case "timeout-error" string) (case "protocol-error" string) (case "unexpected-error" string)))
          (export (;11;) "error" (type (eq 10)))
          (type (;12;) u32)
          (export (;13;) "fields" (type (eq 12)))
          (export (;14;) "headers" (type (eq 13)))
          (export (;15;) "trailers" (type (eq 13)))
          (export (;16;) "incoming-stream" (type (eq 1)))
          (export (;17;) "outgoing-stream" (type (eq 3)))
          (type (;18;) u32)
          (export (;19;) "incoming-request" (type (eq 18)))
          (type (;20;) u32)
          (export (;21;) "outgoing-request" (type (eq 20)))
          (type (;22;) (option u32))
          (type (;23;) (record (field "connect-timeout-ms" 22) (field "first-byte-timeout-ms" 22) (field "between-bytes-timeout-ms" 22)))
          (export (;24;) "request-options" (type (eq 23)))
          (type (;25;) u32)
          (export (;26;) "response-outparam" (type (eq 25)))
          (type (;27;) u16)
          (export (;28;) "status-code" (type (eq 27)))
          (type (;29;) u32)
          (export (;30;) "incoming-response" (type (eq 29)))
          (type (;31;) u32)
          (export (;32;) "outgoing-response" (type (eq 31)))
          (type (;33;) u32)
          (export (;34;) "future-incoming-response" (type (eq 33)))
          (type (;35;) (func (param "fields" 13)))
          (export (;0;) "drop-fields" (func (type 35)))
          (type (;36;) (tuple string string))
          (type (;37;) (list 36))
          (type (;38;) (func (param "entries" 37) (result 13)))
          (export (;1;) "new-fields" (func (type 38)))
          (type (;39;) (list string))
          (type (;40;) (func (param "fields" 13) (param "name" string) (result 39)))
          (export (;2;) "fields-get" (func (type 40)))
          (type (;41;) (func (param "fields" 13) (param "name" string) (param "value" 39)))
          (export (;3;) "fields-set" (func (type 41)))
          (type (;42;) (func (param "fields" 13) (param "name" string)))
          (export (;4;) "fields-delete" (func (type 42)))
          (type (;43;) (func (param "fields" 13) (param "name" string) (param "value" string)))
          (export (;5;) "fields-append" (func (type 43)))
          (type (;44;) (func (param "fields" 13) (result 37)))
          (export (;6;) "fields-entries" (func (type 44)))
          (type (;45;) (func (param "fields" 13) (result 13)))
          (export (;7;) "fields-clone" (func (type 45)))
          (type (;46;) (option 15))
          (type (;47;) (func (param "s" 16) (result 46)))
          (export (;8;) "finish-incoming-stream" (func (type 47)))
          (type (;48;) (func (param "s" 17) (param "trailers" 46)))
          (export (;9;) "finish-outgoing-stream" (func (type 48)))
          (type (;49;) (func (param "request" 19)))
          (export (;10;) "drop-incoming-request" (func (type 49)))
          (type (;50;) (func (param "request" 21)))
          (export (;11;) "drop-outgoing-request" (func (type 50)))
          (type (;51;) (func (param "request" 19) (result 7)))
          (export (;12;) "incoming-request-method" (func (type 51)))
          (type (;52;) (func (param "request" 19) (result string)))
          (export (;13;) "incoming-request-path" (func (type 52)))
          (export (;14;) "incoming-request-query" (func (type 52)))
          (type (;53;) (option 9))
          (type (;54;) (func (param "request" 19) (result 53)))
          (export (;15;) "incoming-request-scheme" (func (type 54)))
          (export (;16;) "incoming-request-authority" (func (type 52)))
          (type (;55;) (func (param "request" 19) (result 14)))
          (export (;17;) "incoming-request-headers" (func (type 55)))
          (type (;56;) (result 16))
          (type (;57;) (func (param "request" 19) (result 56)))
          (export (;18;) "incoming-request-consume" (func (type 57)))
          (type (;58;) (func (param "method" 7) (param "path" string) (param "query" string) (param "scheme" 53) (param "authority" string) (param "headers" 14) (result 21)))
          (export (;19;) "new-outgoing-request" (func (type 58)))
          (type (;59;) (result 17))
          (type (;60;) (func (param "request" 21) (result 59)))
          (export (;20;) "outgoing-request-write" (func (type 60)))
          (type (;61;) (func (param "response" 26)))
          (export (;21;) "drop-response-outparam" (func (type 61)))
          (type (;62;) (result 32 (error 11)))
          (type (;63;) (result))
          (type (;64;) (func (param "param" 26) (param "response" 62) (result 63)))
          (export (;22;) "set-response-outparam" (func (type 64)))
          (type (;65;) (func (param "response" 30)))
          (export (;23;) "drop-incoming-response" (func (type 65)))
          (type (;66;) (func (param "response" 32)))
          (export (;24;) "drop-outgoing-response" (func (type 66)))
          (type (;67;) (func (param "response" 30) (result 28)))
          (export (;25;) "incoming-response-status" (func (type 67)))
          (type (;68;) (func (param "response" 30) (result 14)))
          (export (;26;) "incoming-response-headers" (func (type 68)))
          (type (;69;) (func (param "response" 30) (result 56)))
          (export (;27;) "incoming-response-consume" (func (type 69)))
          (type (;70;) (func (param "status-code" 28) (param "headers" 14) (result 32)))
          (export (;28;) "new-outgoing-response" (func (type 70)))
          (type (;71;) (func (param "response" 32) (result 59)))
          (export (;29;) "outgoing-response-write" (func (type 71)))
          (type (;72;) (func (param "f" 34)))
          (export (;30;) "drop-future-incoming-response" (func (type 72)))
          (type (;73;) (result 30 (error 11)))
          (type (;74;) (option 73))
          (type (;75;) (func (param "f" 34) (result 74)))
          (export (;31;) "future-incoming-response-get" (func (type 75)))
          (type (;76;) (func (param "f" 34) (result 5)))
          (export (;32;) "listen-to-future-incoming-response" (func (type 76)))
        )
      )
      (export (;2;) (interface "wasi:http/types") (instance (type 5)))
      (alias export 2 "incoming-request" (type (;6;)))
      (alias export 2 "response-outparam" (type (;7;)))
      (type (;8;)
        (instance
          (alias outer 1 6 (type (;0;)))
          (export (;1;) "incoming-request" (type (eq 0)))
          (alias outer 1 7 (type (;2;)))
          (export (;3;) "response-outparam" (type (eq 2)))
          (type (;4;) (func (param "request" 1) (param "response-out" 3)))
          (export (;0;) "handle" (func (type 4)))
        )
      )
      (export (;3;) (interface "wasi:http/incoming-handler") (instance (type 8)))
      (alias export 2 "outgoing-request" (type (;9;)))
      (alias export 2 "request-options" (type (;10;)))
      (alias export 2 "future-incoming-response" (type (;11;)))
      (type (;12;)
        (instance
          (alias outer 1 9 (type (;0;)))
          (export (;1;) "outgoing-request" (type (eq 0)))
          (alias outer 1 10 (type (;2;)))
          (export (;3;) "request-options" (type (eq 2)))
          (alias outer 1 11 (type (;4;)))
          (export (;5;) "future-incoming-response" (type (eq 4)))
          (type (;6;) (option 3))
          (type (;7;) (func (param "request" 1) (param "options" 6) (result 5)))
          (export (;0;) "handle" (func (type 7)))
        )
      )
      (export (;4;) (interface "wasi:http/outgoing-handler") (instance (type 12)))
      (type (;13;)
        (component
          (type (;0;)
            (instance
              (type (;0;) (list u8))
              (type (;1;) (func (param "len" u64) (result 0)))
              (export (;0;) "get-random-bytes" (func (type 1)))
              (type (;2;) (func (result u64)))
              (export (;1;) "get-random-u64" (func (type 2)))
              (type (;3;) (tuple u64 u64))
              (type (;4;) (func (result 3)))
              (export (;2;) "insecure-random" (func (type 4)))
            )
          )
          (import (interface "wasi:random/random") (instance (;0;) (type 0)))
          (type (;1;)
            (instance
              (type (;0;) (enum "trace" "debug" "info" "warn" "error"))
              (export (;1;) "level" (type (eq 0)))
              (type (;2;) (func (param "level" 1) (param "context" string) (param "message" string)))
              (export (;0;) "log" (func (type 2)))
            )
          )
          (import (interface "wasi:logging/handler") (instance (;1;) (type 1)))
          (type (;2;)
            (instance
              (type (;0;) u32)
              (export (;1;) "pollable" (type (eq 0)))
              (type (;2;) (func (param "this" 1)))
              (export (;0;) "drop-pollable" (func (type 2)))
              (type (;3;) (list 1))
              (type (;4;) (list u8))
              (type (;5;) (func (param "in" 3) (result 4)))
              (export (;1;) "poll-oneoff" (func (type 5)))
            )
          )
          (import (interface "wasi:poll/poll") (instance (;2;) (type 2)))
          (alias export 2 "pollable" (type (;3;)))
          (type (;4;)
            (instance
              (alias outer 1 3 (type (;0;)))
              (export (;1;) "pollable" (type (eq 0)))
              (type (;2;) (record (field "f" u8)))
              (export (;3;) "stream-error" (type (eq 2)))
              (type (;4;) u32)
              (export (;5;) "input-stream" (type (eq 4)))
              (type (;6;) u32)
              (export (;7;) "output-stream" (type (eq 6)))
              (type (;8;) (list u8))
              (type (;9;) (tuple 8 bool))
              (type (;10;) (result 9 (error 3)))
              (type (;11;) (func (param "this" 5) (param "len" u64) (result 10)))
              (export (;0;) "read" (func (type 11)))
              (export (;1;) "blocking-read" (func (type 11)))
              (type (;12;) (tuple u64 bool))
              (type (;13;) (result 12 (error 3)))
              (type (;14;) (func (param "this" 5) (param "len" u64) (result 13)))
              (export (;2;) "skip" (func (type 14)))
              (export (;3;) "blocking-skip" (func (type 14)))
              (type (;15;) (func (param "this" 5) (result 1)))
              (export (;4;) "subscribe-to-input-stream" (func (type 15)))
              (type (;16;) (func (param "this" 5)))
              (export (;5;) "drop-input-stream" (func (type 16)))
              (type (;17;) (result u64 (error 3)))
              (type (;18;) (func (param "this" 7) (param "buf" 8) (result 17)))
              (export (;6;) "write" (func (type 18)))
              (export (;7;) "blocking-write" (func (type 18)))
              (type (;19;) (func (param "this" 7) (param "len" u64) (result 17)))
              (export (;8;) "write-zeroes" (func (type 19)))
              (export (;9;) "blocking-write-zeroes" (func (type 19)))
              (type (;20;) (func (param "this" 7) (param "src" 5) (param "len" u64) (result 13)))
              (export (;10;) "splice" (func (type 20)))
              (export (;11;) "blocking-splice" (func (type 20)))
              (type (;21;) (func (param "this" 7) (param "src" 5) (result 17)))
              (export (;12;) "forward" (func (type 21)))
              (type (;22;) (func (param "this" 7) (result 1)))
              (export (;13;) "subscribe-to-output-stream" (func (type 22)))
              (type (;23;) (func (param "this" 7)))
              (export (;14;) "drop-output-stream" (func (type 23)))
            )
          )
          (import (interface "wasi:io/streams") (instance (;3;) (type 4)))
          (alias export 3 "input-stream" (type (;5;)))
          (alias export 3 "output-stream" (type (;6;)))
          (type (;7;)
            (instance
              (alias outer 1 5 (type (;0;)))
              (export (;1;) "input-stream" (type (eq 0)))
              (alias outer 1 6 (type (;2;)))
              (export (;3;) "output-stream" (type (eq 2)))
              (alias outer 1 3 (type (;4;)))
              (export (;5;) "pollable" (type (eq 4)))
              (type (;6;) (variant (case "get") (case "head") (case "post") (case "put") (case "delete") (case "connect") (case "options") (case "trace") (case "patch") (case "other" string)))
              (export (;7;) "method" (type (eq 6)))
              (type (;8;) (variant (case "HTTP") (case "HTTPS") (case "other" string)))
              (export (;9;) "scheme" (type (eq 8)))
              (type (;10;) (variant (case "invalid-url" string) (case "timeout-error" string) (case "protocol-error" string) (case "unexpected-error" string)))
              (export (;11;) "error" (type (eq 10)))
              (type (;12;) u32)
              (export (;13;) "fields" (type (eq 12)))
              (export (;14;) "headers" (type (eq 13)))
              (export (;15;) "trailers" (type (eq 13)))
              (export (;16;) "incoming-stream" (type (eq 1)))
              (export (;17;) "outgoing-stream" (type (eq 3)))
              (type (;18;) u32)
              (export (;19;) "incoming-request" (type (eq 18)))
              (type (;20;) u32)
              (export (;21;) "outgoing-request" (type (eq 20)))
              (type (;22;) (option u32))
              (type (;23;) (record (field "connect-timeout-ms" 22) (field "first-byte-timeout-ms" 22) (field "between-bytes-timeout-ms" 22)))
              (export (;24;) "request-options" (type (eq 23)))
              (type (;25;) u32)
              (export (;26;) "response-outparam" (type (eq 25)))
              (type (;27;) u16)
              (export (;28;) "status-code" (type (eq 27)))
              (type (;29;) u32)
              (export (;30;) "incoming-response" (type (eq 29)))
              (type (;31;) u32)
              (export (;32;) "outgoing-response" (type (eq 31)))
              (type (;33;) u32)
              (export (;34;) "future-incoming-response" (type (eq 33)))
              (type (;35;) (func (param "fields" 13)))
              (export (;0;) "drop-fields" (func (type 35)))
              (type (;36;) (tuple string string))
              (type (;37;) (list 36))
              (type (;38;) (func (param "entries" 37) (result 13)))
              (export (;1;) "new-fields" (func (type 38)))
              (type (;39;) (list string))
              (type (;40;) (func (param "fields" 13) (param "name" string) (result 39)))
              (export (;2;) "fields-get" (func (type 40)))
              (type (;41;) (func (param "fields" 13) (param "name" string) (param "value" 39)))
              (export (;3;) "fields-set" (func (type 41)))
              (type (;42;) (func (param "fields" 13) (param "name" string)))
              (export (;4;) "fields-delete" (func (type 42)))
              (type (;43;) (func (param "fields" 13) (param "name" string) (param "value" string)))
              (export (;5;) "fields-append" (func (type 43)))
              (type (;44;) (func (param "fields" 13) (result 37)))
              (export (;6;) "fields-entries" (func (type 44)))
              (type (;45;) (func (param "fields" 13) (result 13)))
              (export (;7;) "fields-clone" (func (type 45)))
              (type (;46;) (option 15))
              (type (;47;) (func (param "s" 16) (result 46)))
              (export (;8;) "finish-incoming-stream" (func (type 47)))
              (type (;48;) (func (param "s" 17) (param "trailers" 46)))
              (export (;9;) "finish-outgoing-stream" (func (type 48)))
              (type (;49;) (func (param "request" 19)))
              (export (;10;) "drop-incoming-request" (func (type 49)))
              (type (;50;) (func (param "request" 21)))
              (export (;11;) "drop-outgoing-request" (func (type 50)))
              (type (;51;) (func (param "request" 19) (result 7)))
              (export (;12;) "incoming-request-method" (func (type 51)))
              (type (;52;) (func (param "request" 19) (result string)))
              (export (;13;) "incoming-request-path" (func (type 52)))
              (export (;14;) "incoming-request-query" (func (type 52)))
              (type (;53;) (option 9))
              (type (;54;) (func (param "request" 19) (result 53)))
              (export (;15;) "incoming-request-scheme" (func (type 54)))
              (export (;16;) "incoming-request-authority" (func (type 52)))
              (type (;55;) (func (param "request" 19) (result 14)))
              (export (;17;) "incoming-request-headers" (func (type 55)))
              (type (;56;) (result 16))
              (type (;57;) (func (param "request" 19) (result 56)))
              (export (;18;) "incoming-request-consume" (func (type 57)))
              (type (;58;) (func (param "method" 7) (param "path" string) (param "query" string) (param "scheme" 53) (param "authority" string) (param "headers" 14) (result 21)))
              (export (;19;) "new-outgoing-request" (func (type 58)))
              (type (;59;) (result 17))
              (type (;60;) (func (param "request" 21) (result 59)))
              (export (;20;) "outgoing-request-write" (func (type 60)))
              (type (;61;) (func (param "response" 26)))
              (export (;21;) "drop-response-outparam" (func (type 61)))
              (type (;62;) (result 32 (error 11)))
              (type (;63;) (result))
              (type (;64;) (func (param "param" 26) (param "response" 62) (result 63)))
              (export (;22;) "set-response-outparam" (func (type 64)))
              (type (;65;) (func (param "response" 30)))
              (export (;23;) "drop-incoming-response" (func (type 65)))
              (type (;66;) (func (param "response" 32)))
              (export (;24;) "drop-outgoing-response" (func (type 66)))
              (type (;67;) (func (param "response" 30) (result 28)))
              (export (;25;) "incoming-response-status" (func (type 67)))
              (type (;68;) (func (param "response" 30) (result 14)))
              (export (;26;) "incoming-response-headers" (func (type 68)))
              (type (;69;) (func (param "response" 30) (result 56)))
              (export (;27;) "incoming-response-consume" (func (type 69)))
              (type (;70;) (func (param "status-code" 28) (param "headers" 14) (result 32)))
              (export (;28;) "new-outgoing-response" (func (type 70)))
              (type (;71;) (func (param "response" 32) (result 59)))
              (export (;29;) "outgoing-response-write" (func (type 71)))
              (type (;72;) (func (param "f" 34)))
              (export (;30;) "drop-future-incoming-response" (func (type 72)))
              (type (;73;) (result 30 (error 11)))
              (type (;74;) (option 73))
              (type (;75;) (func (param "f" 34) (result 74)))
              (export (;31;) "future-incoming-response-get" (func (type 75)))
              (type (;76;) (func (param "f" 34) (result 5)))
              (export (;32;) "listen-to-future-incoming-response" (func (type 76)))
            )
          )
          (import (interface "wasi:http/types") (instance (;4;) (type 7)))
          (alias export 4 "outgoing-request" (type (;8;)))
          (alias export 4 "request-options" (type (;9;)))
          (alias export 4 "future-incoming-response" (type (;10;)))
          (type (;11;)
            (instance
              (alias outer 1 8 (type (;0;)))
              (export (;1;) "outgoing-request" (type (eq 0)))
              (alias outer 1 9 (type (;2;)))
              (export (;3;) "request-options" (type (eq 2)))
              (alias outer 1 10 (type (;4;)))
              (export (;5;) "future-incoming-response" (type (eq 4)))
              (type (;6;) (option 3))
              (type (;7;) (func (param "request" 1) (param "options" 6) (result 5)))
              (export (;0;) "handle" (func (type 7)))
            )
          )
          (import (interface "wasi:http/outgoing-handler") (instance (;5;) (type 11)))
          (alias export 4 "incoming-request" (type (;12;)))
          (alias export 4 "response-outparam" (type (;13;)))
          (type (;14;)
            (instance
              (alias outer 1 12 (type (;0;)))
              (export (;1;) "incoming-request" (type (eq 0)))
              (alias outer 1 13 (type (;2;)))
              (export (;3;) "response-outparam" (type (eq 2)))
              (type (;4;) (func (param "request" 1) (param "response-out" 3)))
              (export (;0;) "handle" (func (type 4)))
            )
          )
          (export (;6;) (interface "wasi:http/incoming-handler") (instance (type 14)))
        )
      )
      (export (;0;) (interface "wasi:http/proxy") (component (type 13)))
    )
  )
  (export (;1;) (interface "wasi:http/wit") (type 0))
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)