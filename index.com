<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creche - Página Completa</title>
    <style>
        body {
            font-family: 'Comic Sans MS', cursive, sans-serif; /* Fonte divertida para crianças */
            margin: 0;
            padding: 0;
            background-color: #edebdd; /* Cor de fundo */
        }
        header {
            background: #94CFFA; /* Cor do cabeçalho */
            color: #ffffff;
            padding: 20px 0;
            border-bottom: 5px solid #E40C67; /* Borda para dar destaque */
        }
        header h1 {
            text-align: center;
            font-size: 2.5em;
            text-shadow: 2px 2px #E4D50D; /* Sombra para dar um efeito divertido */
        }
        nav {
            text-align: center;
            margin: 10px 0;
        }
        nav ul {
            list-style: none;
            padding: 0;
        }
        nav ul li {
            display: inline;
            margin: 0 15px;
        }
        nav ul li button {
            background: #4BE4AD; /* Cor dos botões do menu */
            color: #ffffff;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            border-radius: 20px; /* Bordas arredondadas */
            transition: background 0.3s, transform 0.2s;
            font-size: 1em;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2); /* Sombra para dar profundidade */
        }
        nav ul li button:hover {
            background: #E4D50D; /* Cor ao passar o mouse nos botões */
            transform: scale(1.05); /* Aumenta o tamanho do botão ao passar o mouse */
        }
        .container {
            width: 90%; /* Ampliar para dar mais espaço */
            margin: auto;
            overflow: hidden;
            background: #ffffff; /* Cor do container principal */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        .tab {
            display: none;
        }
        .tab-active {
            display: block;
        }
        footer {
            text-align: center;
            padding: 20px 0;
            background: #E40C67; /* Cor do rodapé */
            color: #ffffff;
            position: relative;
            bottom: 0;
            width: 100%;
            font-size: 1.2em;
        }
        h2 {
            color: #E40C67; /* Cor dos títulos principais */
            font-size: 2.5em;
            text-align: center;
        }
        h3 {
            color: #4BE4AD; /* Cor dos subtítulos */
            font-size: 1.8em;
        }
        button.contribute {
            background: #E4D50D; /* Cor do botão de contribuição */
            color: #ffffff;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            border-radius: 20px;
            transition: background 0.3s;
            font-size: 1.2em;
            display: block;
            margin: 20px auto; /* Centraliza o botão */
        }
        button.contribute:hover {
            background: #94CFFA; /* Cor ao passar o mouse no botão de contribuição */
        }
        .illustration {
            text-align: center;
            margin: 20px 0;
        }
        .illustration img {
            max-width: 80%; /* Ajusta o tamanho das imagens */
            height: auto;
        }
        .icon {
            width: 80px; /* Aumenta o tamanho dos ícones */
            height: auto;
            margin: 10px;
        }
        .section {
            margin: 20px 0;
            border: 2px dashed #E4D50D; /* Borda para delimitar seções */
            padding: 15px;
            border-radius: 8px;
            background-color: #f9f9f9;
            text-align: center; /* Centraliza o texto */
        }
        .section img {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

    <!-- Cabeçalho -->
    <header>
        <h1>Creche Colorida</h1>
        <nav>
            <ul class="menu">
                <li><button onclick="showTab('inicio')">Início</button></li>
                <li><button onclick="showTab('sobre')">Sobre Nós</button></li>
                <li><button onclick="showTab('blog')">Blog</button></li>
                <li><button onclick="showTab('transparencia')">Transparência</button></li>
                <li><button onclick="showTab('doe')">Doe e Visite</button></li>
            </ul>
        </nav>
    </header>

    <!-- Container Principal -->
    <div class="container">

        <!-- Início -->
        <div id="inicio" class="tab tab-active">
            <h2>Bem-vindo à Nossa Creche</h2>
            <div class="illustration">
                <img src="https://via.placeholder.com/300x200.png?text=Crian%C3%A7as+Brincando" alt="Crianças Brincando">
            </div>
            <p>Aqui, dedicamo-nos ao desenvolvimento integral das crianças, oferecendo um ambiente acolhedor e seguro.</p>
            <p>Conheça nossa missão, visão e valores, que guiam nosso trabalho diariamente.</p>

            <div class="section">
                <h3>Lista de Recursos</h3>
                <img src="https://via.placeholder.com/80x80.png?text=Video" class="icon" alt="Ilustração de Vídeo">
                <p>Assista nossa apresentação em vídeo sobre a creche e suas atividades.</p>
                <video width="100%" controls>
                    <source src="video-apresentacao.mp4" type="video/mp4">
                    Seu navegador não suporta vídeos.
                </video>
            </div>

            <div class="section">
                <h3>Serviços</h3>
                <img src="https://via.placeholder.com/80x80.png?text=Servi%C3%A7o" class="icon" alt="Ilustração de Serviço">
                <p>Oferecemos uma variedade de serviços, incluindo:</p>
                <ul>
                    <li>Atividades educativas</li>
                    <li>Oficinas de artes e cultura</li>
                    <li>Acompanhamento nutricional</li>
                    <li>Atividades físicas e esportivas</li>
                </ul>
            </div>

            <div class="section">
                <h3>Depoimentos</h3>
                <img src="https://via.placeholder.com/80x80.png?text=Depoimento" class="icon" alt="Ilustração de Depoimento">
                <blockquote>
                    <p>"A Creche Colorida é um lugar incrível! Meu filho se desenvolve a cada dia!" - Ana Silva</p>
                </blockquote>
                <blockquote>
                    <p>"Os educadores são dedicados e atenciosos, realmente se importam com as crianças." - Carlos Oliveira</p>
                </blockquote>
            </div>

            <div class="section">
                <h3>Perguntas Frequentes</h3>
                <img src="https://via.placeholder.com/80x80.png?text=FAQ" class="icon" alt="Ilustração de Perguntas Frequentes">
                <ul>
                    <li><strong>Qual a faixa etária atendida?</strong> Atendemos crianças de 6 meses a 6 anos.</li>
                    <li><strong>Como funciona a alimentação?</strong> Oferecemos refeições balanceadas, com acompanhamento nutricional.</li>
                </ul>
            </div>

            <h3>Saiba Mais ou Faça uma Doação</h3>
            <button class="contribute" onclick="window.location.href='doe.html'">Contribua Agora</button>
        </div>

        <!-- Sobre Nós -->
        <div id="sobre" class="tab">
            <h2>Sobre Nós</h2>
            <div class="illustration">
                <img src="https://via.placeholder.com/300x200.png?text=Equipe+Educação" alt="Equipe de Educação">
            </div>
            <p>Fundada em 2020, a Creche Colorida nasceu da necessidade de oferecer um ambiente seguro e educativo para as crianças da comunidade.</p>

            <div class="section">
                <h3>Equipe</h3>
                <img src="https://via.placeholder.com/80x80.png?text=Equipe" class="icon" alt="Ilustração de Equipe">
                <p>Conheça nossos educadores e colaboradores dedicados:</p>
                <ul>
                    <li>Maria Santos - Pedagoga e Coordenadora</li>
                    <li>João Pereira - Educador Infantil</li>
                    <li>Patrícia Lima - Nutricionista</li>
                </ul>
            </div>

            <div class="section">
                <h3>Como Funciona</h3>
                <img src="https://via.placeholder.com/80x80.png?text=Funcionamento" class="icon" alt="Ilustração de Funcionamento">
                <p>Oferecemos uma abordagem lúdica para o aprendizado, focando no desenvolvimento social e emocional das crianças.</p>
            </div>
        </div>

        <!-- Blog -->
        <div id="blog" class="tab">
            <h2>Blog da Creche</h2>
            <div class="illustration">
                <img src="https://via.placeholder.com/300x200.png?text=Blog" alt="Blog da Creche">
            </div>
            <p>Bem-vindo ao nosso blog! Aqui, compartilhamos dicas e informações sobre o desenvolvimento infantil, eventos e atividades da creche.</p>
            <div class="section">
                <h3>Últimos Posts</h3>
                <ul>
                    <li><strong>5 Dicas para Estimular a Criatividade nas Crianças</strong> - 15 de outubro de 2024</li>
                    <li><strong>Como Escolher a Creche Ideal para Seu Filho</strong> - 10 de setembro de 2024</li>
                    <li><strong>Atividades Divertidas para Fazer em Casa</strong> - 1 de agosto de 2024</li>
                </ul>
            </div>
        </div>

        <!-- Transparência -->
        <div id="transparencia" class="tab">
            <h2>Transparência</h2>
            <div class="illustration">
                <img src="https://via.placeholder.com/300x200.png?text=Transpar%C3%AAncia" alt="Transparência">
            </div>
            <p>A Creche Colorida preza pela transparência em suas atividades e finanças. Aqui você pode acompanhar nossos relatórios e gastos.</p>
            <div class="section">
                <h3>Relatórios Financeiros</h3>
                <p>Todos os nossos relatórios estão disponíveis para consulta. Clique <a href="relatorio.html">aqui</a> para acessar.</p>
            </div>
        </div>

        <!-- Doe e Visite -->
        <div id="doe" class="tab">
            <h2>Doe e Visite</h2>
            <div class="illustration">
                <img src="https://via.placeholder.com/300x200.png?text=Doa%C3%A7%C3%A3o" alt="Doe e Visite">
            </div>
            <p>Você pode contribuir com nossa creche de diversas formas! Saiba como:</p>
            <div class="section">
                <h3>Formas de Doação</h3>
                <p>Ajude-nos com doações financeiras ou doações de materiais escolares e brinquedos.</p>
            </div>
            <div class="section">
                <h3>Visite Nossa Creche</h3>
                <p>Entre em contato para agendar uma visita e conhecer nosso trabalho de perto!</p>
            </div>
        </div>

    </div>

    <!-- Rodapé -->
    <footer>
        <p>© 2024 Creche Colorida - Todos os direitos reservados.</p>
    </footer>

    <script>
        function showTab(tabId) {
            // Oculta todas as abas
            const tabs = document.querySelectorAll('.tab');
            tabs.forEach(tab => {
                tab.classList.remove('tab-active');
            });

            // Mostra a aba selecionada
            const activeTab = document.getElementById(tabId);
            activeTab.classList.add('tab-active');
        }
    </script>
</body>
</html>
