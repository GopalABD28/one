<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>LumaShop — Everyday Essentials</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

  <style>
    /* ----- RESET & BASE ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      /* Light, friendly palette */
      --bg: #faf9f7;
      --bg-elev: #ffffff;
      --surface: #ffffff;
      --surface-2: #f5f3f0;
      --surface-3: #ece9e4;
      --text: #1e1b18;
      --text-soft: #4a4540;
      --muted: #8a827a;
      --border: #e8e4df;
      --border-light: #d9d4ce;

      /* Warm accent — friendly orange/coral */
      --accent: #ff6b4a;
      --accent-2: #ff8f6b;
      --accent-soft: rgba(255, 107, 74, 0.08);
      --accent-glow: rgba(255, 107, 74, 0.2);

      /* Supporting colors */
      --green: #2e9e6b;
      --green-soft: rgba(46, 158, 107, 0.1);
      --blue: #4a7bff;
      --blue-soft: rgba(74, 123, 255, 0.1);
      --yellow: #f5b800;

      --radius-sm: 12px;
      --radius: 18px;
      --radius-lg: 24px;

      --shadow-sm: 0 1px 3px rgba(30, 27, 24, 0.06);
      --shadow-md: 0 8px 24px rgba(30, 27, 24, 0.08);
      --shadow-lg: 0 16px 48px rgba(30, 27, 24, 0.12);
      --shadow-accent: 0 8px 24px -6px rgba(255, 107, 74, 0.35);
      --transition: all 0.22s cubic-bezier(0.4, 0, 0.2, 1);
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
      min-height: 100vh;
      padding-bottom: 60px;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- SKIP LINK (accessibility) ----- */
    .skip-link {
      position: absolute;
      top: -100px;
      left: 16px;
      background: var(--accent);
      color: #fff;
      padding: 10px 20px;
      border-radius: var(--radius-sm);
      font-weight: 600;
      text-decoration: none;
      z-index: 999;
      transition: top 0.2s;
    }
    .skip-link:focus {
      top: 16px;
    }

    /* ----- ANNOUNCEMENT BAR ----- */
    .topbar {
      background: var(--text);
      color: #fff;
      padding: 10px 0;
      text-align: center;
      font-size: 0.82rem;
      font-weight: 500;
      letter-spacing: 0.01em;
    }

    .topbar strong {
      color: var(--accent-2);
    }

    .topbar i {
      margin-right: 6px;
      color: var(--accent-2);
    }

    /* ----- NAVBAR ----- */
    .navbar {
      background: rgba(250, 249, 247, 0.85);
      backdrop-filter: blur(16px) saturate(180%);
      -webkit-backdrop-filter: blur(16px) saturate(180%);
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
      gap: 10px;
      font-weight: 800;
      font-size: 1.35rem;
      letter-spacing: -0.03em;
      color: var(--text);
      text-decoration: none;
    }

    .logo-mark {
      width: 36px;
      height: 36px;
      border-radius: 10px;
      background: linear-gradient(135deg, var(--accent), var(--accent-2));
      display: flex;
      align-items: center;
      justify-content: center;
      color: #fff;
      font-size: 1rem;
      box-shadow: var(--shadow-accent);
    }

    .logo span {
      color: var(--text);
    }

    .logo span em {
      font-style: normal;
      color: var(--accent);
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 2px;
    }

    .nav-links a {
      text-decoration: none;
      color: var(--text-soft);
      font-weight: 500;
      font-size: 0.9rem;
      padding: 8px 16px;
      border-radius: 30px;
      transition: var(--transition);
      white-space: nowrap;
    }

    .nav-links a:hover {
      color: var(--accent);
      background: var(--accent-soft);
    }

    .nav-links a.active {
      color: var(--accent);
      background: var(--accent-soft);
      font-weight: 600;
    }

    .nav-actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .icon-btn {
      background: transparent;
      border: 1px solid var(--border);
      width: 40px;
      height: 40px;
      border-radius: 12px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--text-soft);
      font-size: 1rem;
      cursor: pointer;
      transition: var(--transition);
      position: relative;
    }

    .icon-btn:hover {
      background: var(--surface-2);
      color: var(--accent);
      border-color: var(--border-light);
    }

    .cart-badge {
      position: absolute;
      top: -5px;
      right: -5px;
      background: var(--accent);
      color: #fff;
      font-size: 0.65rem;
      font-weight: 700;
      min-width: 18px;
      height: 18px;
      padding: 0 4px;
      border-radius: 20px;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid var(--bg);
    }

    /* ----- HERO ----- */
    .hero {
      margin: 40px 0 48px;
      display: grid;
      grid-template-columns: 1.1fr 0.9fr;
      gap: 48px;
      align-items: center;
    }

    .hero-badge {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: var(--green-soft);
      border: 1px solid rgba(46, 158, 107, 0.2);
      color: var(--green);
      font-size: 0.75rem;
      font-weight: 600;
      padding: 6px 14px;
      border-radius: 30px;
      margin-bottom: 18px;
      letter-spacing: 0.01em;
    }

    .hero-badge i {
      font-size: 0.8rem;
    }

    .hero h1 {
      font-size: 3rem;
      font-weight: 800;
      line-height: 1.12;
      letter-spacing: -0.04em;
      margin-bottom: 18px;
      color: var(--text);
    }

    .hero h1 em {
      font-style: normal;
      color: var(--accent);
    }

    .hero p {
      color: var(--text-soft);
      font-size: 1.05rem;
      max-width: 480px;
      margin-bottom: 28px;
      line-height: 1.65;
    }

    .hero-cta {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 9px;
      padding: 13px 26px;
      border-radius: var(--radius);
      font-weight: 600;
      font-size: 0.92rem;
      cursor: pointer;
      transition: var(--transition);
      border: none;
      text-decoration: none;
      font-family: inherit;
      letter-spacing: -0.01em;
    }

    .btn-accent {
      background: var(--accent);
      color: #fff;
      box-shadow: var(--shadow-accent);
    }

    .btn-accent:hover {
      background: #e85a3a;
      transform: translateY(-2px);
      box-shadow: 0 12px 28px -6px rgba(255, 107, 74, 0.45);
    }

    .btn-outline {
      background: transparent;
      border: 1.5px solid var(--border-light);
      color: var(--text);
    }

    .btn-outline:hover {
      background: var(--surface-2);
      border-color: var(--text-soft);
      transform: translateY(-2px);
    }

    /* hero visual */
    .hero-visual {
      position: relative;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .hero-card {
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: var(--radius-lg);
      padding: 24px;
      width: 100%;
      max-width: 320px;
      box-shadow: var(--shadow-lg);
      position: relative;
      z-index: 2;
      transition: var(--transition);
    }

    .hero-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 20px 56px rgba(30, 27, 24, 0.14);
    }

    .hero-card-img {
      width: 100%;
      height: 160px;
      border-radius: var(--radius);
      background: linear-gradient(135deg, #ffd4c8, #ffe8e0);
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--accent);
      font-size: 3.2rem;
      margin-bottom: 16px;
    }

    .hero-card h4 {
      font-size: 1.05rem;
      font-weight: 700;
      margin-bottom: 4px;
      color: var(--text);
    }

    .hero-card .hero-desc {
      color: var(--muted);
      font-size: 0.82rem;
      margin-bottom: 14px;
    }

    .hero-price {
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .hero-price strong {
      color: var(--accent);
      font-size: 1.35rem;
      font-weight: 800;
    }

    .hero-price .stars {
      color: var(--yellow);
      font-size: 0.78rem;
    }

    /* floating shapes */
    .float-shape {
      position: absolute;
      border-radius: 50%;
      opacity: 0.5;
    }

    .float-1 {
      width: 140px;
      height: 140px;
      background: linear-gradient(135deg, #ffe8e0, #ffd4c8);
      top: -20px;
      right: 20px;
      z-index: 1;
    }

    .float-2 {
      width: 100px;
      height: 100px;
      background: linear-gradient(135deg, #e0f2e9, #c8e8d8);
      bottom: 10px;
      left: 0;
      z-index: 1;
    }

    .float-3 {
      width: 70px;
      height: 70px;
      background: linear-gradient(135deg, #e0e8ff, #c8d8ff);
      top: 40%;
      right: -10px;
      z-index: 1;
    }

    /* ----- TRUST BAR ----- */
    .trust-bar {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 12px;
      margin-bottom: 52px;
      padding: 20px 24px;
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: var(--radius-lg);
      box-shadow: var(--shadow-sm);
    }

    .trust-item {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 4px 8px;
    }

    .trust-icon {
      width: 40px;
      height: 40px;
      border-radius: 12px;
      background: var(--accent-soft);
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--accent);
      font-size: 1rem;
      flex-shrink: 0;
    }

    .trust-text strong {
      display: block;
      font-size: 0.88rem;
      font-weight: 700;
      color: var(--text);
      line-height: 1.3;
    }

    .trust-text span {
      color: var(--muted);
      font-size: 0.75rem;
      font-weight: 400;
    }

    /* ----- SECTION HEADER ----- */
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      margin-bottom: 24px;
      gap: 16px;
      flex-wrap: wrap;
    }

    .section-header h2 {
      font-size: 1.55rem;
      font-weight: 800;
      letter-spacing: -0.03em;
      color: var(--text);
    }

    .section-header h2 span {
      color: var(--accent);
    }

    .section-header p {
      color: var(--muted);
      font-size: 0.88rem;
      margin-top: 3px;
      font-weight: 400;
    }

    .view-all {
      color: var(--accent);
      font-weight: 600;
      text-decoration: none;
      font-size: 0.88rem;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: var(--transition);
      padding: 8px 14px;
      border-radius: 30px;
    }

    .view-all:hover {
      background: var(--accent-soft);
      gap: 10px;
    }

    /* ----- CATEGORIES ----- */
    .categories {
      display: flex;
      gap: 8px;
      flex-wrap: wrap;
      margin-bottom: 28px;
    }

    .chip {
      padding: 9px 18px;
      border-radius: 30px;
      background: var(--surface);
      border: 1.5px solid var(--border);
      font-weight: 500;
      font-size: 0.85rem;
      color: var(--text-soft);
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 8px;
      font-family: inherit;
    }

    .chip i {
      font-size: 0.8rem;
      color: var(--muted);
      transition: var(--transition);
    }

    .chip:hover {
      border-color: var(--accent);
      color: var(--accent);
      background: var(--accent-soft);
    }

    .chip:hover i {
      color: var(--accent);
    }

    .chip.active {
      background: var(--accent);
      border-color: var(--accent);
      color: #fff;
      font-weight: 600;
      box-shadow: var(--shadow-accent);
    }

    .chip.active i {
      color: #fff;
    }

    /* ----- PRODUCT GRID ----- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
      gap: 20px;
    }

    .product-card {
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: var(--radius-lg);
      padding: 16px;
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      position: relative;
    }

    .product-card:hover {
      transform: translateY(-4px);
      box-shadow: var(--shadow-md);
      border-color: var(--border-light);
    }

    .product-badge {
      position: absolute;
      top: 16px;
      left: 16px;
      background: var(--accent);
      color: #fff;
      font-size: 0.65rem;
      font-weight: 700;
      padding: 4px 10px;
      border-radius: 20px;
      letter-spacing: 0.04em;
      text-transform: uppercase;
      z-index: 2;
      box-shadow: 0 2px 8px rgba(255, 107, 74, 0.3);
    }

    .product-badge.sale {
      background: var(--green);
      box-shadow: 0 2px 8px rgba(46, 158, 107, 0.3);
    }

    .product-badge.new {
      background: var(--blue);
      box-shadow: 0 2px 8px rgba(74, 123, 255, 0.3);
    }

    .product-image {
      background: var(--surface-2);
      border-radius: var(--radius);
      height: 180px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 14px;
      color: var(--accent);
      font-size: 3.2rem;
      transition: var(--transition);
      position: relative;
      overflow: hidden;
    }

    .product-image i {
      transition: transform 0.35s cubic-bezier(0.34, 1.56, 0.64, 1);
    }

    .product-card:hover .product-image i {
      transform: scale(1.1) rotate(-4deg);
    }

    .product-info {
      flex: 1;
      display: flex;
      flex-direction: column;
    }

    .product-category {
      font-size: 0.68rem;
      text-transform: uppercase;
      letter-spacing: 0.08em;
      font-weight: 600;
      color: var(--muted);
      margin-bottom: 6px;
    }

    .product-title {
      font-weight: 600;
      font-size: 0.95rem;
      line-height: 1.4;
      margin-bottom: 8px;
      color: var(--text);
      letter-spacing: -0.01em;
    }

    .product-rating {
      display: flex;
      align-items: center;
      gap: 2px;
      font-size: 0.72rem;
      color: var(--yellow);
      margin-bottom: 12px;
    }

    .product-rating span {
      color: var(--muted);
      margin-left: 5px;
      font-weight: 500;
    }

    .product-price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: auto;
      padding-top: 12px;
      border-top: 1px solid var(--border);
    }

    .price {
      font-weight: 800;
      font-size: 1.15rem;
      color: var(--text);
      letter-spacing: -0.02em;
    }

    .price small {
      font-size: 0.78rem;
      font-weight: 500;
      color: var(--muted);
      text-decoration: line-through;
      margin-left: 6px;
    }

    .add-btn {
      background: var(--surface-2);
      border: 1px solid var(--border);
      width: 40px;
      height: 40px;
      border-radius: 12px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--accent);
      font-size: 0.95rem;
      cursor: pointer;
      transition: var(--transition);
    }

    .add-btn:hover {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      transform: scale(1.06);
      box-shadow: var(--shadow-accent);
    }

    /* ----- PROMO BANNER ----- */
    .promo {
      margin-top: 52px;
      background: linear-gradient(135deg, #fff5f0, #ffe8e0 50%, #fff0e8);
      border: 1px solid #ffd4c8;
      border-radius: var(--radius-lg);
      padding: 40px 44px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 28px;
      position: relative;
      overflow: hidden;
      flex-wrap: wrap;
    }

    .promo::before {
      content: '';
      position: absolute;
      top: -40%;
      right: -5%;
      width: 300px;
      height: 300px;
      background: radial-gradient(circle, rgba(255, 107, 74, 0.12), transparent 70%);
      border-radius: 50%;
    }

    .promo-content {
      position: relative;
      z-index: 2;
    }

    .promo-tag {
      color: var(--accent);
      font-weight: 700;
      font-size: 0.78rem;
      text-transform: uppercase;
      letter-spacing: 0.08em;
      margin-bottom: 8px;
      display: flex;
      align-items: center;
      gap: 7px;
    }

    .promo-content h3 {
      font-size: 1.7rem;
      font-weight: 800;
      letter-spacing: -0.03em;
      margin-bottom: 8px;
      max-width: 460px;
      color: var(--text);
    }

    .promo-content p {
      color: var(--text-soft);
      font-size: 0.95rem;
      max-width: 420px;
    }

    .promo .btn {
      position: relative;
      z-index: 2;
    }

    /* ----- FOOTER ----- */
    .footer {
      margin-top: 56px;
      padding: 28px 0 0;
      border-top: 1px solid var(--border);
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 16px;
      color: var(--muted);
      font-size: 0.85rem;
    }

    .footer-brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 600;
      color: var(--text-soft);
    }

    .footer-brand i {
      color: var(--accent);
    }

    .footer-links {
      display: flex;
      gap: 24px;
      flex-wrap: wrap;
    }

    .footer-links a {
      color: var(--muted);
      text-decoration: none;
      transition: var(--transition);
      font-weight: 400;
    }

    .footer-links a:hover {
      color: var(--accent);
    }

    /* ----- TOAST ----- */
    .toast {
      position: fixed;
      bottom: 24px;
      left: 50%;
      transform: translateX(-50%) translateY(120px);
      background: var(--text);
      color: #fff;
      padding: 13px 24px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.88rem;
      box-shadow: var(--shadow-lg);
      opacity: 0;
      transition: transform 0.35s cubic-bezier(0.34, 1.56, 0.64, 1), opacity 0.3s ease;
      pointer-events: none;
      z-index: 999;
      display: flex;
      align-items: center;
      gap: 9px;
    }

    .toast i {
      color: var(--accent-2);
    }

    .toast.show {
      transform: translateX(-50%) translateY(0);
      opacity: 1;
    }

    /* ----- RESPONSIVE ----- */
    @media (max-width: 1024px) {
      .hero {
        grid-template-columns: 1fr;
        gap: 32px;
      }
      .hero-visual {
        order: -1;
      }
      .hero h1 {
        font-size: 2.4rem;
      }
      .trust-bar {
        grid-template-columns: repeat(2, 1fr);
      }
    }

    @media (max-width: 768px) {
      .container {
        padding: 0 16px;
      }
      .nav-links {
        display: none;
      }
      .topbar {
        font-size: 0.72rem;
        padding: 8px 12px;
      }
      .hero {
        margin: 28px 0 36px;
      }
      .hero h1 {
        font-size: 1.9rem;
      }
      .hero p {
        font-size: 0.95rem;
      }
      .hero-cta {
        width: 100%;
      }
      .hero-cta .btn {
        flex: 1;
        padding: 12px 18px;
      }
      .hero-card {
        max-width: 280px;
        padding: 18px;
      }
      .hero-card-img {
        height: 130px;
        font-size: 2.6rem;
      }
      .trust-bar {
        grid-template-columns: 1fr 1fr;
        gap: 8px;
        padding: 16px;
      }
      .trust-item {
        gap: 10px;
      }
      .trust-icon {
        width: 36px;
        height: 36px;
        font-size: 0.9rem;
      }
      .trust-text strong {
        font-size: 0.8rem;
      }
      .trust-text span {
        font-size: 0.7rem;
      }
      .product-grid {
        grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
        gap: 14px;
      }
      .product-card {
        padding: 12px;
      }
      .product-image {
        height: 130px;
        font-size: 2.4rem;
      }
      .product-title {
        font-size: 0.85rem;
      }
      .price {
        font-size: 0.95rem;
      }
      .add-btn {
        width: 36px;
        height: 36px;
        font-size: 0.85rem;
      }
      .promo {
        padding: 28px 20px;
        text-align: center;
        justify-content: center;
      }
      .promo-content h3 {
        font-size: 1.3rem;
      }
      .section-header h2 {
        font-size: 1.3rem;
      }
      .footer {
        flex-direction: column;
        text-align: center;
      }
    }

    @media (max-width: 480px) {
      .hero h1 {
        font-size: 1.6rem;
      }
      .hero-card {
        max-width: 240px;
      }
      .product-grid {
        grid-template-columns: 1fr 1fr;
        gap: 10px;
      }
      .product-image {
        height: 110px;
        font-size: 2rem;
      }
      .product-title {
        font-size: 0.8rem;
      }
      .price {
        font-size: 0.88rem;
      }
      .price small {
        display: none;
      }
      .chip {
        padding: 7px 14px;
        font-size: 0.78rem;
      }
      .trust-bar {
        grid-template-columns: 1fr 1fr;
        padding: 12px;
      }
    }

    /* ----- ANIMATIONS ----- */
    @keyframes fadeUp {
      from { opacity: 0; transform: translateY(14px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .product-card {
      animation: fadeUp 0.45s ease both;
    }

    .product-card:nth-child(1) { animation-delay: 0.02s; }
    .product-card:nth-child(2) { animation-delay: 0.06s; }
    .product-card:nth-child(3) { animation-delay: 0.1s; }
    .product-card:nth-child(4) { animation-delay: 0.14s; }
    .product-card:nth-child(5) { animation-delay: 0.18s; }
    .product-card:nth-child(6) { animation-delay: 0.22s; }
    .product-card:nth-child(7) { animation-delay: 0.26s; }
    .product-card:nth-child(8) { animation-delay: 0.3s; }
  </style>
</head>
<body>

  <a href="#main" class="skip-link">Skip to content</a>

  <!-- ANNOUNCEMENT BAR -->
  <div class="topbar">
    <i class="fas fa-truck-fast"></i> Free shipping on orders over $75 &nbsp;•&nbsp; <strong>30-day</strong> easy returns
  </div>

  <!-- NAVBAR -->
  <nav class="navbar">
    <div class="container nav-inner">
      <a href="#" class="logo">
        <span class="logo-mark"><i class="fas fa-leaf"></i></span>
        <span>Luma<em>Shop</em></span>
      </a>

      <div class="nav-links">
        <a href="#" class="active">Home</a>
        <a href="#">Shop</a>
        <a href="#">Collections</a>
        <a href="#">Sale</a>
        <a href="#">About</a>
      </div>

      <div class="nav-actions">
        <button class="icon-btn" aria-label="Search">
          <i class="fas fa-search"></i>
        </button>
        <button class="icon-btn" aria-label="Wishlist">
          <i class="far fa-heart"></i>
        </button>
        <button class="icon-btn" aria-label="Cart" id="cartButton">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-badge" id="cartCount">2</span>
        </button>
      </div>
    </div>
  </nav>

  <!-- MAIN -->
  <main class="container" id="main">

    <!-- HERO -->
    <section class="hero">
      <div class="hero-text">
        <div class="hero-badge">
          <i class="fas fa-seedling"></i> New season, fresh picks
        </div>
        <h1>Everyday essentials,<br>thoughtfully <em>curated.</em></h1>
        <p>Quality products for modern living — from home to workspace, all at prices that feel good.</p>
        <div class="hero-cta">
          <button class="btn btn-accent" id="exploreBtn">
            <i class="fas fa-bag-shopping"></i> Shop now
          </button>
          <button class="btn btn-outline" id="demoBtn">
            <i class="fas fa-play"></i> How it works
          </button>
        </div>
      </div>

      <div class="hero-visual">
        <div class="float-shape float-1"></div>
        <div class="float-shape float-2"></div>
        <div class="float-shape float-3"></div>

        <div class="hero-card">
          <div class="hero-card-img">
            <i class="fas fa-mug-hot"></i>
          </div>
          <h4>Ceramic Pour-Over Set</h4>
          <p class="hero-desc">Handcrafted • 2-cup capacity</p>
          <div class="hero-price">
            <strong>$42</strong>
            <div class="stars">
              <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- TRUST BAR -->
    <section class="trust-bar">
      <div class="trust-item">
        <div class="trust-icon"><i class="fas fa-truck-fast"></i></div>
        <div class="trust-text">
          <strong>Free delivery</strong>
          <span>On orders $75+</span>
        </div>
      </div>
      <div class="trust-item">
        <div class="trust-icon"><i class="fas fa-rotate-left"></i></div>
        <div class="trust-text">
          <strong>Easy returns</strong>
          <span>30-day policy</span>
        </div>
      </div>
      <div class="trust-item">
        <div class="trust-icon"><i class="fas fa-headset"></i></div>
        <div class="trust-text">
          <strong>24/7 support</strong>
          <span>Real people, always</span>
        </div>
      </div>
      <div class="trust-item">
        <div class="trust-icon"><i class="fas fa-lock"></i></div>
        <div class="trust-text">
          <strong>Secure checkout</strong>
          <span>SSL encrypted</span>
        </div>
      </div>
    </section>

    <!-- PRODUCTS SECTION -->
    <div class="section-header">
      <div>
        <h2>Popular <span>right now</span></h2>
        <p>Loved by our community this week</p>
      </div>
      <a href="#" class="view-all" id="viewAllLink">Browse all <i class="fas fa-arrow-right"></i></a>
    </div>

    <!-- CATEGORIES -->
    <div class="categories">
      <button class="chip active" data-category="all"><i class="fas fa-th-large"></i> All</button>
      <button class="chip" data-category="home"><i class="fas fa-home"></i> Home</button>
      <button class="chip" data-category="tech"><i class="fas fa-laptop"></i> Tech</button>
      <button class="chip" data-category="wellness"><i class="fas fa-heart"></i> Wellness</button>
      <button class="chip" data-category="accessories"><i class="fas fa
