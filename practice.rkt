(define (sqre b)
  (* b b)
  )

(sqre 5)

(define (factorial n)
  (if (zero? n)
      1
      (* n (factorial (- n 1)))
      )
  )

(factorial 7)

(define (fibo n)
  (cond
    ((zero? n) 1)
    ((= 1 n) 1)
    ((= 2 n) 1)
    (else (+ (fibo (- n 1)) (fibo(- n 2))))
    )
  )

(fibo 6)

(define (membr a L)
  (cond
    ((null? L) #f)
    ((eq? a (car L)) #t)
    (else
     (membr a (cdr L))
     )
    )
  )

(membr 'a '(c,d,b,a))

(member 'a '(b d x))

(define (apnd L1 L2)
  (cond
    ((null? L1) L2)
    (else
     (cons (car L1) (append (cdr L1) L2))
     )
    )
  )

(apnd '(s d f) '(a v x))
