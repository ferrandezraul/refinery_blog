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
image_path = "#{Rails.root.join('app/assets/images/me_strocked_cut.png')}"
image_me= Refinery::Image.create :image => File.new(image_path)

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
                                 <li>\"Agile Software Development\" with \"Professional Scrum Master\" and \"Project Manager Professional (PMP) degree\" </li>
                              </ul>",
                    :body_es => "<h3>Mi Perfil</h3>
                                  <ul><li>Entusiasta en aprender cosas nuevas mediante la cooperación en proyectos.</li>
                                  <li>Con experiencia en varios procesos de desarrollo de software como gestor de proyectos, control de calidad y desarrollador.</li>
                                  <li>\"Agile software development\" con título de \"Professional Scrum Master\" y \"Project Manager Professional (PMP)\"</li>
                                  </ul>",
                    :body_ca => "<h3>El meu Perfil</h3>
                                  <ul><li>Entusiasta en aprendre coses noves mitjançant la cooperació amb projectes.</li>
                                    <li>Amb experiència en diversos processos de desenvolupament de programari com a cap de projecte, enginyer de proves i desenvolupador.</li>
                                    <li>\"Agile Software Development\" amb títol de \"Professional Scrum Master\" i \"Project Manager Professional (PMP)\" </li>
                                  </ul>",
                    :banner => "<p><img class=\"image-align-right\" data-rel=\"450x450\" alt=\"Me\" title=\"Me Strocked Cut\" src=\"%s\" height=\"355\" width=\"450\" /></p>
                                <p>If you want different results, don't do always the same.</p>
                                <p>We can't solve problems by thinking the same way as when we created them.</p>
                                <p class=\"font-size-small\"><em>Albert Einstein</em></p>" % image_me.url,
                    :banner_es => "<p><img class=\"image-align-right\" data-rel=\"450x450\" alt=\"Me\" title=\"Me Strocked Cut\" src=\"%s\" height=\"355\" width=\"450\" /></p>
                                   <p>Si buscas resultados distintos, no hagas siempre lo mismo.</p>
                                   <p>No podemos resolver problemas pensando de la misma manera que cuando los creamos.</p>
                                   <p class=\"font-size-small\"><em>Albert Einstein</em></p>" % image_me.url,
                    :banner_ca => "<p><img class=\"image-align-right\" data-rel=\"450x450\" alt=\"Me\" title=\"Me Strocked Cut\" src=\"%s\" height=\"355\" width=\"450\" /></p>
                                   <p>Si buscas resultados distintos, no hagas siempre lo mismo.</p>
                                   <p>No podemos resolver problemas pensando de la misma manera que cuando los creamos.</p>
                                   <p class=\"font-size-small\"><em>Albert Einstein</em></p>" % image_me.url,
                    :position_banner => 0,
                    :position_body => 1,
                    :children =>  {
                        :show_in_menu => false,
                        :deletable => false,
                        :menu_match => "^/404$",
                        :title => "Page not found",  # default german title
                        :title_es => "Página no encontrada",
                        :title_ca => "Pàgina no trobada",
                        :body => "",
                        :body_es => "",
                        :body_ca => "",
                    }
                },
                {
                    :show_in_menu => true,
                    :deletable => true,
                    :title => "Technical Skills",  # default german title
                    :title_es => "Habilidades Técnicas",
                    :title_ca => "Habilitats Tècniques",
                    :body => "<p>Since 2005, I've been mainly working with C++, developing <a target=\"_blank\" title=\"https://developer.here.com/\" href=\"https://developer.here.com/\">cross platform SDK's for location based services in Nokia HERE Maps.</a></p>
                              <p>I enjoyed creating test applications with Qt and building a test framework with Ruby.</p>
                              <p>I am passionate about open source software and Linux OS.</p>
                              <p>Scripting skills with Bash, Python and Ruby.</p>
                              <p>Test automation and Continuous Integration with Jenkins, Hudson, Go and CruiseControl.</p>
                              <p>Web development with Ruby on Rails. </p>
                              <p>JavaScript with JQuery and CooffeScript. </p>
                              <p>Design with HTML5, CSS and&#160; SASS.</p>
                              <p>Agile methodologies like Scrum and Kanban.</p><br></p>",
                    :body_es => "<p>Desde 2005, he trabajado principalmente con C++, desarrollando <a target=\"_blank\" title=\"https://developer.here.com/\" href=\"https://developer.here.com/\">kits de desarrollo de software (SDK) multiplataforma para los servicios basados en localización de Nokia HERE Maps.</a></p>
                                 <p>He disfrutado creando aplicaciones de test e interfaces gráficos con Qt y construyendo un sistema de pruebas con Ruby.</p>
                                 <p>Soy un apasionado del programario libre y los sistemas operativos Linux.</p>
                                 <p>Scripting con Bash, Python y Ruby.</p>
                                 <p>Automatización de test y \"Continuous Integration\" con Jenkins, Hudson, Go y CruiseControl.</p>
                                 <p>Desarrollo web con Ruby on Rails. </p>
                                 <p>JavaScript con JQuery y CooffeScript. </p>
                                 <p>Diseño con HTML5, CSS y&#160; SASS.</p>
                                 <p>Metodologias \"Agile\" como Scrum y Kanban.</p>",
                    :body_ca => "<p>Since 2005, I've been mainly working with C++, developing <a target=\"_blank\" title=\"https://developer.here.com/\" href=\"https://developer.here.com/\">cross platform SDK's for location based services in Nokia HERE Maps.</a></p>
                                 <p>I enjoyed creating test applications with Qt and building a test framework with Ruby.</p>
                                 <p>I am passionate about open source software and Linux OS.</p>
                                 <p>Scripting skills with Bash, Python and Ruby.</p>
                                 <p>Test automation and Continuous Integration with Jenkins, Hudson, Go and CruiseControl.</p>
                                 <p>Web development with Ruby on Rails. </p>
                                 <p>JavaScript with JQuery and CooffeScript. </p>
                                 <p>Design with HTML5, CSS and&#160; SASS.</p>
                                 <p>Agile methodologies like Scrum and Kanban.</p>"
                },
                {
                    :show_in_menu => true,
                    :deletable => true,
                    :title => "Professional Experience",  # default german title
                    :title_es => "Experiencia Profesional",
                    :title_ca => "Experiència Professional",
                    :body => "<h3>June 2005 – Present - R&amp;D Senior Software Engineer at Nokia</h3>
                              <p>Development &amp; Testing of cross-platform API used by different clients of Nokia HERE Maps in several platforms as Symbian, Maemo, Meego, Android, iOS and Microsoft Windows Phone.</p>
                              <h3>October 2003 – May 2005 - Electronic Laboratory Assistant MAZ Brandenburg GmbH</h3>
                              <p>Design high complex application specific integrated circuits (ASIC)</p>",
                    :body_es => "<h3>Junio 2005 – Presente - I+D Ingeniero Desarrollador Senior en Here a Nokia Business</h3>
                                <p>Desarrollo &amp; Test de una API multiplataforma usada en diferentes clientes de Nokia HERE Maps para Symbian, Maemo, Meego, Android, iOS and Microsoft Windows Phone.</p>
                                <h3>Octubre 2003 – Mayo 2005 - Asistente de laboratory electrónico en MAZ Brandenburg GmbH</h3>
                                <p>Diseño de circuitos integrados para aplicaciones específicas (ASIC).</p>",
                    :body_ca => "<h3>June 2005 – Present - R&amp;D Senior Software Engineer at Nokia</h3>
                                 <p>Development &amp; Testing of cross-platform API used by different clients of Nokia HERE Maps in several platforms as Symbian, Maemo, Meego, Android, iOS and Microsoft Windows Phone.</p>
                                 <h3>October 2003 – May 2005 - Electronic Laboratory Assistant MAZ Brandenburg GmbH</h3>
                                 <p>Design high complex application specific integrated circuits (ASIC)</p>"
                },
                {
                    :show_in_menu => true,
                    :deletable => true,
                    :title => "Contact",  # default german title
                    :title_es => "Contacto",
                    :title_ca => "Contacte",
                    :body => "<p>Currently I am located in Berlin (Germany) but you can contact me via Email.</p>
                              <p>Send me an email <a title=\"ferrandezraul@gmail.com\" href=\"mailto:%66%65%72%72%61%6e%64%65%7a%72%61%75%6c%40%67%6d%61%69%6c%2e%63%6f%6d\">ferrandezraul@gmail.com</a></p>
                              <p>Find me in&#160;<a target=\"_blank\" title=\"http://www.linkedin.com/in/ferrandezraul\" href=\"http://www.linkedin.com/in/ferrandezraul\">LinkedIn</a></p>",
                    :body_es => "<p>Actualmente resido en Berlin (Alemania) pero puedes contactarme via mail.</p>
                                 <p>Envíame un mail a <a title=\"ferrandezraul@gmail.com\" href=\"mailto:%66%65%72%72%61%6e%64%65%7a%72%61%75%6c%40%67%6d%61%69%6c%2e%63%6f%6d\">ferrandezraul@gmail.com</a></p>
                                 <p>Encuéntrame en&#160;<a target=\"_blank\" title=\"http://www.linkedin.com/in/ferrandezraul\" href=\"http://www.linkedin.com/in/ferrandezraul\">LinkedIn</a></p>",
                    :body_ca => "<p>Currently I am located in Berlin (Germany) but you can contact me via Email.</p>
                                 <p>Send me an email <a title=\"ferrandezraul@gmail.com\" href=\"mailto:%66%65%72%72%61%6e%64%65%7a%72%61%75%6c%40%67%6d%61%69%6c%2e%63%6f%6d\">ferrandezraul@gmail.com</a></p>
                                 <p>Find me in&#160;<a target=\"_blank\" title=\"http://www.linkedin.com/in/ferrandezraul\" href=\"http://www.linkedin.com/in/ferrandezraul\">LinkedIn</a></p>"
                }
]


def finnish_page( page, page_attr )
  page.translations.create!( { :locale => 'es', :title => page_attr[:title_es] } )
  page.translations.create!( { :locale => 'es-CA', :title => page_attr[:title_ca] } )

  page_body_part = page.parts.create!( { :title => "Body", :body => page_attr[:body], :position => page_attr[:position_body] } )

  page_body_part.translations.create!( { :locale => "es", :body => page_attr[:body_es] } )
  page_body_part.translations.create!( { :locale => "es-CA", :body => page_attr[:body_ca] } )

  if page_attr.has_key?(:banner)

    page_banner_part = page.parts.create!( { :title => "Banner", :body => page_attr[:banner], :position => page_attr[:position_banner] } )

    page_banner_part.translations.create!( { :locale => "es", :body => page_attr[:banner_es] } )
    page_banner_part.translations.create!( { :locale => "es-CA", :body => page_attr[:banner_ca] } )

  end

  if page_attr.has_key?(:side_body)

    page_side_body_part = page.parts.create!( { :title => "Side Body", :body => page_attr[:side_body], :position => page_attr[:position_side_body] } )

    page_side_body_part.translations.create!( { :locale => "es", :body => page_attr[:side_body_es] } )
    page_side_body_part.translations.create!( { :locale => "es-CA", :body => page_attr[:side_body_ca] } )

  end

  if page_attr.has_key?(:children)

    children_attr = page_attr[:children]

    page_children = page.children.create!( :title => children_attr[:title],
                                           :menu_match => children_attr[:menu_match],
                                           :show_in_menu => children_attr[:menu_match],
                                           :deletable => children_attr[:deletable] )

    page_children.translations.create!( { :locale => "es", :title => children_attr[:title_es] } )
    page_children.translations.create!( { :locale => "es-CA", :title => children_attr[:title_ca] } )
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
   'contact' => 'Contact'
  }.each do |slug, title|
    Refinery::Page.by_title(title).each { |page| page.update_attributes(:slug => slug) }
  end
end

I18n.locale = ::Refinery::I18n.default_locale
