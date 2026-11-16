# 🚀 Defensa Orbital

Juego arcade espacial 2D de estilo retro (*Space Shooter / Shoot 'em Up*) desarrollado en **Godot Engine 3** con **GDScript**, diseñado con controles táctiles integrados para dispositivos móviles y estética *pixel art*.

---

## 📖 Historia

En el año **2358**, la Tierra es atacada por una raza alienígena capaz de manipular la energía pura y desviar rocas espaciales hacia el planeta en una guerra de exterminio. Como piloto de defensa orbital, tu misión es interceptar y destruir tanto las naves invasoras como los meteoros antes de que superen la línea defensiva y alcancen la Tierra.

---

## 🎮 Características principales

- **Acción arcade vertical:** Movimiento omnidireccional en pantalla y disparos láser con animaciones *frame-by-frame*.
- **Variedad de amenazas:**
  - **Naves alienígenas:** Se desplazan a velocidades variables y disparan proyectiles hacia el jugador (+10 puntos al destruirlas).
  - **Meteoros:** 4 variantes visuales con velocidades aleatorias (+5 puntos al destruirlos).
- **Dificultad progresiva:** El intervalo de aparición de enemigos y meteoros se reduce gradualmente conforme avanza la partida.
- **Condición de derrota clásica:** La partida termina si tu nave es impactada o si un enemigo o meteoro logra cruzar el borde inferior de la pantalla sin ser destruido.
- **Controles táctiles en pantalla:** Joystick virtual analógico (`TouchScreenButton`) y botón de disparo integrados en el HUD.
- **Ambientación retro:** Fondo espacial con desplazamiento *parallax* multicapa, tipografías *pixel art* (*8-BIT WONDER*, *Nokia Cellphone FC*) y música/efectos de sonido en formato `.ogg`.

---

## 🕹️ Controles

- **Joystick virtual (pantalla táctil):** Desplazamiento omnidireccional de la nave.
- **Botón táctil / Acción `ui_accept`:** Disparar proyectiles.

---

## 🛠️ Tecnologías utilizadas

- **Motor:** Godot Engine 3.x (GLES2 / 2D)
- **Lenguaje:** GDScript
- **Arte y Tipografías:** Sprites 2D *pixel art* y fuentes retro *8-BIT WONDER* y *Nokia Cellphone FC*
- **Audio:** Pistas y efectos de sonido en formato Ogg Vorbis (`.ogg`)

---

## 📂 Estructura del proyecto

```text
Defensa-Orbital/
├── App/                      # Ícono de la aplicación y branding del estudio (Dupster Studio)
├── Componentes/
│   ├── Esenas/
│   │   ├── Bala/             # Proyectil del jugador
│   │   ├── Bala Alien/       # Proyectil de las naves enemigas
│   │   ├── Explocion/        # Animación y sonido de explosiones
│   │   ├── Historia/         # Pantalla de lore y contexto del juego
│   │   ├── HUD/              # Puntaje, pantalla de Game Over y Joystick táctil
│   │   ├── Menu/             # Menú principal (Start, Historia, Exit)
│   │   ├── Metioro/          # Obstáculos espaciales con 4 variantes
│   │   ├── Nave Alien/       # Enemigos con IA básica de disparo y movimiento
│   │   ├── Nave Roja/        # Nave controlada por el jugador
│   │   └── Nivel/            # Escena principal, fondo parallax y spawners
│   ├── Scripts/
│   │   └── GLOBAL.gd         # Variables globales (puntaje) y utilidades aleatorias
│   └── Tipografias/          # Fuentes pixel art y recursos DynamicFont
├── default_env.tres          # Configuración del entorno por defecto de Godot
├── export_presets.cfg        # Configuración de exportación del proyecto
├── project.godot             # Archivo principal de configuración de Godot Engine
├── LICENSE                   # Licencia MIT
└── README.md                 # Documentación del proyecto
```

---

## 🚀 Cómo ejecutar el proyecto

1. Clona este repositorio en tu equipo:
   ```bash
   git clone https://github.com/Dani-Code117/Defensa-Orbital.git
   ```
2. Abre **Godot Engine 3.x** (por ejemplo, Godot 3.5).
3. Haz clic en **Importar** y selecciona el archivo `project.godot` en la raíz del proyecto.
4. Presiona **F5** (o el botón *Play*) para ejecutar el juego.

---

## 👨‍💻 Créditos y Recursos de Terceros

- **Desarrollo, Programación y Arte:** Daniel Valenzuela Orrantia — **Dupster Studio**
- **Música:** Patrick de Arteaga (*New Hope*, *Common Fight*, *Game Over*) — Licencia Creative Commons
- **Tipografías:**
  - *8-BIT WONDER* por Joiro Hatagaya
  - *Early GameBoy* por LDEJRuff (CC BY-SA 3.0)
  - *Nokia Cellphone FC* por Zeh Fernando (Fator Caos)
  - *Retro Gaming* por Vasily Draigo (Daymarius)
  - *Upheaval TT* por Brian Kent (Nigma Fonts)

---

## 📄 Licencia

Este proyecto se distribuye bajo la licencia **MIT**. Consulta el archivo `LICENSE` para más detalles.