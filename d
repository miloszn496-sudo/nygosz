<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Strona Stolarza</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f5f0e8;
            color: #2c2c2c;
        }
        header {
            background: #3d2914;
            color: white;
            padding: 2rem;
            text-align: center;
        }
        header h1 {
            font-size: 2.5rem;
            margin-bottom: 0.5rem;
        }
        nav {
            background: #5a3d1a;
            padding: 1rem;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 1rem;
            font-weight: bold;
        }
        nav a:hover {
            color: #d4a574;
        }
        .hero {
            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=1200');
            background-size: cover;
            background-position: center;
            height: 400px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-align: center;
        }
        .hero h2 {
            font-size: 2rem;
            margin-bottom: 1rem;
        }
        .hero p {
            font-size: 1.2rem;
            max-width: 600px;
            margin: 0 auto;
        }
        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 3rem 1rem;
        }
        .services {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2rem;
            margin-bottom: 3rem;
        }
        .service-card {
            background: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        .service-card h3 {
            color: #3d2914;
            margin-bottom: 1rem;
            font-size: 1.3rem;
        }
        .service-card p {
            color: #666;
            line-height: 1.6;
        }
        .calculator {
            background: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            max-width: 500px;
            margin: 0 auto;
        }
        .calculator h3 {
            text-align: center;
            color: #3d2914;
            margin-bottom: 1.5rem;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: bold;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
        }
        button {
            width: 100%;
            padding: 1rem;
            background: #3d2914;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
            cursor: pointer;
            font-weight: bold;
        }
        button:hover {
            background: #5a3d1a;
        }
        #result {
            margin-top: 1.5rem;
            padding: 1rem;
            background: #e8f5e9;
            border-radius: 4px;
            text-align: center;
            display: none;
        }
        #result.show {
            display: block;
        }
        #result h4 {
            color: #2e7d32;
            margin-bottom: 0.5rem;
        }
        #result .price {
            font-size: 2rem;
            font-weight: bold;
            color: #2e7d32;
        }
        footer {
            background: #3d2914;
            color: white;
            text-align: center;
            padding: 2rem;
            margin-top: 3rem;
        }
        .contact-info {
            display: flex;
            justify-content: center;
            gap: 2rem;
            flex-wrap: wrap;
        }
        .contact-info div {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
    </style>
</head>
<body>
    <header>
        <h1>Stolarstwo Kowalski</h1>
        <p>Meble na wymiar - realizujemy Twoje wizje</p>
    </header>
    <nav>
        <a href="#uslugi">Usługi</a>
        <a href="#kalkulator">Kalkulator</a>
        <a href="#kontakt">Kontakt</a>
    </nav>
    <section class="hero">
        <div>
            <h2>Tworzymy meble z pasją od 15 lat</h2>
            <p>Kuchnie, szafy, biurka - wszystko na wymiar, dopasowane do Twojego domu</p>
        </div>
    </section>
    <div class="container">
        <section id="uslugi">
            <h2 style="text-align: center; margin-bottom: 2rem; color: #3d2914;">Nasze Usługi</h2>
            <div class="services">
                <div class="service-card">
                    <h3>Kuchnie</h3>
                    <p>Zaprojektujemy i wykonamy kuchnię na wymiar. Doradzimy w wyborze materiałów i okuć.</p>
                </div>
                <div class="service-card">
                    <h3>Szafy</h3>
                    <p>Przestronne szafy wnękowe i wolnostojące. Idealne wykorzystanie każdego centymetra.</p>
                </div>
                <div class="service-card">
                    <h3>Meble Biurowe</h3>
                    <p>Biurka, regały, komody. Funkcjonalne rozwiązania do Twojego biura.</p>
                </div>
            </div>
        </section>
        <section id="kalkulator">
            <h2 style="text-align: center; margin-bottom: 1rem; color: #3d2914;">Kalkulator Wyceny</h2>
            <p style="text-align: center; margin-bottom: 2rem; color: #666;">Wpisz wymiary - sprawdź szacunkową cenę</p>
            
            <div class="calculator">
                <h3>Oblicz cenę mebla</h3>
                <form id="calcForm">
                    <div class="form-group">
                        <label>Rodzaj mebla</label>
                        <select id="type">
                            <option value="szafka">Szafka kuchenna</option>
                            <option value="szafa">Szafa</option>
                            <option value="biurko">Biurko</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Wysokość (cm)</label>
                        <input type="number" id="height" value="80" min="30" max="250">
                    </div>
                    <div class="form-group">
                        <label>Szerokość (cm)</label>
                        <input type="number" id="width" value="100" min="30" max="300">
                    </div>
                    <div class="form-group">
                        <label>Głębokość (cm)</label>
                        <input type="number" id="depth" value="60" min="30" max="100">
                    </div>
                    <div class="form-group">
                        <label>Rodzaj drewna</label>
                        <select id="wood">
                            <option value="sosna">Sosna</option>
                            <option value="dab">Dąb</option>
                            <option value="orzech">Orzech</option>
                        </select>
                    </div>
                    <button type="button" onclick="calculate()">Oblicz cenę</button>
                </form>
                <div id="result">
                    <h4>Szacunkowa cena:</h4>
                    <div class="price" id="price"></div>
                    <p style="font-size: 0.85rem; color: #666; margin-top: 0.5rem;">* Cena orientacyjna. Ostateczna wycena po pomiarach.</p>
                </div>
            </div>
        </section>
        <section id="kontakt" style="margin-top: 3rem;">
            <h2 style="text-align: center; margin-bottom: 2rem; color: #3d2914;">Kontakt</h2>
            <div class="calculator">
                <h3>Zamów bezpłatną wycenę</h3>
                <form id="contactForm">
                    <div class="form-group">
                        <label>Imię i nazwisko</label>
                        <input type="text" placeholder="Jan Kowalski" required>
                    </div>
                    <div class="form-group">
                        <label>Telefon</label>
                        <input type="tel" placeholder="600 123 456" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" placeholder="jan@example.com" required>
                    </div>
                    <div class="form-group">
                        <label>Co chcesz zamówić?</label>
                        <textarea rows="3" placeholder="Napisz czego potrzebujesz..."></textarea>
                    </div>
                    <button type="submit">Wyślij zapytanie</button>
                </form>
            </div>
        </section>
    </div>
    <footer>
        <div class="contact-info">
            <div>📞 600 123 456</div>
            <div>✉️ kontakt@stolarstwo.pl</div>
            <div>📍 ul. Dębowa 15, Wrocław</div>
        </div>
        <p style="margin-top: 1rem; opacity: 0.7;">© 2026 Stolarstwo Kowalski</p>
    </footer>
    <script>
        function calculate() {
            const type = document.getElementById('type').value;
            const height = parseFloat(document.getElementById('height').value);
            const width = parseFloat(document.getElementById('width').value);
            const depth = parseFloat(document.getElementById('depth').value);
            const wood = document.getElementById('wood').value;
            const priceMultiplier = {
                'sosna': 1,
                'dab': 1.8,
                'orzech': 2.2
            };
            const typeMultiplier = {
                'szafka': 1,
                'szafa': 1.3,
                'biurko': 1.1
            };
            const surface = (height * width) / 10000;
            let price = surface * 1500;
            price *= priceMultiplier[wood];
            price *= typeMultiplier[type];
            price += 200;
            document.getElementById('price').textContent = Math.round(price) + ' zł';
            document.getElementById('result').classList.add('show');
        }
        document.getElementById('contactForm').addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Dziękujemy za wiadomość! Odezwiemy się wkrótce.');
        });
    </script>
</body>
</html>
