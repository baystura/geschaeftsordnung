#import "assets/legal.typ": *
#show: baystura

#set page(
	numbering: "1",
)

#baystura-logo()
#baystura-title(
	title: [Wahlordnung],
	subtitle: [für die Wahl der Sprecherinnen und Sprecher des BayStuRa],
	date: datetime(year: 2025, month: 3, day: 23),
)

#let check(body) = body

#legal-outline(indent: false)
#v(2em)
#line(length: 100%, stroke: 0.5pt + gray)
#v(2em)

////////////////////////////////////////////////////////////////////////////////


#paragraf[Wahlrechtsgrundsätze]
#abs[
	Die Sprecherinnen und Sprecher werden in freier und geheimer Wahl unmittelbar von den Delegierten gewählt.
]
#abs[
	#S[Bei der Wahl ist darauf zu achten, dass die Sprecherinnen oder Sprecher, soweit möglich, nicht alle das gleiche Geschlecht haben und nicht alle derselben Hochschulart angehören.]
	#S[Haben die gewählten Sprecherinnen oder Sprecher dennoch alle das gleiche Geschlecht oder gehören diese alle derselben Hochschulart an, wird dadurch die Wahl nicht ungültig.]
]


#paragraf[Wahlberechtigung und Wählbarkeit]
#abs[
	Wählbar sind Studierende an einer Hochschule in Bayern.
]
#abs[
	Das Antreten einer weiteren Amtszeit ist zulässig, es sei denn, die oder der Kandidierende ist zuvor abgewählt oder deren Rechenschaftsbericht nicht nach #check[§~9 Abs.~3] der Geschäftsordnung entlastet worden.
]

#paragraf[Bewerbungen]
#abs[
	#S[Bewerbungen für eine Wahl müssen spätestens eine Woche vor der Wahl dem BayStuRa in Textform zugegangen sein.]
	#S[Kandidierende, deren Bewerbung nicht fristgerecht eingereicht wurde, sind von der Wahl ausgeschlossen.]
	#S[Jede Bewerbung ist den Mitgliedern unverzüglich vor der Wahl zu übermitteln.]
]
#abs[
	In der Bewerbung sollen Kandidierende sich vorstellen und die Gründe für die Bewerbung darlegen.
]

#paragraf[Wahlausschuss]
#abs[
	#S[Für die Wahl wird ein Wahlausschuss eingesetzt.]
	#S[Der Wahlausschuss ist für die ordnungsgemäße Durchführung der Wahl verantwortlich und nimmt insoweit die Aufgaben der Sitzungsleitung wahr.]
]
#abs[
	#S[Der Wahlausschuss besteht aus drei Personen, die von der Mitgliederversammlung bestellt werden; die Sprecherinnen und Sprecher können Personen vorschlagen.]
	#S[Kandidierende können nicht Mitglied des Wahlausschusses sein.]
]
#abs[
	Der Wahlausschuss kann entweder auf der Wahlsitzung oder einer vorangehenden Sitzung eingesetzt werden.
]
#abs[
	#S[Der Wahlausschuss ernennt aus seiner Mitte eine Wahlleiterin oder einen Wahlleiter (Wahlleitung).]
	#S[Die Wahlleitung leitet die Wahl und trifft hierzu die geeigneten und erforderlichen Maßnahmen.]
]
#abs[
	Zur Erfüllung seiner Aufgaben kann sich der Wahlausschuss auch der Unterstützung Dritter (Wahlhelferinnen oder Wahlhelfer) bedienen.
]
#abs[
	#S[Der Wahlausschuss ist zur unparteiischen und gewissenhaften Erfüllung ihrer Aufgaben verpflichtet.]
	#S[Entscheidungen sollen im gegenseitigen Einvernehmen entscheiden.]
	#S[Kann ein Einvernehmen nicht hergestellt werden, entscheidet die Mehrheit der Stimmen.]
]


#paragraf[Durchführung der Wahl]
#abs[
	#S[Kandidierende haben das Recht, sich vorzustellen.]
	#S[Eine Kandidatur kann jederzeit zurückgezogen werden.]
]
#abs[
	#S[Jedes Mitglied hat das Recht, die Kandidierenden mündlich zu befragen sowie eine Einzelbefragung nach #at(<par:befragung>) oder eine Personaldebatte nach #at(<par:personaldebatte>) zu beantragen.]
	#S[Auf Verlangen eines Mitglieds erfolgt eine Aussprache.]
]
#abs[
	#S[Jedes Mitglied hat so viele Stimmen, wie Sitze zu vergeben sind.]
	#S[Jedes Mitglied kann einem oder einer Kandidierenden jeweils höchstens eine Stimme geben.]
]
#abs[
	Eine Stimme ist insbesondere ungültig, wenn
	+ aus der Stimmabgabe der oder die zu Wählende nicht zweifelsfrei hervorgeht,
	+ die Stimme sich nicht auf die Bezeichnung des oder der zu Wählenden beschränkt oder
	+ die verfügbare Zahl an Stimmen überschritten wird.
]
#abs[
	Der Wahlausschuss entscheidet im Zweifel über die Gültigkeit einer Stimme.
]


#paragraf[Wahlergebnisse]
#abs[
	Gewählt sind die Personen, die die höchste Zahl an gültigen Stimmen und jeweils von mindestens der Hälfte der anwesenden Mitglieder eine Stimme erhalten haben.
]
#abs[
	Bei Stimmengleichheit erfolgt, soweit erforderlich, nach Aussprache eine Stichwahl; bei Stimmengleichheit in der Stichwahl entscheidet das Los.
]
#abs[
	#S[Soweit im ersten Wahlgang nicht alle Sitze vergeben werden konnten, findet nach Aussprache ein zweiter Wahlgang zwischen den verbleibenden Kandidierenden statt.]
	#S[Soweit im zweiten Wahlgang nicht alle Sitze vergeben werden konnten, entscheidet der Wahlausschuss, ob auf der gleichen Sitzung ein dritter Wahlgang stattfindet.]
	#S[Ein weiterer Wahlgang auf der gleichen Sitzung ist ausgeschlossen.]
]
#abs[
	Soweit nach dem letzten Wahlgang ein oder mehrere Sitze unbesetzt sind, ist abweichend von #check[§~9 Abs.~1 S.~2] der Geschäftsordnung eine weitere Wahl auf jeder folgenden Sitzung möglich.
]
#abs[
	#S[Die Wahlleitung stellt das Wahlergebnis fest und gibt dieses bekannt.]
	#S[Sie fordert Gewählte auf, zu erklären, ob sie die Wahl annehmen.]
]
#abs[
	#S[Die Wahl gilt als abgelehnt, wenn sie nicht innerhalb einer Woche nach Zugang der Aufforderung angenommen wird.]
	#S[Wird die Wahl abgelehnt oder gilt sie als abgelehnt, ist eine Neuwahl auf jeder folgenden Sitzung möglich.]
]
#abs[
	Soweit die Wahl nicht innerhalb einer Sitzung abgeschlossen wird, wird die Wahl unverzüglich, spätestens aber innerhalb eines Monats, im erforderlichen Umfang wiederholt.
]


#paragraf[Anfechtung der Wahl]
#abs[
	#S[Jedes Mitglied kann nach der Feststellung und Bekanntgabe des Wahlergebnisses die Wahl innerhalb von sieben Tagen anfechten.]
	#S[Die Anfechtung erfolgt gegenüber der Wahlleitung in Textform und ist zu begründen.]
]
#abs[
	#S[Über die Anfechtung entscheidet der Wahlausschuss durch Beschluss.]
	#S[Der Beschluss ist zu begründen und den Mitgliedern unverzüglich in Textform mitzuteilen.]
]
#abs(ref: <abs:anfechtung>)[
	#S[Die Anfechtung ist begründet, soweit gegen wesentliche Wahlbestimmungen verstoßen wurde, es sei denn, der Verstoß hat das Wahlergebnis offensichtlich nicht beeinflusst.]
	#S[Soweit die Anfechtung begründet ist, erklärt der Wahlausschuss die Wahl im erforderlichen Umfang für ungültig.]
]
#abs[
	#S[Soweit die Wahl für ungültig erklärt wurde, wird sie wiederholt.]
	#S[Die Wiederholungswahl wird unverzüglich, spätestens aber innerhalb eines Monats nach dem Beschluss nach #at(<abs:anfechtung>), durchgeführt.]
	#S[Zur Wiederholungswahl sind nur die Kandidierenden zugelassen, die zu der für ungültig erklärten Wahl zugelassen waren.]
]


#paragraf[Abwahl]
#abs[
	Jede Sprecherin und jeder Sprecher kann mit einer Mehrheit von zwei Dritteln der anwesenden Mitglieder aus wichtigem Grund abgewählt werden.
]
#abs[
	#S[Auf Verlangen von mindestens sieben Mitgliedern ist über eine Abwahl zu beschließen.]
	#S[Das Verlangen muss spätestens sieben Tage vor der Sitzung in Textform zugegangen sein und soll begründet werden.]
	#S[Das Verlangen ist sämtlichen Mitgliedern unverzüglich im Wortlaut mitzuteilen.]
]
#abs[
	Die Abwahl wird geheim durchgeführt.
]


#paragraf(ref: <par:befragung>)[Befragung]
#abs[
	Es finden bei Bedarf zwei Befragungsteile statt.
]
#abs[
	#S[Zuerst können die Kandidierenden auf Antrag eines Mitglieds in Abwesenheit der weiteren Kandidierenden befragt werden.]
	#S[Auf Antrag eines Mitglieds können die Sprecher*innen und Geschäftsführung ebenfalls ausgeschlossen werden.]
	#S[Diese Einzelbefragungen sollen pro Person maximal 45 Minuten dauern.]
]
#abs[
	#S[Nach den Einzelbefragungen kann auf Verlangen eines Mitglieds eine öffentliche, gemeinschaftliche Befragung erfolgen.]
	#S[Die gemeinschaftliche Befragung soll maximal 90 Minuten dauern.]
]
#abs[
	Eine Befragung endet, sobald die Redeliste erschöpft ist und keine weitere Wortmeldung vorliegt.
]
#abs[
	Eine Befragung kann auf Antrag eines Mitglieds und mit einer Mehrheit von zwei Drittel der anwesenden Mitglieder beendet werden.
]


#paragraf(ref: <par:personaldebatte>)[Personaldebatte]
#abs[
	#S[Die Personaldebatte findet unter Ausschluss der Öffentlichkeit und unter Ausschluss aller Kandidierenden statt.]
	#S[Auf Antrag eines Mitglieds können die Sprecher*innen und Geschäftsführung ebenfalls ausgeschlossen werden.]
]
#abs[
	Wird einzeln über die Kandidierenden gesprochen, wird den Mitgliedern, von denen die jeweiligen Kandidierenden kommen, ein Erstrederecht eingeräumt.
]
#abs[
	Eine Personaldebatte endet, sobald die Redeliste erschöpft ist und keine weiteren Wortmeldungen vorliegen.
]
#abs[
	Eine Personaldebatte kann auf Antrag eines Mitglieds und mit einer Mehrheit von zwei Drittel der anwesenden Mitglieder beendet werden.
]
#abs[
	Insgesamt soll die Dauer der Personaldebatte nicht 90 Minuten überschreiten.
]
