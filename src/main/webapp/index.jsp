<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>NexusShop — Modern Store</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

<style>
:root{
  --bg:#f6f7fb;--surface:#fff;--surface-2:#f1f3f7;--text:#151923;--muted:#697386;
  --primary:#5b4cf0;--primary-2:#7c6cff;--primary-soft:#eeecff;--success:#16a36a;
  --danger:#e5484d;--border:#e5e7ee;--shadow:0 10px 30px rgba(21,25,35,.07);
  --shadow-lg:0 20px 55px rgba(21,25,35,.12);--radius:18px;--radius-sm:12px;
  --container:1240px;--ease:.22s ease;
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth;scroll-padding-top:92px}
body{font-family:Inter,system-ui,-apple-system,sans-serif;background:var(--bg);color:var(--text);line-height:1.55;-webkit-font-smoothing:antialiased}
a{text-decoration:none;color:inherit}button,input{font:inherit}button{border:0;cursor:pointer}
img{display:block;max-width:100%}
.container{width:min(100% - 32px,var(--container));margin:auto}
.muted{color:var(--muted)}
.sr-only{position:absolute;width:1px;height:1px;overflow:hidden;clip:rect(0,0,0,0)}

.topbar{background:#111522;color:#fff;font-size:13px}
.topbar .container{min-height:36px;display:flex;align-items:center;justify-content:center;gap:8px}
.topbar strong{color:#c9c3ff}
.topbar a{text-decoration:underline;text-underline-offset:3px}

header{position:sticky;top:0;z-index:100;background:rgba(255,255,255,.94);backdrop-filter:blur(18px);border-bottom:1px solid var(--border)}
.header-main{min-height:72px;display:flex;align-items:center;gap:22px}
.brand{display:flex;align-items:center;gap:10px;font-size:22px;font-weight:800;letter-spacing:-.5px;white-space:nowrap}
.brand i{width:38px;height:38px;display:grid;place-items:center;border-radius:12px;background:var(--primary);color:#fff}
.brand .accent{color:var(--primary)}
.main-nav{display:flex;align-items:center;gap:4px;margin-right:auto}
.main-nav a{padding:9px 12px;border-radius:10px;color:var(--muted);font-size:14px;font-weight:600}
.main-nav a:hover,.main-nav a.active{background:var(--primary-soft);color:var(--primary)}
.header-tools{display:flex;align-items:center;gap:8px}
.search{width:270px;height:42px;display:flex;align-items:center;gap:9px;padding:0 13px;background:var(--surface-2);border:1px solid transparent;border-radius:12px}
.search:focus-within{background:#fff;border-color:#c9c4ff;box-shadow:0 0 0 4px rgba(91,76,240,.08)}
.search i{color:var(--muted)}
.search input{width:100%;border:0;outline:0;background:transparent;color:var(--text);font-size:14px}
.icon-btn{width:42px;height:42px;border-radius:12px;display:grid;place-items:center;background:transparent;color:var(--muted);position:relative}
.icon-btn:hover{background:var(--surface-2);color:var(--text)}
.cart-wrap{position:relative}.cart-count{position:absolute;right:-3px;top:-4px;min-width:19px;height:19px;padding:0 4px;border-radius:10px;background:var(--primary);border:2px solid #fff;color:#fff;font-size:10px;font-weight:800;display:grid;place-items:center}
.mobile-toggle{display:none;width:42px;height:42px;border-radius:12px;background:var(--surface-2)}

.hero{padding:34px 0 18px}
.hero-card{min-height:430px;border-radius:26px;overflow:hidden;position:relative;background:#171b2b;display:flex;align-items:center;box-shadow:var(--shadow-lg)}
.hero-card:before{content:"";position:absolute;inset:0;background:linear-gradient(90deg,rgba(12,15,27,.92) 0%,rgba(12,15,27,.70) 46%,rgba(12,15,27,.15) 100%),url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85") center/cover}
.hero-content{position:relative;z-index:1;padding:58px;max-width:700px;color:#fff}
.hero-eyebrow{display:inline-flex;align-items:center;gap:7px;padding:7px 11px;border-radius:999px;background:rgba(255,255,255,.12);border:1px solid rgba(255,255,255,.16);font-size:12px;font-weight:700;margin-bottom:18px}
.hero h1{font-size:clamp(38px,5vw,62px);line-height:1.03;letter-spacing:-2px;margin-bottom:18px}
.hero p{max-width:570px;color:rgba(255,255,255,.76);font-size:16px;margin-bottom:28px}
.hero-actions{display:flex;gap:10px;flex-wrap:wrap}
.btn{min-height:44px;padding:0 18px;border-radius:12px;display:inline-flex;align-items:center;justify-content:center;gap:8px;font-size:14px;font-weight:700;transition:var(--ease)}
.btn-primary{background:var(--primary);color:#fff;box-shadow:0 8px 22px rgba(91,76,240,.28)}
.btn-primary:hover{background:#4b3ee2;transform:translateY(-1px)}
.btn-light{background:#fff;color:var(--text)}.btn-light:hover{background:#f3f4f7}
.btn-ghost{background:rgba(255,255,255,.10);color:#fff;border:1px solid rgba(255,255,255,.22)}.btn-ghost:hover{background:rgba(255,255,255,.18)}

.quick-links{display:grid;grid-template-columns:repeat(4,1fr);gap:12px;margin:16px 0 4px}
.quick-card{background:var(--surface);border:1px solid var(--border);border-radius:14px;padding:14px 16px;display:flex;align-items:center;gap:12px}
.quick-card i{width:38px;height:38px;border-radius:10px;display:grid;place-items:center;background:var(--primary-soft);color:var(--primary)}
.quick-card b{font-size:13px}.quick-card span{display:block;color:var(--muted);font-size:11px;margin-top:1px}

.section{padding:42px 0}
.section-head{display:flex;align-items:end;justify-content:space-between;gap:16px;margin-bottom:20px}
.section-head h2{font-size:26px;letter-spacing:-.7px}
.section-head p{font-size:13px;color:var(--muted);margin-top:3px}
.view-all{color:var(--primary);font-size:13px;font-weight:700;display:flex;align-items:center;gap:6px}
.view-all:hover{gap:9px}

.category-strip{display:grid;grid-template-columns:repeat(6,1fr);gap:12px}
.cat-card{background:var(--surface);border:1px solid var(--border);border-radius:15px;padding:20px 12px;text-align:center;transition:var(--ease);cursor:pointer}
.cat-card:hover{transform:translateY(-3px);border-color:#cbc6ff;box-shadow:var(--shadow)}
.cat-card .icon-wrap{width:52px;height:52px;margin:0 auto 10px;border-radius:15px;background:var(--primary-soft);color:var(--primary);display:grid;place-items:center;font-size:21px}
.cat-card h4{font-size:13px}.cat-card .count{font-size:11px;color:var(--muted);margin-top:3px}

.shop-layout{display:grid;grid-template-columns:210px 1fr;gap:22px}
.filters{background:var(--surface);border:1px solid var(--border);border-radius:16px;padding:16px;height:max-content;position:sticky;top:94px}
.filters h3{font-size:14px;margin-bottom:12px}.filter-btn{width:100%;display:flex;justify-content:space-between;align-items:center;padding:10px;border-radius:9px;color:var(--muted);font-size:13px;text-align:left}
.filter-btn:hover,.filter-btn.active{background:var(--primary-soft);color:var(--primary);font-weight:700}
.products-toolbar{display:flex;align-items:center;justify-content:space-between;margin-bottom:12px;gap:10px}
.result-count{font-size:13px;color:var(--muted)}
.sort-select{border:1px solid var(--border);background:#fff;border-radius:10px;padding:9px 11px;font-size:12px;color:var(--text)}
.products-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:15px}
.product-card{background:var(--surface);border:1px solid var(--border);border-radius:16px;overflow:hidden;display:flex;flex-direction:column;transition:var(--ease)}
.product-card:hover{transform:translateY(-4px);box-shadow:var(--shadow);border-color:#d2ceff}
.product-card .img-wrap{position:relative;aspect-ratio:1/1;background:var(--surface-2);overflow:hidden}
.product-card .img-wrap img{width:100%;height:100%;object-fit:cover;transition:.3s ease}.product-card:hover .img-wrap img{transform:scale(1.035)}
.product-card .badge{position:absolute;left:10px;top:10px;padding:5px 8px;border-radius:7px;background:var(--primary);color:#fff;font-size:10px;font-weight:800}
.product-card .badge.sale{background:#ffb020;color:#201600}
.wish-btn{position:absolute;right:10px;top:10px;width:34px;height:34px;border-radius:10px;background:rgba(255,255,255,.94);color:var(--muted);display:grid;place-items:center}
.wish-btn:hover{color:var(--danger)}
.product-card .body{padding:14px 14px 8px;display:flex;flex-direction:column;gap:5px;flex:1}
.category-tag{font-size:10px;text-transform:uppercase;letter-spacing:.7px;color:#8a93a5;font-weight:800}
.product-card h5{font-size:14px;line-height:1.35}
.price-row{display:flex;align-items:center;gap:8px;margin-top:3px}.price{font-size:17px;font-weight:800}.old-price{font-size:12px;color:#9aa2b1;text-decoration:line-through}
.rating{font-size:11px;color:#f4a71d}.rating span{color:var(--muted)}
.product-card .footer{padding:8px 14px 14px}.add-btn{width:100%;height:38px;border-radius:10px;background:#171b2b;color:#fff;font-size:12px;font-weight:700}.add-btn:hover{background:var(--primary)}.add-btn.added{background:var(--success)}

.deal-wrap{display:grid;grid-template-columns:1.05fr .95fr;background:var(--surface);border:1px solid var(--border);border-radius:20px;overflow:hidden;box-shadow:var(--shadow)}
.deal-img{min-height:330px;background:var(--surface-2)}.deal-img img{width:100%;height:100%;object-fit:cover}
.deal-content{padding:38px;display:flex;flex-direction:column;justify-content:center}
.deal-tag{display:inline-flex;align-items:center;gap:6px;align-self:flex-start;background:#fff3d8;color:#8a5b00;padding:6px 10px;border-radius:8px;font-size:11px;font-weight:800;margin-bottom:12px}
.deal-content h3{font-size:30px;letter-spacing:-1px}.deal-content .desc{color:var(--muted);font-size:14px;margin:7px 0 15px}
.price-big{font-size:31px;font-weight:800}.price-big .old{font-size:16px;color:#9aa2b1;text-decoration:line-through;font-weight:500;margin-left:8px}
.stock{font-size:12px;color:var(--muted);margin-top:3px}.stock strong{color:var(--danger)}
.timer-grid{display:flex;gap:8px;margin:18px 0}.timer-box{min-width:62px;padding:10px 8px;text-align:center;border:1px solid var(--border);border-radius:10px;background:#f8f9fc}.timer-box .num{font-size:21px;font-weight:800}.timer-box .label{font-size:9px;color:var(--muted);text-transform:uppercase}

.testimonials-scroll{display:grid;grid-template-columns:repeat(4,1fr);gap:14px;overflow:visible}
.testimonial-card{background:var(--surface);border:1px solid var(--border);border-radius:16px;padding:20px;box-shadow:none}
.testimonial-card .stars{color:#f4a71d;letter-spacing:2px;font-size:13px;margin-bottom:10px}.testimonial-card blockquote{font-size:13px;line-height:1.6;margin-bottom:16px}.testimonial-card .author{display:flex;align-items:center;gap:10px}.avatar{width:38px;height:38px;border-radius:50%;object-fit:cover}.name{font-size:12px;font-weight:800}.role{font-size:11px;color:var(--muted)}

.newsletter-wrap{background:linear-gradient(135deg,#181c2b,#292e45);border-radius:20px;padding:34px 38px;color:#fff;display:flex;align-items:center;justify-content:space-between;gap:25px}
.newsletter-wrap h3{font-size:23px}.newsletter-wrap p{color:rgba(255,255,255,.65);font-size:13px}.newsletter-wrap form{display:flex;gap:8px;max-width:470px;width:100%;flex-wrap:wrap}.newsletter-wrap input{flex:1;min-width:200px;height:44px;padding:0 14px;border:1px solid rgba(255,255,255,.13);background:rgba(255,255,255,.08);color:#fff;border-radius:10px;outline:0}.newsletter-wrap input:focus{border-color:#9389ff}.newsletter-wrap .btn{height:44px;background:var(--primary);color:#fff}.newsletter-wrap #newsletterMsg{width:100%;font-size:12px}

footer{padding:36px 0 24px;border-top:1px solid var(--border);margin-top:20px}.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:28px}.footer-grid p{color:var(--muted);font-size:12px;max-width:300px;margin-top:8px}.footer-grid h5{font-size:12px;margin-bottom:10px}.footer-grid ul{list-style:none;display:grid;gap:7px}.footer-grid li a{font-size:12px;color:var(--muted)}.footer-grid li a:hover{color:var(--primary)}.socials{display:flex;gap:7px;margin-top:14px}.socials a{width:34px;height:34px;border-radius:9px;background:var(--surface-2);display:grid;place-items:center;color:var(--muted)}.socials a:hover{background:var(--primary);color:#fff}.footer-bottom{border-top:1px solid var(--border);margin-top:26px;padding-top:18px;text-align:center;font-size:11px;color:#9aa2b1}

#mobileMenu{display:none;padding:8px 0 14px;border-top:1px solid var(--border)}#mobileMenu ul{list-style:none;display:grid;gap:3px}#mobileMenu a{display:flex;gap:10px;padding:11px;border-radius:9px;font-size:13px;font-weight:600}#mobileMenu a:hover{background:var(--surface-2)}

@media(max-width:1050px){.main-nav{display:none}.mobile-toggle{display:grid;place-items:center}.search{width:220px}.quick-links{grid-template-columns:repeat(2,1fr)}.category-strip{grid-template-columns:repeat(3,1fr)}.shop-layout{grid-template-columns:1fr}.filters{position:static;display:flex;gap:7px;overflow:auto}.filters h3{display:none}.filter-btn{width:auto;white-space:nowrap}.products-grid{grid-template-columns:repeat(3,1fr)}.testimonials-scroll{grid-template-columns:repeat(2,1fr)}}
@media(max-width:760px){.container{width:min(100% - 22px,var(--container))}.topbar{display:none}.header-main{min-height:64px;gap:8px}.brand{font-size:18px}.brand i{width:34px;height:34px}.header-tools{margin-left:auto}.search{width:42px;padding:0;justify-content:center;background:transparent}.search input{display:none}.search i{font-size:16px}.hero{padding-top:14px}.hero-card{min-height:400px;border-radius:20px}.hero-content{padding:34px 24px}.hero h1{letter-spacing:-1.2px}.hero p{font-size:14px}.quick-links{grid-template-columns:1fr 1fr}.category-strip{grid-template-columns:repeat(2,1fr)}.section{padding:32px 0}.section-head h2{font-size:22px}.products-grid{grid-template-columns:repeat(2,1fr);gap:10px}.deal-wrap{grid-template-columns:1fr}.deal-img{min-height:220px}.deal-content{padding:25px}.testimonials-scroll{display:flex;overflow-x:auto}.testimonial-card{min-width:280px}.newsletter-wrap{padding:26px 22px;flex-direction:column;align-items:flex-start}.newsletter-wrap form{max-width:none}.footer-grid{grid-template-columns:1fr 1fr}}
@media(max-width:480px){.header-actions .icon-btn{width:38px;height:38px}.header-actions .icon-btn:nth-child(2){display:none}.hero-card{min-height:360px}.hero-content{padding:28px 20px}.hero h1{font-size:35px}.hero-actions .btn{width:100%}.quick-links{grid-template-columns:1fr}.category-strip{gap:8px}.cat-card{padding:15px 8px}.products-grid{gap:8px}.product-card .body{padding:11px 10px 6px}.product-card h5{font-size:12px}.price{font-size:15px}.product-card .footer{padding:7px 10px 10px}.add-btn{height:36px;font-size:11px}.timer-box{min-width:52px}.timer-box .num{font-size:17px}.footer-grid{grid-template-columns:1fr}}
</style>
</head>

<body>
<div class="topbar"><div class="container"><i class="fas fa-bolt"></i><span><strong>New:</strong> Free shipping on your first order</span><a href="#deals">View today's deals</a></div></div>

<header>
  <div class="container header-main">
    <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
    <a class="brand" href="#"><i class="fas fa-bag-shopping"></i><span>Nexus<span class="accent">Shop</span></span></a>

    <nav class="main-nav" aria-label="Main navigation">
      <a class="active" href="#">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Shop</a>
      <a href="#deals">Deals</a>
      <a href="#testimonials">Reviews</a>
    </nav>

    <div class="header-tools">
      <div class="search" role="search">
        <i class="fas fa-search"></i>
        <input id="searchInput" type="search" placeholder="Search products..." aria-label="Search products">
        <button id="searchBtn" aria-label="Search"><span class="sr-only">Search</span></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart"><i class="fas fa-bag-shopping"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>

  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-store"></i> Shop</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <section class="hero">
    <div class="container">
      <div class="hero-card">
        <div class="hero-content">
          <div class="hero-eyebrow"><i class="fas fa-sparkles"></i> New collection · 2026</div>
          <h1>Everything you need. Nothing you don't.</h1>
          <p>Shop curated tech, fashion and everyday essentials with a cleaner, faster shopping experience.</p>
          <div class="hero-actions">
            <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Start shopping</button>
            <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-bolt"></i> See deals</button>
          </div>
        </div>
      </div>
      <div class="quick-links">
        <div class="quick-card"><i class="fas fa-truck-fast"></i><div><b>Fast delivery</b><span>Track every order</span></div></div>
        <div class="quick-card"><i class="fas fa-shield-halved"></i><div><b>Secure checkout</b><span>Your data stays protected</span></div></div>
        <div class="quick-card"><i class="fas fa-rotate-left"></i><div><b>Easy returns</b><span>Simple return process</span></div></div>
        <div class="quick-card"><i class="fas fa-headset"></i><div><b>Friendly support</b><span>We're here to help</span></div></div>
      </div>
    </div>
  </section>

  <section class="section" id="categories">
    <div class="container">
      <div class="section-head"><div><h2>Shop by category</h2><p>Jump straight to what you need.</p></div><a class="view-all" href="#products">Browse all <i class="fas fa-arrow-right"></i></a></div>
      <div class="category-strip" id="categoriesGrid" aria-live="polite"></div>
    </div>
  </section>

  <section class="section" id="products">
    <div class="container">
      <div class="section-head"><div><h2>Popular right now</h2><p>Community favorites and fresh arrivals.</p></div></div>
      <div class="shop-layout">
        <aside class="filters">
          <h3>Filter</h3>
          <button class="filter-btn active" data-filter="">All products <span>8</span></button>
          <button class="filter-btn" data-filter="Smartphones">Smartphones <span>1</span></button>
          <button class="filter-btn" data-filter="Laptops">Laptops <span>1</span></button>
          <button class="filter-btn" data-filter="Gadgets">Gadgets <span>2</span></button>
          <button class="filter-btn" data-filter="Accessories">Accessories <span>3</span></button>
          <button class="filter-btn" data-filter="Footwear">Footwear <span>1</span></button>
        </aside>
        <div>
          <div class="products-toolbar"><span class="result-count" id="resultCount">Showing all products</span><select class="sort-select" aria-label="Sort products"><option>Recommended</option><option>Price: low to high</option><option>Price: high to low</option></select></div>
          <div class="products-grid" id="productsGrid" aria-live="polite"></div>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="deals">
    <div class="container">
      <div class="section-head"><div><h2>Deal of the day</h2><p>A limited-time offer worth a closer look.</p></div></div>
      <div class="deal-wrap">
        <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85" alt="MacBook Air M2" loading="lazy"></div>
        <div class="deal-content">
          <span class="deal-tag"><i class="fas fa-bolt"></i> Limited offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light and powerful — built for work, study and everyday creativity.</p>
          <div class="price-big">$999 <span class="old">$1,199</span></div>
          <p class="stock">Only <strong>12</strong> items left</p>
          <div class="timer-grid" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
          </div>
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add deal to cart</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="testimonials">
    <div class="container">
      <div class="section-head"><div><h2>What shoppers say</h2><p>Real feedback from the community.</p></div></div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="newsletter-wrap">
        <div><h3>Get the good stuff.</h3><p>New arrivals, useful deals and early access — no spam.</p></div>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Your email address" aria-label="Email" required>
          <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div>
        <div class="brand"><i class="fas fa-bag-shopping"></i><span>Nexus<span class="accent">Shop</span></span></div>
        <p>A cleaner demo storefront focused on easy discovery and quick checkout.</p>
        <div class="socials"><a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a><a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a><a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a></div>
      </div>
      <div><h5>Shop</h5><ul><li><a href="#products">Trending</a></li><li><a href="#categories">Categories</a></li><li><a href="#deals">Deals</a></li><li><a href="#testimonials">Reviews</a></li></ul></div>
      <div><h5>Help</h5><ul><li><a href="#">Help center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul></div>
      <div><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
    </div>
    <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<script>

        // ============================================================
        // DATA
        // ============================================================
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];

        const TESTIMONIALS = [{
            name: 'Ava Martin',
            role: 'Verified Buyer',
            avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
            text: 'Fast shipping and excellent support. The product exceeded my expectations!',
            stars: 5
        }, {
            name: 'Michael Lee',
            role: 'Frequent Shopper',
            avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
            text: 'Great selection and smooth checkout. Will definitely shop again.',
            stars: 4
        }, {
            name: 'Sophia Chen',
            role: 'Designer',
            avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
            text: 'Love the quality and the packaging. Everything arrived in perfect condition.',
            stars: 5
        }, {
            name: 'James Wilson',
            role: 'Tech Enthusiast',
            avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
            text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',
            stars: 5
        }];

        // ============================================================
        // STATE
        // ============================================================
        let cartCount = 0;

        // ============================================================
        // DOM REFS
        // ============================================================
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');
        const testimonialsList = document.getElementById('testimonialsList');

        // ============================================================
        // RENDER FUNCTIONS
        // ============================================================
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML =
                `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No products found.</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` :
                '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${oldPriceHtml}
                        </div>
                        <div class="rating">
                            ${stars} <span>(${p.reviews})</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // Add to cart listeners
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    const id = Number(this.dataset.id);
                    addToCart(id, this);
                });
            });
        }

        function renderTestimonials() {
            testimonialsList.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `
                    <div class="stars">${stars}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div>
                            <div class="name">${escapeHtml(t.name)}</div>
                            <div class="role">${escapeHtml(t.role)}</div>
                        </div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        // ============================================================
        // UTILITY FUNCTIONS
        // ============================================================
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            // animate
            cartCountEl.style.transform = 'scale(1.3)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();

            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
                btnEl.classList.add('added');
                setTimeout(() => {
                    btnEl.innerHTML = orig;
                    btnEl.classList.remove('added');
                }, 1500);
            }
            // subtle feedback
            const cartBtn = document.getElementById('cartBtn');
            cartBtn.style.color = 'var(--accent)';
            setTimeout(() => cartBtn.style.color = '', 400);
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // ============================================================
        // DEAL TIMER
        // ============================================================
        (function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);

            function tick() {
                const diff = target - new Date();
                if (diff <= 0) {
                    document.getElementById('dealDays').textContent = '0';
                    document.getElementById('dealHours').textContent = '00';
                    document.getElementById('dealMinutes').textContent = '00';
                    document.getElementById('dealSeconds').textContent = '00';
                    return;
                }
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        // ============================================================
        // EVENT BINDINGS
        // ============================================================

        // Search
        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // Mobile menu
        mobileToggle.addEventListener('click', () => {
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });

        // Close mobile menu on link click
        mobileMenu.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            });
        });

        // Hero buttons
        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });

        // Deal buy
        document.getElementById('buyDeal').addEventListener('click', function() {
            cartCount++;
            updateCartCount();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Added!';
            this.style.background = 'var(--success)';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
            }, 1600);
        });

        // Newsletter
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please enter a valid email address.';
                newsletterMsg.style.color = '#ffb3b3';
                newsletterMsg.style.display = 'block';
                return;
            }
            newsletterMsg.textContent = '🎉 Thanks for subscribing!';
            newsletterMsg.style.color = '#a8e6cf';
            newsletterMsg.style.display = 'block';
            newsletterEmail.value = '';
            setTimeout(() => {
                newsletterMsg.style.display = 'none';
            }, 3500);
        });

        // Cart button click feedback
        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
        });

        // Year in footer
        document.getElementById('year').textContent = new Date().getFullYear();

        // ============================================================
        // INIT
        // ============================================================
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();

        // Close mobile menu on resize to desktop
        window.addEventListener('resize', () => {
            if (window.innerWidth > 768) {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            }
        });

        console.log('🚀 NexusShop — user‑friendly e‑commerce demo loaded.');
    
</script>
<script>
/* UI enhancements that keep the original shopping behavior intact. */
const resultCount = document.getElementById('resultCount');
const filterButtons = document.querySelectorAll('.filter-btn');
function setResultText(query){
  const q = String(query || '').trim();
  resultCount.textContent = q ? `Showing results for "${q}"` : `Showing all products`;
}
filterButtons.forEach(btn => btn.addEventListener('click', () => {
  filterButtons.forEach(x => x.classList.remove('active'));
  btn.classList.add('active');
  const value = btn.dataset.filter || '';
  searchInput.value = value;
  filterProducts(value);
  setResultText(value);
}));
const originalFilterProducts = filterProducts;
filterProducts = function(query){
  originalFilterProducts(query);
  setResultText(query);
};
const sortSelect = document.querySelector('.sort-select');
sortSelect.addEventListener('change', () => {
  const mode = sortSelect.value;
  let list = [...PRODUCTS];
  const q = searchInput.value.trim().toLowerCase();
  if(q) list = list.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
  if(mode.includes('low')) list.sort((a,b)=>a.price-b.price);
  if(mode.includes('high')) list.sort((a,b)=>b.price-a.price);
  renderProducts(list);
});
</script>
</body>
</html>
