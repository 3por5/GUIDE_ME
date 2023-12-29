require "open-uri"

# usuários teste
user = User.new(email: "teste@teste.com.br", password: "123123", name: "nome_teste", job: "job_teste", company: "company_teste")
user.save!

people = {
  person1: {
    name: "Ana Luiza Almeida",
    job: "Especialista Front-End",
    user_description: "Especialista front-end apaixonada por criar experiências digitais excepcionais e inovadoras. Com habilidades especializadas em desenvolvimento web e uma paixão pela criação de interfaces envolventes e responsivas, estou constantemente em busca de maneiras de elevar a qualidade e a usabilidade dos produtos digitais. Minha jornada profissional na área de tecnologia tem sido marcada pela liderança de projetos desafiadores e pela busca incansável da excelência na Pixel Solutions.",
    program_description: "Aprimore suas habilidades em HTML, CSS e JavaScript com orientação de profissionais experientes. Crie sites e aplicativos de alto desempenho que se destacam no mercado.",
    program_about: "Nossa abordagem prática e imersiva permitirá que você desenvolva suas competências, garantindo que esteja preparado(a) para enfrentar desafios no mundo digital contemporâneo com confiança.

    Por meio de sessões de mentoria individuais e em grupo, você receberá orientação especializada para aprimorar suas habilidades técnicas e compreender conceitos avançados em desenvolvimento web. Nossos mentores experientes estarão à disposição para responder a suas dúvidas, fornecer feedback detalhado sobre seus projetos e compartilhar suas valiosas experiências profissionais.
    
    Além disso, durante o programa de mentoria, você terá a oportunidade de trabalhar em projetos práticos e desafiadores, que ajudarão a consolidar seus conhecimentos e desenvolver sua capacidade de resolver problemas de forma criativa. Essa abordagem prática permitirá que você crie sites e aplicativos de alto desempenho, que se destacam no mercado pela sua qualidade e inovação.
    
    Nosso objetivo é capacitar você a se tornar um(a) desenvolvedor(a) web altamente qualificado(a) e confiante em suas habilidades. Com o suporte da nossa equipe de mentores, você terá o suporte necessário para enfrentar os desafios dinâmicos do mundo da tecnologia, além de receber insights sobre as melhores práticas da indústria.
    
    Não perca a oportunidade de participar de nosso programa de mentoria e dar um impulso significativo em sua carreira como desenvolvedor(a) web. Junte-se a nós nessa jornada de aprendizado e crescimento, onde estaremos comprometidos com o seu sucesso e desenvolvimento profissional.
    ",
    program_name: "Desenvolvimento Web",
    program_category: "Desenvolvimento",
    company: "Pixel Solutions",
    email: "ana.luiza@example.com",
    photo_url: "https://res.cloudinary.com/guide-me/image/upload/v1703815461/guide-me%20avatars/lmagl4xuhxhtzru71ksb.png"
  },
  person2: {
    name: "Lucas Oliveira",
    job: "Desenvolvedor Mobile Sênior",
    user_description: "Desenvolvedor mobile sênior apaixonado por criar aplicativos inovadores. Líder de projetos na DataMinds Co.",
    program_description: "Especialize-se no desenvolvimento para iOS e Android com o suporte de mentores experientes. Transforme suas ideias em aplicativos móveis inovadores.",
    program_name: "Desenvolvimento Mobile",
    program_category: "Desenvolvimento",
    company: "DataMinds",
    email: "lucas.oliveira@example.com",
    photo_url: "https://res.cloudinary.com/guide-me/image/upload/v1703815461/guide-me%20avatars/dwr303u3ifbiq4htvcmy.png"
  },
  person3: {
    name: "Marina Silva",
    job: "UX/UI Sênior",
    user_description: "UX/UI sênior comprometida com inovação e design centrado no usuário. Líder de projetos transformadores na InnovationLabs.",
    program_description: "Domine a arte do design centrado no usuário, criando interfaces intuitivas e visualmente atraentes. Aperfeiçoe suas habilidades de UX/UI com orientação especializada.",
    program_name: "UX/UI Design Avançado",
    program_category: "Design",
    company: "InnovationLabs",
    email: "marina.silva@example.com",
    photo_url: "https://res.cloudinary.com/guide-me/image/upload/v1703815462/guide-me%20avatars/lswxzeqvykxf0rwvkau7.png"
  },
  person4: {
    name: "Rafael Santos",
    job: "Arquiteto de Software",
    user_description: "Arquiteto de software dedicado a criar soluções inovadoras na ArtCraft Studios.",
    program_description: "Aprenda a projetar sistemas modernos e robustos com orientação especializada. Domine as melhores práticas para criar softwares modernos e robustos.",
    program_name: "Arquitetura de Software Moderna",
    program_category: "Desenvolvimento",
    company: "ArtCraft Studios",
    email: "rafael.santos@example.com",
    photo_url: "https://res.cloudinary.com/guide-me/image/upload/v1703815462/guide-me%20avatars/x3bezo6ycdpwkktcpzpl.png"
  },
  person5: {
    name: "Pedro Mendes",
    job: "Especialista Full-Stack",
    user_description: "Olá! Sou o Pedro Mendes, um entusiasmado Especialista Full Stack dedicado a criar soluções inovadoras na MarketPro Solutions. Minha paixão por desenvolver projetos abrangentes e de alta qualidade me impulsiona a buscar constantemente o aprimoramento das minhas habilidades e conhecimentos. Como Especialista Full Stack, tenho a capacidade de abordar os desafios de desenvolvimento tanto no front-end quanto no back-end com eficiência e criatividade. Minha sólida experiência em tecnologias de ponta me permite criar interfaces intuitivas e cativantes, proporcionando experiências excepcionais aos usuários.",
    program_description: "Torne-se um desenvolvedor Full Stack completo, dominando front-end e back-end. Conduza projetos de ponta a ponta, abraçando desafios complexos com confiança e eficiência.",
    program_about: "Essa oportunidade única proporcionará um ambiente enriquecedor para aprimorar suas habilidades, permitindo que você se destaque no mercado de desenvolvimento web. Nesse programa de mentoria, você terá acesso a um currículo abrangente e atualizado, focado nas tecnologias mais recentes e nas melhores práticas do setor. Aprenda com profissionais experientes, que guiarão seu aprendizado e oferecerão insights valiosos sobre como criar aplicações web inovadoras e robustas. Ao longo desse processo, você desenvolverá competências fundamentais para a construção de interfaces intuitivas e atraentes no front-end, utilizando linguagens de marcação, folhas de estilo e frameworks modernos. Além disso, se aprofundará no back-end, aprendendo a desenvolver APIs poderosas, gerenciar bancos de dados e implementar lógica de negócio sofisticada. Com dedicação e empenho, você estará preparado para enfrentar os desafios do desenvolvimento full stack, compreendendo o fluxo de trabalho completo, desde o conceito inicial até a implantação final. Através de projetos práticos e desafiadores, você ganhará a confiança necessária para enfrentar o mercado de trabalho com segurança e autonomia.",
    program_name: "Desenvolvimento Full-Stack",
    program_category: "Desenvolvimento",
    company: "MarketPro Solutions",
    email: "pedro.mendes@example.com",
    photo_url: "https://res.cloudinary.com/guide-me/image/upload/v1703815462/guide-me%20avatars/xafrfv5fdqvmujfneejq.png"
  },
  person6: {
    name: "Camila Costa",
    job: "Especialista em Cibersegurança",
    user_description: "Especialista em cibersegurança apaixonada por proteger empresas na AccurateSecurity.",
    program_description: "Proteja sistemas e dados contra ameaças digitais com orientação de especialistas. Aprenda técnicas avançadas de defesa e prevenção.",
    program_name: "Segurança Cibernética Avançada",
    program_category: "Segurança",
    company: "AccurateSecurity",
    email: "camila.costa@example.com",
    photo_url: "https://res.cloudinary.com/guide-me/image/upload/v1703815462/guide-me%20avatars/nt7yxnclm9otgbt336nv.png"
  },
  person7: {
    name: "Felipe Souza",
    job: "Cientista de Dados",
    user_description: "Cientista de dados apaixonado por transformar dados em insights valiosos na TalentHub Solutions.",
    program_description: "Explore o mundo da ciência de dados com orientação de mentores especializados. Aprenda a extrair insights significativos de grandes conjuntos de dados.",
    program_name: "Data Science e Análise de Dados",
    program_category: "Ciência de Dados",
    company: "TalentHub Solutions",
    email: "felipe.souza@example.com",
    photo_url: "https://res.cloudinary.com/guide-me/image/upload/v1703815462/guide-me%20avatars/wqgjqpybt5dopfwlzfhe.png"
  },
  person8: {
    name: "Vanessa Ferreira",
    job: "Líder em Desenv. Ágil",
    user_description: "Líder em desenvolvimento ágil na TechSellers, comprometida em impulsionar eficiência e qualidade.",
    program_description: "Aprenda a integrar desenvolvimento e operações com mentores qualificados. Agilize a entrega de software, automatize processos e aumente a eficiência da equipe.",
    program_name: "Dev-Ops e Entrega Contínua",
    program_category: "Desenvolvimento",
    company: "TechSellers",
    email: "vanessa.ferreira@example.com",
    photo_url: "https://res.cloudinary.com/guide-me/image/upload/v1703815461/guide-me%20avatars/r5dul0ifndue0qkmfqbt.png"
  },
  person9: {
    name: "Rafael Castro",
    job: "Especialista em Game Design",
    user_description: "Especialista em game design na UX Innovations, apaixonado por criar experiências envolventes.",
    program_description: "Aprenda a criar jogos envolventes, dominar engines e levar suas ideias ao próximo nível na indústria de games.",
    program_name: "Desenvolvimento de Jogos",
    program_category: "Design",
    company: "UX Innovations",
    email: "rafael.castro@example.com",
    photo_url: "https://res.cloudinary.com/guide-me/image/upload/v1703815462/guide-me%20avatars/hjlxyeqrtjw6su1vmiil.png"
  },
  person10: {
    name: "Bianca Oliveira",
    job: "Hacker Ética Sênior",
    user_description: "Hacker ética sênior na WordCrafters, comprometida em proteger sistemas e dados de clientes.",
    program_description: "Descubra vulnerabilidades e fortaleça a segurança dos sistemas com orientação especializada em técnicas de hacking ético.",
    program_name: "Cibersegurança Ofensiva",
    program_category: "Segurança",
    company: "WordCrafters",
    email: "bianca.oliveira@example.com",
    photo_url: "https://res.cloudinary.com/guide-me/image/upload/v1703815462/guide-me%20avatars/bactwmzi2yr75fb3gioq.png"
  },
  person11: {
    name: "Gustavo Rodrigues",
    job: "Engenheiro de Dados",
    user_description: "Engenheiro de dados na DataOptimize, trabalhando para transformar dados em insights significativos.",
    program_description: "Domine a infraestrutura para análise de Big Data com orientação de um mentor especialista em engenhharia de dados.",
    program_name: "Data Engineering para Big Data",
    program_category: "Ciência de Dados",
    company: "DataOptimize",
    email: "gustavo.rodrigues@example.com",
    photo_url: "https://res.cloudinary.com/guide-me/image/upload/v1703815462/guide-me%20avatars/dljexrad5lnmny2r9ymo.png"
  },
  person12: {
    name: "Isabela Almeida",
    job: "Especialista em Experiências Imersivas",
    user_description: "Especialista em experiências imersivas na ProjectLink Solutions, buscando criar experiências memoráveis através da realidade virtual e aumentada.",
    program_description: "Explore o mundo imersivo da RV e RA com orientação de uma expert, criando experiências interativas e inovadoras.",
    program_name: "Realidade Virtual e Aumentada",
    program_category: "Design",
    company: "ProjectLink Solutions",
    email: "isabela.almeida@example.com",
    photo_url: "https://res.cloudinary.com/guide-me/image/upload/v1703815462/guide-me%20avatars/c2upcuof3ulhsgdhepnc.png"
  }
}

people.each do |person, info|
  file = URI.open(info[:photo_url])
  
  user = User.new(name: info[:name], job: info[:job],company: info[:company], description: info[:user_description], email: info[:email], password: "123123")
  user.photo.attach(io: file, filename: "#{info[:name]}.png", content_type: "image/png")
  user.save!

  program = Program.new(user: user,name: info[:program_name], description: info[:program_description], category: info[:program_category], about: info[:program_about])
  program.save!
end

