# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
# Commented and load my own data
#Refinery::Pages::Engine.load_seed


# Create image in order to be able to load in a page later
image_me_path = "#{Rails.root.join('app/assets/images/me_strocked_cut.png')}"
image_me= Refinery::Image.create :image => File.new(image_me_path)

image_road_close_path = "#{Rails.root.join('app/assets/images/road_closure-128.png')}"
image_road_close= Refinery::Image.create :image => File.new(image_road_close_path)

image_mail_path = "#{Rails.root.join('app/assets/images/message-128.png')}"
image_mail= Refinery::Image.create :image => File.new(image_mail_path)

# class fade-in used with javascript to fade in and out text
banner_html = { :default => "<img class=\"image-align-right\" data-rel=\"750x592\" title=\"Me\" src=\"%s\" height=\"284\" width=\"360\" />
                             <p class=\"fade_in\">If you want different results, don't do always the same.<br>
                               <em class=\"font-size-small\">Albert Einstein</em></p>
                             <p class=\"fade_in\">If you give a hungry man a fish, you nourish him a day. If you teach him to fish, you nourish his whole life.<br>
                               <em class=\"font-size-small\">Lao-Tsé</em></p>
                             <p class=\"fade_in\">It is always possible, when one wants it.<br>
                               <em class=\"font-size-small\">José Luis Sampedro</em></p>
                             <p class=\"fade_in\">There is an engine more powerful than oil, electricity and atomic energy: the will.<br>
                               <em class=\"font-size-small\">Albert Einstein</em></p>
                             <p class=\"fade_in\">I am not a saint, unless you think of a saint as a sinner who keeps on trying.<br>
                               <em class=\"font-size-small\">Nelson Mandela </em></p>
                             <p class=\"fade_in\">Every day we learn more and understand less. <br>
                               <em class=\"font-size-small\">Albert Einstein</em></p>
                             <p class=\"fade_in\">Choose a job you like and you won't have to work a day in your life. <br>
                               <em class=\"font-size-small\">Confucius (Chinese philosopher)</em></p>
                             <p class=\"fade_in\">We can't solve problems by thinking the same way as when we created them. <br>
                               <em class=\"font-size-small\">Albert Einstein</em></p>
                             <p class=\"fade_in\">The ignorant affirms it, the wise questions and thinks about it. <br>
                               <em class=\"font-size-small\">Aristotle</em></p>" % image_me.url,

                :es => "<img class=\"image-align-right\" data-rel=\"750x592\" title=\"Me\" src=\"%s\" height=\"284\" width=\"360\" />
                        <p class=\"fade_in\">Si buscas resultados distintos, no hagas siempre lo mismo.<br>
                          <em class=\"font-size-small\">Albert Einstein</em></p>
                        <p class=\"fade_in\">Si das pescado a un hombre hambriento, le nutres una jornada. Si le enseñas a pescar, le nutrirás toda la vida.<br>
                          <em class=\"font-size-small\">Lao-Tsé</em></p>
                        <p class=\"fade_in\">Siempre se puede, cuando se quiere.<br>
                          <em class=\"font-size-small\">José Luis Sampedro</em></p>
                        <p class=\"fade_in\">Hay una fuerza motriz más poderosa que el petróleo, la electricidad y la energía atómica: la voluntad.<br>
                          <em class=\"font-size-small\">Albert Einstein</em></p>
                        <p class=\"fade_in\">No soy un santo, a menos que pienses que un santo es un pecador que persiste en el intento.<br>
                          <em class=\"font-size-small\">Nelson Mandela </em></p>
                        <p class=\"fade_in\">Cada día sabemos más y entendemos menos.<br>
                          <em class=\"font-size-small\">Albert Einstein</em></p>
                        <p class=\"fade_in\">Elige un trabajo que te guste y no tendrás que trabajar ni un día de tu vida. <br>
                          <em class=\"font-size-small\">Confucio ( Filósofo chino )</em></p>
                        <p class=\"fade_in\">No podemos resolver problemas pensando de la misma manera que cuando los creamos. <br>
                          <em class=\"font-size-small\">Albert Einstein</em></p>
                        <p class=\"fade_in\">El ignorante afirma, el sabio duda y reflexiona. <br>
                          <em class=\"font-size-small\">Aristóteles</em></p>" % image_me.url,

                :ca => "<img class=\"image-align-right\" data-rel=\"750x592\" title=\"Me\" src=\"%s\" height=\"284\" width=\"360\" />
                        <p class=\"fade_in\">Si busques resultats diferents, no facis sempre el mateix. <br>
                          <em class=\"font-size-small\">Albert Einstein</em></p>
                        <p class=\"fade_in\">Si dónes peix a un home afamat, li nodreixes una jornada. Si li ensenyes a pescar, li nutrirás tota la vida. <br>
                          <em class=\"font-size-small\">Lao-Tsé</em></p>
                        <p class=\"fade_in\">Sempre es pot, quan es vol. <br>
                          <em class=\"font-size-small\">José Luis Sampedro</em></p>
                        <p class=\"fade_in\">Hi ha una força motriu més poderosa que el petroli, l'electricitat i l'energia atòmica: la voluntat.<br>
                          <em class=\"font-size-small\">Albert Einstein</em></p>
                        <p class=\"fade_in\">No sóc un sant, llevat que pensis d'un sant com un pecador que persisteix en l'intent. <br>
                          <em class=\"font-size-small\">Nelson Mandela </em></p>
                        <p class=\"fade_in\">Cada dia sabem més i entenem menys.<br>
                          <em class=\"font-size-small\">Albert Einstein</em></p>
                        <p class=\"fade_in\">Tria un treball que t'agradi i no hauràs de treballar ni un dia de la teva vida. <br>
                          <em class=\"font-size-small\">(Filòsof xinès)</em></p>
                        <p class=\"fade_in\">No podem resoldre problemes pensant de la mateixa manera que quan els vam crear. <br>
                          <em class=\"font-size-small\">Albert Einstein</em></p>
                        <p class=\"fade_in\">L'ignorant afirma, el savi dubta i reflexiona. <br>
                          <em class=\"font-size-small\">Aristòtil</em></p>" % image_me.url,
}

pages_array = [ {
                    :show_in_menu => true,
                    :deletable => false,
                    :link_url => "/",
                    :menu_match => "^/$",
                    :title => "Home",  # default english title
                    :title_es => "Inicio",
                    :title_ca => "Inici",
                    # Image path in next line is copied from the ui when I try to add it manually
                    :body => "<h3>My Profile</h3>
                              <ul>
                                 <li>Enthusiastic in learning new things by cooperating with projects.</li>
                                 <li>Experienced in several processes of software development as project manager, test engineer and software developer.</li>
                                 <li>\"Agile Software Development\" with \"Professional Scrum Master\" and \"Project Manager Professional (PMP) degree\". </li>
                                 <li>Good communication skills with experience in several countries. </li>
                                 <li>Sports lover: running, cycling, hiking, yoga, football, ... </li>
                                 <li>Environment responsible and an advocate for organic agriculture.</li>
                                 <li>Languages: English, German, Spanish and Catalan. </li>
                              </ul>",
                    :body_es => "<h3>Mi Perfil</h3>
                                  <ul><li>Entusiasta en aprender cosas nuevas mediante la cooperación en proyectos.</li>
                                  <li>Con experiencia en varios procesos de desarrollo de software como gestor de proyectos, control de calidad y desarrollador.</li>
                                  <li>\"Agile software development\" con título de \"Professional Scrum Master\" y \"Project Manager Professional (PMP)\".</li>
                                  <li>Habilidades de comunicación con experiencia en varios países.</li>
                                  <li>Amante del deporte: correr, ciclismo, senderismo, yoga, fútbol, ... </li>
                                  <li>Responsable con el medio ambiente y defensor de la agricultura ecológica. </li>
                                  <li>Idiomas: Inglés, Alemán, Español y Catalán. </li>
                                  </ul>",
                    :body_ca => "<h3>El meu Perfil</h3>
                                  <ul><li>Entusiasta en aprendre coses noves mitjançant la cooperació amb projectes.</li>
                                    <li>Amb experiència en diversos processos de desenvolupament de programari com a cap de projecte, enginyer de proves i desenvolupador.</li>
                                    <li>\"Agile Software Development\" amb títol de \"Professional Scrum Master\" i \"Project Manager Professional (PMP)\". </li>
                                    <li>Habilidades de comunicación con experiencia en varios países.</li>
                                    <li>Amante del deporte: correr, ciclisme, senderisme, ioga, futbòl... </li>
                                    <li>Responsable amb el medi ambient i defensor de l'agricultura ecològica. </li>
                                    <li>Idiomes: Anglès, Alemany, Espanyol i Català. </li>
                                  </ul>",
                    :banner => banner_html[:default],
                    :banner_es => banner_html[:es],
                    :banner_ca => banner_html[:ca],
                    :position_banner => 0,
                    :position_body => 1,
                    :children =>  {
                        :show_in_menu => false,
                        :deletable => false,
                        :menu_match => "^/404$",
                        :title => "Page not found",  # default german title
                        :title_es => "Página no encontrada",
                        :title_ca => "Pàgina no trobada",
                        :position_body => 0,
                        :body => "<img class=\"image-align-left\" data-rel=\"128x128\" title=\"Road closed\" src=\"%s\" height=\"128\" width=\"128\" /><h2>Upsss! Sorry, there has been a problem ...</h2><p>The page is not available.</p><p><a href='/'>Back to home</a></p>" % image_road_close.url,
                        :body_es => "<img class=\"image-align-left\" data-rel=\"128x128\" title=\"Road closed\" src=\"%s\" height=\"128\" width=\"128\" /><h2>Upsss! Lo sentimos, ha habido un problema ...</h2><p>La página solicitada no ha sido encontrada.</p><p><a href='/es'>Vuelva a la página de inicio</a></p>" % image_road_close.url,
                        :body_ca => "<img class=\"image-align-left\" data-rel=\"128x128\" title=\"Road closed\" src=\"%s\" height=\"128\" width=\"128\" /><h2>Upsss! Ho sentim, hi ha hagut un problema ...</h2><p>La pàgina sol-licitada no s'ha trobat.</p><p><a href='/ca'>Tornar a la pàgina de inici</a></p>" % image_road_close.url,
                    }
                },
                {
                    :show_in_menu => true,
                    :deletable => true,
                    :title => "Technical Skills",  # default german title
                    :title_es => "Habilidades Técnicas",
                    :title_ca => "Habilitats Tècniques",
                    :body => "<h3>Technical Skills</h3>
                             <p>Since 2005, I've been working with software development, implementing coordinating and verifying <a target=\"_blank\" title=\"https://developer.here.com/\" href=\"https://developer.here.com/\">cross platform SDK's for location based services in Nokia HERE Maps.</a></p>
                             <ul>
                             <li>I developed new features with <strong>C++</strong> for Nokia Maps SDK's.</li>
                             <li>I created test applications with <strong>Qt</strong> and a test framework with <strong>Ruby</strong>.</li>
                             <li>I am passionate about open source software and <strong>Linux OS</strong>.</li>
                             <li>Scripting skills with<strong> Bash</strong>, <strong>Python</strong> and <strong>Ruby</strong>.</li>
                             <li>Test automation and <strong>Continuous Integration</strong> with Jenkins, Hudson, Go and CruiseControl.</li>
                             <li>Agile methodologies like Scrum and Kanban. </li>
                             </ul>
                             <p>As a hobby, I do web development with <strong>Ruby on Rails</strong>. </p>
                             <ul>
                             <li><strong>JavaScript</strong> with <strong>JQuery</strong> and <strong>CooffeScript</strong>. </li>
                             <li>Design with <strong>HTML5</strong>, <strong>CSS</strong> and&#160; <strong>SASS</strong>.</li>
                             <li>Testing with <strong>RSpec</strong>, <strong>Cucumber</strong> and <strong>Capybara</strong>.</li>
                             </ul>
                             <p>Before 2005, I spent two years with ASIC design (Application-Specific Integrated Circuits)&#160; in Teschnische Universität Berlin.</p>
                             <p>And in 2003 I worked one year with programmable automation systems like Siemens S7-300 in Universitat Politècnica de Catalunya.</p>",
                    :body_es => "<h3>Habilidades Técnicas</h3>
                             <p>Desde 2005, he trabajado en el mundo del desarrollo de software, implementando, coordinando y verificando <a target=\"_blank\" title=\"https://developer.here.com/\" href=\"https://developer.here.com/\">kits de desarrollo de software (SDK) multiplataforma para los servicios basados en localización de Nokia HERE Maps.</a></p>
                             <ul>
                             <li>He implementado funcionalidades nuevas con <strong>C++</strong> para los kits de desarrollo de Nokia Maps.</li>
                             <li>He creado aplicaciones de test con <strong>Qt</strong> y un marco de test con <strong>Ruby</strong>.</li>
                             <li>Soy un apasionado del programario libre y los sistemas operativos <strong>Linux</strong>.</li>
                             <li>Scripting con <strong>Bash</strong>, <strong>Python</strong> y <strong>Ruby</strong>.</li>
                             <li>Automatización de test y <strong>\"Continuous Integration\"</strong> con Jenkins, Hudson, Go y CruiseControl.</li>
                             <li>Metodologías \"Agile\" como Scrum y Kanban.</li>
                             </ul>
                             <p>Como hobby, hago desarrollo web con <strong>Ruby on Rails</strong>. </p>
                             <ul>
                             <li><strong>JavaScript</strong> con <strong>JQuery</strong> y <strong>CooffeScript</strong>. </li>
                             <li>Diseño con <strong>HTML5</strong>, <strong>CSS</strong> y <strong>SASS</strong>.</li>
                             <li>Test con <strong>RSpec</strong>, <strong>Cucumber</strong> y <strong>Capybara</strong>.</li>
                             </ul>
                             <p>Antes de 2005, dediqué dos años a diseño de ASIC (Circuitos integrados de aplicación específica) en \"Teschnische Universität Berlin\".</p>
                             <p>En 2003 trabajé un año con autómatas programables como el Siemens S7-300 en la \"Universitat Politècnica de Catalunya.\"</p>",
                    :body_ca => "<h3>Technical Skills</h3>
                             <p>Since 2005, I've been working with software development, implementing coordinating and verifying <a target=\"_blank\" title=\"https://developer.here.com/\" href=\"https://developer.here.com/\">cross platform SDK's for location based services in Nokia HERE Maps.</a></p>
                             <ul>
                             <li>I developed new features with <strong>C++</strong> for Nokia Maps SDK's.</li>
                             <li>I created test applications with <strong>Qt</strong> and a test framework with <strong>Ruby</strong>.</li>
                             <li>I am passionate about open source software and <strong>Linux OS</strong>.</li>
                             <li>Scripting skills with<strong> Bash</strong>, <strong>Python</strong> and <strong>Ruby</strong>.</li>
                             <li>Test automation and <strong>Continuous Integration</strong> with Jenkins, Hudson, Go and CruiseControl.</li>
                             <li>Agile methodologies like Scrum and Kanban. </li>
                             </ul>
                             <p>As a hobby, I do web development with <strong>Ruby on Rails</strong>. </p>
                             <ul>
                             <li><strong>JavaScript</strong> with <strong>JQuery</strong> and <strong>CooffeScript</strong>. </li>
                             <li>Design with <strong>HTML5</strong>, <strong>CSS</strong> and&#160; <strong>SASS</strong>.</li>
                             <li>Test con <strong>RSpec</strong>, <strong>Cucumber</strong> y <strong>Capybara</strong>.</li>
                             </ul>
                             <p>Before 2005, I spent two years with ASIC design (Application-Specific Integrated Circuits)&#160; in Teschnische Universität Berlin.</p>
                             <p>And in 2003 I worked one year with programmable automation systems like Siemens S7-300 in Universitat Politècnica de Catalunya.</p>"
                },
                {
                    :show_in_menu => true,
                    :deletable => true,
                    :title => "Professional Experience",  # default german title
                    :title_es => "Experiencia Profesional",
                    :title_ca => "Experiència Professional",
                    :body => "<h3>Professional Experience</h3>
                              <span class=\"font-size-small\"><span class=\"font-size-normal\"></span>
                              </span>
                              <table>
                              <tbody>
                              <tr>
                                <th style=\"width:200px\">Time</th>
                                <th style=\"width:420px\">Position</th>
                                <th style=\"width:700px\">Responsabilities</th>
                              </tr>
                              <tr><td>June 2010 – Present</td>
                              <td>R&amp;D Senior Engineer at Nokia</td>
                              <td>
                              <ul class=\"responsabilities\"><li>Drive software development and content integration.</li>
                              <li>Implement product requirements using agile methods and tools.</li>
                              <li>Develop commercial grade software suitable for worldwide distribution.</li>
                              <li>Evaluate technical feasibility and develop implementation plan<./li>
                              <li>Break development plan into actionable engineering tasks, implement code, test and refine.</li>
                              <li>Select suitable architectures, implementation technologies, techniques and tools.</li>
                              <li>Develop and Keep documentation up-dated for all components in domain<./li>
                              </ul>
                              </td>
                              </tr>
                              <tr><td>June 2005 – June 2010</td>
                              <td>R&amp;D Engineer at Nokia</td>
                              <td><ul class=\"responsabilities\">
                              <li>Work directly with the R&D, Program and Operational teams to deliver high quality voice navigation in Nokia Maps clients.</li>
                              <li>Take accountability for successful end to end project delivery.</li>
                              <li>Work across business and technical teams to secure resource to ensure successful delivery.</li>
                              <li>Plan, communicate and coordinate the implementation of highly complex projects.</li>
                              <li>Break down complex solutions into clearly defined project deliverables.</li>
                              <li>Deliver solutions on time and within budget.</li>
                              <li>Project plan all aspects of the solution including requirements gathering, testing, release mgmt, performance testing, monitoring and production readiness review.</li>
                              <li>Proactively manage, communicate and successfully mitigate project risks.</li></ul></td>
                              </tr>
                              <tr><td>October 2003 – May 2005</td>
                              <td>Electronic Laboratory Assistant MAZ Brandenburg GmbH</td>
                              <td><ul class=\"responsabilities\"><li>Design high complex application specific integrated circuits (ASIC).</li>
                              <li>Electronic design automation with cadence.</li></ul></td>
                              </tr>
                              </tbody>
                              </table>",
                    :body_es => "<h3>Experiencia Profesional</h3>
                              <span class=\"font-size-small\"><span class=\"font-size-normal\"></span>
                              </span>
                              <table>
                              <tbody>
                              <tr>
                                <th style=\"width:200px\">Tiempo</th>
                                <th style=\"width:420px\">Posición</th>
                                <th style=\"width:700px\">Responsabilidades</th>
                              </tr>
                              <tr><td>Junio 2010 – Presente</td>
                              <td>I+D Ingeniero Senior en Nokia</td>
                              <td>
                              <ul class=\"responsabilities\"><li>Dirigir el desarrollo de software e integración de contenidos.</li>
                              <li>Implementar requisitos del producto, utilizando métodos y herramientas \"ágiles\".</li>
                              <li>Desarrollar software de calidad comercial adecuada para su distribución en todo el mundo.</li>
                              <li>Evaluar la viabilidad técnica y desarrollar un plan de implementación.</li>
                              <li>Descomponer el plan de desarrollo en tareas de ingeniería, implementar código, probar y refinar.</li>
                              <li>Seleccionar arquitecturas, tecnologías de implementación, técnicas y herramientas adecuadas.</li>
                              <li>Desarrollar y mantener documentación actualizada para todos los componentes de dominio.</li>
                              </ul>
                              </td>
                              </tr>
                              <tr><td>Junio 2005 – Junio 2010</td>
                              <td>I+D Ingeniero en Nokia</td>
                              <td><ul class=\"responsabilities\">
                              <li>Trabajar directamente con los equipos de I + D para ofrecer navegación de voz de alta calidad en los clientes de Nokia Maps.</li>
                              <li>Responsabilidad por el éxito final en la ejecución de proyectos.</li>
                              <li>Trabajar con los equipos técnicos y de negocio para asegurar los recursos y la entrega exitosa de los proyectos.</li>
                              <li>Planificar, comunicar y coordinar la ejecución de proyectos de alta complejidad.</li>
                              <li>Descomponer soluciones complejas en pequeñas tareas claramente definidas como proyectos.</li>
                              <li>Entregar soluciones a tiempo y dentro del presupuesto.</li>
                              <li>Planear todos los aspectos del proyecto incluyendo requisitos, pruebas, seguimiento, revisión y entrega.</li>
                              <li>Administrar de manera proactiva, comunicar y mitigar con éxito los riesgos del proyecto.</li></ul></td>
                              </tr>
                              <tr><td>Octubre 2003 – Mayo 2005</td>
                              <td>Asistente de laboratory electrónico en MAZ Brandenburg GmbH</td>
                              <td><ul class=\"responsabilities\"><li>Diseño de circuitos integrados para aplicaciones específicas (ASIC).</li>
                              <li>Automatización de diseño electrónico con cadence.</li></ul></td>
                              </tr>
                              </tbody>
                              </table>",
                    :body_ca => "<h3>Professional Experience</h3>
                              <span class=\"font-size-small\"><span class=\"font-size-normal\"></span>
                              </span>
                              <table>
                              <tbody>
                              <tr>
                                <th style=\"width:200px\">Time</th>
                                <th style=\"width:420px\">Position</th>
                                <th style=\"width:700px\">Responsabilities</th>
                              </tr>
                              <tr><td>June 2010 – Present</td>
                              <td>R&amp;D Senior Engineer at Nokia</td>
                              <td>
                              <ul class=\"responsabilities\"><li>Drive mobile-related software development and content integration.</li>
                              <li>Implement product requirements using agile methods and tools.</li>
                              <li>Develop commercial grade software suitable for worldwide distribution.</li>
                              <li>Evaluate technical feasibility and develop implementation plan.</li>
                              <li>Break development plan into actionable engineering tasks, implement code, test and refine.</li>
                              <li>Select suitable architectures, implementation technologies, techniques and tools.</li>
                              <li>Develop and Keep documentation up-dated for all components in domain.</li>
                              <ul class=\"responsabilities\">
                              </td>
                              </tr>
                              <tr><td>June 2005 – June 2010</td>
                              <td>R&amp;D Engineer at Nokia</td>
                              <td><ul class=\"responsabilities\">
                              <li>Trabajar directamente con los equipos de I + D para ofrecer navegación de voz de alta calidad en los clientes de Nokia Maps</li>
                              <li>Responsabilidad por el éxito final en la ejecución de proyectos.</li>
                              <li>Trabajar con los equipos técnicos y de negocio para asegurar los recursos y la entrega exitosa de los proyectos.</li>
                              <li>Planificar, comunicar y coordinar la ejecución de proyectos de alta complejidad.</li>
                              <li>Descomponer soluciones complejas en pequeñas tareas claramente definidas como proyectos.</li>
                              <li>Entregar soluciones a tiempo y dentro del presupuesto.</li>
                              <li>Planear todos los aspectos del proyecto incluyendo requisitos, pruebas, seguimiento, revisión y entrega.</li>
                              <li>Administrar de manera proactiva, comunicar y mitigar con éxito los riesgos del proyecto.</li></ul></td>
                              </tr>
                              <tr><td>October 2003 – May 2005</td>
                              <td>Electronic Laboratory Assistant MAZ Brandenburg GmbH</td>
                              <td><ul class=\"responsabilities\"><li>Design high complex application specific integrated circuits (ASIC).</li>
                              <li>Automatización de diseño electrónico con cadence.</li></ul></ul></td>
                              </tr>
                              </tbody>
                              </table>",
                },
                {
                    :show_in_menu => true,
                    :deletable => true,
                    :title => "Contact",  # default german title
                    :title_es => "Contacto",
                    :title_ca => "Contacte",
                    :body => "<h3>Contact</h3>
                              <p>Currently I am located in Berlin (Germany) but you can contact me via Email.</p>
                              <p><img class=\"image-align-left\" src=\"%s\" data-rel=\"128x128\" title=\"Mail\" height=\"22\" width=\"22\" />Send me an email <a title=\"ferrandezraul@gmail.com\" href=\"mailto:ferrandezraul@gmail.com\">ferrandezraul@gmail.com</a></p>
                              <p>Find me in&#160;<a target=\"_blank\" title=\"http://www.linkedin.com/in/ferrandezraul\" href=\"http://www.linkedin.com/in/ferrandezraul\">LinkedIn</a></p>" % image_mail.url,
                    :body_es => "<h3>Contacto</h3>
                                 <p>Actualmente resido en Berlín (Alemania) pero puedes contactarme vía mail.</p>
                                 <p><img class=\"image-align-left\" src=\"%s\" data-rel=\"128x128\" title=\"Mail\" height=\"22\" width=\"22\" />Envíame un mail a <a title=\"ferrandezraul@gmail.com\" href=\"mailto:ferrandezraul@gmail.com\">ferrandezraul@gmail.com</a></p>
                                 <p>Encuéntrame en&#160;<a target=\"_blank\" title=\"http://www.linkedin.com/in/ferrandezraul\" href=\"http://www.linkedin.com/in/ferrandezraul\">LinkedIn</a></p>",
                    :body_ca => "<h3>Contacte</h3>
                                 <p>Currently I am located in Berlin (Germany) but you can contact me via Email.</p>
                                 <p><img class=\"image-align-left\" src=\"%s\" data-rel=\"128x128\" title=\"Mail\" height=\"22\" width=\"22\" />Send me an email <a title=\"ferrandezraul@gmail.com\" href=\"mailto:ferrandezraul@gmail.com\">ferrandezraul@gmail.com</a></p>
                                 <p>Find me in&#160;<a target=\"_blank\" title=\"http://www.linkedin.com/in/ferrandezraul\" href=\"http://www.linkedin.com/in/ferrandezraul\">LinkedIn</a></p>"
                }
]


def finnish_page( page, page_attr )
  page.translations.create!( { :locale => 'es', :title => page_attr[:title_es] } )
  page.translations.create!( { :locale => 'ca', :title => page_attr[:title_ca] } )

  page_body_part = page.parts.create!( { :title => "Body", :body => page_attr[:body], :position => page_attr[:position_body] } )

  page_body_part.translations.create!( { :locale => "es", :body => page_attr[:body_es] } )
  page_body_part.translations.create!( { :locale => "ca", :body => page_attr[:body_ca] } )

  if page_attr.has_key?(:banner)

    page_banner_part = page.parts.create!( { :title => "Banner", :body => page_attr[:banner], :position => page_attr[:position_banner] } )

    page_banner_part.translations.create!( { :locale => "es", :body => page_attr[:banner_es] } )
    page_banner_part.translations.create!( { :locale => "ca", :body => page_attr[:banner_ca] } )

  end

  if page_attr.has_key?(:side_body)

    page_side_body_part = page.parts.create!( { :title => "Side Body", :body => page_attr[:side_body], :position => page_attr[:position_side_body] } )

    page_side_body_part.translations.create!( { :locale => "es", :body => page_attr[:side_body_es] } )
    page_side_body_part.translations.create!( { :locale => "ca", :body => page_attr[:side_body_ca] } )

  end

  if page_attr.has_key?(:children)

    children_attr = page_attr[:children]

    page_children = page.children.create!( :title => children_attr[:title],
                                           :menu_match => children_attr[:menu_match],
                                           :show_in_menu => children_attr[:menu_match],
                                           :deletable => children_attr[:deletable] )

    page_children.translations.create!( { :locale => "es", :title => children_attr[:title_es] } )
    page_children.translations.create!( { :locale => "ca", :title => children_attr[:title_ca] } )

    page_children_body_part = page_children.parts.create!( { :title => "Body", :body => children_attr[:body], :position => children_attr[:position_body] } )

    page_children_body_part.translations.create!( { :locale => "es", :body => children_attr[:body_es] } )
    page_children_body_part.translations.create!( { :locale => "ca", :body => children_attr[:body_ca] } )
  end
end


# Start here ...
pages_array.each { | page_attr |

  page_is_root = page_attr.has_key?(:menu_match) && page_attr.has_key?(:link_url) && page_attr.has_key?(:position_body)

  # Call page constructor based on the attributes available
  page = ( page_is_root ) ?
      # Just for the root page
      Refinery::Page.create!( { :show_in_menu => page_attr[:show_in_menu],
                                :deletable => page_attr[:deletable],
                                :link_url => page_attr[:link_url],
                                :menu_match => page_attr[:menu_match],
                                :title => page_attr[:title] } ) :
      # For the rest of pages
      Refinery::Page.create!( { :show_in_menu => page_attr[:show_in_menu],
                                :deletable => page_attr[:deletable],
                                :title => page_attr[:title] } )

  finnish_page( page, page_attr )
}

Refinery::I18n.frontend_locales.each do |lang|
  I18n.locale = lang
  {'home' => "Home",
   'technical-skills' => 'Technical Skills',
   'professional-experience' => 'Professional Experience',
   'contact' => 'Contact'
  }.each do |slug, title|
    Refinery::Page.by_title(title).each { |page| page.update_attributes(:slug => slug) }
  end
end

I18n.locale = ::Refinery::I18n.default_locale
