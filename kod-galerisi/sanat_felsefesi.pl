% Sanat Felsefesi ve Varlık Ontolojisi
% Bu kod, sanatın ve varlığın arasındaki ilişkiyi mantıksal önermelerle tanımlar.

:- op(900, xfy, dir). % 'dir' (is) operatörü tanımı

% Temel Varlıklar
nesne(tuval).
nesne(boya).
nesne(ruh).
nesne(ilham).

% İlişkiler
kaynak(sanat, ruh).
kaynak(estetik, nizam).
kaynak(güzellik, hakikat).

% Kurallar
var_olur(Eser) :- kaynak(Eser, ruh), nesne(tuval), nesne(boya).
anlam_kazanır(Eser, Insan) :- sanatçı(Insan), eser(Eser), dokunur(Eser, Insan).

% Bir varlık güzelse, o hakikate bir penceredir.
hakikattir(X) :- guzellik(X).

% Sanatın tanımı
sanat(X) :- 
    ifade_eder(X, duygu),
    yansıtır(X, hakikat),
    uyandırır(X, hayret).

% Örnek Veriler
ifade_eder(semâ, duygu).
yansıtır(semâ, hakikat).
uyandırır(semâ, hayret).

% Sanatın sorgulanması
?- sanat(semâ). % Semâ bir sanat mıdır?
?- hakikattir(tabiat). % Tabiat hakikat midir (eğer güzelse)?
