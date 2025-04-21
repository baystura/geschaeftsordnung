#import "assets/legal.typ": *
#show: baystura

#show footnote.entry: it => {
  let loc = it.note.location()
  numbering(
    "1 - Erläuterung:",
    ..counter(footnote).at(loc),
  )
  it.note.body
}

#let version = [1\. Änderungsversion vom 23.03.2025]

#set page(
	header: context if counter(page).get().at(0) > 1 { align(center, text(size: 0.75em)[Geschäftsordnung des Bayerischen Landesstudierendenrats]) },
	footer: {
		set text(size: 0.75em)
		grid(
			columns: (1fr, 1fr),
			align(left)[#version],
			align(right)[#context counter(page).display()],
		)
	},
	numbering: "1",
)

////////////////////////////////////////////////////////////////////////////////

#baystura-logo()
#baystura-title(
	title: [Geschäftsordnung],
	subtitle: [des Bayerischen Landesstudierendenrats],
	date: [
		in der Fassung der #version
	],
)


#legal-outline()
#v(2em)
#line(length: 100%, stroke: 0.5pt + gray)
#v(2em)
Aufgrund von Art. 28 Abs. 3 in Verbindung mit Art. 108 Abs. 3 des Bayerischen Hochschulinnovationsgesetzes (BayHIG) vom 5. August 2022 (GVBI. S. 414, BayRS 2210-1-3-WK) gibt sich der Bayerische Landesstudierendenrat (BayStuRa) folgende Geschäftsordnung:
#v(2em)


#teil[Allgemeine Bestimmungen]

#paragraf[Zweck und Geltungsbereich]
Diese Geschäftsordnung regelt im Rahmen der gesetzlichen Bestimmungen die Arbeit des BayStuRa, insbesondere dessen Organe, deren Zuständigkeit und Zusammensetzung, das Nähere zu Wahlverfahren, Zusammentreten und Beschlussfassung sowie das Verfahren zur Änderung der Geschäftsordnung.


#paragraf(ref: <par:aufgaben-baystura>)[Aufgaben des BayStuRa]
#abs[
	#S[Der BayStuRa setzt sich zusammen aus den Studierendenvertretungen der Hochschulen in Bayern und dient dem landesweiten hochschulartübergreifenden Erfahrungsaustausch und der Zusammenarbeit bei der Wahrnehmung der Aufgaben der Studierendenvertretungen.]
	#S[Diese Aufgaben sind die Vertretung der fachlichen, wirtschaftlichen und sozialen Belange der Studierenden der Hochschulen, fakultätsübergreifende Fragen, die sich aus der Mitarbeit der Vertreterinnen und Vertreter der Studierenden in den Hochschulorganen ergeben, die Förderung der geistigen, musischen, kulturellen und sportlichen Interessen der Studierenden der Hochschulen, die Pflege der Beziehungen zu deutschen und ausländischen Studierenden und die Förderung der Chancengleichheit der Studierenden.]
]
#abs[
	#S[Der BayStuRa tritt im Rahmen der Wahrnehmung seiner Aufgaben für eine offene und pluralistische Gesellschaft und gegen jede Art von Hass und Hetze gegen Menschen, insbesondere gegen jede Art von Antisemitismus, Rassismus, Sexismus, gegen die Ausgrenzung von Menschen mit Behinderung oder chronischer Erkrankung und die Benachteiligung von Menschen aufgrund ihrer Herkunft, ihrer Religion oder Weltanschauung, ihrer sexuellen Neigung oder Identität, ein.]
	#S[Der BayStuRa setzt sich im Rahmen der Wahrnehmung seiner Aufgaben auch für eine Vernetzung der Studierendenvertretungen untereinander und mit den Zusammenschlüssen der Studierendenvertretungen anderer Länder ein.]
]


#paragraf[Mitgliedschaft, Vertretung und Delegierte]
#abs[
	#S[Die Studierendenvertretungen der staatlichen Hochschulen in Bayern sind Mitglieder des BayStuRa.]
	#S[Nichtstaatliche Hochschulen können Vertreterinnen und Vertreter in den BayStuRa entsenden und deren Studierendenvertretungen werden mit der Entsendung Mitglied im BayStuRa; die Mitgliedschaft endet, sobald die Entsendung beendet wird.]
	#S[Die Mitgliedschaft wird durch die entsendeten Vertreterinnen und Vertreter (Delegierte) ausgeübt.]
	#footnote[
		Der BayStuRa und dessen Mitglieder setzen sich dafür ein, dass die Amtszeiten der Delegierten, die in den Satzungsbestimmungen der jeweiligen Hochschulen geregelt sind, mit dem Geschäftsjahr des BayStuRa nach Möglichkeit übereinstimmen.
	]
	#S[Soweit nicht anders bestimmt, hat jedes Mitglied eine Stimme.]
	#S[Das Stimmrecht eines Mitglieds kann von dessen Delegierten (Delegation) nur einheitlich ausgeübt werden; andernfalls gilt dessen Stimme als nicht abgegeben.]
]
#abs[
	Die Wahl des oder der Delegierten eines Mitglieds erfolgt durch das zuständige beschlussfassende Kollegialorgan der jeweiligen Studierendenvertretung nach Maßgabe der Satzungsbestimmungen der jeweiligen Hochschule.
]
#abs[
	#S(ref: <s:wahl-delegierte>)[Jedes Mitglied hat dem BayStuRa unverzüglich nach einer Wahl von Delegierten deren Namen, jeweils eine elektronische Adresse, unter der die jeweiligen Delegierten zuverlässig erreichbar sind
	#footnote[
		Dies kann gegebenenfalls die Hochschul-E-Mail-Adresse sein.
	],
	eine Bestätigung deren Wahl und deren Amtszeit mitzuteilen. 
	#footnote[
		Die Bestimmungen des Datenschutzrechts sind einzuhalten.
	]]
	#S[#at(<s:wahl-delegierte>) gilt für die Abwahl entsprechend.]
	#S[Vor Ablauf des Geschäftsjahres fordern die Sprecherinnen und Sprecher die Mitglieder schriftlich auf, die Delegierten des folgenden Geschäftsjahres mitzuteilen.]
]


#paragraf[Geschäftsjahr]
#abs[
	Das Geschäftsjahr des BayStuRa beginnt am 1. Oktober eines jeden Jahres und endet mit Ablauf des 30. September des darauffolgenden Jahres.
]



#teil[Organe des BayStuRa]

#abschnitt[Allgemeines]

#paragraf[Organe des BayStuRa]
#S[Organe des BayStuRa sind die Mitgliederversammlung, die Sprecherinnen und Sprecher und die Geschäftsführung.]
#S[Hilfsorgane des BayStuRa sind die vom BayStuRa eingerichteten Arbeitsgruppen.]


#abschnitt[Mitgliederversammlung]

#paragraf[Zuständigkeit der Mitglieder, Mitgliederversammlung]
#S[Die Mitglieder in ihrer Gesamtheit sind für alle Angelegenheiten und Aufgaben des BayStuRa zuständig, soweit diese nicht anderen Organen des BayStuRa übertragen wurden.]
#S[Die Mitgliederversammlung ist das beschlussfassende Organ des BayStuRa.]


#abschnitt[Sprecherinnen und Sprecher]

#paragraf[Zuständigkeit der Sprecherinnen und Sprecher]
#abs(ref: <abs:zuständigkeit-sprecher>)[
	#S[Die Sprecherinnen und Sprecher sind zuständig für:
	+ die Führung der laufenden Geschäfte und die Erledigung der laufenden Angelegenheiten ohne grundsätzliche Bedeutung für den BayStuRa,
	+ die Ausführung der Beschlüsse des BayStuRa und die Vertretung dieser nach außen,
	+ die Vorbereitung der Sitzungen, die Ladung zu den Sitzungen, die Leitung der Sitzungen (Sitzungsleitung) und die Nachbereitung, insbesondere die Protokollierung der Sitzungen der Mitgliederversammlung nach #at(<par:sitzungen>) und
	+ die Durchführung von Umlaufverfahren nach #at(<par:umlaufverfahren>).
	]
]
#abs[
	#S[Sprecherinnen und Sprecher sind zur unparteiischen und gewissenhaften Erfüllung ihrer Aufgaben verpflichtet.]
	#S[Eine Sprecherin oder ein Sprecher, die oder der Delegierte oder Delegierter ist, übt für die Dauer der Amtszeit die Vertretung des jeweiligen Mitglieds als Delegierte oder Delegierter, insbesondere deren Stimmrecht, nicht aus.]
	#footnote[
		Delegierte verlieren mit der Wahl zur Sprecherin oder zum Sprecher nicht ihren durch Wahl begründeten formellen Status als Vertreterin oder Vertreter des Mitglieds, sondern nehmen während der Amtszeit als Sprecherin oder Sprecher die Vertretung des Mitglieds faktisch nicht wahr.
	]
]
#abs[
	#S[Die Sprecherinnen und Sprecher sollen im gegenseitigen Einvernehmen entscheiden.]
	#S[Kann ein Einvernehmen nicht hergestellt werden, entscheiden diese mit der Mehrheit ihrer Stimmen.]
]
#abs(ref: <abs:beauftragte>)[
	#S[Zur Erfüllung ihrer Aufgaben können sich die Sprecherinnen und Sprecher auch einer Unterstützung durch Dritte bedienen und Beauftragte bestellen.]
	#S[Beauftragte können nur in Absprache mit den Sprecherinnen und Sprechern im Rahmen ihres Aufgabenbereichs und im Rahmen der Beschlüsse des BayStuRa nach außen auftreten.]
]
#abs[
	#S(ref: <s:sprecherbericht>)[Die Sprecherinnen und Sprecher berichten den Mitgliedern regelmäßig über ihre Tätigkeit.]
	#S[Jedes Mitglied hat unbeschadet #at(<s:sprecherbericht>) das Recht, sich über die Tätigkeit der Sprecherinnen und Sprecher angemessen unterrichten zu lassen.]
]


#paragraf[Wahl der Sprecherinnen und Sprecher]
#abs[
	#S[Der BayStuRa wählt drei Sprecherinnen oder Sprecher.]
	#footnote[
		Werden weniger als drei Sprecherinnen oder Sprecher gewählt, nehmen diese zur Aufrechterhaltung der Handlungsfähigkeit die Aufgaben der Sprecherinnen und Sprecher vorläufig in unaufschiebbaren Angelegenheiten wahr, bis alle Sprecherinnen oder Sprecher gewählt worden sind.
	]
	#S(ref: <s:wahlsitzung>)[Die Wahl wird in der ersten ordentlichen Sitzung eines Kalenderjahres durchgeführt.]
	#S[Die Wahl ist durchführbar, wenn die Voraussetzungen nach #at(<abs:beschlussfähig>, suffix: [Nr. 1]) vorliegen.]
	#S[Näheres zu der Wahl und Abwahl ist in der Wahlordnung für die Wahl der Sprecherinnen und Sprecher (Wahlordnung) geregelt.]
]
#abs[
	#S[Für die Änderung der Wahlordnung gilt #at(<par:go-änderung>) entsprechend.]
]


#paragraf[Amtszeit der Sprecherinnen und Sprecher]
#abs(ref: <abs:amtszeit-sprecher>)[
	#S[Die Amtszeit jeder Sprecherin und jedes Sprechers beträgt in der Regel ein Jahr.]
	#S(ref: <s:amtszeit>)[Sie soll am 1. April eines jeden Jahres beginnen, beginnt bei vorheriger Amtszeit frühestens mit der Annahme des Rechenschaftsberichts nach #at(<abs:rechenschaftsbericht>) und endet spätestens mit Ablauf des 31. März des darauffolgenden Jahres.]
]
#abs[
	#S(ref: <s:amtszeitende-sprecher>)[Die Amtszeit einer Sprecherin oder eines Sprechers endet vorzeitig durch
	+ Rücktritt,
	+ Abwahl oder
	+ Wegfall des Status als Studierende oder Studierender einer Hochschule in Bayern, es sei denn, innerhalb von drei Monaten erfolgt eine erneute Immatrikulation als Studierende oder Studierender an einer Hochschule in Bayern; bis zum Ablauf dieser Frist ruht das Amt der Sprecherin oder des Sprechers.]
	#[Scheidet eine Sprecherin oder ein Sprecher vorzeitig aus dem Amt aus, ist abweichend von #at(<s:wahlsitzung>) eine Neuwahl auf jeder Sitzung möglich.]
	#[Falls die Amtszeit der einzigen Sprecherin oder des einzigen Sprechers vorzeitig endet, führt diese Sprecherin oder dieser Sprecher ihr oder sein Amt bis zur Neuwahl fort.]
]
#abs(ref: <abs:rechenschaftsbericht>)[
	#S[Zum Ende der Amtszeit sollen die Sprecherinnen und Sprecher jeweils einen Rechenschaftsbericht vorstellen.]
	#S[Über die Annahme oder Ablehnung der jeweiligen Berichte entscheidet die Mitgliederversamlung mit einfacher Mehrheit.]
]


#abschnitt[Geschäftsführung]

#paragraf(ref: <par:bestellung-gf>)[Bestellung einer Geschäftsführung]
#abs[
	#S[Die Sprecherinnen und Sprecher können eine Geschäftsführerin oder einen Geschäftsführer (Geschäftsführung) bestellen und abbestellen; #at(<abs:beauftragte>) bleibt unberührt.]
	#S[Die Bestellung und die Abbestellung sind den Mitgliedern in Textform bekanntzugeben; eine Abbestellung ist zu begründen.]
	#S[Wiederbestellung ist zulässig, es sei denn, die Geschäftsführung ist nicht nach #at(<abs:entlastung-gf>) entlastet worden.]
]
#abs[
	#S(ref: <s:einspruch-bestellung-gf>)[Jedes Mitglied kann innerhalb von einer Woche nach Bekanntgabe der Bestellung unter Angabe von Gründen gegenüber den Sprecherinnen und Sprechern in Textform Einspruch erheben; der Einspruch ist den anderen Mitgliedern mitzuteilen.]
	#S(ref: <s:beschluss-einspruch-gf>)[Wird Einspruch gegen die Bestellung erhoben, ist über die Bestellung auf der nächsten ordentlichen Sitzung nach Ablauf der Einspruchsfrist zu beschließen.]
]
#abs(ref: <abs:entlastung-gf>)[
	Die Geschäftsführung gilt mit dem Ende der Amtszeit nach #at(<par:amtszeit-gf>) als entlastet, es sei denn, über die Entlastung wird ein hiervon abweichender Beschluss gefasst.
]


#paragraf[Aufgabe der Geschäftsführung]
#abs[
	#S[Die Geschäftsführung unterstützt die Arbeit der Sprecherinnen und Sprecher.]
	#S[Sie tritt in ihrer Tätigkeit nur nach Absprache mit den Sprecherinnen und Sprechern öffentlich auf und vertritt dabei nicht ungefragt Inhalte nach außen.]
	#S[Aufgabe der Geschäftsführung ist die Wahrnehmung von Verwaltungstätigkeiten aus dem Zuständigkeitsbereich der Sprecherinnen und Sprecher, dies kann insbesondere auch die organisatorische Begleitung zu Terminen beinhalten.]
	#S[Die Sprecherinnen und Sprecher treffen im Einvernehmen mit der Geschäftsführung die näheren Regelungen zur Verteilung und Wahrnehmung der Aufgaben und geben diese Regelungen den Mitgliedern bekannt.]
]
#abs[Für die Geschäftsführung gilt § 7 Abs. 2 entsprechend.]

#paragraf(ref: <par:amtszeit-gf>)[Amtszeit der Geschäftsführung]
#abs[
	#S[Die Amtszeit der Geschäftsführung beträgt in der Regel ein Jahr.]
	#S(ref: <s:gf-amtszeit-beginn>)[Sie beginnt mit Ablauf der Frist für den Einspruch nach #at(<s:einspruch-bestellung-gf>), frühestens aber am 1.~April, und endet spätestens mit Ablauf des 31.~März des darauffolgenden Jahres.]
	#S[Wird Einspruch gegen die Bestellung erhoben, beginnt die Amtszeit abweichend von #at(<s:gf-amtszeit-beginn>) mit der Bekanntgabe des Beschlusses nach #at(<s:beschluss-einspruch-gf>).]
]
#abs[
	#S[
		Die Amtszeit der Geschäftsführung endet vorzeitig insbesondere durch
		+ Rücktritt oder
		+ Abbestellung.
	]
]
#abs[
	#S[Endet die Amtszeit vorzeitig, kann für die verbleibende Amtszeit eine neue Geschäftsführung nachbestellt werden. #at(<par:bestellung-gf>) gilt entsprechend.]
]


#abschnitt[Ombudspersonen]

#paragraf[Ombudspersonen]
#abs[
	#S[Der BayStuRa soll zwei Ombudspersonen als Schlichtungs-, Ansprech- und Beschwerdestellen wählen.]
	#S[Dabei ist darauf zu achten, dass diese nicht das gleiche Geschlecht haben.]
]
#abs[
	#S[Eine Wahl findet regulär im April statt.]
	#S[Bei vakanten Posten oder Rücktritt ist eine Wahl auf jeder Sitzung möglich.]
	#S[Alle Delegierten können Personen vorschlagen.]
	#S[Vorgeschlagene Personen können sich kurz vorstellen und geben an, ob sie sich zur Wahl stellen möchten.]
	#S[Daraufhin dürfen Mitglieder Fragen an die Kandidierenden stellen.]
	#S[Diese Fragerunde ist auf insgesamt eine halbe Stunde begrenzt.]
	#S[Mit Antrag zur Geschäftsordnung kann diese Zeitspanne um 10 Minuten verlängert werden.]
	#S[Jedes Mitglied hat so viele Stimmen, wie aktuell Stellen vergeben werden können.]
	#S[Jedes Mitglied kann einem oder einer Kandidierenden jeweils höchstens eine Stimme geben.]
	#S[Gewählt sind die Personen, die die höchste Zahl an gültigen Stimmen und jeweils von mindestens der Hälfte der anwesenden Mitglieder eine Stimme erhalten haben.]
	#S[Bei Stimmengleichheit erfolgt eine Stichwahl; bei Stimmengleichheit in der Stichwahl entscheidet das Los.]
	#S[Soweit im ersten Wahlgang nicht alle Sitze vergeben werden konnten, findet ein zweiter Wahlgang zwischen den verbleibenden Kandidierenden statt.]
	#S[Soweit im zweiten Wahlgang nicht alle Sitze vergeben werden konnten, ist ein weiterer Wahlgang auf der gleichen Sitzung ausgeschlossen.]
]
#abs[
	#S[Alle Delegierten oder jede Person, die in Kontakt zum BayStuRa steht, kann sich an Ombudspersonen wenden.]
	#S[Diese wird daraufhin je nach individuellem Einzelfall schlichtend und vermittelnd tätig, bzw. geht Beschwerden oder Anliegen nach.]
]
#abs[
	Der BayStuRa gibt sich mit der ersten Wahl von Ombudspersonen eine Ombudsordnung, welche insbesondere die Arbeitsweise und Prozesse regelt.
]
#abs[
	#S[
		Das Amt der Ombudsperson beginnt unmittelbar nach der Wahl und endet
		+ durch Rücktritt,
		+ durch Abberufung oder
		+ mit Ablauf eines Jahres nach Wahl.
	]
	#S[Eine Wiederwahl ist möglich.]
]
#abs[
	#S[Auf Antrag von mindestens fünf Mitgliedern kann eine Abberufung der Ombudsperson stattfinden.]
	#S[Für eine Abberufung ist eine absolute Mehrheit notwendig.]
	#S[Nach Abberufung ist eine erneute Kandidatur der abberufenen Personen nicht möglich.]
]


#abschnitt[Arbeitsgruppen]

#paragraf[Arbeitsgruppen]
#abs[
	#S[Der BayStuRa kann Arbeitsgruppen für bestimmte Arbeitsgebiete durch Beschluss einrichten oder aufheben.]
	#S[Arbeitsgruppen unterstützen die Arbeit des BayStuRa und dessen Organe.]
	#S[Sie berichten dem BayStuRa regelmäßig über ihre Tätigkeiten.]
	#S[Sie treten in ihrer Tätigkeit nicht öffentlich auf.]
	#S[Der BayStuRa legt im Rahmen der Aufgaben nach #at(<par:aufgaben-baystura>) durch Beschluss das Arbeitsgebiet der Arbeitsgruppe fest.]
	#S[Der BayStuRa beschließt über eine Arbeitsgruppe mindestens einmal im Geschäftsjahr.]
	#footnote[
		Dies bedeutet, dass mindestens einmal im Geschäftsjahr im Hinblick auf eine Arbeitsgruppe ein Beschluss gefasst wird.
		Dieser Beschluss kann beispielsweise die Fortsetzung der Arbeitsgruppe, eine Änderung des Arbeitsgebiets oder auch die Aufhebung einer Arbeitsgruppe beinhalten.
	]
]
#abs[
	An Sitzungen von Arbeitsgruppen können folgende Personen teilnehmen:
	+ Alle Studierende an einer Hochschule in Bayern können Mitglied einer Arbeitsgruppe sein. Jedes Mitglied einer Arbeitsgruppe hat im Rahmen der Tätigkeit in der Arbeitsgruppe im Einvernehmen mit der Delegation der betreffenden Hochschule zu handeln, sofern es die Hochschule vertritt. Bei Beitritt in eine Arbeitsgruppe wird die jeweilige Delegation über die Mitwirkung informiert und kann die Vertretungsrechte formlos entziehen.
	+ Die Sprecherinnen und Sprecher haben das Recht, an den Sitzungen jeder Arbeitsgruppe mit beratender Stimme teilzunehmen.
	+ Dritte können in der Arbeitsgruppe mit beratender Stimme mitwirken.
]
#abs[
	Über die Mitwirkung und eine Beendigung der Mitwirkung in einer Arbeitsgruppe soll den Sprecherinnen und Sprechern unverzüglich in Textform mitgeteilt werden.
]
#abs[
	#S[Aus der Mitte der Mitglieder der Arbeitsgruppe wird eine Koordinatorin oder ein Koordinator gewählt.]
	#S[Diese Koordinatorin oder dieser Koordinator ist für die Koordination der Arbeit in der Arbeitsgruppe verantwortlich und darf in enger Abstimmung mit den Sprecherinnen und Sprechern im jeweiligen Themengebiet nach außen auftreten.]
	#S[Er oder sie ist hierbei an die Beschlüsse des BayStuRa gebunden.]
	#S[Für jede Kommunikation nach außen bedarf es einer separaten expliziten Zustimmung der Sprecherinnen und Sprecher.]
]

#abs[
	Für die Arbeit in einer Arbeitsgruppe gelten die Bestimmungen von #at(<par:beschlüsse>), #at(<par:sitzungen>) und #at(<par:umlaufverfahren>) entsprechend. Abweichend von Satz 1 finden #at(<par:beschlüsse>, suffix: [Abs. 2]), #at(<par:sitzungen>, suffix: [(2–4)]) sowie #at(<par:umlaufverfahren>, suffix: [Abs. 2]) keine Anwendung. Jede Arbeitsgruppe kann durch Beschluss hiervon abweichende Regelungen treffen, soweit dies erforderlich ist.
]





#abschnitt[Finanzen]

#paragraf[Haushaltsplan]
#S[Die Sprecherinnen und Sprechern des Bayerischen Landesstudierendenrats sind für die Vergabe und Verwendung der Mittel verantwortlich.]
#S[Im Rahmen dieser Verausgabung wird dem Bayerischen Landesstudierendenrat grundsätzlich vor oder zu Beginn eines Haushaltsjahres ein Haushaltsplan vorgelegt und beschlossen.]


#paragraf[Umsetzung des Haushaltsplans]
#abs[
	Einzelne Ausgaben unter 500,00~€ brutto, die in den Teilbereichen des Haushaltsplans bereits abgedeckt waren, werden von den Sprecherinnen und Sprechern, der Geschäftsführung, der Kassenwartin oder dem Kassenwart in Absprache untereinander ausgegeben, ohne erneut dem Gremium vorgelegt zu werden.
]
#abs[
	#S[Einzelne Ausgaben ab 500,00~€ brutto werden unabhängig von bestehender Haushaltsplanung dem BayStuRa zum Beschluss vorgelegt.]
	#S[Ausgenommen hiervon ist die finanzielle Unterstützung der Sitzungsausrichtung, die durch Beschluss des Haushaltsplans festgelegt wird.]
]


#abschnitt[Kassenwartin oder Kassenwart]

#paragraf(ref: <par:bestellung-kasse>)[Bestellung einer Kassenwartin oder eines Kassenwarts]
#abs[
	#S[Die Sprecherinnen und Sprecher sollen eine Person als Kassenverwaltung bestellen.]
	#S[Die Bestellung ist den Mitgliedern in Textform bekanntzugeben.]
	#S[Eine Wiederbestellung ist zulässig, es sei denn, die Kassenverwaltung ist nicht nach #at(<abs:entlastung-kasse>) entlastet worden.]
]
#abs[
	Die Bestellung der Person muss in der nächsten Mitgliederversammlung abgestimmt werden.
]
#abs[
	#S[Die Mitglieder haben ebenfalls die Möglichkeit, eine Kassenverwaltung vorzuschlagen.]
	#S[Hierzu müssen 3 Mitglieder gemeinsam eine Person vorschlagen.]
	#S[Bei Vorschlag einer Person wird zwischen dem Vorschlag der Sprecherinnen und Sprecher und dem Vorschlag der vorschlagenden Mitglieder auf der nächsten Sitzung abgestimmt.]
	#S[Sollte es ausschließlich einen Vorschlag aus den Reihen der Mitglieder, nicht aber von den Sprecherinnen und Sprechern geben, so findet auf der nächsten Sitzung eine Abstimmung statt.]
]
#abs[
	Bis zur erfolgreichen Bestellung übernehmen die Sprecherinnen und Sprecher kommissarisch die Aufgaben der Kassenwartin oder des Kassenwarts.
]

#paragraf[Amtszeit der Kassenwartin oder des Kassenwarts]
#abs[
	#at(<abs:amtszeit-sprecher>) und #at(<s:amtszeitende-sprecher>) gelten entsprechend.
]
#abs[
	Wird die Amtszeit vorzeitig beendet, wird für die verbleibende Amtszeit eine neue Kassenwartin oder ein neuer Kassenwart gewählt; #at(<par:bestellung-kasse>) gilt entsprechend.
]

#paragraf[Aufgaben der Kassenwartin oder des Kassenwarts]
#abs[
	#S[Die Kassenwartin oder der Kassenwart unterstützt die Arbeit der Sprecherinnen und Sprecher.]
	#S[Sie oder er tritt in ihrer oder seiner Tätigkeit ausschließlich im Rahmen ihrer oder seiner Aufgaben und in enger Abstimmung mit den Sprecherinnen und Sprechern ausschließlich für finanzielle Tätigkeiten nach außen auf.]
]
#abs[
	#S[Aufgabe der Kassenwartin oder des Kassenwarts ist die Wahrnehmung von Verwaltungstätigkeiten im Zusammenhang mit den Finanzen, insbesondere:
		+ Erstellung eines Abrechnungsberichts zum Ende der Amtszeit,
		+ Erstellung von Zwischenberichten in der Juli- und Dezembersitzung,
		+ Verwaltung der Finanzmittel und finanziellen Angelegenheiten des BayStuRa in Abstimmung mit der Hochschule, an der die Kostenstelle eingerichtet ist und
		+ Funktion als Ansprechperson für finanzielle Fragen des BayStuRa und der Sprecherinnen und Sprecher
	]
]

#paragraf[Rechte der Kassenwartin oder des Kassenwarts]
#abs[
	Die Kassenwartin oder der Kassenwart ist berechtigt, den Kontostand abzufragen.
]
#abs[
	#S[Sie oder er zeichnet sämtliche finanziellen Dokumente gegen und bestätigt die sachliche und rechnerische Richtigkeit von finanziellen Vorgängen.]
	#S[Die Gegenzeichnung und Bestätigung ist unter Begründung zu versagen, wenn Dokumente unvollständig eingereicht sind oder Zweifel an der Richtigkeit der Vorgänge existieren.]
	#S[Sie oder er fordert die beteiligte Person oder beteiligten Person zur Aufklärung oder Korrektur auf.]
	#S[Sie oder er darf keine Ausgaben ablehnen, die sachlich und rechnerisch richtig und vom Haushaltsplan abgedeckt sind.]
]


#paragraf[Rechenschaftsbericht und Abwahl der Kassenwartin oder des Kassenwarts]
#abs(ref: <abs:entlastung-kasse>)[
	#S[Zum Ende der Amtszeit sollen die Kassenwartin oder der Kassenwart einen Rechenschaftsbericht vorstellen.]
	#S[Über die Annahme oder Ablehnung des Berichts entscheidet die Mitgliederversamlung mit einfacher Mehrheit.]
]
#abs[
	#S[Die Kassenwartin oder der Kassenwart kann mit einer Mehrheit von zwei Dritteln der anwesenden Mitglieder aus wichtigem Grund abgewählt werden.]
	#S(ref: <s:abwahl-kasse>)[Von mindestens sieben Mitgliedern ist über eine Abwahl zu beschließen.]
	#S[Das Verlangen nach #at(<s:abwahl-kasse>) muss spätestens sieben Tage vor der Sitzung in Textform zugegangen sein und soll begründet werden.]
	#S[Das Verlangen ist sämtlichen Mitgliedern unverzüglich im Wortlaut mitzuteilen.]
	#S[Die Abwahl wird geheim durchgeführt.]
]
#abs[
	Ein nicht angenommener Rechenschaftsbericht schließt eine erneute Wahl zur Kassenwartin oder zum Kassenwart aus, ebenfalls eine Wahl als Sprecherin oder Sprecher oder Bestellung zur Geschäftsführung.
]


#teil[Verfahren]

#paragraf(ref: <par:beschlüsse>)[Beschlüsse]
#abs[
	Der BayStuRa entscheidet durch Beschlüsse.
]
#abs(ref: <abs:beschlussfähig>)[
	Die Mitgliederversammlung ist beschlussfähig
	+ in einer Sitzung nach #at(<par:sitzungen>), wenn alle Mitglieder ordnungsgemäß nach #at(<abs:ladung>) geladen sind und mindestens siebzehn Mitglieder anwesend sind,
	+ im Umlaufverfahren nach #at(<par:umlaufverfahren>), wenn alle Mitglieder nach #at(<par:umlaufverfahren>) am Umlaufverfahren beteiligt werden und mindestens siebzehn Mitglieder abstimmen.
]
#abs[
	Soweit nicht anders bestimmt, werden Beschlüsse relativer Mehrheit gefasst.
	Jedes Mitglied hat eine Stimme.
	Das Stimmrecht eines Mitglieds kann von dessen Delegation nur einheitlich ausgeübt werden; anders gilt dessen Stimme als nicht abgegeben.
	Für die Annahme oder Ablehnung eines Antrags ist erforderlich, dass die Mehrheit der anwesenden Mitglieder eine Stimme abgegeben hat; andernfalls gilt die Abstimmung als ergebnislos.
	Bei Stimmengleichheit ist der Antrag abgelehnt.
	Enthaltungen gelten als nicht abgegebene Stimmen.
]
#abs[
	Ein Verstoß gegen Bestimmungen dieser Geschäftsordnung, der sich auf ein bestimmtes Mitglied bezieht, ist für die Wirksamkeit eines Beschlusses unbeachtlich, falls das betreffende Mitglied rügelos an der Abstimmung teilnimmt.
	#footnote[
		Diese Regelung bezieht sich insbesondere auf die Bestimmungen in #at(<abs:ladung>).
	]
]
#abs[
	#S[Alle inhaltlichen Beschlüsse sollen für Mitglieder jederzeit abrufbar sein.]
	#S[In der ersten ordentlichen Sitzung eines Geschäftsjahres soll von den Sprecherinnen und Sprechern auf die inhaltlichen Beschlüsse hingewiesen werden und erläutert werden, wo diese abrufbar sind.]
]


#paragraf(ref: <par:sitzungen>)[Sitzungen, Ladung]
#abs[
	Soweit nicht anders bestimmt, werden Beschlüsse in einer Sitzung gefasst.
]
#abs[
	#S[Der BayStuRa tritt in der Regel monatlich, mindestens aber zweimal in einem Semester, in einer ordentlichen Sitzung zusammen.]
	#S[Die erste ordentliche Sitzung eines Kalenderjahres soll im Januar stattfinden, die erste ordentliche Sitzung eines Geschäftsjahres im Oktober.]
	#S[Auf Verlangen von mindestens elf Mitgliedern findet innerhalb von zwei Wochen eine außerordentliche Sitzung statt.]
]
#abs(ref: <abs:ladung>)[
	#S[Zu einer ordentlichen Sitzung sind alle Mitglieder spätestens zwei Wochen vor der Sitzung zu laden.]
	#S[Zu einer außerordentlichen Sitzung sind alle Mitglieder spätestens eine Woche vor der Sitzung zu laden.]
	#S[Die Ladung hat den Ort und den Beginn der Sitzung und einen Vorschlag für die Tagesordnung zu enthalten.]
]
#abs[
	Jedes Mitglied hat spätestens einen Tag vor der Sitzung den Sprecherinnen und Sprechern in Textform mitzuteilen, welche Delegierten an der Sitzung teilnehmen.
]
#abs[
	Für die Dauer einer Sitzung kann abweichend von #at(<abs:zuständigkeit-sprecher>, suffix: [Nr.~3]) die Aufgabe der Sitzungsleitung Delegierten durch Beschluss übertragen werden.
]
#abs[
	#S[Die Sitzungen der Mitgliederversammlung sind öffentlich.]
	#S(ref: <s:verlangen-nichtöffentlichkeit>)[Auf Verlangen eines Mitglieds wird die Öffentlichkeit der Sitzung ganz oder teilweise ausgeschlossen.]
	#S[Ein Ausschluss der Öffentlichkeit soll in der Regel auf einzelne Tagesordnungspunkte begrenzt werden.]
	#S[Soweit die Öffentlichkeit ausgeschlossen ist, können durch Antrag zur Geschäftsordnung einzelne Dritte zur Sitzung zugelassen werden.]
]
#abs[
	#S[Sitzungen können ganz oder teilweise digital oder rein in Präsenz durchgeführt werden.] //TO-DO: Fußzeile wieder hinzufügen
	#S[Teilnehmende Delegierte und die Sprecherinnen und Sprecher müssen sich in der Sitzung gegenseitig optisch und akustisch wahrnehmen können.
	#footnote[
		Diese Regelung dient insbesondere der erstmaligen Identifizierung der teilnehmenden Delegierten und der Sprecherinnen und Sprecher zu Beginn einer Sitzung. Die Teilnehmenden sind jedoch nicht verpflichtet, durchgehend ihre Kamera und ihr Mikrofon eingeschaltet zu lassen.
	]]
	#S[Im Falle einer teilweise oder ganz digitalen Sitzung hat der BayStuRa dafür Sorge zu tragen, dass in seinem Verantwortungsbereich die technischen Voraussetzungen für eine digitale Zuschaltung während der Sitzung durchgehend bestehen.]
	#S[Ist dies nicht der Fall oder steht nicht fest, ob eine Nichtzuschaltung in den Verantwortungsbereich des BayStuRa oder der oder des betreffenden Delegierten fällt, darf die Sitzung nicht beginnen oder ist sie unverzüglich zu unterbrechen.]
	#S[Kommt eine digitale Zuschaltung aus Gründen, die nicht im Verantwortungsbereich des BayStuRa liegen, nicht zustande oder wird sie unterbrochen, wirkt sich dies nicht auf die Wirksamkeit eines ohne die betreffende Person gefassten Beschlusses aus.]
	#S[Soweit sich der BayStuRa darauf beschränkt, eine Plattform zur digitalen Zuschaltung zur Verfügung zu stellen, und entweder mindestens eine Delegierte oder ein Delegierter zugeschaltet ist oder ein Test bestätigt, dass eine Zuschaltmöglichkeit besteht, wird vermutet, dass der Grund für eine Nichtzuschaltung nicht im Verantwortungsbereich des BayStuRa liegt.]
	#S[Erfolgt eine digitale Zuschaltung bei einer nichtöffentlichen Sitzung, haben digital zugeschaltete Personen dafür Sorge zu tragen, dass die Übertragung in ihrem Verantwortungsbereich nur von ihnen wahrgenommen werden kann.]
]
#abs[
	#S[Die Sitzungsleitung trifft die geeigneten und erforderlichen Maßnahmen, um den ordnungsgemäßen Ablauf der Sitzung zu gewährleisten.]
	#S(ref: <s:störung-sitzung>)[Die Sitzungsleitung und jedes Mitglied kann vorschlagen, Personen, die den ordnungsgemäßen Ablauf der Sitzung fortgesetzt und erheblich stören, für die weitere Dauer der Sitzung das Rederecht zu entziehen oder von der Sitzung ganz auszuschließen.]
	#S[Maßnahmen nach #at(<s:störung-sitzung>) erfordern, soweit es sich um Delegierte handelt, einen Beschluss mit der Mehrheit von zwei Dritteln der anwesenden Mitglieder.]
	#S[Auf Vorschlag der Sitzungsleitung können durch Beschluss für die Dauer einer Sitzung, soweit erforderlich, die Geschäftsordnung ergänzende Regelungen getroffen werden, soweit Bestimmungen der Geschäftsordnung nicht entgegenstehen.]
	#S(ref: <s:anfechtung-sitzungsleitung>)[Jedes Mitglied kann eine Entscheidung oder Maßnahme der Sitzungsleitung anfechten.]
	#S[Erfolgt eine Anfechtung nach #at(<s:anfechtung-sitzungsleitung>), wird über die Entscheidung oder Maßnahme ein Beschluss gefasst.]
]
#abs[
	Zu Beginn der Sitzung ist über die Tagesordnung zu beschließen.
]
#abs[
	Die Sitzungsleitung kann vor der Beratung über einen Antrag von der Verlesung des Antrags absehen, es sei denn, dies wird von einem Mitglied verlangt.
]
#abs[
	#S[Jedes Mitglied, die Sprecherinnen und Sprecher und die Geschäftsführung haben ein Rederecht in der Sitzung.]
	#S[Die Sitzungsleitung erteilt und entzieht das Wort, legt eine angemessene Redezeit für die Aussprache und die einzelnen Redebeiträge fest und führt eine Redeliste.]
	#S[Das Wort soll in der Regel in der von der Redeliste vorgegebenen Reihenfolge, im Übrigen nach der Reihenfolge der weiteren Wortmeldungen erteilt werden.]
	#S[Die Reihenfolge auf der Redeliste soll sich danach richten, dass zunächst jedem Mitglied einmal die Möglichkeit eines Redebeitrags gewährt wird und jedes weitere Mal erst dann, wenn allen anderen Mitgliedern die Möglichkeit eines Redebeitrags gewährt worden ist.]
	#S[Die Sitzungsleitung kann Dritten das Wort erteilen.]
]
#abs[
	#S[Vor einer Abstimmung ist den Mitgliedern eine angemessene Zeit für die Willensbildung innerhalb einer Delegation zu gewähren.]
	#S[Auf Verlangen eines Mitglieds wird diese Zeit von der Sitzungsleitung angemessen verlängert.]
]
#abs[
	#S[Die Sitzungsleitung kann vor der Abstimmung über einen Antrag von der Verlesung des Antrags absehen, es sei denn, dies wird von einem Mitglied verlangt.]
	#S[Die Abstimmung erfolgt offen.]
	#S(ref: <s:verlangen-abstimmung-geheim>)[Auf Verlangen eines Mitglieds erfolgt sie geheim.]
]
#abs[
	#S[Die Sitzungsleitung hat ein Protokoll über die Sitzung zu fertigen.]
	#S[Das Protokoll hat mindestens den Ort und den Tag der Sitzung, die Tagesordnung, die Namen der anwesenden Mitglieder, die Beratungsgegenstände, die Anträge im Wortlaut sowie die Beschlüsse und die Ergebnisse der Abstimmungen zu den Anträgen zu enthalten.]
	#S[Die Sitzungsleitung hat das Protokoll an die Mitglieder zu übermitteln.]
	#S[Die Übermittlung soll fristgerecht zur nächsten Sitzung erfolgen.]
	#S[Jedes Mitglied kann innerhalb von einer Woche nach Zugang des Protokolls gegenüber der Sitzungsleitung unter Angabe von Gründen in Textform Einspruch erheben.]
	#S[Der Einspruch ist den anderen Mitgliedern mitzuteilen.]
	#S[Über die Genehmigung des Protokolls ist auf der nächsten ordentlichen Sitzung nach Ablauf der Einspruchsfrist zu beschließen.]
]


#paragraf(ref: <par:umlaufverfahren>)[Umlaufverfahren]
#S[Eine Beschlussfassung im Umlaufverfahren ist nur zulässig, wenn eine Angelegenheit aufgrund ihrer Dringlichkeit unaufschiebbar ist, insbesondere eine außerordentliche Sitzung nicht in Betracht kommt.]
#S[Über die Durchführung sowie die Dauer eines Umlaufverfahrens entscheiden die Sprecherinnen und Sprecher.]
#S[Die Dauer ist nach der Dringlichkeit im Einzelfall zu bemessen und soll mindestens drei und höchstens sieben Tage betragen.]
#S[Die Sprecherinnen und Sprecher geben einen im Umlaufverfahren gefassten Beschluss den Mitgliedern unverzüglich in Textform im Wortlaut bekannt.]


#paragraf(ref: <par:anträge>)[Anträge]
#abs[
	Jedes Mitglied und die Sprecherinnen und Sprecher haben ein Antragsrecht.
]
#abs(ref: <abs:antragsfrist>)[
	#S(ref: <s:antragsfrist>)[Ein Antrag, der kein Antrag zur Geschäftsordnung ist (inhaltlicher Antrag), muss spätestens sieben Tage vor der Sitzung in Textform gestellt werden.]
	#S[Ein inhaltlicher Antrag soll begründet werden.]
	#S[Ein inhaltlicher Antrag ist sämtlichen Mitgliedern unverzüglich im Wortlaut mitzuteilen.]
	#S[Ein inhaltlicher Antrag, der nach Ablauf der Frist nach #at(<s:antragsfrist>) eingereicht wurde (Initiativantrag), erfordert einen Beschluss mit der Mehrheit von zwei Dritteln der anwesenden Mitglieder.]
]
#abs(ref: <abs:änderungsanträge>)[
	#S[Ein Änderungsantrag kann bis zur Eröffnung der Abstimmung über den zu ändernden Antrag (Hauptantrag) gestellt werden.]
	#S[Der Änderungsantrag und der Hauptantrag können verbunden zur Abstimmung gestellt werden.]
	#S[Ein in der Sitzung gestellter Antrag, der den Inhalt eines Hauptantrags wesentlich ändert, erfordert einen Beschluss mit der Mehrheit von zwei Dritteln der anwesenden Mitglieder.]
]
#abs(ref: <abs:zusammenfassung-anträge>)[
	#S[Mehrere inhaltliche Anträge können verbunden zur Abstimmung gestellt werden.]
	#S[Dies gilt nicht für Anträge, bei denen ein Antrag mit einem anderen Antrag inhaltlich konkurriert und bei denen die Annahme eines Antrags die Ablehnung des anderen Antrags vorwegnimmt (konkurrierende Anträge).]
	#S(ref: <s:konkurrierende-anträge>)[Stehen konkurrierende Anträge zur Abstimmung und werden diese nicht so geändert, dass sie nicht mehr konkurrieren, wird zunächst die Frage zur Abstimmung gestellt, über welchen konkurrierenden Antrag zunächst abgestimmt wird.]
	#S[Bleibt dieser Antrag, über den nach der Abstimmung nach #at(<s:konkurrierende-anträge>) zunächst abgestimmt wird, ohne Mehrheit, wird über den Antrag abgestimmt, der die nächsthöchste Zahl an Stimmen erhalten hat.]
	#S[Dieses Verfahren (alternative Abstimmung) wird so lange fortgesetzt, bis ein Antrag die erforderliche Mehrheit gefunden hat oder sonst die Abstimmung beendet ist.]
]
#abs[
	#S[Die Abstimmung über einen Antrag erfolgt unmittelbar nach Ende der Beratung über diesen Antrag und wird von der Sitzungsleitung eröffnet.]
	#S[Die Sitzungsleitung stellt das Ende der Beratung fest.]
	#S[Das Ende der Beratung ist festzustellen, wenn die Redeliste erschöpft ist und darüber hinaus keine weitere Wortmeldung vorliegt.]
]


#paragraf[Anträge und Aussagen zur Geschäftsordnung]
#abs[
	#S[Anträge oder Aussagen zur Geschäftsordnung sind jederzeit möglich.]
	#S[Äußerungen zur Geschäftsordnung befassen sich mit dem Gang der Verhandlung, insbesondere Hinweise oder Fragen zur Geschäftsordnung.]
]
#abs[
	#S[Eine Wortmeldung zur Geschäftsordnung ist erst nach dem Ende des laufenden Redebeitrages, dann unmittelbar zu behandeln.]
	#S[Mehrere Geschäftsordnungsanträge werden in der Reihenfolge der Meldung behandelt.]
	#S[Bei einem Antrag zur Geschäftsordnung ist eine Für- und eine Gegenrede möglich; ohne Gegenrede ist der Antrag zur Geschäftsordnung angenommen.]
	#S[Bei Gegenrede werden Anträge zur Geschäftsordnung mit einer Mehrheit der abgegebenen Stimmen angenommen.]
]
#abs[
	Mögliche Anträge sind insbesondere:
	+ Antrag auf Änderung der Tagesordnung,
	+ Antrag auf Schließung der Debatte und sofortige Abstimmung,
	+ Antrag auf Schließung der Redeliste, wobei nach Annahme dieses Antrags die einmalige Möglichkeit besteht, sich noch auf die Redeliste setzen zu lassen (alle späteren Meldungen innerhalb des gerade behandelten Tagesordnungspunkts sind nicht mehr zu berücksichtigen und nicht mehr auf der Redeliste zu vermerken),
	+ Antrag auf Wiedereröffnung der Redeliste,
	+ Antrag auf Beschränkung der Redezeit,
	+ Antrag auf Zeitbegrenzung des derzeit behandelten Punkts, wobei eine konkrete Zeitvorgabe vorzuschlagen ist, in welcher der Punkt diskutiert werden muss; nach Ablauf dieser Zeit wird ohne Beachtung weiterer Personen auf der Redeliste unmittelbar zur Abstimmung bzw. zum nächsten Tagesordnungspunkt übergegangen; ein Antrag zur Geschäftsordnung auf Zeitverlängerung ist möglich,
	+ Antrag auf Sitzungspause, wobei dieser mit Zeitangabe zur Dauer der Pause gestellt werden muss; nach Annahme dieses Antrags ist diese Pause unverzüglich umzusetzen,
	+ Antrag auf Nichtbefassung, dessen Annahme zur Folge hat, dass der Tagesordnungspunkt oder Antrag nicht erörtert wird; die Sitzung wird mit dem nächsten Punkt der Tagesordnung fortgesetzt; ein Antrag auf Nichtbefassung soll bereits bei der Genehmigung der Tagesordnung gestellt werden,
	+ Antrag auf Vertagung, dessen Annahme zur Folge hat, dass der derzeitig behandelte Tagesordnungspunkt oder Antrag nicht weiterverhandelt wird; er ist in der nächsten Sitzung ohne weiteren Antrag auf die Tagesordnung zu setzen und erneut zu verhandeln,
	+ Antrag auf Nichtöffentlichkeit der Sitzung nach #at(<s:verlangen-nichtöffentlichkeit>), welchem ohne Abstimmung nachzukommen ist; auf Antrag eines Mitglieds können einzelne Dritte wieder zugelassen werden; über einen solchen Antrag wird abgestimmt,
	+ Antrag auf Zulassung einzelner Dritter zu einer nicht öffentlichen Sitzung,
	+ Antrag auf Feststellung der Beschlussfähigkeit,
	+ Antrag auf verbundene Abstimmung mehrerer Anträge nach #at(<abs:zusammenfassung-anträge>),
	+ Antrag auf Beschlussfassung über eine Entscheidung der Sitzungsleitung (Anfechtung)#footnote[Bei einer Anfechtung einer Entscheidung der Sitzungsleitung wird einstufig darüber beschlossen, ob die Entscheidung der Sitzungsleitung bestätigt, aufgehoben oder abgeändert wird.],
	+ Antrag auf namentliche Abstimmung oder
	+ Antrag auf geheime Abstimmung nach #at(<s:verlangen-abstimmung-geheim>), welchem ohne Abstimmung nachzukommen ist.
]


#paragraf[Entsendungen]
#abs[
	#S[Der BayStuRa kann Studierende an einer Hochschule in Bayern in Gremien und Organe anderer Organisationen entsenden.]
	#S[Entsendete Personen berichten dem BayStuRa regelmäßig über ihre Tätigkeit im Rahmen der Entsendung.]
	#S[Jedes Mitglied kann einen Bericht über die Entsendung beantragen.]
]
#abs[
	#S[Die Entsendeten repräsentieren in den jeweiligen Organisationen und gegenüber der Öffentlichkeit den BayStuRa.]
	#S[Sie sind an die Beschlüsse des BayStuRa gebunden.]
	#S[Bei Entsendungen, die entweder keine Beschlussgrundlage haben oder von dieser nicht beeinflusst werden dürfen (z. B. Akkreditierungspool, Berufungsverfahren), wird bei Entsendung den Entsendeten das Vertrauen ausgesprochen, sich zu diesen Themen zu äußern.]
	#S[Bei inhaltlichen Äußerungen gegenüber der Öffentlichkeit ist eine enge Abstimmung mit den Sprecherinnen und Sprechern nötig.]
]
#abs[
	#S[Der BayStuRa entsendet durch Beschluss.]
	#S[Mindestens eine Woche vor Sitzung soll dem BayStuRa eine schriftliche Bewerbung zugehen.]
	#S[In ihrer Bewerbung sollen sich Kandidierende vorstellen und ihre Motivation zur Bewerbung angeben.]
	#S[Schließlich wird auf der Sitzung entsprechend den Regelungen in #at(<par:beschlüsse>) ein Beschluss über die Entsendung gefasst.]
	#S(ref: <s:entsendung-verfristet>)[Lag die Bewerbung nicht fristgemäß vor, so kann dennoch ein Beschluss zur Entsendung gefasst werden, soweit die Entsendung in der Ladung angekündigt wurde und nicht mindestens drei Mitglieder die Bewerbung aufgrund ihrer Verspätung beanstanden.]
	#S[Die Bewerbung ist in diesen Fällen anzuhängen.]
]

#abs[
	#S[Wurde in der Ladung nicht über eine Entsendung informiert, kann auf einer Sitzung dennoch ein Beschluss zur Entsendungen mit einer Mehrheit von zwei Dritteln der anwesenden Mitglieder gefasst werden.]
	#S[Bewerbungen können in diesem Fall auch auf der Sitzung erfolgen.]
	#S[Die Regelung nach #at(<s:entsendung-verfristet>) ist nicht anwendbar; alle Bewerbungen werden als gültig angesehen.]
]

#abs[
	#S[Liegen mehr Bewerbungen als Entsendungen vor, hat eine Wahl zu erfolgen.]
	#S[Vor einer Wahl dürfen sich die Kandidierenden kurz vorstellen.]
	#S[Jede Delegation hat so viele Stimmen wie zu entsendende Positionen zu besetzen sind.]
	#S[Gewählt ist, wer die meisten Stimmen erhält und jeweils mindestens von der Hälfte der anwesenden Mitglieder eine Stimme erhalten hat.]
	#S[Bei Stimmengleichheit findet eine Stichwahl statt; bei Stimmengleichheit in der Stichwahl entscheidet das Los.]
	#S[Ist ein zweiter Wahlgang notwendig, so können sich zu diesem doppelt so viele Kandidierende stellen, wie noch Stellen zu besetzen sind, in der Reihenfolge ihrer Stimmergebnisse aus dem ersten Wahlgang.]
	#S[Stimmengleiche Kandidierende  haben gleiche Rechte.]
	#S[Können auch im zweiten Wahlgang nicht alle Sitze vergeben werden, steht es im Ermessen der Sprecherinnen und Sprecher, ob auf dieser Sitzung ein weiterer Wahlgang erfolgt; ein vierter Wahlgang ist nicht mehr möglich.]
	#S[Die gewählte Person muss die Wahl annehmen.]
	#S[Wird eine Person in Abwesenheit gewählt, so muss diese über ihre Wahl innerhalb von 72 Stunden auf schriftlichem oder geeignetem elektronischem Weg benachrichtigt werden.]
	#S[Die Wahl gilt als angenommen, wenn  die gewählte Person nicht innerhalb von 72 Stunden nach Erhalt der Benachrichtigung über die Wahl widerspricht.]
]
#abs(ref: <abs:entsendung-ende>)[
	#S[
		Eine Entsendung endet vorzeitig durch
		+ Rücktritt,
		+ Abberufung oder
		+ Wegfall des Status als Studierende oder Studierender einer Hochschule in Bayern, es sei denn, innerhalb von drei Monaten erfolgt eine erneute Immatrikulation als Studierende oder Studierender an einer Hochschule in Bayern; bis zum Ablauf dieser Frist gilt die Entsendung, soweit nicht anders beschlossen, fort.
	]
	#S[Endet die Entsendung vorzeitig, ist eine Neuentsendung auf jeder Sitzung möglich.]

]
#abs[
	#S[Die Dauer der Entsendung ist im Beschluss anzugeben.]
	#S[Fehlt eine solche Angabe, läuft die Entsendung mit Ablauf eines Jahres aus.]
	#S[Entsendungen in den Akkreditierungspool sind zeitlich unbeschränkt.]
	#S[Sie können nur nach den in #at(<abs:entsendung-ende>) aufgeführten Gründen enden.]
]
#abs[
	#S[Auf Antrag muss über eine Abberufung entschieden werden.]
	#S[Hierzu bedarf es einer einfachen Mehrheit.]
]


#paragraf(ref: <par:go-änderung>)[Änderung der Geschäftsordnung]
#S[Eine Änderung der Geschäftsordnung erfordert eine Mehrheit von zwei Dritteln der anwesenden Mitglieder.]
#S[Eine Änderung der Geschäftsordnung in einem Umlaufverfahren nach #at(<par:umlaufverfahren>) ist ausgeschlossen.]
#S[Ein Antrag auf Änderung der Geschäftsordnung muss spätestens sieben Tage vor der Sitzung in Textform gestellt werden und ist andernfalls von der Abstimmung ausgeschlossen.]
#S[Der Antrag soll begründet werden.]
#S[Der Antrag ist sämtlichen Mitgliedern unverzüglich im Wortlaut mitzuteilen.]



#teil[Schlussbestimmungen]

#paragraf[Inkrafttreten]
Diese Geschäftsordnung tritt am 23.~Juli~2023 in Kraft.
