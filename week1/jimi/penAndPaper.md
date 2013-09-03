## Chapter 1
### Exercise 1.4
No. As `k^2` could never be a prime, `k^2` will never be equal to `n` if `k` doesn't divide `n`.

### Exercise 1.6
```haskell
divides :: Integer -> Integer -> Bool
divides d n = rem n d == 0
```
This means that `d` and `n` are both of the `Integer` type, `rem n d == 0` yields a `Bool` and `rem n d` returns an `Integer`. The type declaration for `rem` will therefore be `rem :: Integer -> Integer -> Integer`.

### Exercise 1.7
`divides 5` only requires one more `Integer` as input and will output a `Bool`.
`divides 5 7` requires no more input and therefore only has the `Bool` type from its output.

### Exercise 1.18
```haskell
["lorem"] :: [String]
(True, "ipsum") :: (Bool, String)
[(False, "dolor")] :: [(Bool, String)]
[([False], "sit")] :: [([Bool], String)]
\x -> not x :: Bool -> Bool
```

### Exercise 1.19
```
Prelude> :t head
head :: [a] -> a
Prelude> :t last
last :: [a] -> a
Prelude> :t init
init :: [a] -> [a]
Prelude> :t fst
fst :: (a, b) -> a
Prelude> :t (++)
(++) :: [a] -> [a] -> [a]
Prelude> :t flip
flip :: (a -> b -> c) -> b -> a -> c
Prelude> :t flip (++)
flip (++) :: [a] -> [a] -> [a]
```

### Exercise 1.24
The program will still work, but ldp will return a function instead of an answer. Supplied with an `Integer` argument `x`, that function will give you the result of `ldpf primes1 x`.

This is possible as Haskell does some 'lazy' evaluation of code, and only evaluates once this is really needed.

***
## Chapter 2
### Exercise 2.2
<table>
<tr>
<th>P</th><th>Q</th><th>P &oplus; Q</th>
</tr>
<tr><td>t</td><td>t</td><td>f</td></tr>
<tr><td>f</td><td>t</td><td>t</td></tr>
<tr><td>t</td><td>f</td><td>t</td></tr>
<tr><td>f</td><td>f</td><td>f</td></tr>
</table>

### Exercise 2.4
<table>
<tr>
<th>P</th><th>Q</th><th>&not;(P &harr; Q)</th>
</tr>
<tr><td>t</td><td>t</td><td>f</td></tr>
<tr><td>f</td><td>t</td><td>t</td></tr>
<tr><td>t</td><td>f</td><td>t</td></tr>
<tr><td>f</td><td>f</td><td>f</td></tr>
</table>

### Exercise 2.9
<table>
<tr>
<th>(P</th><th>&oplus;</th><th>Q)</th><th>&oplus;</th><th>Q</th><th>&harr;</th><th>P</th>
</tr>
<tr><td>t</td><td>f</td><td>t</td><td>t</td><td>t</td><td>t</td><td>t</td></tr>
<tr><td>t</td><td>t</td><td>f</td><td>t</td><td>f</td><td>t</td><td>t</td></tr>
<tr><td>f</td><td>t</td><td>t</td><td>f</td><td>t</td><td>t</td><td>f</td></tr>
<tr><td>f</td><td>f</td><td>f</td><td>f</td><td>f</td><td>t</td><td>f</td></tr>
</table>

### Exercise 2.17
`x >= y OR y >= z`

### Exercise 2.18
<table>
<tr>
<th>(&Phi;</th><th>&harr;</th><th>&Psi;)</th><th>&equiv;</th><th>(&not;</th><th>&Phi;</th><th>&harr;</th><th>&not;</th><th>&Psi;)</th>
</tr>
<tr><td>t</td><td>t</td><td>t</td><td>t</td><td>f</td><td>t</td><td>t</td><td>f</td><td>t</td></tr>
<tr><td>t</td><td>f</td><td>f</td><td>t</td><td>f</td><td>t</td><td>f</td><td>t</td><td>f</td></tr>
<tr><td>f</td><td>f</td><td>t</td><td>t</td><td>t</td><td>f</td><td>f</td><td>f</td><td>t</td></tr>
<tr><td>f</td><td>t</td><td>f</td><td>t</td><td>t</td><td>f</td><td>t</td><td>t</td><td>f</td></tr>
</table>

<table>
<tr>
<th>(&not;</th><th>&Phi;</th><th>&harr;</th><th>&Psi;)</th><th>&equiv;</th><th>(&Phi;</th><th>&harr;</th><th>&not;</th><th>&Psi;)</th>
</tr>
<tr><td>f</td><td>t</td><td>f</td><td>t</td><td>t</td><td>t</td><td>f</td><td>f</td><td>t</td></tr>
<tr><td>f</td><td>t</td><td>t</td><td>f</td><td>t</td><td>t</td><td>t</td><td>t</td><td>f</td></tr>
<tr><td>t</td><td>f</td><td>t</td><td>t</td><td>t</td><td>f</td><td>t</td><td>f</td><td>t</td></tr>
<tr><td>t</td><td>f</td><td>f</td><td>f</td><td>t</td><td>f</td><td>f</td><td>t</td><td>f</td></tr>
</table>

### Exercise 2.19
Given:
&Phi; &harr; &Psi; is logically valid

Prove:
&Phi; &equiv; &Psi;

Proof:
By contradiction:

If &Phi; and &Psi; evaluate to true, &Phi; &harr; &Psi; must also yield true.

If &Phi; and &Psi; evaluate to false, &Phi; &harr; &Psi; must also yield true.

Say &Phi; evaluates to true and &Psi; evaluates to false, then  &Phi; &harr; &Psi; does not yield true, which contradicts with the given that  &Phi; &harr; &Psi; is logically valid.

This means that &Phi; and &Psi; cannot have opposing truth values, thus must be logically equivalent.

### Exercise 2.20
```
*Sol2> check20_1
False
*Sol2> check20_2
False
*Sol2> check20_3
True
*Sol2> check20_4
True
*Sol2> check20_5
False
*Sol2> check20_6
True
*Sol2> check20_7
True
```

### Exercise 2.21
1. `P OR NOT Q`
2. Each truth table has 4 rows with 2 possible values each. In total there are 2^4 = 16 possible truth tables.
3. Sure:
 * `NOT (P OR Q) AND P`
 * `P AND Q`
 * `P AND NOT Q`
 * `P AND (Q OR NOT Q)`
 * `NOT P AND Q`
 * `(P OR NOT P) AND Q`
 * `P XOR Q`
 * `P OR Q`
 * `NOT (P OR Q)`
 * `P <=> Q`
 * `(P OR NOT P) AND NOT Q`
 * `P OR NOT Q`
 * `NOT P AND (Q OR NOT Q)`
 * `NOT P OR Q`
 * `NOT (P AND Q)`
 * `P OR NOT (P AND Q)`
4. Not really..
5. A 3-letter formula has `2^3 =` 8 rows with 2 possibilities each, or `2^8 =` 256 different truth tables.
In general, the number of truth tables can be found using the formula `2^(2^n)`, where `n` denotes the number of letters in the formula.

### Exercise 2.22
Rational numbers denote divisions or equal parts. Between two parts `1/n` and `2/n`, there is always a number `1/n + 1/2n`, with n a natural number.

### Exercise 2.23
![1](http://dump.jimbows.net/testing_2_23_1.png)
![2](http://dump.jimbows.net/testing_2_23_2.png)
![3](http://dump.jimbows.net/testing_2_23_3.png)

### Exercise 2.26
1. &exist;x,y&isin;Q(x < y)
2. &forall;x&isin;R&exist;y&isin;R(x < y)
3. &forall;x&isin;Z&exist;m,n&isin;N(x = m - n)

### Exercise 2.27
1. &forall;x(x&isin;Q &rarr; &exist;m,n(m&isin;Z &and; n &isin;Z &and; n &ne; 0 &and; x = m / n))
2. &forall;x(Fx &rarr; &forall;y(Dy &rarr; (Oxy &rarr; Bxy)))

### Exercise 2.31
1. &exist;x(x^2 + 1 = 0)
2. &forall;x&isin;N&exist;y&isin;N(x < y)
3. &not;&exist;x&isin;N(x > 1 &and; x < 13 &and; (x | 13))
4. &not;&exist;n,m&isin;N(m > 1 &and; m < n &and; (m | n))
5. &forall;m&isin;N(prime(m) &rarr; &exist;n&isin;N(prime(n) &and; m < n))

### Exercise 2.32
1. &forall;x(L(x, d))
2. &forall;x(L(d, x))
3. &forall;x(M(x) &rarr; M'(x))
4. &exist;x(B(x) &rarr; &not;F(x))

### Exercise 2.33
1. &forall;x((Dog(x) &and; Barks(x)) &rarr; &not;Bites(x))
2. &not;&forall;x(Glitters(x) &rarr; Gold(x))
3. &forall;x,y(Friends(x, d) &and; Friends(x, y) &rarr; Friends(y, d))

### Exercise 2.34
1. &forall;x(L(x, d) &or; (&not;x = Charles &rarr; L(x, d)))
2. &forall;x(Man(x) &rarr; &exist;y,z((Woman(y) &and; Adores(x, y) &and; Woman(z) &and; Adores(x, z)) &and; &not;(y = z))
3. &forall;x(Man(x) &rarr; &forall;y,z((Married(x, y) &and; Married(x, z)) &rarr; y = z))

### Exercise 2.35
1. &exist;x(King(x) &and; &forall;y(King(y) &rarr; y = x) &and; &not;Raging(x))
2. &exist;x(King(x) &and; &forall;y(King(y) &rarr; y = x) &and; &forall;z(S(z, x) &rarr; L(z, x)))

### Exercise 2.36
1. 5 is the square of some rational number.
2. There are infinite natural numbers.
3. The formula `2^n + 1` only yields prime numbers.
4. There is no number between `n` and `m`, so all natural numbers are whole numbers.

### Exercise 2.37
<table>
<tr><th></th><th>a</th><th>b</th><th>c</th><th>d</th><th>e</th><th>f</th></tr>
<tr><th>1</th><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
<tr><th>2</th><td>true</td><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td></tr>
<tr><th>3</th><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
<tr><th>4</th><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
<tr><th>5</th><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

### Exercise 2.41
1. &forall;x&isin;R(x^2 &ne; 5)
2. &exist;n&isin;N&forall;m&isin;N(n &ge; m)
3. &exist;n&isin;N&exist;d&isin;N(1 < d < (2^n + 1) &and; d|(2^n + 1))
4. &exist;n&isin;N&forall;m&isin;N(n &ge; m &or; &exist;p&isin;N(p > n &and; m > p))

### Exercise 2.46
No. Say that A is the collection of all males and &Phi;(x) means that x has brown hair. Then, &not;&exist;x&isin;A&Phi;(x) gives us that no males have brown hair - something obviously wrong - and &exist;x&ni;A&Phi;(x) gives us that there is people with brown hair who are not males, which is something quite different.

### Exercise 2.47
No. Here, one formula denotes that there is a non-male without brown hair, and the other says there is a male without brown hair. These are not excluding statements, but also certainly not equivalent ones.

### Exercise 2.50
&exist;&delta;>0&forall;n&exist;m&ge;n(|a - a_m| &ge; &delta;)
