<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>NexusShop — Modern Store</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

  <style>
    /* ----- RESET & GLOBAL ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #f6f7fb;
      --surface: #ffffff;
      --surface-2: #f1f3f7;
      --text: #151923;
      --muted: #697386;
      --primary: #5b4cf0;
      --primary-2: #7c6cff;
      --primary-soft: #eeecff;
      --success: #16a36a;
      --danger: #e5484d;
      --border: #e5e7ee;
      --radius-card: 18px;
      --radius-btn: 12px;
      --shadow-sm: 0 4px 12px rgba(0, 0, 0, 0.02), 0 1px 2px rgba(0, 0, 0, 0.03);
      --shadow-md: 0 12px 28px rgba(0, 0, 0, 0.06), 0 2px 8px rgba(0, 0, 0, 0.02);
      --transition: all 0.2s ease;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
      padding: 0 0 40px 0;
    }

    /* ----- LAYOUT CONTAINER ----- */
    .container {
      max-width: 1320px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- HEADER / NAV ----- */
    .navbar {
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid var(--border);
      position: sticky;
      top: 0;
      z-index: 50;
      padding: 12px 0;
    }

    .nav-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 800;
      font-size: 1.5rem;
      letter-spacing: -0.02em;
      color: var(--text);
      text-decoration: none;
    }

    .logo i {
      color: var(--primary);
      font-size: 1.8rem;
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 8px;
      background: var(--surface-2);
      padding: 4px;
      border-radius: 40px;
    }

    .nav-links a {
      text-decoration: none;
      color: var(--muted);
      font-weight: 500;
      font-size: 0.9rem;
      padding: 8px 16px;
      border-radius: 30px;
      transition: var(--transition);
      white-space: nowrap;
    }

    .nav-links a:hover,
    .nav-links a.active {
      background: var(--surface);
      color: var(--primary);
      box-shadow: var(--shadow-sm);
    }

    .nav-actions {
      display: flex;
      align-items: center;
      gap: 16px;
    }

    .icon-btn {
      background: transparent;
      border: none;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--muted);
      font-size: 1.2rem;
      cursor: pointer;
      transition: var(--transition);
      position: relative;
    }

    .icon-btn:hover {
      background: var(--surface-2);
      color: var(--primary);
    }

    .cart-badge {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--primary);
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 18px;
      height: 18px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid var(--surface);
    }

    /* ----- HERO / WELCOME ----- */
    .hero {
      margin: 32px 0 48px 0;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 24px;
    }

    .hero-text h1 {
      font-size: 2.2rem;
      font-weight: 800;
      letter-spacing: -0.03em;
      margin-bottom: 8px;
    }

    .hero-text h1 span {
      color: var(--primary);
      background: linear-gradient(135deg, var(--primary), var(--primary-2));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .hero-text p {
      color: var(--muted);
      font-size: 1.1rem;
      max-width: 500px;
    }

    .hero-cta {
      display: flex;
      gap: 12px;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 12px 24px;
      border-radius: var(--radius-btn);
      font-weight: 600;
      font-size: 0.95rem;
      cursor: pointer;
      transition: var(--transition);
      border: none;
      text-decoration: none;
    }

    .btn-primary {
      background: var(--primary);
      color: #fff;
      box-shadow: 0 8px 18px -6px rgba(91, 76, 240, 0.4);
    }

    .btn-primary:hover {
      background: #4a3de0;
      transform: translateY(-1px);
      box-shadow: 0 12px 22px -8px rgba(91, 76, 240, 0.5);
    }

    .btn-outline {
      background: transparent;
      border: 1.5px solid var(--border);
      color: var(--text);
    }

    .btn-outline:hover {
      background: var(--surface-2);
      border-color: var(--muted);
    }

    /* ----- CATEGORIES / FILTER CHIPS ----- */
    .categories {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      margin-bottom: 32px;
    }

    .chip {
      padding: 8px 20px;
      border-radius: 40px;
      background: var(--surface);
      border: 1px solid var(--border);
      font-weight: 500;
      font-size: 0.9rem;
      color: var(--muted);
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .chip i {
      font-size: 0.9rem;
    }

    .chip:hover {
      border-color: var(--primary-2);
      color: var(--primary);
      background: var(--primary-soft);
    }

    .chip.active {
      background: var(--primary);
      border-color: var(--primary);
      color: #fff;
    }

    .chip.active i {
      color: #fff;
    }

    /* ----- PRODUCT GRID ----- */
    .section-header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 20px;
    }

    .section-header h2 {
      font-size: 1.4rem;
      font-weight: 700;
      letter-spacing: -0.02em;
    }

    .section-header a {
      color: var(--primary);
      font-weight: 500;
      text-decoration: none;
      font-size: 0.95rem;
      display: flex;
      align-items: center;
      gap: 4px;
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
      gap: 24px;
    }

    .product-card {
      background: var(--surface);
      border-radius: var(--radius-card);
      border: 1px solid var(--border);
      padding: 16px;
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      position: relative;
      box-shadow: var(--shadow-sm);
    }

    .product-card:hover {
      transform: translateY(-4px);
      box-shadow: var(--shadow-md);
      border-color: #d0d4e0;
    }

    .product-badge {
      position: absolute;
      top: 16px;
      left: 16px;
      background: var(--primary);
      color: #fff;
      font-size: 0.7rem;
      font-weight: 700;
      padding: 4px 10px;
      border-radius: 30px;
      letter-spacing: 0.02em;
      z-index: 2;
    }

    .product-badge.sale {
      background: var(--danger);
    }

    .product-image {
      background: var(--surface-2);
      border-radius: 12px;
      height: 180px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 16px;
      color: var(--muted);
      font-size: 3.5rem;
      transition: var(--transition);
      position: relative;
      overflow: hidden;
    }

    .product-card:hover .product-image {
      background: #e9ebf2;
    }

    .product-image i {
      transition: transform 0.3s ease;
    }

    .product-card:hover .product-image i {
      transform: scale(1.05);
    }

    .product-info {
      flex: 1;
      display: flex;
      flex-direction: column;
    }

    .product-category {
      font-size: 0.75rem;
      text-transform: uppercase;
      letter-spacing: 0.04em;
      font-weight: 600;
      color: var(--muted);
      margin-bottom: 6px;
    }

    .product-title {
      font-weight: 600;
      font-size: 1rem;
      line-height: 1.4;
      margin-bottom: 8px;
      color: var(--text);
    }

    .product-rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 0.8rem;
      color: #f5a623;
      margin-bottom: 8px;
    }

    .product-rating span {
      color: var(--muted);
      margin-left: 6px;
      font-weight: 500;
    }

    .product-price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: auto;
      padding-top: 10px;
    }

    .price {
      font-weight: 700;
      font-size: 1.2rem;
      color: var(--text);
    }

    .price small {
      font-size: 0.85rem;
      font-weight: 500;
      color: var(--muted);
      text-decoration: line-through;
      margin-left: 6px;
    }

    .add-btn {
      background: var(--primary-soft);
      border: none;
      width: 40px;
      height: 40px;
      border-radius: 12px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--primary);
      font-size: 1.1rem;
      cursor: pointer;
      transition: var(--transition);
    }

    .add-btn:hover {
      background: var(--primary);
      color: #fff;
      transform: scale(1.05);
    }

    /* ----- FOOTER ----- */
    .footer {
      margin-top: 64px;
      padding-top: 32px;
      border-top: 1px solid var(--border);
      color: var(--muted);
      font-size: 0.9rem;
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 20px;
    }

    .footer-links {
      display: flex;
      gap: 24px;
    }

    .footer-links a {
      color: var(--muted);
      text-decoration: none;
      transition: var(--transition);
    }

    .footer-links a:hover {
      color: var(--primary);
    }

    /* ----- RESPONSIVE ----- */
    @media (max-width: 768px) {
      .container {
        padding: 0 16px;
      }

      .navbar {
        padding: 10px 0;
      }

      .nav-links {
        display: none;
      }

      .hero {
        margin: 24px 0 32px;
      }

      .hero-text h1 {
        font-size: 1.7rem;
      }

      .hero-text p {
        font-size: 1rem;
      }

      .hero-cta {
        width: 100%;
      }

      .hero-cta .btn {
        flex: 1;
      }

      .product-grid {
        grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
        gap: 16px;
      }

      .product-image {
        height: 140px;
        font-size: 2.8rem;
      }

      .product-title {
        font-size: 0.9rem;
      }

      .price {
        font-size: 1rem;
      }

      .add-btn {
        width: 36px;
        height: 36px;
      }

      .footer {
        flex-direction: column;
        align-items: center;
        text-align: center;
      }
    }

    @media (max-width: 480px) {
      .product-grid {
        grid-template-columns: 1fr 1fr;
      }

      .section-header h2 {
        font-size: 1.2rem;
      }

      .categories {
        gap: 6px;
      }

      .chip {
        padding: 6px 14px;
        font-size: 0.8rem;
      }
    }

    /* ----- ANIMATIONS & MISC ----- */
    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(8px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .product-card {
      animation: fadeIn 0.4s ease both;
    }

    /* utility for cart interactions */
    .toast {
      position: fixed;
      bottom: 24px;
      left: 50%;
      transform: translateX(-50%) translateY(80px);
      background: var(--text);
      color: #fff;
      padding: 10px 24px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.9rem;
      box-shadow: var(--shadow-md);
      opacity: 0;
      transition: transform 0.3s ease, opacity 0.3s ease;
      pointer-events: none;
      z-index: 999;
    }

    .toast.show {
      transform: translateX(-50%) translateY(0);
      opacity: 1;
    }
  </style>
</head>
<body>

  <!-- NAVBAR -->
  <nav class="navbar">
    <div class="container nav-inner">
      <a href="#" class="logo">
        <i class="fas fa-bolt"></i> NexusShop
      </a>

      <div class="nav-links">
        <a href="#" class="active">Home</a>
        <a href="#">Shop</a>
        <a href="#">Deals</a>
        <a href="#">New</a>
        <a href="#">About</a>
      </div>

      <div class="nav-actions">
        <button class="icon-btn" aria-label="Search">
          <i class="fas fa-search"></i>
        </button>
        <button class="icon-btn" aria-label="Wishlist">
          <i class="far fa-heart"></i>
        </button>
        <button class="icon-btn" aria-label="Cart">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-badge" id="cartCount">3</span>
        </button>
      </div>
    </div>
  </nav>

  <!-- MAIN CONTENT -->
  <main class="container">

    <!-- HERO -->
    <section class="hero">
      <div class="hero-text">
        <h1>Welcome to <span>NexusShop</span></h1>
        <p>Discover curated products, exclusive deals, and a seamless shopping experience — all in one place.</p>
      </div>
      <div class="hero-cta">
        <button class="btn btn-primary">
          <i class="fas fa-bag-shopping"></i> Shop now
        </button>
        <button class="btn btn-outline">
          <i class="fas fa-tag"></i> View deals
        </button>
      </div>
    </section>

    <!-- CATEGORIES / FILTER -->
    <div class="categories">
      <button class="chip active"><i class="fas fa-th-large"></i> All</button>
      <button class="chip"><i class="fas fa-mobile-alt"></i> Electronics</button>
      <button class="chip"><i class="fas fa-tshirt"></i> Fashion</button>
      <button class="chip"><i class="fas fa-home"></i> Home</button>
      <button class="chip"><i class="fas fa-spa"></i> Beauty</button>
      <button class="chip"><i class="fas fa-dumbbell"></i> Sports</button>
    </div>

    <!-- PRODUCTS SECTION -->
    <div class="section-header">
      <h2>Trending now</h2>
      <a href="#">View all <i class="fas fa-arrow-right"></i></a>
    </div>

    <div class="product-grid" id="productGrid">
      <!-- 1 -->
      <div class="product-card">
        <div class="product-badge">New</div>
        <div class="product-image">
          <i class="fas fa-headphones"></i>
        </div>
        <div class="product-info">
          <div class="product-category">Audio</div>
          <div class="product-title">Nova Wireless Headphones</div>
          <div class="product-rating">
            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
            <span>(142)</span>
          </div>
          <div class="product-price-row">
            <div class="price">$89.99 <small>$129.99</small></div>
            <button class="add-btn" data-name="Nova Wireless Headphones" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
          </div>
        </div>
      </div>

      <!-- 2 -->
      <div class="product-card">
        <div class="product-badge sale">Sale</div>
        <div class="product-image">
          <i class="fas fa-clock"></i>
        </div>
        <div class="product-info">
          <div class="product-category">Wearables</div>
          <div class="product-title">Pulse Smartwatch Pro</div>
          <div class="product-rating">
            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
            <span>(89)</span>
          </div>
          <div class="product-price-row">
            <div class="price">$149.99 <small>$199.99</small></div>
            <button class="add-btn" data-name="Pulse Smartwatch Pro" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
          </div>
        </div>
      </div>

      <!-- 3 -->
      <div class="product-card">
        <div class="product-image">
          <i class="fas fa-camera"></i>
        </div>
        <div class="product-info">
          <div class="product-category">Photography</div>
          <div class="product-title">Lumina Instant Camera</div>
          <div class="product-rating">
            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
            <span>(56)</span>
          </div>
          <div class="product-price-row">
            <div class="price">$79.99</div>
            <button class="add-btn" data-name="Lumina Instant Camera" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
          </div>
        </div>
      </div>

      <!-- 4 -->
      <div class="product-card">
        <div class="product-badge">Hot</div>
        <div class="product-image">
          <i class="fas fa-shoe-prints"></i>
        </div>
        <div class="product-info">
          <div class="product-category">Footwear</div>
          <div class="product-title">AeroGlide Running Shoes</div>
          <div class="product-rating">
            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
            <span>(203)</span>
          </div>
          <div class="product-price-row">
            <div class="price">$119.99 <small>$159.99</small></div>
            <button class="add-btn" data-name="AeroGlide Running Shoes" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
          </div>
        </div>
      </div>

      <!-- 5 -->
      <div class="product-card">
        <div class="product-image">
          <i class="fas fa-laptop"></i>
        </div>
        <div class="product-info">
          <div class="product-category">Computers</div>
          <div class="product-title">Zenith Ultrabook 14"</div>
          <div class="product-rating">
            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
            <span>(67)</span>
          </div>
          <div class="product-price-row">
            <div class="price">$899.99</div>
            <button class="add-btn" data-name="Zenith Ultrabook 14&quot;" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
          </div>
        </div>
      </div>

      <!-- 6 -->
      <div class="product-card">
        <div class="product-badge sale">-20%</div>
        <div class="product-image">
          <i class="fas fa-watch"></i>
        </div>
        <div class="product-info">
          <div class="product-category">Accessories</div>
          <div class="product-title">Classic Leather Band</div>
          <div class="product-rating">
            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
            <span>(34)</span>
          </div>
          <div class="product-price-row">
            <div class="price">$39.99 <small>$49.99</small></div>
            <button class="add-btn" data-name="Classic Leather Band" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
          </div>
        </div>
      </div>

      <!-- 7 -->
      <div class="product-card">
        <div class="product-image">
          <i class="fas fa-headset"></i>
        </div>
        <div class="product-info">
          <div class="product-category">Gaming</div>
          <div class="product-title">Vortex Gaming Headset</div>
          <div class="product-rating">
            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
            <span>(178)</span>
          </div>
          <div class="product-price-row">
            <div class="price">$69.99</div>
            <button class="add-btn" data-name="Vortex Gaming Headset" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
          </div>
        </div>
      </div>

      <!-- 8 -->
      <div class="product-card">
        <div class="product-badge">New</div>
        <div class="product-image">
          <i class="fas fa-tablet-alt"></i>
        </div>
        <div class="product-info">
          <div class="product-category">Tablets</div>
          <div class="product-title">Slate Pad 11</div>
          <div class="product-rating">
            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
            <span>(41)</span>
          </div>
          <div class="product-price-row">
            <div class="price">$329.99</div>
            <button class="add-btn" data-name="Slate Pad 11" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
          </div>
        </div>
      </div>
    </div>

    <!-- FOOTER -->
    <footer class="footer">
      <div>© 2025 NexusShop. All rights reserved.</div>
      <div class="footer-links">
        <a href="#">Privacy</a>
        <a href="#">Terms</a>
        <a href="#">Shipping</a>
        <a href="#">Returns</a>
      </div>
    </footer>
  </main>

  <!-- TOAST -->
  <div class="toast" id="toast">Added to cart</div>

  <script>
    (function() {
      // ----- CART FUNCTIONALITY (simple user feedback) -----
      const cartCountEl = document.getElementById('cartCount');
      const toastEl = document.getElementById('toast');
      let cartCount = 3; // starting value (matches badge)

      // Update cart badge
      function updateCartBadge() {
        cartCountEl.textContent = cartCount;
      }

      // Show toast message
      let toastTimeout;
      function showToast(message) {
        toastEl.textContent = message;
        toastEl.classList.add('show');
        clearTimeout(toastTimeout);
        toastTimeout = setTimeout(() => {
          toastEl.classList.remove('show');
        }, 1800);
      }

      // Add to cart buttons
      document.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          const productName = this.getAttribute('data-name') || 'Product';
          cartCount++;
          updateCartBadge();
          showToast(`✓ ${productName} added`);
        });
      });

      // ----- CATEGORY CHIP FILTER (visual only for demo) -----
      const chips = document.querySelectorAll('.chip');
      chips.forEach(chip => {
        chip.addEventListener('click', function() {
          chips.forEach(c => c.classList.remove('active'));
          this.classList.add('active');
          // In a real app, this would filter products.
          // We'll just show a subtle feedback.
          const label = this.textContent.trim();
          showToast(`Filter: ${label}`);
        });
      });

      // ----- HERO BUTTONS (simple interactions) -----
      document.querySelector('.btn-primary').addEventListener('click', function() {
        showToast('🛍️ Browsing all products');
      });

      document.querySelector('.btn-outline').addEventListener('click', function() {
        showToast('🏷️ Deals coming soon');
      });

      // ----- NAV LINKS (prevent default for demo) -----
      document.querySelectorAll('.nav-links a').forEach(link => {
        link.addEventListener('click', function(e) {
          e.preventDefault();
          document.querySelectorAll('.nav-links a').forEach(l => l.classList.remove('active'));
          this.classList.add('active');
          showToast(`Navigating to ${this.textContent.trim()}`);
        });
      });

      // ----- WISHLIST & SEARCH ICONS (feedback) -----
      document.querySelector('.icon-btn[aria-label="Search"]').addEventListener('click', function() {
        showToast('🔍 Search coming soon');
      });

      document.querySelector('.icon-btn[aria-label="Wishlist"]').addEventListener('click', function() {
        showToast('❤️ Wishlist is empty');
      });

      // Cart icon click
      document.querySelector('.icon-btn[aria-label="Cart"]').addEventListener('click', function() {
        showToast(`🛒 Cart has ${cartCount} items`);
      });

      // ----- "VIEW ALL" LINK -----
      document.querySelector('.section-header a').addEventListener('click', function(e) {
        e.preventDefault();
        showToast('Loading all products...');
      });

      // Initialize cart badge
      updateCartBadge();
    })();
  </script>
</body>
</html>
