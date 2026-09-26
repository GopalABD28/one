<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>NexusShop — Premium Dark Store</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

  <style>
    /* ----- RESET & BASE ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      /* Dark premium palette */
      --bg: #0b0e14;
      --bg-elev: #111624;
      --surface: #161d2e;
      --surface-2: #1c2438;
      --surface-3: #232c44;
      --text: #f0f3fa;
      --text-soft: #b7c0d4;
      --muted: #7c89a3;
      --border: #252f47;
      --border-light: #2f3b58;

      /* Gold accent */
      --gold: #f5c451;
      --gold-2: #ffd97a;
      --gold-soft: rgba(245, 196, 81, 0.12);
      --gold-glow: rgba(245, 196, 81, 0.25);

      /* Secondary accent */
      --teal: #38d9a9;
      --rose: #f0708a;
      --violet: #8b7cf6;

      --radius-sm: 10px;
      --radius: 16px;
      --radius-lg: 22px;

      --shadow-sm: 0 2px 8px rgba(0,0,0,0.25);
      --shadow-md: 0 12px 32px rgba(0,0,0,0.4);
      --shadow-gold: 0 8px 28px -8px rgba(245,196,81,0.35);
      --transition: all 0.25s cubic-bezier(0.4, 0, 0.2, 1);
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.55;
      -webkit-font-smoothing: antialiased;
      min-height: 100vh;
      background-image:
        radial-gradient(ellipse 80% 50% at 50% -20%, rgba(139, 124, 246, 0.15), transparent),
        radial-gradient(ellipse 60% 40% at 90% 10%, rgba(245, 196, 81, 0.08), transparent);
      background-attachment: fixed;
      padding-bottom: 60px;
    }

    .container {
      max-width: 1340px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* ----- ANNOUNCEMENT BAR ----- */
    .topbar {
      background: linear-gradient(90deg, var(--violet), var(--rose), var(--gold));
      padding: 8px 0;
      text-align: center;
      font-size: 0.8rem;
      font-weight: 600;
      letter-spacing: 0.03em;
      color: #0b0e14;
      position: relative;
      z-index: 60;
    }

    .topbar i {
      margin-right: 6px;
    }

    /* ----- NAVBAR ----- */
    .navbar {
      background: rgba(11, 14, 20, 0.75);
      backdrop-filter: blur(20px) saturate(180%);
      -webkit-backdrop-filter: blur(20px) saturate(180%);
      border-bottom: 1px solid var(--border);
      position: sticky;
      top: 0;
      z-index: 50;
      padding: 14px 0;
    }

    .nav-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 800;
      font-size: 1.4rem;
      letter-spacing: -0.03em;
      color: var(--text);
      text-decoration: none;
    }

    .logo-mark {
      width: 38px;
      height: 38px;
      border-radius: 12px;
      background: linear-gradient(135deg, var(--gold), var(--gold-2));
      display: flex;
      align-items: center;
      justify-content: center;
      color: #0b0e14;
      font-size: 1.1rem;
      box-shadow: var(--shadow-gold);
    }

    .logo span {
      background: linear-gradient(135deg, var(--gold-2), var(--gold));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 4px;
      background: var(--surface);
      padding: 5px;
      border-radius: 40px;
      border: 1px solid var(--border);
    }

    .nav-links a {
      text-decoration: none;
      color: var(--text-soft);
      font-weight: 600;
      font-size: 0.88rem;
      padding: 8px 18px;
      border-radius: 30px;
      transition: var(--transition);
      white-space: nowrap;
      position: relative;
    }

    .nav-links a:hover {
      color: var(--gold);
    }

    .nav-links a.active {
      background: linear-gradient(135deg, var(--gold), var(--gold-2));
      color: #0b0e14;
      box-shadow: 0 4px 14px -4px var(--gold-glow);
    }

    .nav-actions {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .icon-btn {
      background: var(--surface);
      border: 1px solid var(--border);
      width: 42px;
      height: 42px;
      border-radius: 12px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--text-soft);
      font-size: 1.05rem;
      cursor: pointer;
      transition: var(--transition);
      position: relative;
    }

    .icon-btn:hover {
      background: var(--surface-3);
      color: var(--gold);
      border-color: var(--border-light);
      transform: translateY(-2px);
    }

    .cart-badge {
      position: absolute;
      top: -6px;
      right: -6px;
      background: linear-gradient(135deg, var(--gold), var(--gold-2));
      color: #0b0e14;
      font-size: 0.68rem;
      font-weight: 800;
      min-width: 20px;
      height: 20px;
      padding: 0 5px;
      border-radius: 20px;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid var(--bg);
    }

    /* ----- HERO ----- */
    .hero {
      margin: 48px 0 56px;
      display: grid;
      grid-template-columns: 1.2fr 0.8fr;
      gap: 40px;
      align-items: center;
    }

    .hero-badge {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: var(--gold-soft);
      border: 1px solid rgba(245, 196, 81, 0.3);
      color: var(--gold);
      font-size: 0.78rem;
      font-weight: 700;
      padding: 7px 16px;
      border-radius: 30px;
      margin-bottom: 20px;
      letter-spacing: 0.02em;
      text-transform: uppercase;
    }

    .hero-badge i {
      font-size: 0.85rem;
    }

    .hero h1 {
      font-size: 3.2rem;
      font-weight: 800;
      line-height: 1.1;
      letter-spacing: -0.04em;
      margin-bottom: 20px;
      color: var(--text);
    }

    .hero h1 em {
      font-style: normal;
      background: linear-gradient(135deg, var(--gold-2), var(--gold) 60%, var(--rose));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .hero p {
      color: var(--text-soft);
      font-size: 1.08rem;
      max-width: 520px;
      margin-bottom: 32px;
    }

    .hero-cta {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 14px 28px;
      border-radius: var(--radius);
      font-weight: 700;
      font-size: 0.95rem;
      cursor: pointer;
      transition: var(--transition);
      border: none;
      text-decoration: none;
      font-family: inherit;
      letter-spacing: -0.01em;
    }

    .btn-gold {
      background: linear-gradient(135deg, var(--gold), var(--gold-2));
      color: #0b0e14;
      box-shadow: var(--shadow-gold);
    }

    .btn-gold:hover {
      transform: translateY(-3px);
      box-shadow: 0 14px 34px -8px var(--gold-glow);
    }

    .btn-ghost {
      background: var(--surface);
      border: 1px solid var(--border);
      color: var(--text);
    }

    .btn-ghost:hover {
      background: var(--surface-3);
      border-color: var(--border-light);
      transform: translateY(-3px);
    }

    /* hero visual */
    .hero-visual {
      position: relative;
      height: 340px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .orb {
      position: absolute;
      border-radius: 50%;
      filter: blur(60px);
      opacity: 0.5;
    }

    .orb-1 {
      width: 260px;
      height: 260px;
      background: var(--violet);
      top: 10%;
      left: 0%;
    }

    .orb-2 {
      width: 220px;
      height: 220px;
      background: var(--gold);
      bottom: 5%;
      right: 5%;
      opacity: 0.35;
    }

    .orb-3 {
      width: 180px;
      height: 180px;
      background: var(--teal);
      top: 40%;
      right: 25%;
      opacity: 0.25;
    }

    .hero-card {
      position: relative;
      background: linear-gradient(160deg, var(--surface-2), var(--surface));
      border: 1px solid var(--border-light);
      border-radius: var(--radius-lg);
      padding: 28px;
      width: 100%;
      max-width: 320px;
      box-shadow: var(--shadow-md);
      z-index: 2;
      backdrop-filter: blur(10px);
    }

    .hero-card-img {
      width: 100%;
      height: 140px;
      border-radius: var(--radius);
      background: linear-gradient(135deg, var(--violet), var(--rose));
      display: flex;
      align-items: center;
      justify-content: center;
      color: rgba(255,255,255,0.9);
      font-size: 3rem;
      margin-bottom: 18px;
    }

    .hero-card h4 {
      font-size: 1.05rem;
      font-weight: 700;
      margin-bottom: 4px;
    }

    .hero-card .hero-price {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 14px;
    }

    .hero-price strong {
      color: var(--gold);
      font-size: 1.3rem;
      font-weight: 800;
    }

    .hero-price .stars {
      color: var(--gold);
      font-size: 0.8rem;
    }

    /* ----- STATS STRIP ----- */
    .stats {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 16px;
      margin-bottom: 56px;
      padding: 24px;
      background: var(--bg-elev);
      border: 1px solid var(--border);
      border-radius: var(--radius-lg);
    }

    .stat {
      text-align: center;
      padding: 8px;
      border-right: 1px solid var(--border);
    }

    .stat:last-child {
      border-right: none;
    }

    .stat i {
      color: var(--gold);
      font-size: 1.3rem;
      margin-bottom: 8px;
    }

    .stat strong {
      display: block;
      font-size: 1.4rem;
      font-weight: 800;
      letter-spacing: -0.02em;
    }

    .stat span {
      color: var(--muted);
      font-size: 0.82rem;
      font-weight: 500;
    }

    /* ----- SECTION HEADER ----- */
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      margin-bottom: 28px;
      gap: 20px;
      flex-wrap: wrap;
    }

    .section-header h2 {
      font-size: 1.7rem;
      font-weight: 800;
      letter-spacing: -0.03em;
    }

    .section-header h2 span {
      color: var(--gold);
    }

    .section-header p {
      color: var(--muted);
      font-size: 0.9rem;
      margin-top: 4px;
      font-weight: 500;
    }

    .view-all {
      color: var(--gold);
      font-weight: 700;
      text-decoration: none;
      font-size: 0.9rem;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: var(--transition);
    }

    .view-all:hover {
      gap: 10px;
    }

    /* ----- CATEGORIES ----- */
    .categories {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      margin-bottom: 36px;
    }

    .chip {
      padding: 10px 22px;
      border-radius: 40px;
      background: var(--surface);
      border: 1px solid var(--border);
      font-weight: 600;
      font-size: 0.88rem;
      color: var(--text-soft);
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 9px;
      font-family: inherit;
    }

    .chip i {
      font-size: 0.85rem;
      color: var(--muted);
      transition: var(--transition);
    }

    .chip:hover {
      border-color: var(--gold);
      color: var(--gold);
      transform: translateY(-2px);
    }

    .chip:hover i {
      color: var(--gold);
    }

    .chip.active {
      background: linear-gradient(135deg, var(--gold), var(--gold-2));
      border-color: transparent;
      color: #0b0e14;
      box-shadow: 0 6px 18px -6px var(--gold-glow);
    }

    .chip.active i {
      color: #0b0e14;
    }

    /* ----- PRODUCT GRID ----- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
      gap: 24px;
    }

    .product-card {
      background: linear-gradient(165deg, var(--surface-2), var(--surface));
      border: 1px solid var(--border);
      border-radius: var(--radius-lg);
      padding: 18px;
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      position: relative;
      overflow: hidden;
    }

    .product-card::before {
      content: '';
      position: absolute;
      inset: 0;
      border-radius: var(--radius-lg);
      padding: 1px;
      background: linear-gradient(140deg, transparent 40%, rgba(245,196,81,0.5), transparent 70%);
      -webkit-mask: linear-gradient(#fff 0 0) content-box, linear-gradient(#fff 0 0);
      -webkit-mask-composite: xor;
      mask-composite: exclude;
      opacity: 0;
      transition: var(--transition);
      pointer-events: none;
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-md);
      border-color: var(--border-light);
    }

    .product-card:hover::before {
      opacity: 1;
    }

    .product-badge {
      position: absolute;
      top: 18px;
      left: 18px;
      background: linear-gradient(135deg, var(--gold), var(--gold-2));
      color: #0b0e14;
      font-size: 0.68rem;
      font-weight: 800;
      padding: 5px 12px;
      border-radius: 30px;
      letter-spacing: 0.04em;
      text-transform: uppercase;
      z-index: 2;
      box-shadow: 0 4px 12px -4px var(--gold-glow);
    }

    .product-badge.sale {
      background: linear-gradient(135deg, var(--rose), #ff9db2);
      color: #2b0d14;
    }

    .product-badge.new {
      background: linear-gradient(135deg, var(--teal), #7bffd4);
      color: #04291e;
    }

    .product-image {
      background: radial-gradient(circle at 50% 30%, var(--surface-3), var(--surface-2));
      border-radius: var(--radius);
      height: 190px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 18px;
      color: var(--gold);
      font-size: 3.6rem;
      transition: var(--transition);
      position: relative;
      overflow: hidden;
      border: 1px solid var(--border);
    }

    .product-image::after {
      content: '';
      position: absolute;
      inset: 0;
      background: radial-gradient(circle at 70% 20%, rgba(245,196,81,0.12), transparent 60%);
      opacity: 0;
      transition: var(--transition);
    }

    .product-card:hover .product-image {
      background: radial-gradient(circle at 50% 30%, #2a3352, var(--surface-3));
    }

    .product-card:hover .product-image::after {
      opacity: 1;
    }

    .product-image i {
      transition: transform 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
      position: relative;
      z-index: 1;
    }

    .product-card:hover .product-image i {
      transform: scale(1.12) rotate(-3deg);
    }

    .product-info {
      flex: 1;
      display: flex;
      flex-direction: column;
    }

    .product-category {
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.08em;
      font-weight: 700;
      color: var(--muted);
      margin-bottom: 8px;
    }

    .product-title {
      font-weight: 700;
      font-size: 1rem;
      line-height: 1.4;
      margin-bottom: 10px;
      color: var(--text);
      letter-spacing: -0.01em;
    }

    .product-rating {
      display: flex;
      align-items: center;
      gap: 3px;
      font-size: 0.75rem;
      color: var(--gold);
      margin-bottom: 12px;
    }

    .product-rating span {
      color: var(--muted);
      margin-left: 6px;
      font-weight: 600;
    }

    .product-price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: auto;
      padding-top: 14px;
      border-top: 1px solid var(--border);
    }

    .price {
      font-weight: 800;
      font-size: 1.25rem;
      color: var(--text);
      letter-spacing: -0.02em;
    }

    .price small {
      font-size: 0.82rem;
      font-weight: 600;
      color: var(--muted);
      text-decoration: line-through;
      margin-left: 8px;
    }

    .add-btn {
      background: var(--surface-3);
      border: 1px solid var(--border-light);
      width: 42px;
      height: 42px;
      border-radius: 12px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--gold);
      font-size: 1rem;
      cursor: pointer;
      transition: var(--transition);
    }

    .add-btn:hover {
      background: linear-gradient(135deg, var(--gold), var(--gold-2));
      color: #0b0e14;
      transform: scale(1.08) rotate(90deg);
      border-color: transparent;
      box-shadow: var(--shadow-gold);
    }

    /* ----- PROMO BANNER ----- */
    .promo {
      margin-top: 56px;
      background: linear-gradient(135deg, #1a1230, #2a1a3f 50%, #1a2a3f);
      border: 1px solid var(--border-light);
      border-radius: var(--radius-lg);
      padding: 44px 48px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 32px;
      position: relative;
      overflow: hidden;
      flex-wrap: wrap;
    }

    .promo::before {
      content: '';
      position: absolute;
      top: -50%;
      right: -10%;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, rgba(245,196,81,0.2), transparent 70%);
      border-radius: 50%;
    }

    .promo::after {
      content: '';
      position: absolute;
      bottom: -60%;
      left: -5%;
      width: 350px;
      height: 350px;
      background: radial-gradient(circle, rgba(139,124,246,0.25), transparent 70%);
      border-radius: 50%;
    }

    .promo-content {
      position: relative;
      z-index: 2;
    }

    .promo-content .promo-tag {
      color: var(--gold);
      font-weight: 700;
      font-size: 0.8rem;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      margin-bottom: 10px;
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .promo-content h3 {
      font-size: 1.9rem;
      font-weight: 800;
      letter-spacing: -0.03em;
      margin-bottom: 10px;
      max-width: 480px;
    }

    .promo-content p {
      color: var(--text-soft);
      font-size: 1rem;
      max-width: 440px;
    }

    .promo .btn {
      position: relative;
      z-index: 2;
    }

    /* ----- FOOTER ----- */
    .footer {
      margin-top: 64px;
      padding: 32px 0 0;
      border-top: 1px solid var(--border);
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 20px;
      color: var(--muted);
      font-size: 0.88rem;
    }

    .footer-brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 700;
      color: var(--text-soft);
    }

    .footer-brand i {
      color: var(--gold);
    }

    .footer-links {
      display: flex;
      gap: 26px;
      flex-wrap: wrap;
    }

    .footer-links a {
      color: var(--muted);
      text-decoration: none;
      transition: var(--transition);
      font-weight: 500;
    }

    .footer-links a:hover {
      color: var(--gold);
    }

    /* ----- TOAST ----- */
    .toast {
      position: fixed;
      bottom: 28px;
      left: 50%;
      transform: translateX(-50%) translateY(100px);
      background: linear-gradient(135deg, var(--surface-3), var(--surface-2));
      border: 1px solid var(--border-light);
      color: var(--text);
      padding: 14px 26px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.9rem;
      box-shadow: var(--shadow-md);
      opacity: 0;
      transition: transform 0.35s cubic-bezier(0.34, 1.56, 0.64, 1), opacity 0.35s ease;
      pointer-events: none;
      z-index: 999;
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .toast i {
      color: var(--gold);
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
        height: 300px;
        order: -1;
      }
      .hero h1 {
        font-size: 2.6rem;
      }
      .stats {
        grid-template-columns: repeat(2, 1fr);
      }
      .stat:nth-child(2) {
        border-right: none;
      }
      .stat:nth-child(1),
      .stat:nth-child(2) {
        border-bottom: 1px solid var(--border);
        padding-bottom: 16px;
      }
      .stat:nth-child(3),
      .stat:nth-child(4) {
        padding-top: 8px;
      }
    }

    @media (max-width: 768px) {
      .container {
        padding: 0 18px;
      }
      .nav-links {
        display: none;
      }
      .topbar {
        font-size: 0.72rem;
        padding: 6px 12px;
      }
      .hero {
        margin: 32px 0 40px;
      }
      .hero h1 {
        font-size: 2rem;
      }
      .hero p {
        font-size: 0.98rem;
      }
      .hero-cta {
        width: 100%;
      }
      .hero-cta .btn {
        flex: 1;
        padding: 12px 20px;
      }
      .hero-visual {
        height: 240px;
      }
      .hero-card {
        max-width: 260px;
        padding: 20px;
      }
      .hero-card-img {
        height: 110px;
        font-size: 2.4rem;
      }
      .product-grid {
        grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
        gap: 16px;
      }
      .product-card {
        padding: 14px;
      }
      .product-image {
        height: 140px;
        font-size: 2.6rem;
      }
      .product-title {
        font-size: 0.9rem;
      }
      .price {
        font-size: 1rem;
      }
      .add-btn {
        width: 38px;
        height: 38px;
      }
      .promo {
        padding: 32px 24px;
        text-align: center;
        justify-content: center;
      }
      .promo-content h3 {
        font-size: 1.5rem;
      }
      .section-header h2 {
        font-size: 1.4rem;
      }
      .footer {
        flex-direction: column;
        text-align: center;
      }
    }

    @media (max-width: 480px) {
      .hero h1 {
        font-size: 1.7rem;
      }
      .product-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }
      .product-image {
        height: 120px;
        font-size: 2.2rem;
      }
      .chip {
        padding: 8px 16px;
        font-size: 0.8rem;
      }
      .stats {
        padding: 16px;
        gap: 8px;
      }
      .stat strong {
        font-size: 1.1rem;
      }
      .stat span {
        font-size: 0.72rem;
      }
    }

    /* ----- ANIMATIONS ----- */
    @keyframes fadeUp {
      from { opacity: 0; transform: translateY(16px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .product-card {
      animation: fadeUp 0.5s ease both;
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

  <!-- ANNOUNCEMENT BAR -->
  <div class="topbar">
    <i class="fas fa-bolt"></i> FREE SHIPPING ON ORDERS OVER $99 &nbsp;•&nbsp; USE CODE <strong>NEXUS25</strong> FOR 25% OFF
  </div>

  <!-- NAVBAR -->
  <nav class="navbar">
    <div class="container nav-inner">
      <a href="#" class="logo">
        <span class="logo-mark"><i class="fas fa-bolt"></i></span>
        <span>NexusShop</span>
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

  <!-- MAIN -->
  <main class="container">

    <!-- HERO -->
    <section class="hero">
      <div class="hero-text">
        <div class="hero-badge">
          <i class="fas fa-crown"></i> Premium collection 2025
        </div>
        <h1>Shop smarter.<br>Live <em>better.</em></h1>
        <p>Handpicked premium products, exclusive member deals, and fast delivery — all in one beautifully curated store.</p>
        <div class="hero-cta">
          <button class="btn btn-gold">
            <i class="fas fa-bag-shopping"></i> Explore now
          </button>
          <button class="btn btn-ghost">
            <i class="fas fa-play"></i> Watch demo
          </button>
        </div>
      </div>

      <div class="hero-visual">
        <div class="orb orb-1"></div>
        <div class="orb orb-2"></div>
        <div class="orb orb-3"></div>

        <div class="hero-card">
          <div class="hero-card-img">
            <i class="fas fa-headphones"></i>
          </div>
          <h4>Nova Wireless Pro</h4>
          <p style="color:var(--muted);font-size:0.82rem;">Active noise cancelling • 40h battery</p>
          <div class="hero-price">
            <strong>$189</strong>
            <div class="stars">
              <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- STATS -->
    <section class="stats">
      <div class="stat">
        <i class="fas fa-truck-fast"></i>
        <strong>50K+</strong>
        <span>Happy customers</span>
      </div>
      <div class="stat">
        <i class="fas fa-box"></i>
        <strong>12K+</strong>
        <span>Products shipped</span>
      </div>
      <div class="stat">
        <i class="fas fa-star"></i>
        <strong>4.9/5</strong>
        <span>Average rating</span>
      </div>
      <div class="stat">
        <i class="fas fa-shield-halved"></i>
        <strong>100%</strong>
        <span>Secure checkout</span>
      </div>
    </section>

    <!-- PRODUCTS SECTION -->
    <div class="section-header">
      <div>
        <h2>Featured <span>products</span></h2>
        <p>Top picks chosen just for you</p>
      </div>
      <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
    </div>

    <!-- CATEGORIES -->
    <div class="categories">
      <button class="chip active"><i class="fas fa-th-large"></i> All</button>
      <button class="chip"><i class="fas fa
