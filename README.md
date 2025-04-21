Geschäftsordnung des Bayerischen Landesstudierendenrats
=======================================================

Dieses Repository enthält die Geschäftsordnung sowie zugehörige Dokumente des BayStuRa.

## Aktuelle offizielle Änderungsversion
[![Geschäftsordnung](https://custom-icon-badges.demolab.com/badge/-Geschäftsordnung-blue?style=for-the-badge&logo=download&logoColor=white "Geschäftsordnung")](https://aktuell.baystura.de/Geschaeftsordnung/geschaeftsordnung.pdf)
[![Wahlordnung](https://custom-icon-badges.demolab.com/badge/-Wahlordnung-blue?style=for-the-badge&logo=download&logoColor=white "Wahlordnung")](https://aktuell.baystura.de/Geschaeftsordnung/wahlordnung.pdf)

## Verwendung

Der folgende Befehl generiert die Geschäftsordnung und kann für jedes Dokument analog ausgeführt werden:

```
$ nix develop # Verwendung der Nix-Umgebung (optional)

$ typst compile geschaeftsordnung.typ
$ typst compile wahlordnung.typ
```


## Layout

Das Layout wird über eingens definierte Typst-Funktionen gesteuert, welche die möglichen Bestandteile sowie den Aufbau der Geschäftsordnung widerspiegeln.
Jede Funktion besitzt die folgenden Parameter:

| Parameter | Beschreibung |
| :-------: | :----------- |
| `del` | Markiert das Element als gelöscht (rot und durchgestrichen) |
| `add` | Markiert das Element als hinzugefügt (grün) |
| `ref` | Label zur Referenzierung des Elements innerhalb des Textes durch die Funktion `at` |


### Struktur

Die Struktur des Dokuments kann durch die folgenden Funktionen mit gleichnamiger Bedeutung gesteuert werden:

- `teil`
- `abschnitt`
- `paragraf`

Innerhalb bzw. unterhalb eines Paragrafen (durch `paragraf` eingeleitet) können folgende Funktionen verwendet werden:

- `abs`: Absatz, welcher einen oder mehrere Sätze (bei mehreren ist `S` zu verwenden) enthält
- `S`: Satz, innerhalb eines Absatzes

Ein beispielhafter Aufbau könnte wie folgt aussehen:

```typst
#teil[Allgemeines]

#abschnitt[Formalia]

#paragraf[Bestimmungen]

#abs[Enthält ein Absatz nur einen Satz, so kann dieser direkt innerhalb von `abs` gesetzt werden.]
#abs[
	#S[Dies ist ein Absatz mit mehreren Sätzen.]
	#S[Jeder Satz ist innerhalb von `S` gesetzt.]
]

#paragraf[Weiteres]

#S[Es ist auch möglich, einen Paragrafen ohne die Verwendung von Absätzen zu verwenden.]
#S[In diesem Fall wird das umschließende `abs` weggelassen.]
```


### Referenzierung

Zum Verweis auf anderen Teile innerhalb eines Dokuments kann bei jedem Element (`teil`, `abschnitt`, `paragraf`, `abs`, `S`) der Parameter `ref` mit einem Label gesetzt werden.
Die Referenzierung erfolgt anschließend mit der Funktion `at`, welche das Label als Parameter erhält.
Die Verweise werden automatisch korrekt mit dem notwendigen Detailgrad ("Satz 1" vs. "Abs. 1 S. 1" vs. "§ 1 Abs. 1 S. 1" generiert.
Ist der generierte Referenztext zu überschreiben, kann durch Angabe des Parameters `substitution` ein alternativer Text verwendet werden.
Soll nach dem Label ein weiterer Text Teil der Referenz sein, kann dies über den Parameter `suffix` erreicht werden.

Eine Verwendung könnte wie folgt aussehen:

```typst
#teil[Allgemeines]

#abschnitt[Formalia]

#paragraf(ref: <bestimmungen>)[Bestimmungen]

#abs(ref: <absatz-ohne-sätze>)[Enthält ein Absatz nur einen Satz, so kann dieser direkt innerhalb von `abs` gesetzt werden.]
#abs[
	#S(ref: <ein-satz>)[Dies ist ein Absatz mit mehreren Sätzen.]
	#S[Jeder Satz ist innerhalb von `S` gesetzt.]
]

#paragraf[Referenzierung]

#S[Beispiele können in #at(<bestimmungen>) gefunden werden.]
#S[In #a(<absatz-ohne-sätze>) wird eine einfache Verwendung gezeigt.]
#S[Auch #at(<ein-satz>) kann referenziert werden.]
```


### Inhaltsverzeichnis

Ein Inhaltsverzeichnis, welches die Struktur des Dokuments anhand der oben gelisteten Elemente berücksichtigt, kann durch die Funktion `legal-outline` generiert werden.
Sollen die einzelnen Strukturelemente anhand ihrer Hierarchie eingerückt werden, ist der Parameter `indent` zu setzen.


### Änderungsversion

Zur Erzeugung von Änderungsversionen kann neben den Parametern `add` und `del` auch durch die Verwendung der gleichnamigen Funktionen feingranularer vorgegangen werden, um einzelnen Wörter oder Teile des Textes als hinzugefügt bzw. gelöscht zu markieren.

Die Funktion `note` mit Parametern `title` und `body` kann zur Annotation des Textes mit Kommentaren verwendet werden.
Beispielhaft sin hierzu `reason` und `alternative` implementiert, welche eine `note` zur Begründung bzw. Aufzeigen einer Alternative zu einer Änderung erzeugt.
Letzterer kann durch den Parameter `variant` ein Name gegeben werden.



## BayStuRa-Styles

Die CI-Farben sind durch die Variablen `baystura-midnight` und `baystura-amaranth` definiert.
Das Logo kann durch `baystura-logo` erzeugt werden.
Der Parameter `has-line` erzeugt den "Strich" unterhalb des Logos, z. B. bei Verwendung im Header des Dokuments.

Zur Formatierung des gesamten Dokuments dient die Funktion `baystura` welche über `#show: baystura` zu Beginn des Dokuments aufzurufen ist.


### Titel

Zur Generierung der Titelzeile des Dokuments kann `baystura-title` verwendet werden. Die Parameter `title` und `subtitle` geben jeweils den Text über- und unterhalb des "Strichs" an.
Über den Parameter `date` kann das Datum gesetzt werden.
Standardmäßig ist dies das aktuelle Datum, es kann jedoch auch ein alternatives `datetime`-Objekt oder ein beliebiger Text übergeben werden.
Bei letzterem ist die Formatierung dem Aufrufer überlassen.

Ist nur der "Strich" gewünscht, kann dieser über `baystura-line` erzeugt werden.

### Sizing

Die Größe alle Elemente (Logo, Titel und "Strich") kann über den Parameter `height` angegeben werden, wobei dieser der Gesamthöhe des Logos entspricht.
Der "Strich" erhält als `height` ebenfalls diesen Wert und passt seine Höhe gemäß des Styleguides an.
