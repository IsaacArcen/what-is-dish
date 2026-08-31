/* Animated globe illustration built with CSS + SVG */
export default function GlobeIllustration() {
  return (
    <svg
      width="320"
      height="320"
      viewBox="0 0 320 320"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      aria-label="Globe with food illustrations"
    >
      {/* Shadow */}
      <ellipse cx="160" cy="298" rx="72" ry="12" fill="rgba(0,0,0,0.08)" />

      {/* Globe body */}
      <circle cx="160" cy="156" r="120" fill="#4a9cd6" />

      {/* Land masses */}
      <ellipse cx="130" cy="120" rx="38" ry="28" fill="#5cb85c" />
      <ellipse cx="178" cy="138" rx="28" ry="22" fill="#5cb85c" />
      <ellipse cx="115" cy="165" rx="22" ry="16" fill="#5cb85c" />
      <ellipse cx="195" cy="168" rx="18" ry="14" fill="#5cb85c" />
      <ellipse cx="150" cy="185" rx="30" ry="14" fill="#5cb85c" />
      <ellipse cx="135" cy="148" rx="14" ry="10" fill="#68c868" />
      <ellipse cx="170" cy="115" rx="16" ry="12" fill="#68c868" />

      {/* Globe sheen */}
      <circle cx="160" cy="156" r="120" fill="url(#globeSheen)" />

      {/* Smile */}
      <path
        d="M145 172 Q160 188 175 172"
        stroke="#1b2a4a"
        strokeWidth="4"
        strokeLinecap="round"
        fill="none"
      />
      {/* Eyes */}
      <circle cx="145" cy="158" r="6" fill="#1b2a4a" />
      <circle cx="175" cy="158" r="6" fill="#1b2a4a" />
      <circle cx="147" cy="156" r="2" fill="white" />
      <circle cx="177" cy="156" r="2" fill="white" />

      {/* Globe outline */}
      <circle cx="160" cy="156" r="120" stroke="#3a7cbf" strokeWidth="3" fill="none" />

      {/* ---- Food items around the globe ---- */}

      {/* Pizza (top-right) */}
      <g transform="translate(248, 52) rotate(15)">
        <polygon points="0,-30 26,15 -26,15" fill="#f5c842" />
        <polygon points="0,-30 26,15 -26,15" fill="none" stroke="#e8a800" strokeWidth="2" />
        <circle cx="-6" cy="0" r="4" fill="#e84040" />
        <circle cx="8" cy="4" r="3" fill="#e84040" />
        <circle cx="0" cy="-10" r="3.5" fill="#e84040" />
      </g>

      {/* Chopsticks + noodle bowl (right) */}
      <g transform="translate(270, 148)">
        <ellipse cx="0" cy="14" rx="24" ry="8" fill="#f5e6c8" stroke="#c9a96e" strokeWidth="2" />
        <ellipse cx="0" cy="10" rx="24" ry="8" fill="#f5e6c8" stroke="#c9a96e" strokeWidth="2" />
        <path d="M-14 10 Q0 2 14 10" stroke="#e8811a" strokeWidth="3" fill="none" strokeLinecap="round" />
        <path d="M-10 8 Q0 0 10 8" stroke="#e8811a" strokeWidth="2" fill="none" strokeLinecap="round" />
        {/* chopsticks */}
        <line x1="-4" y1="-18" x2="6" y2="6" stroke="#8B5E3C" strokeWidth="3" strokeLinecap="round" />
        <line x1="4" y1="-20" x2="14" y2="4" stroke="#8B5E3C" strokeWidth="3" strokeLinecap="round" />
      </g>

      {/* Sushi roll (bottom-right) */}
      <g transform="translate(230, 240)">
        <ellipse cx="0" cy="0" rx="22" ry="14" fill="#2d2d2d" />
        <ellipse cx="0" cy="0" rx="16" ry="9" fill="#f5f5dc" />
        <ellipse cx="0" cy="0" rx="9" ry="5" fill="#ff6b6b" />
        <ellipse cx="0" cy="0" rx="5" ry="3" fill="#ff4444" />
      </g>

      {/* Croissant (bottom-center) */}
      <g transform="translate(148, 268)">
        <path d="M-28 0 Q-14-20 0-8 Q14-20 28 0 Q14 16 0 8 Q-14 16 -28 0Z" fill="#f5c842" />
        <path d="M-28 0 Q-14-20 0-8 Q14-20 28 0 Q14 16 0 8 Q-14 16 -28 0Z" fill="none" stroke="#c9930a" strokeWidth="2" />
        <path d="M-20-2 Q0-14 20-2" stroke="#c9930a" strokeWidth="1.5" fill="none" />
      </g>

      {/* Empanada (bottom-left) */}
      <g transform="translate(72, 234)">
        <path d="M-22 8 Q-18-22 0-22 Q18-22 22 8 Q8 24 0 24 Q-8 24 -22 8Z" fill="#e8c46a" />
        <path d="M-22 8 Q-18-22 0-22 Q18-22 22 8 Q8 24 0 24 Q-8 24 -22 8Z" fill="none" stroke="#c9930a" strokeWidth="2" />
        <path d="M-12-10 Q0-18 12-10" stroke="#c9930a" strokeWidth="2" fill="none" />
        <path d="M-16 4 Q0-6 16 4" stroke="#c9930a" strokeWidth="1.5" fill="none" />
      </g>

      {/* Taco (top-left) */}
      <g transform="translate(68, 68)">
        <path d="M-26 12 Q0-28 26 12Z" fill="#f5c842" stroke="#c9930a" strokeWidth="2" />
        <ellipse cx="-6" cy="6" rx="5" ry="4" fill="#5cb85c" />
        <ellipse cx="6" cy="4" rx="5" ry="4" fill="#e84040" />
        <ellipse cx="0" cy="8" rx="4" ry="3" fill="#f5a623" />
      </g>

      {/* Chili pepper accent (left) */}
      <g transform="translate(36, 160)">
        <path d="M0-12 Q10 0 6 14 Q0 18 -6 14 Q-10 0 0-12Z" fill="#e84040" />
        <line x1="0" y1="-12" x2="4" y2="-20" stroke="#5cb85c" strokeWidth="2" strokeLinecap="round" />
      </g>

      <defs>
        <radialGradient id="globeSheen" cx="38%" cy="32%" r="62%" fx="38%" fy="32%">
          <stop offset="0%" stopColor="white" stopOpacity="0.18" />
          <stop offset="100%" stopColor="white" stopOpacity="0" />
        </radialGradient>
      </defs>
    </svg>
  );
}
