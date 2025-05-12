¡
HC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Visitor\IVisitor.cs
	namespace 	
DesignPatterns
 
. 
Visitor  
{ 
public 

	interface 
IVisitor 
{		 
void

 
ImprimeSoma

 
(

 
Soma

 
soma

 "
)

" #
;

# $
void 
ImprimeSubtracao 
( 
	Subtracao '
	subtracao( 1
)1 2
;2 3
void 
ImprimeNumero 
( 
Numero !
numero" (
)( )
;) *
} 
} ‡
QC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Visitor\ImpressoraVisitor.cs
	namespace 	
DesignPatterns
 
. 
Visitor  
{ 
public 

class 
ImpressoraVisitor "
:# $
IVisitor% -
{		 
public

 
void

 
ImprimeSoma

 
(

  
Soma

  $
soma

% )
)

) *
{ 	
Console 
. 
Write 
( 
$str 
) 
; 
soma 
. 
Esquerda 
. 
Aceita  
(  !
this! %
)% &
;& '
Console 
. 
Write 
( 
$str 
) 
; 
soma 
. 
Direita 
. 
Aceita 
(  
this  $
)$ %
;% &
Console 
. 
Write 
( 
$str 
) 
; 
} 	
public 
void 
ImprimeSubtracao $
($ %
	Subtracao% .
	subtracao/ 8
)8 9
{ 	
Console 
. 
Write 
( 
$str 
) 
; 
	subtracao 
. 
Esquerda 
. 
Aceita %
(% &
this& *
)* +
;+ ,
Console 
. 
Write 
( 
$str 
) 
; 
	subtracao 
. 
Direita 
. 
Aceita $
($ %
this% )
)) *
;* +
Console 
. 
Write 
( 
$str 
) 
; 
} 	
public 
void 
ImprimeNumero !
(! "
Numero" (
numero) /
)/ 0
{ 	
Console 
. 
Write 
( 
numero  
.  !
Valor! &
)& '
;' (
}   	
}"" 
}## ¥
UC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Visitor\DesignPatternsVisitor.cs
	namespace 	
DesignPatterns
 
. 
Visitor  
{ 
public 

class !
DesignPatternsVisitor &
:' (
IDesignPatterns) 8
{		 
public 
void 
MainExemplo 
(  
)  !
{ 	

IExpressao 
esquerda 
=  !
new" %
Soma& *
(* +
new+ .
Soma/ 3
(3 4
new4 7
Numero8 >
(> ?
$num? @
)@ A
,A B
newC F
NumeroG M
(M N
$numN Q
)Q R
)R S
,S T
newU X
NumeroY _
(_ `
$num` b
)b c
)c d
;d e

IExpressao 
direita 
=  
new! $
	Subtracao% .
(. /
new/ 2
Numero3 9
(9 :
$num: <
)< =
,= >
new? B
NumeroC I
(I J
$numJ L
)L M
)M N
;N O

IExpressao 
soma 
= 
new !
Soma" &
(& '
esquerda' /
,/ 0
direita1 8
)8 9
;9 :
Console 
. 
	WriteLine 
( 
soma "
." #
Avalia# )
() *
)* +
)+ ,
;, -
ImpressoraVisitor 

impressora (
=) *
new+ .
ImpressoraVisitor/ @
(@ A
)A B
;B C
soma 
. 
Aceita 
( 

impressora "
)" #
;# $
} 	
} 
} ×
cC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\TemplateMethod\TemplateDeImpostoCondicional.cs
	namespace 	
DesignPatterns
 
. 
TemplateMethod '
{ 
public 

abstract 
class (
TemplateDeImpostoCondicional 6
:7 8
Imposto9 @
{		 
public

 
double

 
Calcula

 
(

 
	Orcamento

 '
	orcamento

( 1
)

1 2
{ 	
if 
( !
DeveUsarMaximaTaxacao %
(% &
	orcamento& /
)/ 0
)0 1
{ 
return 
MaximaTaxacao $
($ %
	orcamento% .
). /
;/ 0
} 
return 
MinimaTaxacao  
(  !
	orcamento! *
)* +
;+ ,
} 	
public 
abstract 
bool !
DeveUsarMaximaTaxacao 2
(2 3
	Orcamento3 <
	orcamento= F
)F G
;G H
public 
abstract 
double 
MaximaTaxacao ,
(, -
	Orcamento- 6
	orcamento7 @
)@ A
;A B
public 
abstract 
double 
MinimaTaxacao ,
(, -
	Orcamento- 6
	orcamento7 @
)@ A
;A B
} 
} ¢
KC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\TemplateMethod\IKCV.cs
	namespace 	
DesignPatterns
 
. 
TemplateMethod '
{ 
public		 

class		 
IKCV		 
:		 (
TemplateDeImpostoCondicional		 4
{

 
public 
override 
bool !
DeveUsarMaximaTaxacao 2
(2 3
	Orcamento3 <
	orcamento= F
)F G
=>H J
(K L
	orcamentoL U
.U V
ValorV [
>\ ]
$num^ a
&&b d"
temItemMaiorQue100Rease {
({ |
	orcamento	| …
)
… †
)
† ‡
;
‡ ˆ
public 
override 
double 
MaximaTaxacao ,
(, -
	Orcamento- 6
	orcamento7 @
)@ A
=>B D
	orcamentoE N
.N O
ValorO T
*U V
$numW [
;[ \
public 
override 
double 
MinimaTaxacao ,
(, -
	Orcamento- 6
	orcamento7 @
)@ A
=>B D
	orcamentoE N
.N O
ValorO T
*U V
$numW [
;[ \
private 
bool "
temItemMaiorQue100Reas +
(+ ,
	Orcamento, 5
	orcamento6 ?
)? @
{ 	
foreach 
( 
Item 
item 
in !
	orcamento" +
.+ ,
Itens, 1
)1 2
{ 
if 
( 
item 
. 
Valor 
>  
$num! $
)$ %
return& ,
true- 1
;1 2
} 
return 
false 
; 
} 	
} 
} ´	
KC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\TemplateMethod\ICPP.cs
	namespace 	
DesignPatterns
 
. 
TemplateMethod '
{ 
public		 

class		 
ICPP		 
:		 (
TemplateDeImpostoCondicional		 4
{

 
public 
override 
bool !
DeveUsarMaximaTaxacao 2
(2 3
	Orcamento3 <
	orcamento= F
)F G
=>H J
	orcamentoK T
.T U
ValorU Z
>=[ ]
$num^ a
;a b
public 
override 
double 
MaximaTaxacao ,
(, -
	Orcamento- 6
	orcamento7 @
)@ A
=>B D
	orcamentoE N
.N O
ValorO T
*U V
$numW [
;[ \
public 
override 
double 
MinimaTaxacao ,
(, -
	Orcamento- 6
	orcamento7 @
)@ A
=>B D
	orcamentoE N
.N O
ValorO T
*U V
$numW [
;[ \
} 
} ‰
cC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\TemplateMethod\DesignPatternsTemplateMethod.cs
	namespace 	
DesignPatterns
 
. 
TemplateMethod '
{ 
public 

class (
DesignPatternsTemplateMethod -
:. /
IDesignPatterns0 ?
{		 
public 
void 
MainExemplo 
(  
)  !
{ 	
var 

calculador 
= 
new   
CalculadorDeImpostos! 5
(5 6
)6 7
;7 8
	Orcamento 
	orcamento 
=  !
new" %
	Orcamento& /
(/ 0
$num0 3
)3 4
;4 5
Imposto 
icpp 
= 
new 
ICPP #
(# $
)$ %
;% &
Imposto 
ikcv 
= 
new 
IKCV #
(# $
)$ %
;% &

calculador 
. 
RealizaCalculo $
($ %
	orcamento% .
,. /
icpp0 4
)4 5
;5 6

calculador 
. 
RealizaCalculo $
($ %
	orcamento% .
,. /
ikcv0 4
)4 5
;5 6
} 	
} 
} ®
GC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\State\Reprovado.cs
	namespace 	
DesignPatterns
 
{ 
public 

class 
	Reprovado 
: 
EstadoDeUmOrcamento 0
{		 
public

 
void

 
AplicaDescontoExtra

 '
(

' (
	Orcamento

( 1
	orcamento

2 ;
)

; <
{ 	
throw 
new 
	Exception 
(  
$str  Q
)Q R
;R S
} 	
public 
void 
Aprova 
( 
	Orcamento $
	orcamento% .
). /
{ 	
throw 
new 
	Exception 
(  
)  !
;! "
} 	
public 
void 
Finaliza 
( 
	Orcamento &
	orcamento' 0
)0 1
{ 	
	orcamento 
. 
EstadoAtual !
=" #
new$ '

Finalizado( 2
(2 3
)3 4
;4 5
} 	
public 
void 
Reprova 
( 
	Orcamento %
	orcamento& /
)/ 0
{ 	
throw 
new 
	Exception 
(  
)  !
;! "
} 	
} 
} ô

HC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\State\Finalizado.cs
	namespace 	
DesignPatterns
 
{ 
public 

class 

Finalizado 
: 
EstadoDeUmOrcamento 1
{		 
public 
void 
AplicaDescontoExtra '
(' (
	Orcamento( 1
	orcamento2 ;
); <
{ 	
throw 
new 
	Exception 
(  
$str  Q
)Q R
;R S
} 	
public 
void 
Aprova 
( 
	Orcamento $
	orcamento% .
). /
{ 	
throw 
new 
	Exception 
(  
)  !
;! "
} 	
public 
void 
Finaliza 
( 
	Orcamento &
	orcamento' 0
)0 1
{ 	
throw 
new 
	Exception 
(  
)  !
;! "
} 	
public 
void 
Reprova 
( 
	Orcamento %
	orcamento& /
)/ 0
{ 	
throw 
new 
	Exception 
(  
)  !
;! "
} 	
} 
} œ
QC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\State\EstadoDeUmOrcamento.cs
	namespace 	
DesignPatterns
 
{ 
public 

	interface 
EstadoDeUmOrcamento (
{		 
void

 
AplicaDescontoExtra

  
(

  !
	Orcamento

! *
	orcamento

+ 4
)

4 5
;

5 6
void 
Aprova 
( 
	Orcamento 
	orcamento '
)' (
;( )
void 
Reprova 
( 
	Orcamento 
	orcamento (
)( )
;) *
void 
Finaliza 
( 
	Orcamento 
	orcamento  )
)) *
;* +
} 
} ˆ
IC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\State\EmAprovacao.cs
	namespace 	
DesignPatterns
 
{ 
public 

class 
EmAprovacao 
: 
EstadoDeUmOrcamento 2
{		 
public

 
void

 
AplicaDescontoExtra

 '
(

' (
	Orcamento

( 1
	orcamento

2 ;
)

; <
{ 	
	orcamento 
. 
Valor 
= 
	orcamento '
.' (
Valor( -
-. /
(0 1
	orcamento1 :
.: ;
Valor; @
*A B
$numC G
)G H
;H I
} 	
public 
void 
Aprova 
( 
	Orcamento $
	orcamento% .
). /
{ 	
	orcamento 
. 
EstadoAtual !
=" #
new$ '
Aprovado( 0
(0 1
)1 2
;2 3
} 	
public 
void 
Finaliza 
( 
	Orcamento &
	orcamento' 0
)0 1
{ 	
throw 
new 
	Exception 
(  
)  !
;! "
} 	
public 
void 
Reprova 
( 
	Orcamento %
	orcamento& /
)/ 0
{ 	
	orcamento 
. 
EstadoAtual !
=" #
new$ '
	Reprovado( 1
(1 2
)2 3
;3 4
} 	
} 
} ü
QC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\State\DesignPatternsState.cs
	namespace 	
DesignPatterns
 
. 
State 
{ 
public 

class 
DesignPatternsState $
:% &
IDesignPatterns' 6
{		 
public

 
void

 
MainExemplo

 
(

  
)

  !
{ 	
	Orcamento 
reforma 
= 
new  #
	Orcamento$ -
(- .
$num. 1
)1 2
;2 3
Console 
. 
	WriteLine 
( 
reforma %
.% &
Valor& +
)+ ,
;, -
reforma 
. 
AplicaDescontoExtra '
(' (
)( )
;) *
Console 
. 
	WriteLine 
( 
reforma %
.% &
Valor& +
)+ ,
;, -
reforma 
. 
Aprova 
( 
) 
; 
reforma 
. 
AplicaDescontoExtra '
(' (
)( )
;) *
Console 
. 
	WriteLine 
( 
reforma %
.% &
Valor& +
)+ ,
;, -
reforma 
. 
Finaliza 
( 
) 
; 
} 	
} 
} É
FC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\State\Aprovado.cs
	namespace 	
DesignPatterns
 
{ 
public 

class 
Aprovado 
: 
EstadoDeUmOrcamento /
{		 
public

 
void

 
AplicaDescontoExtra

 '
(

' (
	Orcamento

( 1
	orcamento

2 ;
)

; <
{ 	
	orcamento 
. 
Valor 
= 
	orcamento '
.' (
Valor( -
-. /
(0 1
	orcamento1 :
.: ;
Valor; @
*A B
$numC G
)G H
;H I
} 	
public 
void 
Aprova 
( 
	Orcamento $
	orcamento% .
). /
{ 	
throw 
new 
	Exception 
(  
)  !
;! "
} 	
public 
void 
Finaliza 
( 
	Orcamento &
	orcamento' 0
)0 1
{ 	
	orcamento 
. 
EstadoAtual !
=" #
new$ '

Finalizado( 2
(2 3
)3 4
;4 5
} 	
public 
void 
Reprova 
( 
	Orcamento %
	orcamento& /
)/ 0
{ 	
throw 
new 
	Exception 
(  
)  !
;! "
} 	
} 
} ˆ
?C:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Program.cs
	namespace 	
DesignPatterns
 
{		 
class

 	
Program


 
{ 
static 
void 
Main 
( 
string 
[  
]  !
args" &
)& '
{ 	
IDesignPatterns 
designExemplo )
=* +
new, /!
DesignPatternsCommand0 E
(E F
)F G
;G H
designExemplo 
. 
MainExemplo %
(% &
)& '
;' (
Console 
. 
ReadKey 
( 
) 
; 
} 	
} 
} ç
NC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Observer\NotaFiscalDAO.cs
	namespace 	
DesignPatterns
 
. 
Observer !
{ 
public 

class 
NotaFiscalDAO 
:  
AcaoAposGerarNota! 2
{		 
public

 
void

 
Executa

 
(

 

NotaFiscal

 &
nf

' )
)

) *
{ 	
Console 
. 
	WriteLine 
( 
$str 4
)4 5
;5 6
} 	
} 
} ç
NC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Observer\EnviadorDeSMS.cs
	namespace 	
DesignPatterns
 
. 
Observer !
{ 
public 

class 
EnviadorDeSMS 
:  
AcaoAposGerarNota! 2
{		 
public 
void 
Executa 
( 

NotaFiscal &
nf' )
)) *
{ 	
Console 
. 
	WriteLine 
( 
$str 4
)4 5
;5 6
} 	
} 
} ë
PC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Observer\EnviadorDeEmail.cs
	namespace 	
DesignPatterns
 
. 
Observer !
{ 
public 

class 
EnviadorDeEmail  
:! "
AcaoAposGerarNota# 4
{		 
public 
void 
Executa 
( 

NotaFiscal &
nf' )
)) *
{ 	
Console 
. 
	WriteLine 
( 
$str 5
)5 6
;6 7
} 	
} 
} ¡
WC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Observer\DesignPatternsObserver.cs
	namespace 	
DesignPatterns
 
. 
Observer !
{ 
public 

class "
DesignPatternsObserver '
:( )
IDesignPatterns* 9
{		 
public

 
void

 
MainExemplo

 
(

  
)

  !
{ 	
NotaFiscalBuilder 
criador %
=& '
new( +
NotaFiscalBuilder, =
(= >
)> ?
;? @
criador 
. 
ParaEmpresa 
(  
$str  4
)4 5
. 
ComCnpj 
( 
$str ,
), -
. 
ComItem 
( 
new 

ItemDaNota  *
(* +
$str+ 3
,3 4
$num5 8
)8 9
)9 :
. 
ComItem 
( 
new 

ItemDaNota  *
(* +
$str+ 3
,3 4
$num5 7
)7 8
)8 9
. 
NaDataAtual 
(  
)  !
. 
ComObservacoes "
(" #
$str# 8
)8 9
;9 :
criador 
. 
AdicionaAcao  
(  !
new! $
EnviadorDeEmail% 4
(4 5
)5 6
)6 7
;7 8
criador 
. 
AdicionaAcao  
(  !
new! $
NotaFiscalDAO% 2
(2 3
)3 4
)4 5
;5 6
criador 
. 
AdicionaAcao  
(  !
new! $
EnviadorDeSMS% 2
(2 3
)3 4
)4 5
;5 6

NotaFiscal 
nf 
= 
criador #
.# $
Constroi$ ,
(, -
)- .
;. /
} 	
} 
} ¨
RC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Observer\AcaoAposGerarNota.cs
	namespace 	
DesignPatterns
 
. 
Observer !
{ 
public 

	interface 
AcaoAposGerarNota &
{		 
void

 
Executa

 
(

 

NotaFiscal

 
nf

  "
)

" #
;

# $
} 
}  
LC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Memento\TipoContrato.cs
	namespace 	
DesignPatterns
 
. 
Memento  
{ 
public 

enum 
TipoContrato 
{ 
Novo 
, 
EmAndamento 
, 
Acertado 
, 
	Concluido 
}

 
} ±
IC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Memento\Historico.cs
	namespace 	
DesignPatterns
 
. 
Memento  
{ 
public 

class 
	Historico 
{ 
private		 
IList		 
<		 
Estado		 
>		 
Estados		 %
=		& '
new		( +
List		, 0
<		0 1
Estado		1 7
>		7 8
(		8 9
)		9 :
;		: ;
public 
void 
Adiciona 
( 
Estado #
estado$ *
)* +
{ 	
Estados 
. 
Add 
( 
estado 
) 
;  
} 	
public 
Estado 
Pega 
( 
int 
indice %
)% &
{ 	
return 
Estados 
[ 
indice !
]! "
;" #
} 	
} 
} ¾
FC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Memento\Estado.cs
	namespace 	
DesignPatterns
 
. 
Memento  
{ 
public 

class 
Estado 
{ 
public		 
Contrato		 
Contrato		  
{		! "
get		# &
;		& '
private		( /
set		0 3
;		3 4
}		5 6
public 
Estado 
( 
Contrato 
contrato '
)' (
{ 	
this 
. 
Contrato 
= 
contrato $
;$ %
} 	
} 
} ç
UC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Memento\DesignPatternsMemento.cs
	namespace 	
DesignPatterns
 
. 
Memento  
{ 
public 

class !
DesignPatternsMemento &
:' (
IDesignPatterns) 8
{ 
public		 
void		 
MainExemplo		 
(		  
)		  !
{

 	
	Historico 
	historico 
=  !
new" %
	Historico& /
(/ 0
)0 1
;1 2
Contrato 
contrato 
= 
new  #
Contrato$ ,
(, -
DateTime- 5
.5 6
Now6 9
,9 :
$str; @
,@ A
TipoContratoB N
.N O
NovoO S
)S T
;T U
	historico 
. 
Adiciona 
( 
contrato '
.' (
SalvaEstado( 3
(3 4
)4 5
)5 6
;6 7
contrato 
. 
Avanca 
( 
) 
; 
	historico 
. 
Adiciona 
( 
contrato '
.' (
SalvaEstado( 3
(3 4
)4 5
)5 6
;6 7
contrato 
. 
Avanca 
( 
) 
; 
	historico 
. 
Adiciona 
( 
contrato '
.' (
SalvaEstado( 3
(3 4
)4 5
)5 6
;6 7
Console 
. 
	WriteLine 
( 
contrato &
.& '
Tipo' +
)+ ,
;, -
Console 
. 
	WriteLine 
( 
	historico '
.' (
Pega( ,
(, -
$num- .
). /
./ 0
Contrato0 8
.8 9
Tipo9 =
)= >
;> ?
} 	
} 
} •
HC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Memento\Contrato.cs
	namespace 	
DesignPatterns
 
. 
Memento  
{ 
public 

class 
Contrato 
{ 
public		 
DateTime		 
Data		 
{		 
get		 "
;		" #
private		$ +
set		, /
;		/ 0
}		1 2
public

 
string

 
Cliente

 
{

 
get

  #
;

# $
private

% ,
set

- 0
;

0 1
}

2 3
public 
TipoContrato 
Tipo  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
Contrato 
( 
DateTime  
data! %
,% &
string' -
cliente. 5
,5 6
TipoContrato7 C
tipoD H
)H I
{ 	
this 
. 
Data 
= 
data 
; 
this 
. 
Cliente 
= 
cliente "
;" #
this 
. 
Tipo 
= 
tipo 
; 
} 	
public 
void 
Avanca 
( 
) 
{ 	
if 
( 
this 
. 
Tipo 
== 
TipoContrato )
.) *
Novo* .
). /
this 
. 
Tipo 
= 
TipoContrato (
.( )
EmAndamento) 4
;4 5
else 
if 
( 
this 
. 
Tipo 
== !
TipoContrato" .
.. /
EmAndamento/ :
): ;
this 
. 
Tipo 
= 
TipoContrato (
.( )
Acertado) 1
;1 2
else 
if 
( 
this 
. 
Tipo 
== !
TipoContrato" .
.. /
Acertado/ 7
)7 8
this 
. 
Tipo 
= 
TipoContrato (
.( )
	Concluido) 2
;2 3
} 	
public 
Estado 
SalvaEstado !
(! "
)" #
{ 	
return   
new   
Estado   
(   
new   !
Contrato  " *
(  * +
this  + /
.  / 0
Data  0 4
,  4 5
this  6 :
.  : ;
Cliente  ; B
,  B C
this  D H
.  H I
Tipo  I M
)  M N
)  N O
;  O P
}!! 	
}## 
}$$ ¬
QC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo2\Tecnico.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo2" *
{ 
public 

class 
Tecnico 
{ 
public		 
Guid		 
ID		 
{		 
get		 
;		 
private		 %
set		& )
;		) *
}		+ ,
public

 
string

 
Nome

 
{

 
get

  
;

  !
private

" )
set

* -
;

- .
}

/ 0
public 
IEnumerable 
< 
Jogador "
>" #
Time$ (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
public 
Tecnico 
( 
string 
nome "
)" #
{ 	
ID 
= 
Guid 
. 
NewGuid 
( 
) 
;  
Nome 
= 
nome 
; 
Time 
= 

EscalaTime 
( 
) 
;  
} 	
public 
string 
PedeSubstituicao &
(& '
string' -
nomeJogadorEntra. >
,> ?
string@ F
nomeJogadorSaiG U
)U V
=> 

$" 
$str 
{  
nomeJogadorEntra  0
}0 1
$str1 7
{7 8
nomeJogadorSai8 F
}F G
"G H
;H I
private 
IEnumerable 
< 
Jogador #
># $

EscalaTime% /
(/ 0
)0 1
{ 	
string 
[ 
] 
nomes 
= 
new  
string! '
[' (
$num( *
]* +
{, -
$str- 7
,7 8
$str9 @
,@ A
$strB I
,I J
$str 
, 
$str 
, 
$str &
,& '
$str( .
,. /
$str0 9
,9 :
$str; D
,D E
$strF N
,N O
$str 
, 
$str %
,% &
$str' /
,/ 0
$str1 :
}: ;
;; <
for 
( 
int 
i 
= 
$num 
; 
i 
< 
nomes  %
.% &
Length& ,
;, -
i. /
++/ 1
)1 2
{ 
if 
( 
i 
<= 
$num 
) 
yield 
return  
new! $
Jogador% ,
(, -
nomes- 2
[2 3
i3 4
]4 5
,5 6
i7 8
,8 9
true: >
)> ?
;? @
else   
yield!! 
return!!  
new!!! $
Jogador!!% ,
(!!, -
nomes!!- 2
[!!2 3
i!!3 4
]!!4 5
,!!5 6
i!!7 8
,!!8 9
false!!: ?
)!!? @
;!!@ A
}"" 
}## 	
}$$ 
}%% §#
iC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo2\SubstituirJogadorCommandHandler.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo2" *
{ 
public		 

class		 +
SubstituirJogadorCommandHandler		 0
:		1 2
IRequestHandler		3 B
{

 
public 
Task 
< 
IEnumerable 
<  
Jogador  '
>' (
>( )
Handle* 0
(0 1$
SubstituirJogadorCommand1 I
requestJ Q
)Q R
{ 	
request 
. 
Tecnico 
. 
PedeSubstituicao ,
(, -
request- 4
.4 5
JogadorNoBanco5 C
.C D
NomeD H
,H I
requestJ Q
.Q R
JogadorEmCampoR `
.` a
Nomea e
)e f
;f g
request 
. 
QuartoArbitro !
.! "
LevantaPlaca" .
(. /
request/ 6
.6 7
JogadorNoBanco7 E
.E F
NumeroF L
,L M
requestN U
.U V
JogadorEmCampoV d
.d e
Numeroe k
)k l
;l m
return 
Task 
. 

FromResult "
(" #
SubstituiJogador  
(  !
request 
. 
Tecnico #
.# $
Time$ (
,( )
request 
. 
JogadorNoBanco *
.* +
Nome+ /
,/ 0
request 
. 
JogadorEmCampo *
.* +
Nome+ /
) 
) 
; 
} 	
private 
IEnumerable 
< 
Jogador #
># $
SubstituiJogador% 5
(5 6
IEnumerable6 A
<A B
JogadorB I
>I J
timeK O
,O P
stringQ W
nomeJogadorQueEntraX k
,k l
stringm s
nomeJogadorQueSai	t …
)
… †
{ 	
var 
timeAposSaida 
= 
JogadorSaiDeCampo  1
(1 2
time2 6
,6 7
nomeJogadorQueSai8 I
)I J
;J K
return 
JogadorEntraEmCampo &
(& '
timeAposSaida' 4
,4 5
nomeJogadorQueEntra6 I
)I J
;J K
} 	
private   
IEnumerable   
<   
Jogador   #
>  # $
JogadorEntraEmCampo  % 8
(  8 9
IEnumerable  9 D
<  D E
Jogador  E L
>  L M
time  N R
,  R S
string  T Z
nome  [ _
)  _ `
{!! 	
foreach"" 
("" 
var"" 
jogador""  
in""! #
time""$ (
)""( )
{## 
if$$ 
($$ 
jogador$$ 
.$$ 
Nome$$  
==$$! #
nome$$$ (
)$$( )
{%% 
jogador&& 
.&& 
EntraEmCampo&& (
(&&( )
)&&) *
;&&* +
yield'' 
return''  
jogador''! (
;''( )
}(( 
yield)) 
return)) 
jogador)) $
;))$ %
}** 
}++ 	
private-- 
IEnumerable-- 
<-- 
Jogador-- #
>--# $
JogadorSaiDeCampo--% 6
(--6 7
IEnumerable--7 B
<--B C
Jogador--C J
>--J K
time--L P
,--P Q
string--R X
nome--Y ]
)--] ^
{.. 	
foreach// 
(// 
var// 
jogador//  
in//! #
time//$ (
)//( )
{00 
if11 
(11 
jogador11 
.11 
Nome11  
==11! #
nome11$ (
)11( )
{22 
jogador33 
.33 

SaiDeCampo33 &
(33& '
)33' (
;33( )
yield44 
return44  
jogador44! (
;44( )
}55 
yield66 
return66 
jogador66 $
;66$ %
}77 
}88 	
};; 
}<< ï
bC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo2\SubstituirJogadorCommand.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo2" *
{ 
public 

class $
SubstituirJogadorCommand )
{ 
public		 
Tecnico		 
Tecnico		 
{		  
get		! $
;		$ %
private		& -
set		. 1
;		1 2
}		3 4
public

 
Jogador

 
JogadorEmCampo

 %
{

& '
get

( +
;

+ ,
private

- 4
set

5 8
;

8 9
}

: ;
public 
Jogador 
JogadorNoBanco %
{& '
get( +
;+ ,
private- 4
set5 8
;8 9
}: ;
public 
QuartoArbitro 
QuartoArbitro *
{+ ,
get- 0
;0 1
private2 9
set: =
;= >
}? @
public $
SubstituirJogadorCommand '
(' (
Tecnico 
tecnico 
, 
Jogador 
jogadorEmCampo "
," #
Jogador 
jogadorNoBanco "
," #
QuartoArbitro 
quartoArbitro '
) 	
{ 	
Tecnico 
= 
tecnico 
; 
JogadorEmCampo 
= 
jogadorEmCampo +
;+ ,
JogadorNoBanco 
= 
jogadorNoBanco +
;+ ,
QuartoArbitro 
= 
quartoArbitro )
;) *
} 	
} 
} ˆ
WC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo2\QuartoArbitro.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo2" *
{ 
public 

class 
QuartoArbitro 
{ 
public		 
Guid		 
ID		 
{		 
get		 
;		 
private		 %
set		& )
;		) *
}		+ ,
public

 
string

 
Nome

 
{

 
get

  
;

  !
private

" )
set

* -
;

- .
}

/ 0
public 
QuartoArbitro 
( 
string #
nome$ (
)( )
{ 	
ID 
= 
Guid 
. 
NewGuid 
( 
) 
;  
Nome 
= 
nome 
; 
} 	
public 
string 
LevantaPlaca "
(" #
int# &
numeroEntra' 2
,2 3
int4 7
	numeroSai8 A
)A B
=> 

$" 
$str 
{ 
numeroEntra  
}  !
$str! )
{) *
	numeroSai* 3
}3 4
"4 5
;5 6
} 
} •
RC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo2\Mediador.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo2" *
{ 
public 

class 
Mediador 
: 
	IMediator %
{		 
private

 
IRequestHandler

 
_handler

  (
;

( )
public 
Mediador 
( 
IRequestHandler '
handler( /
)/ 0
{ 	
this 
. 
_handler 
= 
handler #
;# $
} 	
public 
async 
Task 
Send 
( $
SubstituirJogadorCommand 7
_command8 @
)@ A
{ 	
await 
_handler 
. 
Handle !
(! "
_command" *
)* +
;+ ,
} 	
} 
} Ò
QC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo2\Jogador.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo2" *
{ 
public 

class 
Jogador 
{ 
public		 
Guid		 
ID		 
{		 
get		 
;		 
private		 %
set		& )
;		) *
}		+ ,
public

 
string

 
Nome

 
{

 
get

  
;

  !
private

" )
set

* -
;

- .
}

/ 0
public 
int 
Numero 
{ 
get 
;  
private! (
set) ,
;, -
}. /
public 
bool 
EstaEmCampo 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
public 
Jogador 
( 
string 
nome "
," #
int$ '
numero( .
,. /
bool0 4
estaEmCampo5 @
)@ A
{ 	
ID 
= 
Guid 
. 
NewGuid 
( 
) 
;  
Nome 
= 
nome 
; 
Numero 
= 
numero 
; 
EstaEmCampo 
= 
estaEmCampo %
;% &
} 	
public 
void 

SaiDeCampo 
( 
)  
{ 	
EstaEmCampo 
= 
false 
;  
} 	
public 
void 
EntraEmCampo  
(  !
)! "
{ 	
EstaEmCampo 
= 
true 
; 
} 	
} 
} Î
YC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo2\IRequestHandler.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo2" *
{ 
public 

	interface 
IRequestHandler $
{ 
Task		 
<		 
IEnumerable		 
<		 
Jogador		  
>		  !
>		! "
Handle		# )
(		) *$
SubstituirJogadorCommand		* B
request		C J
)		J K
;		K L
}

 
} Ö
SC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo2\IMediator.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo2" *
{ 
public 

	interface 
	IMediator 
{		 
Task

 
Send

 
(

 $
SubstituirJogadorCommand

 *
handler

+ 2
)

2 3
;

3 4
} 
} î
hC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo2\DesignPatternsMediatorExemplo2.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo2" *
{ 
public 

class *
DesignPatternsMediatorExemplo2 /
:0 1
IDesignPatterns2 A
{ 
public		 
void		 
MainExemplo		 
(		  
)		  !
{

 	
Tecnico 
tecnico 
= 
new !
Tecnico" )
() *
$str* 2
)2 3
;3 4
QuartoArbitro 
quartoArbitro '
=( )
new* -
QuartoArbitro. ;
(; <
$str< K
)K L
;L M
Jogador 
jogadorQueSai !
=" #
new$ '
Jogador( /
(/ 0
$str0 6
,6 7
$num8 :
,: ;
true< @
)@ A
;A B
Jogador 
jogadorQueEntra #
=$ %
new& )
Jogador* 1
(1 2
$str2 <
,< =
$num> @
,@ A
falseB G
)G H
;H I
	IMediator 
mediador 
=  
new! $
Mediador% -
(- .
new. 1+
SubstituirJogadorCommandHandler2 Q
(Q R
)R S
)S T
;T U
mediador 
. 
Send 
( 
new $
SubstituirJogadorCommand 6
(6 7
tecnico7 >
,> ?
jogadorQueSai@ M
,M N
jogadorQueEntraO ^
,^ _
quartoArbitro` m
)m n
)n o
;o p
} 	
} 
} ý
VC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo1\Participante.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo1" *
{ 
public 

class 
Participante 
{ 
public		 
IChatSalaMediator		  
ChatSala		! )
{		* +
get		, /
;		/ 0
set		1 4
;		4 5
}		6 7
public

 
string

 
Nome

 
{

 
get

  
;

  !
private

" )
set

* -
;

- .
}

/ 0
public 
Participante 
( 
string "
nome# '
)' (
{ 	
Nome 
= 
nome 
; 
} 	
public 
void 
Enviar 
( 
string !
para" &
,& '
string( .
mensagem/ 7
)7 8
{ 	
ChatSala 
. 
Enviar 
( 
this  
.  !
Nome! %
,% &
para' +
,+ ,
mensagem- 5
)5 6
;6 7
} 	
public 
virtual 
void 
Receber #
(# $
string$ *

mensagemDe+ 5
,5 6
string7 =
mensagem> F
)F G
{ 	
Console 
. 
	WriteLine 
( 
$"  
{  !

mensagemDe! +
}+ ,
$str, 2
{2 3
this3 7
.7 8
Nome8 <
}< =
$str= ?
{? @
mensagem@ H
}H I
"I J
)J K
;K L
} 	
} 
} Õ
SC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo1\NaoMembro.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo1" *
{ 
public 

class 
	NaoMembro 
: 
Participante )
{ 
public		 
	NaoMembro		 
(		 
string		 
nome		  $
)		$ %
:		& '
base		( ,
(		, -
nome		- 1
)		1 2
{

 	
} 	
public 
override 
void 
Receber $
($ %
string% +

mensagemDe, 6
,6 7
string8 >
mensagem? G
)G H
{ 	
Console 
. 
Write 
( 
$str -
)- .
;. /
base 
. 
Receber 
( 

mensagemDe #
,# $
mensagem% -
)- .
;. /
} 	
} 
} Ì
PC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo1\Membro.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo1" *
{ 
public 

class 
Membro 
: 
Participante &
{ 
public		 
Membro		 
(		 
string		 
nome		 !
)		! "
:		# $
base		% )
(		) *
nome		* .
)		. /
{

 	
} 	
public 
override 
void 
Receber $
($ %
string% +

mensagemDe, 6
,6 7
string8 >
mensagem? G
)G H
{ 	
Console 
. 
Write 
( 
$str )
)) *
;* +
base 
. 
Receber 
( 

mensagemDe #
,# $
mensagem% -
)- .
;. /
} 	
} 
} Ð
[C:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo1\IChatSalaMediator.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo1" *
{ 
public 

	interface 
IChatSalaMediator &
{ 
void		 
Registro		 
(		 
Participante		 "
participante		# /
)		/ 0
;		0 1
void

 
Enviar

 
(

 
string

 

mensagemDe

 %
,

% &
string

' -
para

. 2
,

2 3
string

4 :
mensagem

; C
)

C D
;

D E
} 
} ¿
hC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo1\DesignPatternsMediatorExemplo1.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo1" *
{ 
public 

class *
DesignPatternsMediatorExemplo1 /
:0 1
IDesignPatterns2 A
{ 
public		 
void		 
MainExemplo		 
(		  
)		  !
{

 	
ChatSala 
chatSala 
= 
new  #
ChatSala$ ,
(, -
)- .
;. /
Participante 
	Macoratti "
=# $
new% (
Membro) /
(/ 0
$str0 ;
); <
;< =
Participante 
Miriam 
=  !
new" %
Membro& ,
(, -
$str- 5
)5 6
;6 7
Participante 
	Jefferson "
=# $
new% (
Membro) /
(/ 0
$str0 ;
); <
;< =
Participante 
Janice 
=  !
new" %
Membro& ,
(, -
$str- 5
)5 6
;6 7
Participante 
Jessica  
=! "
new# &
	NaoMembro' 0
(0 1
$str1 :
): ;
;; <
chatSala 
. 
Registro 
( 
	Macoratti '
)' (
;( )
chatSala 
. 
Registro 
( 
Miriam $
)$ %
;% &
chatSala 
. 
Registro 
( 
	Jefferson '
)' (
;( )
chatSala 
. 
Registro 
( 
Janice $
)$ %
;% &
chatSala 
. 
Registro 
( 
Jessica %
)% &
;& '
Jessica 
. 
Enviar 
( 
$str #
,# $
$str% 3
)3 4
;4 5
Miriam 
. 
Enviar 
( 
$str %
,% &
$str' 6
)6 7
;7 8
	Jefferson 
. 
Enviar 
( 
$str (
,( )
$str* 4
)4 5
;5 6
Miriam 
. 
Enviar 
( 
$str "
," #
$str$ 6
)6 7
;7 8
Janice 
. 
Enviar 
( 
$str #
,# $
$str% 8
)8 9
;9 :
} 	
} 
}   Ú
RC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Mediator\Exemplo1\ChatSala.cs
	namespace 	
DesignPatterns
 
. 
Mediator !
.! "
Exemplo1" *
{ 
public 

class 
ChatSala 
: 
IChatSalaMediator -
{ 
private

 
IDictionary

 
<

 
string

 "
,

" #
Participante

$ 0
>

0 1
_participantes

2 @
=

A B
new

C F

Dictionary

G Q
<

Q R
string

R X
,

X Y
Participante

Z f
>

f g
(

g h
)

h i
;

i j
public 
void 
Enviar 
( 
string !

mensagemDe" ,
,, -
string. 4
para5 9
,9 :
string; A
mensagemB J
)J K
{ 	
Participante 
participante %
=& '
null( ,
;, -
this 
. 
_participantes 
.  
TryGetValue  +
(+ ,
para, 0
,0 1
out2 5
participante6 B
)B C
;C D
if 
( 
participante 
!= 
null  $
)$ %
{ 
participante 
. 
Receber $
($ %

mensagemDe% /
,/ 0
mensagem1 9
)9 :
;: ;
} 
} 	
public 
void 
Registro 
( 
Participante )
participante* 6
)6 7
{ 	
if 
( 
! 
this 
. 
_participantes $
.$ %
ContainsKey% 0
(0 1
participante1 =
.= >
Nome> B
)B C
)C D
{ 
_participantes 
. 
Add "
(" #
participante# /
./ 0
Nome0 4
,4 5
participante6 B
)B C
;C D
} 
participante 
. 
ChatSala !
=" #
this$ (
;( )
} 	
}   
}!! ­
MC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Interpreter\Subtracao.cs
	namespace 	
DesignPatterns
 
. 
Interpreter $
{ 
public 

class 
	Subtracao 
: 

IExpressao '
{		 
public

 

IExpressao

 
Esquerda

 "
{

# $
get

% (
;

( )
private

* 1
set

2 5
;

5 6
}

7 8
public 

IExpressao 
Direita !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
	Subtracao 
( 

IExpressao #
esquerda$ ,
,, -

IExpressao. 8
direita9 @
)@ A
{ 	
this 
. 
Esquerda 
= 
esquerda $
;$ %
this 
. 
Direita 
= 
direita "
;" #
} 	
public 
int 
Avalia 
( 
) 
=> 
Esquerda '
.' (
Avalia( .
(. /
)/ 0
-1 2
Direita3 :
.: ;
Avalia; A
(A B
)B C
;C D
public 
void 
Aceita 
( 
IVisitor #

impressora$ .
). /
{ 	

impressora 
. 
ImprimeSubtracao '
(' (
this( ,
), -
;- .
} 	
} 
} ™
HC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Interpreter\Soma.cs
	namespace 	
DesignPatterns
 
. 
Interpreter $
{ 
public 

class 
Soma 
: 

IExpressao "
{		 
public

 

IExpressao

 
Esquerda

 "
{

# $
get

% (
;

( )
private

* 1
set

2 5
;

5 6
}

7 8
public 

IExpressao 
Direita !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
Soma 
( 

IExpressao 
esquerda '
,' (

IExpressao) 3
direita4 ;
); <
{ 	
this 
. 
Esquerda 
= 
esquerda $
;$ %
this 
. 
Direita 
= 
direita "
;" #
} 	
public 
int 
Avalia 
( 
) 
=> 
Esquerda '
.' (
Avalia( .
(. /
)/ 0
+1 2
Direita3 :
.: ;
Avalia; A
(A B
)B C
;C D
public 
void 
Aceita 
( 
IVisitor #

impressora$ .
). /
{ 	

impressora 
. 
ImprimeSoma "
(" #
this# '
)' (
;( )
} 	
} 
} ‡	
JC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Interpreter\Numero.cs
	namespace 	
DesignPatterns
 
. 
Interpreter $
{ 
public 

class 
Numero 
: 

IExpressao $
{		 
public

 
int

 
Valor

 
{

 
get

 
;

 
private

  '
set

( +
;

+ ,
}

, -
public 
Numero 
( 
int 
numero  
)  !
{ 	
this 
. 
Valor 
= 
numero 
;  
} 	
public 
int 
Avalia 
( 
) 
=> 
Valor $
;$ %
public 
void 
Aceita 
( 
IVisitor #

impressora$ .
). /
{ 	

impressora 
. 
ImprimeNumero $
($ %
this% )
)) *
;* +
} 	
} 
} ÷
NC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Interpreter\IExpressao.cs
	namespace 	
DesignPatterns
 
. 
Interpreter $
{ 
public 

	interface 

IExpressao 
{		 
int

 
Avalia

 
(

 
)

 
;

 
void 
Aceita 
( 
IVisitor 

impressora '
)' (
;( )
} 
} Ë
]C:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Interpreter\DesignPatternsInterpreter.cs
	namespace 	
DesignPatterns
 
. 
Interpreter $
{ 
public 

class %
DesignPatternsInterpreter *
:+ ,
IDesignPatterns- <
{		 
public 
void 
MainExemplo 
(  
)  !
{ 	

IExpressao 
esquerda 
=  !
new" %
Soma& *
(* +
new+ .
Soma/ 3
(3 4
new4 7
Numero8 >
(> ?
$num? @
)@ A
,A B
newC F
NumeroG M
(M N
$numN Q
)Q R
)R S
,S T
newU X
NumeroY _
(_ `
$num` b
)b c
)c d
;d e

IExpressao 
direita 
=  
new! $
	Subtracao% .
(. /
new/ 2
Numero3 9
(9 :
$num: <
)< =
,= >
new? B
NumeroC I
(I J
$numJ L
)L M
)M N
;N O

IExpressao 
soma 
= 
new !
Soma" &
(& '
esquerda' /
,/ 0
direita1 8
)8 9
;9 :
Console 
. 
	WriteLine 
( 
soma "
." #
Avalia# )
() *
)* +
)+ ,
;, -

Expression 
	somatoria  
=! "

Expression# -
.- .
Add. 1
(1 2

Expression2 <
.< =
Constant= E
(E F
$numF H
)H I
,I J

ExpressionK U
.U V
ConstantV ^
(^ _
$num_ b
)b c
)c d
;d e
Func 
< 
int 
> 
funcao 
= 

Expression )
.) *
Lambda* 0
<0 1
Func1 5
<5 6
int6 9
>9 :
>: ;
(; <
	somatoria< E
)E F
.F G
CompileG N
(N O
)O P
;P Q
Console 
. 
Write 
( 
funcao  
(  !
)! "
)" #
;# $
; 
}	 

} 
} Ò
GC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\IDesignPatterns.cs
	namespace 	
DesignPatterns
 
{ 
public 

	interface 
IDesignPatterns $
{ 
void		 
MainExemplo		 
(		 
)		 
;		 
} 
} œ
DC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Flyweight\Re.cs
	namespace 	
DesignPatterns
 
. 
	Flyweight "
{ 
public 

class 
Re 
: 
INota 
{ 
public 
int 

Frequencia 
=>  
$num! $
;$ %
} 
} µ
GC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Flyweight\Piano.cs
	namespace 	
DesignPatterns
 
. 
	Flyweight "
{ 
public 

class 
Piano 
{ 
public		 
void		 
Toca		 
(		 
IList		 
<		 
INota		 $
>		$ %
musica		& ,
)		, -
{

 	
foreach 
( 
INota 
nota 
in  "
musica# )
)) *
{ 
Console 
. 
Beep 
( 
nota !
.! "

Frequencia" ,
,, -
$num. 1
)1 2
;2 3
} 
} 	
} 
} È
OC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Flyweight\NotasMusicais.cs
	namespace 	
DesignPatterns
 
. 
	Flyweight "
{ 
public 

class 
NotasMusicais 
{ 
private		 
static		 
IDictionary		 "
<		" #
string		# )
,		) *
INota		+ 0
>		0 1
notas		2 7
=		8 9
new

 

Dictionary

 
<

 
string

 !
,

! "
INota

# (
>

( )
(

) *
)

* +
{ 
{ 
$str 
, 
new 
Do 
( 
) 
}  !
,! "
{ 
$str 
, 
new 
Re 
( 
) 
}  !
,! "
{ 
$str 
, 
new 
Mi 
( 
) 
}  !
,! "
{ 
$str 
, 
new 
Fa 
( 
) 
}  !
} 
; 
public 
INota 
Pega 
( 
string  
nota! %
)% &
{ 	
return 
notas 
[ 
nota 
] 
; 
} 	
} 
} œ
DC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Flyweight\Mi.cs
	namespace 	
DesignPatterns
 
. 
	Flyweight "
{ 
public 

class 
Mi 
: 
INota 
{ 
public 
int 

Frequencia 
=>  
$num! $
;$ %
} 
} ý
GC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Flyweight\INota.cs
	namespace 	
DesignPatterns
 
. 
	Flyweight "
{ 
public 

	interface 
INota 
{ 
int		 

Frequencia		 
{		 
get		 
;		 
}		 
} 
} œ
DC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Flyweight\Fa.cs
	namespace 	
DesignPatterns
 
. 
	Flyweight "
{ 
public 

class 
Fa 
: 
INota 
{ 
public 
int 

Frequencia 
=>  
$num! $
;$ %
} 
} œ
DC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Flyweight\Do.cs
	namespace 	
DesignPatterns
 
. 
	Flyweight "
{ 
public 

class 
Do 
: 
INota 
{ 
public 
int 

Frequencia 
=>  
$num! $
;$ %
} 
} Ï
YC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Flyweight\DesignPatternsFlyweight.cs
	namespace 	
DesignPatterns
 
. 
	Flyweight "
{ 
public 

class #
DesignPatternsFlyweight (
:) *
IDesignPatterns+ :
{ 
public

 
void

 
MainExemplo

 
(

  
)

  !
{ 	
NotasMusicais 
notasMusicais '
=( )
new* -
NotasMusicais. ;
(; <
)< =
;= >
IList 
< 
INota 
> 
musica 
=  !
new" %
List& *
<* +
INota+ 0
>0 1
(1 2
)2 3
{ 
notasMusicais 
. 
Pega "
(" #
$str# '
)' (
,( )
notasMusicais 
. 
Pega "
(" #
$str# '
)' (
,( )
notasMusicais 
. 
Pega "
(" #
$str# '
)' (
,( )
notasMusicais 
. 
Pega "
(" #
$str# '
)' (
,( )
notasMusicais 
. 
Pega "
(" #
$str# '
)' (
,( )
notasMusicais 
. 
Pega "
(" #
$str# '
)' (
} 
; 
Piano 
piano 
= 
new 
Piano #
(# $
)$ %
;% &
piano 
. 
Toca 
( 
musica 
) 
; 
} 	
} 
} Ã
TC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Factory\LeitorDeConfiguracao.cs
	namespace 	
DesignPatterns
 
. 
Factory  
{ 
public 

class  
LeitorDeConfiguracao %
{ 
public 
string 
LeConnectionString (
(( )
)) *
=>+ -
$str. A
;A B
}		 
}

 Î
UC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Factory\DesignPatternsFactory.cs
	namespace 	
DesignPatterns
 
. 
Factory  
{ 
public 

class !
DesignPatternsFactory &
:' (
IDesignPatterns) 8
{		 
public 
void 
MainExemplo 
(  
)  !
{ 	
IDbConnection 
conexao !
=" #
new$ '
ConnectionFactory( 9
(9 :
): ;
.; <
GetConnection< I
(I J
)J K
;K L

IDbCommand 
comando 
=  
conexao! (
.( )
CreateCommand) 6
(6 7
)7 8
;8 9
comando 
. 
CommandText 
=  !
$str" 8
;8 9
} 	
} 
} Ý
QC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Factory\ConnectionFactory.cs
	namespace 	
DesignPatterns
 
. 
Factory  
{ 
public		 

class		 
ConnectionFactory		 "
{

 
public 
IDbConnection 
GetConnection *
(* +
)+ ,
{ 	
IDbConnection 
conexao !
=" #
new$ '
SqlConnection( 5
(5 6
)6 7
;7 8
conexao 
. 
ConnectionString $
=% &
new' * 
LeitorDeConfiguracao+ ?
(? @
)@ A
.A B
LeConnectionStringB T
(T U
)U V
;V W
conexao 
. 
Open 
( 
) 
; 
return 
conexao 
; 
} 	
} 
} „
XC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\FacadesComSingleton\TipoCobranca.cs
	namespace 	
DesignPatterns
 
. 
Facades  
{ 
public 

enum 
TipoCobranca 
{ 
Boleto 
, 
Cartao 
, 
	Duplicata 
}		 
}

 
RC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\FacadesComSingleton\Fatura.cs
	namespace 	
DesignPatterns
 
. 
Facades  
{ 
public 

class 
Fatura 
{ 
public 
Cliente 
Cliente 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public 
double 
Valor 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
public

 
Fatura

 
(

 
Cliente

 
cliente

 %
,

% &
double

' -
valor

. 3
)

3 4
{ 	
this 
. 
Cliente 
= 
cliente "
;" #
this 
. 
Valor 
= 
valor 
; 
} 	
} 
} ¤
bC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\FacadesComSingleton\EmpresaFacadeSingleton.cs
	namespace 	
DesignPatterns
 
. 
Facades  
{ 
public 

class "
EmpresaFacadeSingleton '
{ 
private		 
static		 
EmpresaFacade		 $
facade		% +
=		, -
new		. 1
EmpresaFacade		2 ?
(		? @
)		@ A
;		A B
public 
EmpresaFacade 
	Instancia &
{ 	
get 
=> 
facade 
; 
} 	
} 
} ´
YC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\FacadesComSingleton\EmpresaFacade.cs
	namespace 	
DesignPatterns
 
. 
Facades  
{ 
public 

class 
EmpresaFacade 
{		 
public 
Cliente 
BuscaCliente #
(# $
string$ *
cpf+ .
). /
{ 	
return 
new 

ClienteDAO !
(! "
)" #
.# $
BuscaPorCPF$ /
(/ 0
cpf0 3
)3 4
;4 5
} 	
public 
Fatura 

CriaFatura  
(  !
Cliente! (
cliente) 0
,0 1
double2 8
valorFatura9 D
)D E
{ 	
return 
new 
Fatura 
( 
cliente %
,% &
valorFatura' 2
)2 3
;3 4
} 	
public 
Cobranca 
GeraCobranca $
($ %
TipoCobranca% 1
tipo2 6
,6 7
Fatura8 >
fatura? E
)E F
{ 	
Cobranca 
cobranca 
= 
new  #
Cobranca$ ,
(, -
tipo- 1
,1 2
fatura3 9
)9 :
;: ;
cobranca 
. 
Emite 
( 
) 
; 
return 
cobranca 
; 
} 	
public 
ContatoCliente 

FazContato (
(( )
Cliente) 0
cliente1 8
,8 9
Cobranca: B
cobrancaC K
)K L
{ 	
ContatoCliente 
contato "
=# $
new% (
ContatoCliente) 7
(7 8
cliente8 ?
,? @
cobrancaA I
)I J
;J K
contato   
.   
Dispara   
(   
)   
;   
return"" 
contato"" 
;"" 
}## 	
}%% 
}&& ¢
`C:\Users\leona\Desktop\DesignPatterns\DesignPatterns\FacadesComSingleton\DesignPatternsFacade.cs
	namespace 	
DesignPatterns
 
. 
Facades  
{ 
public 

class  
DesignPatternsFacade %
:& '
IDesignPatterns( 7
{		 
public

 
void

 
MainExemplo

 
(

  
)

  !
{ 	
string 
cpf 
= 
$str 
; 
EmpresaFacade 
facade  
=! "
new# &"
EmpresaFacadeSingleton' =
(= >
)> ?
.? @
	Instancia@ I
;I J
Cliente 
cliente 
= 
facade $
.$ %
BuscaCliente% 1
(1 2
cpf2 5
)5 6
;6 7
var 
fatura 
= 
facade 
.  

CriaFatura  *
(* +
cliente+ 2
,2 3
$num4 7
)7 8
;8 9
var 
cobranca 
= 
facade !
.! "
GeraCobranca" .
(. /
TipoCobranca/ ;
.; <
Cartao< B
,B C
faturaD J
)J K
;K L
facade 
. 

FazContato 
( 
cliente %
,% &
cobranca' /
)/ 0
;0 1
} 	
} 
} ‰
ZC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\FacadesComSingleton\ContatoCliente.cs
	namespace 	
DesignPatterns
 
. 
Facades  
{ 
public 

class 
ContatoCliente 
{ 
public 
Cliente 
Cliente 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public		 
Cobranca		 
Cobranca		  
{		! "
get		# &
;		& '
private		( /
set		0 3
;		3 4
}		5 6
public 
ContatoCliente 
( 
Cliente %
cliente& -
,- .
Cobranca/ 7
cobranca8 @
)@ A
{ 	
this 
. 
Cliente 
= 
cliente "
;" #
this 
. 
Cobranca 
= 
cobranca $
;$ %
} 	
public 
void 
Dispara 
( 
) 
{ 	
Console 
. 
	WriteLine 
( 
$"  
$str  A
{A B
ClienteB I
.I J
NomeJ N
}N O
$strO s
{s t
Cobrancat |
.| }
Tipo	} 
}
 ‚
"
‚ ƒ
)
ƒ „
;
„ …
} 	
} 
} Ë
TC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\FacadesComSingleton\Cobranca.cs
	namespace 	
DesignPatterns
 
. 
Facades  
{ 
public 

class 
Cobranca 
{ 
public 
TipoCobranca 
Tipo  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
Fatura 
Fatura 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public

 
Cobranca

 
(

 
TipoCobranca

 $
tipo

% )
,

) *
Fatura

+ 1
fatura

2 8
)

8 9
{ 	
this 
. 
Tipo 
= 
tipo 
; 
this 
. 
Fatura 
= 
fatura  
;  !
} 	
public 
void 
Emite 
( 
) 
{ 	
Console 
. 
	WriteLine 
( 
$"  
$str  :
{: ;
Tipo; ?
}? @
$str@ N
{N O
FaturaO U
.U V
ValorV [
}[ \
$str\ m
{m n
Faturan t
.t u
Clienteu |
.| }
Nome	} 
}
 ‚
"
‚ ƒ
)
ƒ „
;
„ …
} 	
} 
} ƒ
VC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\FacadesComSingleton\ClienteDAO.cs
	namespace 	
DesignPatterns
 
. 
Facades  
{ 
public 

class 

ClienteDAO 
{		 
private

 
List

 
<

 
Cliente

 
>

 
Clientes

 &
;

& '
public 

ClienteDAO 
( 
) 
{ 	
Clientes 
= 
new 
List 
<  
Cliente  '
>' (
(( )
)) *
{ 
new 
Cliente 
( 
$str &
,& '
$str( -
)- .
,. /
new 
Cliente 
( 
$str "
," #
$str$ )
)) *
,* +
new 
Cliente 
( 
$str "
," #
$str$ )
)) *
,* +
} 
; 
} 	
public 
Cliente 
BuscaPorCPF "
(" #
string# )
cpf* -
)- .
{ 	
return 
Clientes 
. 
FirstOrDefault *
(* +
cliente+ 2
=>3 5
cliente6 =
.= >
cpf> A
==B D
cpfE H
)H I
;I J
} 	
} 
} ˆ
KC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Estrategy\Orcamento.cs
	namespace 	
DesignPatterns
 
. 
	Estrategy "
{ 
public 

class 
	Orcamento 
{		 
public

 
	Orcamento

 
(

 
double

 
valor

  %
)

% &
{ 	
this 
. 
Valor 
= 
valor 
; 
this 
. 
Itens 
= 
new 
List !
<! "
Item" &
>& '
(' (
)( )
;) *
this 
. 
EstadoAtual 
= 
new "
EmAprovacao# .
(. /
)/ 0
;0 1
} 	
public 
EstadoDeUmOrcamento "
EstadoAtual# .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
IList 
< 
Item 
> 
Itens  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
double 
Valor 
{ 
get !
;! "
set# &
;& '
}( )
public 
void 
AdicionaItem  
(  !
Item! %
item& *
)* +
{ 	
Itens 
. 
Add 
( 
item 
) 
; 
} 	
public 
void 
AplicaDescontoExtra '
(' (
)( )
{ 	
EstadoAtual 
. 
AplicaDescontoExtra +
(+ ,
this, 0
)0 1
;1 2
} 	
public   
void   
Aprova   
(   
)   
{!! 	
EstadoAtual"" 
."" 
Aprova"" 
("" 
this"" #
)""# $
;""$ %
}## 	
public%% 
void%% 
Reprova%% 
(%% 
)%% 
{&& 	
EstadoAtual'' 
.'' 
Reprova'' 
(''  
this''  $
)''$ %
;''% &
}(( 	
public** 
void** 
Finaliza** 
(** 
)** 
{++ 	
EstadoAtual,, 
.,, 
Finaliza,,  
(,,  !
this,,! %
),,% &
;,,& '
}-- 	
}// 
}00 ´
EC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Estrategy\ISS.cs
	namespace 	
DesignPatterns
 
. 
	Estrategy "
{ 
public 

class 
ISS 
: 
Imposto 
{ 
public

 
double

 
Calcula

 
(

 
	Orcamento

 '
	orcamento

( 1
)

1 2
=>

3 5
	orcamento

6 ?
.

? @
Valor

@ E
*

F G
$num

H L
;

L M
} 
} ž
IC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Estrategy\Imposto.cs
	namespace 	
DesignPatterns
 
. 
	Estrategy "
{ 
public 

	interface 
Imposto 
{ 
double		 
Calcula		 
(		 
	Orcamento		  
	orcamento		! *
)		* +
;		+ ,
} 
} ¶
FC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Estrategy\ICMS.cs
	namespace 	
DesignPatterns
 
. 
	Estrategy "
{ 
public 

class 
ICMS 
: 
Imposto 
{ 
public		 
double		 
Calcula		 
(		 
	Orcamento		 '
	orcamento		( 1
)		1 2
=>		3 5
	orcamento		6 ?
.		? @
Valor		@ E
*		F G
$num		H K
;		K L
} 
} ƒ
YC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Estrategy\DesignPatternsEstrategy.cs
	namespace 	
DesignPatterns
 
. 
	Estrategy "
{ 
public 

class #
DesignPatternsEstrategy (
:) *
IDesignPatterns+ :
{ 
public

 
void

 
MainExemplo

 
(

  
)

  !
{ 	
Imposto 
iss 
= 
new 
ISS !
(! "
)" #
;# $
Imposto 
icms 
= 
new 
ICMS #
(# $
)$ %
;% &
	Orcamento 
	orcamento 
=  !
new" %
	Orcamento& /
(/ 0
$num0 5
)5 6
;6 7 
CalculadorDeImpostos  

calculador! +
=, -
new. 1 
CalculadorDeImpostos2 F
(F G
)G H
;H I

calculador 
. 
RealizaCalculo %
(% &
	orcamento& /
,/ 0
iss1 4
)4 5
;5 6

calculador 
. 
RealizaCalculo %
(% &
	orcamento& /
,/ 0
icms1 5
)5 6
;6 7
} 	
} 
} ë
VC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Estrategy\CalculadorDeImpostos.cs
	namespace 	
DesignPatterns
 
. 
	Estrategy "
{ 
public 

class  
CalculadorDeImpostos %
{ 
public

 
void

 
RealizaCalculo

 "
(

" #
	Orcamento

# ,
	orcamento

- 6
,

6 7
Imposto

8 ?
imposto

@ G
)

G H
{ 	
Console 
. 
	WriteLine 
( 
imposto %
.% &
Calcula& -
(- .
	orcamento. 7
)7 8
)8 9
;9 :
} 	
} 
} «
MC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Decorator\ImpostoICMS.cs
	namespace 	
DesignPatterns
 
. 
	Decorator "
{ 
public 

class 
ImpostoICMS 
: 
ImpostoAbstract .
{		 
public 
ImpostoICMS 
( 
ImpostoAbstract *
outroImposto+ 7
)7 8
:9 :
base; ?
(? @
outroImposto@ L
)L M
{N O
}P Q
public 
ImpostoICMS 
( 
) 
{ 
}  
public 
override 
double 
Calcula &
(& '
	Orcamento' 0
	orcamento1 :
): ;
=>< >
	orcamento? H
.H I
ValorI N
*O P
$numQ T
+U V!
CalculoDoOutroImpostoW l
(l m
	orcamentom v
)v w
;w x
} 
} §
LC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Decorator\ImpostoISS.cs
	namespace 	
DesignPatterns
 
. 
	Decorator "
{ 
public 

class 

ImpostoISS 
: 
ImpostoAbstract -
{		 
public

 

ImpostoISS

 
(

 
ImpostoAbstract

 )
outroImposto

* 6
)

6 7
:

8 9
base

: >
(

> ?
outroImposto

? K
)

K L
{ 	
} 	
public 

ImpostoISS 
( 
) 
{ 
} 
public 
override 
double 
Calcula &
(& '
	Orcamento' 0
	orcamento1 :
): ;
=>< >
	orcamento? H
.H I
ValorI N
*O P
$numQ U
+V W!
CalculoDoOutroImpostoX m
(m n
	orcamenton w
)w x
;x y
} 
} Î
QC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Decorator\ImpostoAbstract.cs
	namespace 	
DesignPatterns
 
. 
	Decorator "
{ 
public 

abstract 
class 
ImpostoAbstract )
{		 
public

 
ImpostoAbstract

 
OutroImposto

 +
{

, -
get

. 1
;

1 2
set

3 6
;

6 7
}

8 9
public 
ImpostoAbstract 
( 
ImpostoAbstract .
outroImposto/ ;
); <
{ 	
this 
. 
OutroImposto 
= 
outroImposto  ,
;, -
} 	
public 
ImpostoAbstract 
( 
)  
{ 	
OutroImposto 
= 
null 
;  
} 	
public 
abstract 
double 
Calcula &
(& '
	Orcamento' 0
	orcamento1 :
): ;
;; <
	protected 
double !
CalculoDoOutroImposto .
(. /
	Orcamento/ 8
	orcamento9 B
)B C
{ 	
if 
( 
OutroImposto 
== 
null  $
)$ %
return& ,
$num- .
;. /
return 
OutroImposto 
.  
Calcula  '
(' (
	orcamento( 1
)1 2
;2 3
} 	
} 
} †	
YC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Decorator\DesignPatternsDecorator.cs
	namespace 	
DesignPatterns
 
. 
	Decorator "
{ 
public 

class #
DesignPatternsDecorator (
:) *
IDesignPatterns+ :
{		 
public 
void 
MainExemplo 
(  
)  !
{ 	
ImpostoAbstract 
iss 
=  !
new" %

ImpostoISS& 0
(0 1
new1 4
ImpostoICMS5 @
(@ A
)A B
)B C
;C D
	Orcamento 
	orcamento 
=  !
new" %
	Orcamento& /
(/ 0
$num0 3
)3 4
;4 5
double 
valor 
= 
iss 
. 
Calcula &
(& '
	orcamento' 0
)0 1
;1 2
Console 
. 
	WriteLine 
( 
valor #
)# $
;$ %
} 	
} 
} ·
FC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Command\Status.cs
	namespace 	
DesignPatterns
 
. 
Command  
{ 
public 

enum 
Status 
{ 
Novo		 
,		 

Processado

 
,

 
Pago 
, 
ItemSeparado 
, 
Entregue 
} 
} ‚
FC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Command\Pedido.cs
	namespace 	
DesignPatterns
 
. 
Command  
{ 
public 

class 
Pedido 
{ 
public		 
string		 
Cliente		 
{		 
get		  #
;		# $
private		% ,
set		- 0
;		0 1
}		2 3
public

 
double

 
Valor

 
{

 
get

 !
;

! "
private

# *
set

+ .
;

. /
}

0 1
public 
DateTime 
DataFinalizacao '
{( )
get* -
;- .
private/ 6
set7 :
;: ;
}< =
public 
Status 
Status 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 
Pedido 
( 
string 
cliente $
,$ %
double& ,
valor- 2
)2 3
{ 	
this 
. 
Cliente 
= 
cliente "
;" #
this 
. 
Valor 
= 
valor 
; 
this 
. 
Status 
= 
Status  
.  !
Novo! %
;% &
} 	
public 
void 
Paga 
( 
) 
{ 	
this 
. 
Status 
= 
Status  
.  !
Pago! %
;% &
} 	
public 
void 
Finaliza 
( 
) 
{ 	
this 
. 
Status 
= 
Status  
.  !
Entregue! )
;) *
this 
. 
DataFinalizacao  
=! "
DateTime# +
.+ ,
Now, /
;/ 0
} 	
}   
}!! È
JC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Command\PagaPedido.cs
	namespace 	
DesignPatterns
 
. 
Command  
{ 
public 

class 

PagaPedido 
: 
ICommand &
{ 
private		 
Pedido		 
pedido		 
;		 
public 

PagaPedido 
( 
Pedido  
pedido! '
)' (
{ 	
this 
. 
pedido 
= 
pedido  
;  !
} 	
public 
void 
Executa 
( 
) 
{ 	
Console 
. 
	WriteLine 
( 
$"  
$str  <
{< =
pedido= C
.C D
ClienteD K
}K L
"L M
)M N
;N O
pedido 
. 
Paga 
( 
) 
; 
} 	
} 
} ì
HC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Command\ICommand.cs
	namespace 	
DesignPatterns
 
. 
Command  
{ 
public 

	interface 
ICommand 
{ 
void		 
Executa		 
(		 
)		 
;		 
} 
} Ø
NC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Command\FinalizaPedido.cs
	namespace 	
DesignPatterns
 
. 
Command  
{ 
public 

class 
FinalizaPedido 
:  !
ICommand" *
{ 
private		 
Pedido		 
pedido		 
;		 
public 
FinalizaPedido 
( 
Pedido $
pedido% +
)+ ,
{ 	
this 
. 
pedido 
= 
pedido  
;  !
} 	
public 
void 
Executa 
( 
) 
{ 	
Console 
. 
	WriteLine 
( 
$"  
$str  @
{@ A
pedidoA G
.G H
ClienteH O
}O P
"P Q
)Q R
;R S
pedido 
. 
Finaliza 
( 
) 
; 
} 	
} 
} ¾	
NC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Command\FilaDeTrabalho.cs
	namespace 	
DesignPatterns
 
. 
Command  
{ 
public 

class 
FilaDeTrabalho 
{ 
private		 
IList		 
<		 
ICommand		 
>		 
Comandos		  (
=		) *
new		+ .
List		/ 3
<		3 4
ICommand		4 <
>		< =
(		= >
)		> ?
;		? @
public 
void 
Adiciona 
( 
ICommand %
comando& -
). /
{ 	
this 
. 
Comandos 
. 
Add 
( 
comando %
)% &
;& '
} 	
public 
void 
Processa 
( 
) 
{ 	
foreach 
( 
var 
comando  
in! #
Comandos$ ,
), -
comando 
. 
Executa 
(  
)  !
;! "
} 	
} 
} Ž
UC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Command\DesignPatternsCommand.cs
	namespace 	
DesignPatterns
 
. 
Command  
{ 
public 

class !
DesignPatternsCommand &
:' (
IDesignPatterns) 8
{ 
public		 
void		 
MainExemplo		 
(		  
)		  !
{

 	
FilaDeTrabalho 
fila 
=  !
new" %
FilaDeTrabalho& 4
(4 5
)5 6
;6 7
Pedido 
pedido1 
= 
new  
Pedido! '
(' (
$str( 2
,2 3
$num4 7
)7 8
;8 9
Pedido 
pedido2 
= 
new  
Pedido! '
(' (
$str( 1
,1 2
$num3 6
)6 7
;7 8
fila 
. 
Adiciona 
( 
new 

PagaPedido (
(( )
pedido1) 0
)0 1
)1 2
;2 3
fila 
. 
Adiciona 
( 
new 

PagaPedido (
(( )
pedido2) 0
)0 1
)1 2
;2 3
fila 
. 
Adiciona 
( 
new 
FinalizaPedido ,
(, -
pedido1- 4
)4 5
)5 6
;6 7
fila 
. 
Processa 
( 
) 
; 
} 	
} 
} Õ
YC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\ChainOfResponsability\SemDesconto.cs
	namespace 	
DesignPatterns
 
. !
ChainOfResponsability .
{ 
public 

class 
SemDesconto 
: 
Desconto '
{		 
public 
Desconto 
Proximo 
{  !
get" %
;% &
set' *
;* +
}, -
public 
double 
Desconta 
( 
	Orcamento (
	orcamento) 2
)2 3
{ 	
return 
$num 
; 
} 	
} 
} ‰
RC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\ChainOfResponsability\Item.cs
	namespace 	
DesignPatterns
 
. !
ChainOfResponsability .
{ 
public 

class 
Item 
{ 
public		 
string		 
Nome		 
{		 
get		  
;		  !
private		" )
set		* -
;		- .
}		/ 0
public

 
double

 
Valor

 
{

 
get

 !
;

! "
private

# *
set

+ .
;

. /
}

0 1
public 
Item 
( 
string 
nome 
,  
double! '
valor( -
)- .
{ 	
this 
. 
Nome 
= 
nome 
; 
this 
. 
Valor 
= 
valor 
; 
} 	
} 
} ø
qC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\ChainOfResponsability\DesignPatternsChainOfResponsability.cs
	namespace 	
DesignPatterns
 
. !
ChainOfResponsability .
{ 
public 

class /
#DesignPatternsChainOfResponsability 4
:5 6
IDesignPatterns7 F
{		 
public

 
void

 
MainExemplo

 
(

  
)

  !
{ 	!
CalculadorDeDescontos !

calculador" ,
=- .
new/ 2!
CalculadorDeDescontos3 H
(H I
)I J
;J K
	Orcamento 
	orcamento 
=  !
new" %
	Orcamento& /
(/ 0
$num0 3
)3 4
;4 5
	orcamento 
. 
AdicionaItem "
(" #
new# &
Item' +
(+ ,
$str, 4
,4 5
$num6 9
)9 :
): ;
;; <
	orcamento 
. 
AdicionaItem "
(" #
new# &
Item' +
(+ ,
$str, 3
,3 4
$num5 8
)8 9
)9 :
;: ;
	orcamento 
. 
AdicionaItem "
(" #
new# &
Item' +
(+ ,
$str, 7
,7 8
$num9 <
)< =
)= >
;> ?
	orcamento 
. 
AdicionaItem "
(" #
new# &
Item' +
(+ ,
$str, 6
,6 7
$num8 ;
); <
)< =
;= >
	orcamento 
. 
AdicionaItem "
(" #
new# &
Item' +
(+ ,
$str, 3
,3 4
$num5 8
)8 9
)9 :
;: ;
double 
desconto 
= 

calculador (
.( )
Calcula) 0
(0 1
	orcamento1 :
): ;
;; <
Console 
. 
	WriteLine 
( 
desconto &
)& '
;' (
} 	
} 
} ñ
gC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\ChainOfResponsability\DescontoPorMaisDe500Reais.cs
	namespace 	
DesignPatterns
 
. !
ChainOfResponsability .
{ 
public 

class %
DescontoPorMaisDe500Reais *
:+ ,
Desconto- 5
{		 
public

 
Desconto

 
Proximo

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
double 
Desconta 
( 
	Orcamento (
	orcamento) 2
)2 3
{ 	
if 
( 
	orcamento 
. 
Valor 
>  !
$num" %
)% &
{ 
return 
	orcamento  
.  !
Valor! &
*' (
$num) -
;- .
} 
return 
Proximo 
. 
Desconta #
(# $
	orcamento$ -
)- .
;. /
} 	
} 
} ƒ	
_C:\Users\leona\Desktop\DesignPatterns\DesignPatterns\ChainOfResponsability\DescontoPor5Itens.cs
	namespace 	
DesignPatterns
 
. !
ChainOfResponsability .
{ 
public 

class 
DescontoPor5Itens "
:# $
Desconto% -
{		 
public

 
Desconto

 
Proximo

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
double 
Desconta 
( 
	Orcamento (
	orcamento) 2
)2 3
{ 	
if 
( 
	orcamento 
. 
Itens 
.  
Count  %
>& '
$num( )
)) *
{ 
return 
	orcamento  
.  !
Valor! &
*' (
$num) ,
;, -
} 
return 
Proximo 
. 
Desconta #
(# $
	orcamento$ -
)- .
;. /
} 	
} 
} Â
VC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\ChainOfResponsability\Desconto.cs
	namespace 	
DesignPatterns
 
. !
ChainOfResponsability .
{ 
public 

	interface 
Desconto 
{		 
Desconto

 
Proximo

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
double 
Desconta 
( 
	Orcamento !
	orcamento" +
)+ ,
;, -
} 
} ú	
cC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\ChainOfResponsability\CalculadorDeDescontos.cs
	namespace 	
DesignPatterns
 
. !
ChainOfResponsability .
{ 
public 

class !
CalculadorDeDescontos &
{		 
public

 
double

 
Calcula

 
(

 
	Orcamento

 '
	orcamento

( 1
)

1 2
{ 	
Desconto 
d1 
= 
new 
DescontoPor5Itens /
(/ 0
)0 1
;1 2
Desconto 
d2 
= 
new %
DescontoPorMaisDe500Reais 7
(7 8
)8 9
;9 :
Desconto 
d3 
= 
new 
SemDesconto )
() *
)* +
;+ ,
d1 
. 
Proximo 
= 
d2 
; 
d2 
. 
Proximo 
= 
d3 
; 
return 
d1 
. 
Desconta 
( 
	orcamento (
)( )
;) *
} 	
} 
} ×%
QC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Builder\NotaFiscalBuilder.cs
	namespace 	
DesignPatterns
 
. 
Builder  
{ 
public		 

class		 
NotaFiscalBuilder		 "
{

 
public 
string 

RazaoSoial  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
string 
Cnpj 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
string 
Observacoes !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
DateTime 
Data 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
private 
IList 
< 
AcaoAposGerarNota '
>' (&
todasAcoesASeremExecutadas) C
=D E
newF I
ListJ N
<N O
AcaoAposGerarNotaO `
>` a
(a b
)b c
;c d
private 
double 

valorTotal !
;! "
private 
double 
impostos 
;  
private 
IList 
< 

ItemDaNota  
>  !

todosItens" ,
=- .
new/ 2
List3 7
<7 8

ItemDaNota8 B
>B C
(C D
)D E
;E F
public 
NotaFiscalBuilder  
ParaEmpresa! ,
(, -
string- 3
razaoSocial4 ?
)? @
{ 	
this 
. 

RazaoSoial 
= 
razaoSocial )
;) *
return 
this 
; 
}   	
public"" 
void"" 
AdicionaAcao""  
(""  !
AcaoAposGerarNota""! 2
novaAcao""3 ;
)""; <
{## 	
this$$ 
.$$ &
todasAcoesASeremExecutadas$$ +
.$$+ ,
Add$$, /
($$/ 0
novaAcao$$0 8
)$$8 9
;$$9 :
}%% 	
public'' 
NotaFiscalBuilder''  
ComObservacoes''! /
(''/ 0
string''0 6
obs''7 :
)'': ;
{(( 	
this)) 
.)) 
Observacoes)) 
=)) 
obs)) "
;))" #
return++ 
this++ 
;++ 
},, 	
public.. 
NotaFiscalBuilder..  
NaDataAtual..! ,
(.., -
)..- .
{// 	
this00 
.00 
Data00 
=00 
DateTime00  
.00  !
Now00! $
;00$ %
return22 
this22 
;22 
}33 	
public55 
NotaFiscalBuilder55  
ComCnpj55! (
(55( )
string55) /
cnpj550 4
)554 5
{66 	
this77 
.77 
Cnpj77 
=77 
cnpj77 
;77 
return99 
this99 
;99 
}:: 	
public<< 
NotaFiscalBuilder<<  
ComItem<<! (
(<<( )

ItemDaNota<<) 3
item<<4 8
)<<8 9
{== 	

todosItens>> 
.>> 
Add>> 
(>> 
item>> 
)>>  
;>>  !

valorTotal?? 
+=?? 
item?? 
.?? 
Valor?? $
;??$ %
impostos@@ 
+=@@ 
item@@ 
.@@ 
Valor@@ "
*@@# $
$num@@% )
;@@) *
returnBB 
thisBB 
;BB 
}CC 	
publicEE 

NotaFiscalEE 
ConstroiEE "
(EE" #
)EE# $
{FF 	

NotaFiscalGG 
nfGG 
=GG 
newGG 

NotaFiscalGG  *
(GG* +

RazaoSoialGG+ 5
,GG5 6
CnpjGG7 ;
,GG; <
DataGG= A
,GGA B

valorTotalGGC M
,GGM N
impostosGGO W
,GGW X

todosItensGGY c
,GGc d
ObservacoesGGe p
)GGp q
;GGq r
foreachII 
(II 
AcaoAposGerarNotaII &
acaoII' +
inII, .&
todasAcoesASeremExecutadasII/ I
)III J
acaoJJ 
.JJ 
ExecutaJJ 
(JJ 
nfJJ 
)JJ  
;JJ  !
returnMM 
nfMM 
;MM 
}NN 	
}PP 
}QQ ¼
JC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Builder\NotaFiscal.cs
	namespace 	
DesignPatterns
 
. 
Builder  
{ 
public 

class 

NotaFiscal 
{ 
public		 
string		 
RazaoSocial		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
cnpj

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
DateTime 
DataEmissao #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
double 

ValorBruto  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
double 
Impostos 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
IList 
< 

ItemDaNota 
>  
Itens! &
{' (
get( +
;+ ,
set, /
;/ 0
}0 1
public 
string 
Observacoes !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

NotaFiscal 
( 
string  
razaoSocial! ,
,, -
string. 4
cnpj5 9
,9 :
DateTime; C
dataEmissaoD O
,O P
doubleQ W

valorBrutoX b
,b c
doubled j
impostosk s
,s t
IListu z
<z {

ItemDaNota	{ …
>
… †
itens
‡ Œ
,
Œ 
string
Ž ”
observacoes
•  
)
  ¡
{ 	
this 
. 
RazaoSocial 
= 
razaoSocial *
;* +
this 
. 
cnpj 
= 
cnpj 
; 
this 
. 
DataEmissao 
= 
dataEmissao *
;* +
this 
. 

ValorBruto 
= 

valorBruto (
;( )
this 
. 
Impostos 
= 
impostos $
;$ %
this 
. 
Itens 
= 
itens 
; 
this 
. 
Observacoes 
= 
observacoes *
;* +
} 	
} 
} Õ
JC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Builder\ItemDaNota.cs
	namespace 	
DesignPatterns
 
. 
Builder  
{ 
public 

class 

ItemDaNota 
{ 
public		 
string		 
Nome		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
double

 
Valor

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

ItemDaNota 
( 
string  
nome! %
,% &
double' -
valor. 3
)3 4
{ 	
this 
. 
Nome 
= 
nome 
; 
this 
. 
Valor 
= 
valor 
; 
} 	
} 
} —
UC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Builder\DesignPatternsBuilder.cs
	namespace 	
DesignPatterns
 
. 
Builder  
{ 
public 

class !
DesignPatternsBuilder &
:' (
IDesignPatterns) 8
{ 
public		 
void		 
MainExemplo		 
(		  
)		  !
{

 	
NotaFiscalBuilder 
criador %
=& '
new( +
NotaFiscalBuilder, =
(= >
)> ?
;? @
criador 
. 
ParaEmpresa 
(  
$str  4
)4 5
. 
ComCnpj 
( 
$str ,
), -
. 
ComItem 
( 
new 

ItemDaNota  *
(* +
$str+ 3
,3 4
$num5 8
)8 9
)9 :
. 
ComItem 
( 
new 

ItemDaNota  *
(* +
$str+ 3
,3 4
$num5 7
)7 8
)8 9
. 
NaDataAtual 
(  
)  !
. 
ComObservacoes "
(" #
$str# 8
)8 9
;9 :

NotaFiscal 
nf 
= 
criador #
.# $
Constroi$ ,
(, -
)- .
;. /
Console 
. 
Write 
( 
nf 
. 

ValorBruto '
)' (
;( )
} 	
} 
} Œ
QC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Bridges\MensagemDoCliente.cs
	namespace 	
DesignPatterns
 
. 
Bridges  
{ 
public 

class 
MensagemDoCliente "
:# $
	IMensagem% .
{ 
private		 
string		 
nome		 
;		 
public 
	IEnviador 
Enviador !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
MensagemDoCliente  
(  !
string! '
nome( ,
), -
{ 	
this 
. 
nome 
= 
nome 
; 
} 	
public 
void 
Envia 
( 
) 
{ 	
this 
. 
Enviador 
. 
Envia 
(  
this  $
)$ %
;% &
} 	
public 
string 
Formata 
( 
) 
{ 	
return 
string 
. 
Format  
(  !
$"! #
$str# ;
{; <
nome< @
}@ A
"A B
)B C
;C D
} 	
} 
} ›
VC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Bridges\MensagemAdministrativa.cs
	namespace 	
DesignPatterns
 
. 
Bridges  
{ 
public 

class "
MensagemAdministrativa '
:( )
	IMensagem* 3
{ 
private		 
string		 
nome		 
;		 
public 
	IEnviador 
Enviador !
{" #
get$ '
;' (
set) ,
;, -
}. /
public "
MensagemAdministrativa %
(% &
string& ,
nome- 1
)1 2
{ 	
this 
. 
nome 
= 
nome 
; 
} 	
public 
void 
Envia 
( 
) 
{ 	
this 
. 
Enviador 
. 
Envia 
(  
this  $
)$ %
;% &
} 	
public 
string 
Formata 
( 
) 
{ 	
return 
string 
. 
Format  
(  !
$"! #
$str# L
{L M
nomeM Q
}Q R
"R S
)S T
;T U
} 	
} 
} Í
IC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Bridges\IMensagem.cs
	namespace 	
DesignPatterns
 
. 
Bridges  
{ 
public 

	interface 
	IMensagem 
{ 
	IEnviador		 
Enviador		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
void 
Envia 
( 
) 
; 
string 
Formata 
( 
) 
; 
} 
} ™
IC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Bridges\IEnviador.cs
	namespace 	
DesignPatterns
 
. 
Bridges  
{ 
public 

	interface 
	IEnviador 
{ 
void		 
Envia		 
(		 
	IMensagem		 
mensagem		 %
)		% &
;		& '
} 
} œ
KC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Bridges\EnviaPorSMS.cs
	namespace 	
DesignPatterns
 
. 
Bridges  
{ 
public 

class 
EnviaPorSMS 
: 
	IEnviador (
{ 
public		 
void		 
Envia		 
(		 
	IMensagem		 #
mensagem		$ ,
)		, -
{

 	
Console 
. 
	WriteLine 
( 
$str <
)< =
;= >
Console 
. 
	WriteLine 
( 
mensagem &
.& '
Formata' .
(. /
)/ 0
)0 1
;1 2
} 	
} 
}  
MC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Bridges\EnviaPorEmail.cs
	namespace 	
DesignPatterns
 
. 
Bridges  
{ 
public 

class 
EnviaPorEmail 
:  
	IEnviador! *
{ 
public		 
void		 
Envia		 
(		 
	IMensagem		 #
mensagem		$ ,
)		, -
{

 	
Console 
. 
	WriteLine 
( 
$str @
)@ A
;A B
Console 
. 
	WriteLine 
( 
mensagem &
.& '
Formata' .
(. /
)/ 0
)0 1
;1 2
} 	
} 
} ì
UC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Bridges\DesignPatternsBridges.cs
	namespace 	
DesignPatterns
 
. 
Bridges  
{ 
public 

class !
DesignPatternsBridges &
:' (
IDesignPatterns) 8
{ 
public		 
void		 
MainExemplo		 
(		  
)		  !
{

 	
	IMensagem 
mensagem 
=  
new! $"
MensagemAdministrativa% ;
(; <
$str< D
)D E
;E F
	IEnviador 
enviador 
=  
new! $
EnviaPorSMS% 0
(0 1
)1 2
;2 3
mensagem 
. 
Enviador 
= 
enviador  (
;( )
mensagem 
. 
Envia 
( 
) 
; 
} 	
} 
} Ð
LC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Adapter\GeradorDeXML.cs
	namespace 	
DesignPatterns
 
. 
Adapter  
{ 
public		 

class		 
GeradorDeXML		 
{

 
public 
string 
GeraXML 
( 
object $
o% &
)& '
{ 	
XmlSerializer 

serializer $
=% &
new' *
XmlSerializer+ 8
(8 9
o9 :
.: ;
GetType; B
(B C
)C D
)D E
;E F
StringWriter 
writer 
=  !
new" %
StringWriter& 2
(2 3
)3 4
;4 5

serializer 
. 
	Serialize  
(  !
writer! '
,' (
o) *
)* +
;+ ,
return 
writer 
. 
ToString "
(" #
)# $
;$ %
} 	
} 
} £

UC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Adapter\DesignPatternsAdapter.cs
	namespace 	
DesignPatterns
 
. 
Adapter  
{ 
public		 

class		 !
DesignPatternsAdapter		 &
:		' (
IDesignPatterns		) 8
{

 
public 
void 
MainExemplo 
(  
)  !
{ 	
Cliente 
cliente 
= 
new !
Cliente" )
() *
)* +
;+ ,
cliente 
. 
Nome 
= 
$str %
;% &
cliente 
. 
Endereco 
= 
$str 2
;2 3
cliente 
. 
DataDeNascimento $
=% &
DateTime' /
./ 0
Now0 3
;3 4
string 
xml 
= 
new 
GeradorDeXML )
() *
)* +
.+ ,
GeraXML, 3
(3 4
cliente4 ;
); <
;< =
Console 
. 
	WriteLine 
( 
xml !
)! "
;" #
} 	
} 
} ë

GC:\Users\leona\Desktop\DesignPatterns\DesignPatterns\Adapter\Cliente.cs
	namespace 	
DesignPatterns
 
. 
Adapter  
{ 
public 

class 
Cliente 
{ 
public		 
string		 
Nome		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public 
string 
cpf 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Endereco 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
DateTime 
DataDeNascimento (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Cliente 
( 
) 
{ 
} 
public 
Cliente 
( 
string 
nome "
," #
string$ *
cpf+ .
). /
{ 	
this 
. 
Nome 
= 
nome 
; 
this 
. 
cpf 
= 
cpf 
; 
} 	
} 
} 