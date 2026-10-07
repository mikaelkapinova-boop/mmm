# YouTube Background — iOS

Application iOS native qui ouvre **YouTube.com** dans un WKWebView.

## Fonctions
- Navigation directe sur YouTube.com.
- Barre d'adresse / recherche.
- Retour, suivant, rechargement.
- Session audio iOS configurée en `AVAudioSession.Category.playback`.
- Interface adaptée à l'iPhone.
- Projet Xcode prêt à ouvrir.

## Limite technique
L'application ne télécharge pas les vidéos et ne contourne pas les mécanismes de YouTube. La continuité de lecture en arrière-plan dépend du comportement de YouTube/WebKit et du type de contenu. Le code prépare correctement la session audio iOS, mais ne peut pas garantir le comportement imposé par le site YouTube.

## Compilation
1. Ouvre `YouTubeBackground.xcodeproj` dans Xcode sur Mac.
2. Sélectionne une équipe de signature dans **Signing & Capabilities**.
3. Sélectionne ton iPhone.
4. Lance **Run**.

L'app démarre directement sur `https://www.youtube.com/`.
