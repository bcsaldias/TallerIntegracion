# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

news_items = NewsItem.create([
				{ title: 'Messi, loco por el Barça' , 
				  created_at: '2017-03-11 11:54:40',
				  lead: 'La apasionada celebración del argentino con la afición, compañeros y técnicos es un gran síntoma en clave de renovación', 
				  body: "Son muchas las imágenes que circulan de la apasionada celebración de Leo Messi con los aficionados tras el gol de Sergi Roberto, algunas captadas por profesionales y otras grabadas por los propios seguidores. Con el paso de las horas van saliendo más videos y fotografías, desde distintos ángulos, y siempre se aprecia un nuevo detalle: la mano en el escudo del FC Barcelona, el rostro desencajado, la gorra de un aficionado en la mano, el abrazo con un espontáneo, el grito, el éxtasis... Nunca se le había visto tan desatado. Y la conclusión a la que todo el mundo llega es que se trata de una demostración de amor al Barça sin igual, una declaración improvisada, sin la voluntad de demostrar nada en un momento de negociación con el club por la renovación. Solo era un Messi eufórico y natural. Y esa precisamente es la mejor señal.

Los rectores del clubs ven la escena como un gran síntoma. En clave de renovación se interpreta su actitud como la de un jugador implicadísimo en el proyecto del FC Barcelona y con ganas de seguir liderándolo más allá del 30 de junio de 2018, cuando acaba su actual contrato.

Además de la emotiva conexión con la grada, en su comportamiento con Neymar en un partido de tanta carga emocional se aprecia otro indicio para su continuidad. Le dejó lanzar el penalti del 5-1, señal de confianza absoluta en su compañero y amigo. Para eso le ficharon al brasileño y a Luis Suárez, para que le descargasen de asumir todas las responsabilidades en los partidos difíciles. Los dos están cumpliendo y eso hace sentir cómodo a Leo, muy unido a ellos en lo personal.

Cuando acabó su celebración con la grada, al primer jugador que buscó fue al propio Neymar, que se encontraba junto a Sergi Roberto. Sabía que el brasileño había sido el líder en el tramo final de la remontada.Y tras felicitar al autor del 6-1 prosiguió un recorrido feliz, pasando por los brazos de Luis Enrique, durante varios segundos y en dos ocasiones, además de asentir tras unas palabras que Unzué le decía al oído."}, 

				{ title: 'Así celebró Shakira las hazañas del Barcelona en la Champions League' , 
				  created_at: '2017-03-09 12:03:00',
				  lead: 'Shakira compartió en las redes sociales el momento en que el celebró la victoria del Barcelona en el épico partido de la Champions League.', 
				  body: "Shakira no dejó pasar por alto uno de los momentos históricos del Barcelona, el equipo de fútbol español donde juega su pareja Gerard Piqué. A través de las redes sociales, la interprete de 'Chantaje' subió dos videos donde se le nota eufórica por la victoria del Barcelona.

El partido de la Champions League fue un hecho épico cuando el Barça remontó al PSG en los últimos siete minutos del partido dando lugar al equipo de Piqué de seguir dentro de la competición de clubes de Europa. Esta histórica remontada terminó con un marcador final de 6-1, con el cual el Barcelona pasa a cuartos de final."}, 


				{ title: 'Pizzi visita Ingeniería PUC' , 
				  created_at: '2017-03-10 22:21:29',
				  lead: 'La visita del técnico argentino, probablemente su última aparición pública antes del trascendental partido eliminatorio contra Argentina del 23 de marzo en Buenos Aires.', 
				  body: 'El próximo lunes 13, a las 13.00 en el auditorio Andrónico Luksic del Campus San Joaquín de la Universidad Católica, el ex jugador del Barcelona y actual entrenador de la selección chilena, Juan Antonio Pizzi, dará inicio a la temporada 2017 del Plan Deportivo de Ingeniería UC, liderado por quinto año consecutivo por Harold Mayne-Nicholls, ex presidente de la ANFP. La visita del técnico argentino, probablemente su última aparición pública antes del trascendental partido eliminatorio contra Argentina del 23 de marzo en Buenos Aires, se suma a la de reconocidos deportistas y figuras del fútbol que han compartido anteriormente con los  futuros ingenieros, como Manuel Pellegrini, Dunga, Carlos “Pibe” Valderrama y Tomás González, entre otros.'}, 

				{ title: 'Star Wars' , 
				  lead: '', 
				  body: '0'}, 


			])
