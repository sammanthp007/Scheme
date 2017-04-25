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

;; To find pattern of 0,1,1,5,4,14,10,31,21,61,40
(define (func n)
  (cond
    ((negative? n) 0)
    ((= n 0) 0)
    ((odd? n) (+ n (func (- n 1)) (func (- n 2))))
    (else
     (- (func (- n 1)) (func (- n 2)))
     )
    )
  )

(func 9)


(define (sum-gen L)
  (cond
    ((null? L) 0)
    ((number? (car L)) (+ (car L) (sum-gen (cdr L))))
    (else (+ (sum-gen (car L)) (sum-gen (cdr L))))
    )
  )

(sum-gen '(-2 4 5 6))
