#set text(dir: rtl, font: "David Libre", size: 12pt, hyphenate: false)
#set par(justify: true)
#set page(
	paper: "a4",
	numbering: "1 / 1"
)

#set heading(numbering: "1.")
#set outline(indent: auto)
#set quote(block: true)
#set smartquote(enabled: true)

// LTR footnotes in RTL document
#show footnote.entry: set text(dir: ltr)
#set footnote.entry(separator: text(dir: ltr)[#line(length: 30%, stroke: 0.5pt)])

// Default dark mode colors
#let colors = (
	page: color.black,
	text: color.white,
	link: rgb(255, 127, 255),
	line: color.white,
)

// True = switch to light mode
#if true {
	colors = (
		page: color.white,
		text: color.black,
		link: rgb(0, 0, 191),
		line: color.black,
	)
}

// Set colors
#set page(fill: colors.page)
#set text(fill: colors.text)
#show link: set text(colors.link)
#show ref: set text(colors.link)
#show outline.entry: set text(colors.link)
#show footnote: set text(colors.link)
#set line(stroke: colors.line)

// Better quotes
#show quote: it => block(spacing: 1.2em, stroke: (right: colors.line))[
	#block(inset: (right: 1.2em, left: 1.2em))[#it.body
		#if it.attribution != none [
			(#it.attribution)
		]
	]
]

#align(center)[
	#text(18pt, weight: "bold")[
"5 ראיות לקיום אלוהים", "ראיה 1: סיבת היקום" - ביקורת
		#text(fill: red)[
טיוטה ב'
		]
	]

	איתן קאופמן
	(AKA Kaup) - #link("mailto:ethan.kauf736@gmail.com")

	This work is licensed under #link("https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1")[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International]
]

#outline(title: [תוכן העניינים])

#pagebreak()

= הקדמה

#strong[
שימו לב: זוהי גרסת טיוטה. עשויות להיות כאן טעויות רבות. במידה ונמצאה טעות, בבקשה תיידעו אותי לגביה.
]

במאמר זה אציג ביקורת על הספר "ראיות לקיום אלוהים" שנכתב על ידי שמעון מאיר (מכאן ואילך מאיר), פרק "ראיה 1: סיבת היקום" (עמודים 29 עד 59). הפרק זמין בחינם בתור ספר מוקלט
#footnote[https://www.youtube.com/watch?v=ib09WS9Mdxc]
#box[
וpdf
]
#footnote[https://drive.google.com/file/d/19dmk9dojlUlmq9Pr5sfXXJEOu8_gzyci/view].
במאמר זה לא תמצאו הוכחה שאלוהים לא קיים, אלא רק הפרכה לטיעון הקוסמולוגי שאלוהים כן קיים
#footnote[https://en.wikipedia.org/wiki/Cosmological_argument].
לצורך דיון, אנו מכירים בלוגיקה קלאסית
#footnote[https://en.wikipedia.org/wiki/Classical_logic]
וראליזם
#footnote[https://en.wikipedia.org/wiki/Philosophical_realism]
במידה שתואמת לספר המבוקר.

לאורך המאמר אתייחס לשני סוגי מודליות
#footnote[https://en.wikipedia.org/wiki/Modality_(linguistics)]\;
לוגיקה ופיזיקה. טענות לוגיות בהכרח נכונות פיזיקלית, אך טענות פיזיקליות לא בהכרח נכונות לוגית
#footnote[https://en.wikipedia.org/wiki/Metaphysical_necessity],
לדוגמה:
- פיזיקלית, בעלי חיים ששורדים ללא אנרגיה הם בלתי אפשריים, אך לוגית אפשריים.
- פיזיקלית, כדור הארץ חייב להסתובב סביב השמש, אך לוגית הוא יכול להישאר במקום.
- לוגית, דבר לא יכול להתקיים ולא להתקיים בו זמנית #footnote[https://en.wikipedia.org/wiki/Law_of_noncontradiction], ולכן גם פיזיקלית.
- לוגית, משהו יכול להתקיים או לא להתקיים #footnote[https://en.wikipedia.org/wiki/Law_of_excluded_middle], ולכן גם פיזיקלית.

פעמים רבות אשתמש במונח "מטאפיזיקה" כמעט כמו תחום נוסף שכולל מה שלוגי אך לא פיזיקלי. אך, "מטאפיזיקה" רק מרצה נוחות לשונית; היא מארחת ישויות לא פיזיקליות, עולמות אפשריים, הדברים המעצבים את התחום הפיזיקלי (כמו חוקי הפיזיקה), וכדומה. במקום להגיד "עובדה לוגית אך לא פיזיקלית", אגיד "עובדה מטאפיזיקלית". מאחר ולא גילינו מידע מטאפיזיקלי אמפירי, כלומר ידע אפוסטריורי, רוב השיחות על דברים מטאפיזיקליים (כולל האחת הזו) מתבססות על טענות אפריוריות
#footnote[https://en.wikipedia.org/wiki/A_priori_and_a_posteriori],
אולם כאלו שבאופן שגוי קובעות עובדות מטאפיזיקליות על בסיס מודליות פיזיקלית, ולכן הן לא משכנעות.

"היקום" דורש הגדרה. עצם כך שניתן לתת לו אפיונים משל עצמו, כמו נקודת התחלה וסיבה לקיומו, הופך אותו לנושא. באופן שתואם לספר, היקום:

/ מורכב: ממה שלא ניתן להסביר לפי חוקי הפיזיקה; המרחב, הזמן וחוקי הפיזיקה עצמם.
/ כולל: את מה שניתן להסביר לפי חוקי הפיזיקה; מצבם הנוכחי של הדברים הפיזיקליים.

דבר הוא פיזיקלי אם ניתן להסביר אותו לפי חוקי הפיזיקה, והוא מטאפיזיקלי אם לא ניתן כי הם נוגדים או לא מספקים. לדוגמה, חוקי הפיזיקה לא יכולים לעזור לנו להסביר את נוכחותם של חוקי הפיזיקה עצמם (בעקבות סתירה שנובעת מכללי סיבתיות פיזיקלית לפיהם דבר לא יכול להוות בעצמו את סיבתו, ומלכתחילה חוקי הפיזיקה מתייחסים לשינוי מצבם של דברים ולא יצירתם), ולכן הם מטאפיזיקליים, ההסבר להם אינו פיזיקלי, ולא ניתן להניח שהם פועלים לפי מודליות פיזיקלית.

#pagebreak()

= סקירה

== יש סיבה

=== קביעת עיקרון הסיבתיות על היקום

#quote(attribution: [עמודים 30, 31])[
[...] ההנחה הבסיסית שלכל דבר שאנו רואים סביבנו יש סיבות מדויקת לכך שהוא בדיוק כפי שהוא, נכונה בנוגע לכל מה שסביבי ובעצם לכל דבר. הנחה זו נקראת: עקרון הסיבתיות. כלומר שהמציאות פועלת באופן של סיבה ותוצאה. בעיקרון זה יש הכללה אמפירית המבוססת על הניסיון היומיומי והמדעי שלנו, וביסודו ישנה אינטואיציה חזקה שלפיה לא ייתכן ש"יש" יופיע מתוך "אין". [...] אם יש סיבה מדויקת לקיומו של כל פרט שהחל להיות בעולם, נדמה שגם היקום כולו צריך סיבה לקיומו.
]

בחלק זה נקבע על היקום עיקרון הסיבתיות
#footnote[https://en.wikipedia.org/wiki/Principle_of_sufficient_reason],
שהוא חוק פיזיקלי לפיו כל דבר בעל התחלה דורש סיבה לקיומו. קביעה זו שגויה, הרי היקום מטאפיזיקלי, לוגית דבר יכול להתקיים ללא סיבה, והכרחיות פיזיקלית לא מובילה להכרחיות לוגית. חד-הכיווניות הזו עשויה להישמע יותר אינטואיטיבית עם דוגמה שכוללת חוק פיזיקלי אחר: כוח המשיכה נקבע פיזיקלית ולא לוגית, לכן לא ניתן לטעון שהוא בהכרח פועל על היקום.

=== שלילת האינסוף מהתחום הפיזיקלי

#quote(attribution: [עמוד 37])[
התוצאה היא שאנו ניצבים בפני סתירה: מצד אחד כל החדרים מלאים, אך מצד שני תמיד יהיו חדרים פנויים לאינסוף אורחים.
]

זו למעשה סתירה שנוצרה עקב תיאור מסולף של מלון הילברט
#footnote[https://en.wikipedia.org/wiki/Hilbert%27s_paradox_of_the_Grand_Hotel]
ולא בעקבות רעיון האינסוף או יישום פיזיקלי שלו. במלון הילברט לא "כל החדרים מלאים", אלא יש "אינסוף חדרים מלאים" ו-"אינסוף חדרים פנויים", שביחד שווים לקיבולת המלון; אינסוף חדרים, ולכן אין סתירה.

#quote(attribution: [עמוד 37])[
אך גם אם במקצוע המתמטיקה אפשר לעסוק באינסוף ולהבין אותו במגוון אופנים, במציאות הממשית אנו מגיעים לאַבסוּרד, כלומר למצבים שאינם מתיישבים עם ההיגיון ועם השכל הישר.
]

האבסורד במלון הילברט נוצר בעקבות הניסיון להציב אינסוף בין שתי נקודות (הפקיד לא באמת מסוגל להגיע בעצמו לכל חדר, אחרת יש סוף לאינסוף). לכן, יישום פיזיקלי של אינסוף חסר נקודת התחלה או סוף לא נשלל.

=== קביעת המפץ הגדול כנקודת התחלת היקום

#quote(attribution: [עמודים 40, 41])[
מתברר שהיקום הוא לא אינסופי, אלא הזמן והמרחב עצמם הופיעו בנקודה בודדת בעבר. מסקנה שהפכה לקונצנזוס מדעי וקיבלה את הכינוי "המפץ הגדול". על פי תאוריית המפץ הגדול, החומר והאנרגיה ביקום כולו הופיעו מנקודה בודדת בעבר לפני כ-13.8 מיליארד שנים. [...] למיטב הידע המדעי, לזמן ולמרחב שבהם אנו חיים הייתה התחלה. היקום החל להתקיים.
]

תאוריית המפץ הגדול מסבירה את הארגון של היקום (לדוגמה, למה הגלקסיות מתרחקות אחת מהשנייה), ולא שלזמן והמרחב עצמם נקודת התחלה. לדוגמה, לפני המפץ הגדול יכל להיות ארגון אחר של היקום שהסתיים במפץ הגדול שהוביל לארגון הנוכחי. לפני הארגון הקודם היה ארגון נוסף שהוביל אליו, וכן הלאה, לנצח, רגרסיה אינסופית.

=== שלילת היקום כעובדה גסה

#quote(attribution: [עמוד 45])[
כאשר אנו מסיקים שסוקרטס הוא בן תמותה, אנו עושים זאת על בסיס ההנחות שכל בני האדם הם בני תמותה ושסוקרטס הוא אדם. היסק זה הוא רציונלי מפני שההנחות הן אמיתיות והמסקנה תקפה מבחינה לוגית. אבל אם ייתכנו עובדות גסות, איננו צריכים בכלל הנחות אמיתיות והיסקים לוגיים. אנו יכולים להניח שסוקרטס הוא בן תמותה כעובדה גסה על המציאות, או אפילו להניח שהמסקנה ההפוכה שסוקרטס אינו בן תמותה גם היא עובדה גסה על המציאות. אם ייתכנו עובדות גסות, אז ההיסקים שלנו כבר אינם תקפים, ואי אפשר לסמוך על החשיבה שלנו כשאנחנו רוצים להגיע להסברים הטובים ביותר. כלומר, הטענה שהופעת היקום היא עובדה גסה שאינה צריכה סיבה חורגת מהלוגיקה האנושית, ולכן קשה מאוד לקבלה כטענה אמיתית.
]

הטיעון פה אינו ברור במיוחד. ייתכן והאנלוגיה היא בין להניח ש"סוקרטס הוא בן תמותה" כעובדה גסה
#footnote[https://en.wikipedia.org/wiki/Brute_fact]
לבין להניח ש"היקום קיים" כעובדה גסה. קודם כל, אף אחד לא מניח שהיקום עובדה גסה, אלא רק מעלה את הרעיון כאפשרות. אני מסכים שאין לנו הוכחה עבורה ולכן אין זה רציונלי להאמין בה, אך בתור אפשרות היא רציונלית לחלוטין, מאחר והאנלוגיה המדוברת לא סימטרית; ידוע לנו שבהכרח ניתן להסביר את ההנחה "סוקרטס הוא בן תמותה" (לדוגמה, בעזרת הידע שלנו בביולוגיה), ולכן הטענה שלא ניתן להסביר אותה (כלומר, שההנחה עובדה גסה) אינה רציונלית, הרי היא מכחישה את המדע, ופונדמנטלית את עיקרון הסיבתיות. אך, לא ידוע לנו שבהכרח ניתן להסביר את ההנחה "היקום קיים", מאחר ואין לנו סיבה להאמין שיש לה הסבר (עיקרון הסיבתיות פיזיקלי, בזמן שהיקום מטאפיזיקלי).

לגבי תקופתן של עובדות גסות, לאחר קריאות רבות עדיין לא הצלחתי להבין איך הדוגמה מראה שאנו יכולים להניח את ההפוך. אנו יכולים להבחין במשהו בלי לדעת את הסברו, אך עדיין לדעת די טוב שהוא נכון, כי נכונותו מוצבת ממש לפנינו. אם היינו מניחים שקיומו של היקום עובדה גסה, איך לפיכך יכולנו להניח שהיקום לא קיים? אם לצד היתרה בחשבון הבנק שלי מופיע אפס, והייתי מניח מטיפשותי שהמספר עובדה גסה, הייתי יכול במקום להניח שמוצג שם מספר אחר?

=== שלילת יקום הכרחי וקביעתו קונטינגנטי

#quote(attribution: [עמוד 46])[
אני, וגם את ואתה, כולנו יצורים תלויים. קוֹנְטִינְגֶנְטִיִּים. יכולנו להתקיים, ובמידה רבה יכולנו לא להתקיים.
]

אינדטרמיניזם
#footnote[https://en.wikipedia.org/wiki/Indeterminism]
בתור הנחת יסוד.

#quote(attribution: [עמודים 47, 48])[
[...] מכיוון שהיקום אדיר בגודלו מעבר לכל דמיון, הרעיון שהוא הכרחי נשמע מושך, אבל מחשבה מעמיקה יותר תביא למסקנה שיש סיבות טובות לחשוב שאין זה כך. [...] גילו המופלג, גודלו ומורכבותו האדירה של היקום אינם משנים דבר בנוגע לשאלה מדוע הוא קיים. היקום כולו נותר קונטינגנטי ועדיין צריך הסבר.
]

איני רואה למה גודלו של היקום יכול להוות סיבה להכרחיותו, ולכן לא מבין למה הוחלט להתייחס לטענה הלא קוהרנטית הזו. אך, לקבוע לפיכך שהיקום קונטינגנטי
#footnote[https://en.wikipedia.org/wiki/Contingency_(philosophy)]
זו דילמה שקרית
#footnote[https://en.wikipedia.org/wiki/False_dilemma],
הרי האפשרות שהיקום הכרחי לא נשללה.

#quote(attribution: [עמוד 48])[
כל מה שהחל להתקיים דורש הסבר לקיומו, ומה שהחל להתקיים אינו יכול להיות הכרחי. ומיטב הידע המדעי מצביע על כך שהיקום אינו יוצא דופן מבחינה זו.
]

לפי דעתי, על בסיס "מה שהחל להתקיים אינו יכול להיות הכרחי", הכוונה היא להוסיף לצד עיקרון הסיבתיות מעין "עיקרון קונטינגנטיות". כבר הבהרתי מקודם שמודליות פיזיקלית אינה מספקת להסקה מטאפיזיקלית, אך בנוסף לכך, מאיר טועה לגבי היות הדברים ביקום קונטינגנטיים: מאחר וזה אפשרי שהיקום הכרחי $P_1$, ובגלל שזה אפשרי שהיקום דטרמיניסטי
#footnote[https://en.wikipedia.org/wiki/Determinism]
$P_2$, אז זה אפשרי שהדברים ביקום הכרחיים גם הם $Q$, כלומר, אנחנו אפילו לא יודעים האם הדברים ביקום קונטינגנטיים, ולכן מלכתחילה האינדוקציה חסרת ביסוס.

=== שלילת רגרסיה אינסופית

#quote(attribution: [עמוד 50])[
ההנחה שהיו גורמים פיזיקליים למפץ הגדול מניחה גם שהיו אירועים בזמן ובמרחב שקדמו למפץ הגדול. ואם לא הופיע אחד מהם מתישהו יֵש מאַיִן, אז כל שנותר לנו להניח הוא שהייתה סיבה פיזיקלית לסיבה של המפץ הגדול. וסיבה פיזיקלית לסיבה של הסיבה של המפץ הגדול, וכך הלאה לנצח. כלומר, אינסוף סיבות אחורה בזמן, שהובילו בסופו של דבר ליצירת אותו גנרטור יקומים שיצר את היקום שלנו. [...] אך כפי שעזר לנו להבין הפקיד החרוץ בקבלה של המלון האינסופי, אי אפשר לקבל את קיומו של אינסוף ממשי מכיוון שהוא מוביל אותנו לאבסורד ולמצבים שסותרים כל היגיון ושכל ישר.
]

מאיר מנסה להוכיח שרגרסיה אינסופית
#footnote[https://en.wikipedia.org/wiki/Infinite_regress]
בלתי אפשרית $Q$ כי ליקום נקודת התחלה $P$, על בסיס כך שאם ליקום נקודת התחלה $P$ אז רגרסיה אינסופית בלתי אפשרית $Q$, מבלי להוכיח שליקום נקודת התחלה $P$ (הנחת המבוקש
#footnote[https://en.wikipedia.org/wiki/Begging_the_question]);
בחלק בו מאיר שלל את האינסוף מהיקום הוא הניח נקודת התחלה וסוף, ועכשיו הוא משתמש במסקנה שיצר כדי להראות שיש נקודת התחלה ("אינסוף סיבות אחורה בזמן, שהובילו בסופו של דבר..."). "ליקום נקודת התחלה" $P$ ↔ "אין רגרסיה אינסופית" $Q$. הנקודה היא שללא נקודת התחלה אין שום כשל לוגי גלוי בהצבת אינסוף לפני נקודת הזמן הנוכחית.

בנוסף, גם אם ליקום נקודת התחלה, אפשר לצאת מהתחום הפיזיקלי ולטעון שלפני הייתה רגרסיה אינסופית של יקומים, כאשר כל יקום בסיומו התחיל את היקום הבא בדרכים מטאפיזיקליות.

=== מסקנה סופית שליקום סיבה

#quote()[
עד כה ניסינו לתת חמישה הסברים לקיומו של היקום, והסקנו שכולם הסברים חלשים מדי, שאינם מתיישבים עם השכל הישר:
1. לא ייתכן שמשהו יופיע מכלום.
2. הסבר לפרטים אינו פוטר מהסבר למכלול.
3. עובדות גסות אינן מספקות הסבר מספק.
4. היקום הוא אפשרי ולא הכרחי.
5. דמיון על שרשרת סיבות נצחית שקדמה למפץ הגדול רק מחזירה אותנו לאבסורד שבאינסוף. (עמוד 51)
]

כתגובה:
+ עיקרון הסיבתיות הינו חוק פיזיקלי שמצבו המטאפיזיקלי לא ידוע, כי לוגית אינו מוכרח.
+ מסכים (הפרטים; מצב תכולת היקום. המכלול; היקום).
+ עובדות גסות לפי הגדרה לא מספקות הסבר, שהוא מתבקש פיזיקלית, לא לוגית.
+
	- דלימה שקרית בה היקום קונטינגנטי כי אין הוכחה להכרחיותו.
	- הנחה חסרת בסיס שהיקום אינדטרמיניסטי, ולכן תכולתו והוא בעצמו קונטינגנטי.
+
	- המפץ הגדול לא בהכרח מסמל את נקודת התחלת היקום.
	- הנחת המבוקש בה היקום לא אינסופי $Q$, כי יש לו נקודת התחלה $P$, כי הוא לא אינסופי $Q$.
	- גם אם ליקום נקודת התחלה, ניתן להציב רגרסיה אינסופית ומטאפיזיקלית של יקומים.

== והיא אלוהים

=== סיבה הכרחית

#quote(attribution: [עמוד 52])[
[...]אם ידוע שקיימים דברים הכרחיים כמו חוקי המתמטיקה והלוגיקה, אז ייתכנו גם דברים הכרחיים אחרים, שאינם רק מושגים מופשטים. כלומר, קיים עוד הסבר להתחלת היקום: משהו הכרחי גרם לו להתחיל. אם מיטב המדע מצביע על כך שהזמן והמרחב של היקום החלו להתקיים, ואם שרשרת של סיבות אינסופית לאחור אינה אפשרית, אז חייבת להיות סיבה ראשונה שלא החלה להתקיים אלא תמיד הייתה וממנה החלה שרשרת הסיבות; סיבה ראשונה שעצם טבעה הוא הכרחי, ולכן אינה צריכה סיבה בעצמה.
]

"הכרחיות" היא מילה מודלית
#footnote[https://en.wikipedia.org/wiki/Modal_word],
והיא תלויה במודליות כמו פיזיקה ולוגיקה. הטענה "חוקי המתמטיקה והלוגיקה הכרחיים" חסרת משמעות, כי הכוונה היא שהם הכרחיים לפי חוקי המתמטיקה והלוגיקה; הכרחיים לפי עצמם, אך כל דבר "מעצם טבעו" בלבד הכרחי, הודות לחוק הזהות
#footnote[https://en.wikipedia.org/wiki/Law_of_identity].
כאשר טוענים שמשהו הכרחי, לרוב הכוונה היא להכרחי לפי מודליות מסוימת מעליו. דרך יותר ברורה לתאר את חוקי הלוגיקה והמתמטיקה היא "אקסיומות", לחלופין "עובדות גסות", כי פשוט איננו מסוגלים לייחס להם הסבר רציונלי מבלי להכתיר אותם כעובדות גסות, הרי הסבר רציונלי עובד רק בתוך התחום הרציונלי שהם בעצמם קובעים.

בפשטות, עצם טבעה של טענה הכרחית מילולית מחייב אותה לדרוש סיבה (ולא הפוך), אחרת היא עובדה גסה, שמאיר שלל כרעיון מקודם. לכן, בצירוף להנחות של מאיר (אין עובדות גסות ועיקרון הסיבתיות לוגי):

- הסיבה ראשונית:
	- התחילה ← חייבת סיבה (עיקרון הסיבתיות) ← לא ראשונית (סתירה)
	- לא התחילה ← לא חייבת סיבה ← יכולה להיות ראשונית:
		- קונטינגנטית ← עובדה גסה כי גם ראשונית (סתירה)
		- הכרחית ← חייבת סיבה ← ראשונית (סתירה)

כלומר, הדילמה היא בין סיבה גסה וראשונית (ברמה של חוקי הלוגיקה), לבין סיבה הכרחית שתלויה בסיבות אחרות (על בסיס חוקי הלוגיקה). לפי הבנתי מאיר בחר במקרה הראשון, אולם בשני המקרים אין צורך בסיבת ביניים והיקום יכול להסתדר לבד.

יש דרך אחרת לפרש את הטיעון: "אם רגרסיה אינסופית וסיבה ראשונית קונטינגנטית (גסה) לא אפשריות, האפשרות שנותרת היא סיבה ראשונית הכרחית, והטיעון הזה בעצמו הוא ההכרחיות שהיא דורשת (אין הכרחיות נוספת ולא גלויה)". הכשל הוא כרגיל מעבר שגוי בין פיזיקה ללוגיקה; אם היקום קונטינגנטי (כפי שמאיר מאמין) הטיעון מתפצל מהמודליות הלוגית בו היקום קונטינגנטי לתוך המודליות הפיזיקלית של היקום בו הוא "הכרחי לפי עצמו", לכן הסיבה הכרחית רק פיזיקלית ולא לוגית כפי שמסקנת הטיעון עשויה להישמע. בקצרה, יקום קונטינגנטי לוגית יכל לא להתקיים, משמע גם סיבתו.

=== סיבה שחורגת מעיקרון הסיבתיות

#quote(attribution: [עמוד 54])[
[...] מכיוון שהסיבה הראשונית נמצאת מחוץ לזמן, היא גם חורגת באופן יחיד ומיוחד מעקרון הסיבתיות.
]

אני מסכים שהסיבה חורגת מהעיקרון, הרי היא לא "התחילה", אך כמובן אין סתירה בייחוס סיבה לעובדה מחוץ לזמן בכל זאת, הרי עיקרון הסיבתיות הוא חד-כיווני (\u{2190}), לא דו-כיווני (\u{2194}). לדוגמה, הנוסחה $2 + 2 = 4$ לא תלויה בזמן, ובכל זאת לתוצאתה סיבה מתמטית.


=== סיבה יחידית

#quote(attribution: [עמוד 54])[
כמו כן, ההיסק שלסיבה הראשונה אין סיבה שחוללה אותה מוביל למסקנה שקיימת אך ורק סיבה ראשונית אחת. לא ייתכן שקיימות כמה סיבות ראשונות, כי אנו זקוקים לסיבה שהיא ראשונה וחסרת סיבה לחלוטין.
]

לפי הגדרת הסיבה הראשונית אין סיבה לפניה, אולם ניתן לדמיין כמה סיבות ראשוניות מקבילות, כמו מספר ישויות נפרדות שביחד יצרו את היקום.

=== סיבה בעלת תודעה

#quote(attribution:  [עמוד 56])[
אי אפשר להסביר את ההתחלה של הזמן והמרחב של היקום באמצעות הסבר טבעי. לפני שהסיבה הראשונית פעלה להתחיל את היקום לא היה שום דבר מלבדה, ובטח שלא חוקי טבע ותנאים פיזיקליים הנדרשים בשביל שנוכל להשתמש בהסבר טבעי. אי אפשר להסביר את התחלת היקום בשרשרת אירועים טבעית, כי עוד לא היו בכלל אירועים, ועוד לא היה טבע.
]

אם לחוקי הטבע (לחלופין, חוקי הפיזיקה) הסבר, הסבר זה אינו פיזיקלי, אחרת היה סותר סיבתיות פיזיקלית שלא מאפשרת לדבר ליצור את עצמו, ועל כך הסכמתי בהקדמה. אך, "אירועים" בכללי בהחלט יכולים להתקיים "מחוץ" או "לפני" היקום. לדוגמה, ייתכן שזמן "תמיד היה, לא הייתה לו התחלה ולכן אין לו סיבה" והיו אירועים לפני היקום (לא ספציפית אינסוף), יכולים להיות יקומים מקבילים עם אירועים נפרדים משלהם, ומלכתחילה אפשרי שההגדרה ל"אירוע" לא תלויה בזמן, אולם במאמר זה לא אחתור יותר לפילוסופיית המרחב והזמן
#footnote[https://en.wikipedia.org/wiki/Philosophy_of_space_and_time].

#quote(attribution:  [עמוד 56])[
על כן, ההתחלה של היקום יכולה להיות מוסברת רק באמצעות הסבר אישי. בחירתך להרתיח מים לקפה יכולה להיות תוצאה של התמכרות לקפה או הרגל של שנים, כלומר קבועה מראש. אבל היא גם יכולה להיות בחירה חופשית שלך להחליט לפנק את עצמך. כך גם הסיבה הראשונית לקיומו של היקום היא ההסבר האישי להופעתו. היקום הופיע כתוצאה אישית של בחירה חופשית. ורק ישויות בעלות תודעה יכולות לרצות לבחור ולבצע פעולה מסוימת.
]

אולם בחירה חופשית תואמת למעבר בין סיבה הכרחית ליקום קונטינגנטי, היא סוג של אירוע אליו מאיר התנגד לפני רגע כדבר שניתן ליישם מחוץ לזמן. על המסקנה שיש הסבר אישי אפשר למתוח עוד ועוד ביקורות, כי הטיעון בקושי מורכב, והסבר אישי מוגדר באופן כללי מדי. לדוגמה, ייתכן ותודעה (חוויה סובייקטיבית וכדומה) הינה תופעה שיסודה פיזיקלי, או שבחירה חופשית היא עובדה גסה.

=== מסקנה סופית שיש אלוהים

#quote()[
#show terms.item: set text(weight: "thin") // Disable terms list bold weight
אז החומר ההכרחי שהוא סיבת היקום צריך להיות:
/ א.: יחידי
/ ב.: לא פיזיקלי
/ ג.: נצחי (נפרד מהזמן)
/ ד.: בעל כוחות אדירים מעל לכל דמיון
/ ה.: בעל תודעה ועצמאות להחליט ליצור את היקום ברגע מסוים בעבר (עמוד 57)
]

כתגובה:

+ (א.) אפשרי במקום שכמה דברים נפרדים יצרו את היקום במקביל.
+ (ב.) נכון לצורך הדיון, מאחר ודבר פיזיקלי לא יכול ליצור את עצמו.
+ (ג.) מרומז שימוש דו-כיווני שגוי בעיקרון הסיבתיות (למרות שמלכתחילה לא מוכרח).
+ (ד.) לא הרחבתי על נקודה זו כי לפי דעתי היא חסרת משמעות ומאוד סובייקטיבית.
+ (ה.) בחירה חופשית נוגדת את דבריו של מאיר מהיותה אירוע שגם עשוי להיחשב עובדה גסה, ויתכן שתודעה היא פיזיקלית מטבעה.

== נספח א': תכלית היקום

#quote(attribution: [עמוד 58])[
משחר ההיסטוריה בני אדם עמלו רבות במטרה להמציא מכונות וליצור אותן [...] כולן מיוצרות בשביל לתעל את כוחו של האדם. כלומר, לכולן יש תכלית שלשם השׂגתה הושקעו זמן ומשאבים רבים. [...] אם כך נכון באדם, אז קל וחומר באלוהים. אם ישות עליונה רצתה שהיקום שלנו יתקיים והתחילה מרצונה את שרשרת הסיבות שהובילה לקיומנו, אז יש לנו לא רק סיבה, אלא גם תכלית. [...] תכלית לכלל מעידה גם על תכלית של הפרט — כפי שכל בורג פשוט בחללית חיוני לתפקודה ומשרת את התכלית הכוללת שלצורכה נבנתה החללית, כך יש לעצם קיומי משמעות ותכלית כלשהי. גם אני הקטן, חלק מהיקום, ועל כן סביר שגם לי יש חלק בתכליתו.
]

אלוהים לא היה חייב ליצור את היקום עם תכלית. להאניש את אלוהים ולקבוע שנבראנו בצלמו הוא רעיון מעגלי, ומעבר לכך נוגד את האינטואיציה שאחריה מאיר עוקב: כוחו של אלוהים בלתי נתפס, אז למה שנוכל לתפוס את החלטתו ליצור את היקום? אלוהים יכל ליצור את היקום בטעות, אולי אפילו מבלי לשים לב. אפשרי שאלוהים התכוון ליצור את היקום, אבל לא את כל שרשרת הסיבות מגלקסיית שביל החלב, מערכת השמש שלנו, כדור הארץ והחיים עליו, עד בני האדם; כל אלו סתם קונטינגנטיים ולא לוקחים חלק בתכלית. כפי שציינת, אתה קונטינגנטי ולא הכרחי כמו בורג בחללית, אני ואתה יכולנו לא להתקיים בזמן שהעולם היה נשאר פחות או יותר אותו הדבר, מבלי להשפיע על תכליתו.