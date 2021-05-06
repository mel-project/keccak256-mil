#lang racket

(require mel-types/types)
(require mel-types/convert)
(require json)

(define (coinid0 covhash) (CoinID covhash 0))
(define (coindata0 covhash)
  (CoinData
    covhash
    0
    "6d"
    ; additional data
    ;"0000000000000000000000000000000000000000000000000000000000000000"))
    "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"))


(let ([covhash (read-line (current-input-port))])
(define env
  (list
    (list
      (CovEnv
        (coinid0 covhash)
        (CoinDataHeight
          (coindata0 covhash)
          0) ; height
        0 ; spender index
        (header-default))
      (Transaction
        0 ; kind
        ; inputs
        (list (coinid0 covhash))
        ; outputs
        (list)
        ;(list (coindata0 covhash))
        0 ; fee
        (list) ; scripts
        ; data
        "0000000000000000000000000000000000000000000000000000000000000000"
        ;sigs
        (list)))))
  (displayln (jsexpr->string (melstruct->hashmap env))))
