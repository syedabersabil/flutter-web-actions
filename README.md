# Flutter Web Actions

A modern Flutter web application demonstrating automated CI/CD with GitHub Actions.

## Features

- ✨ **Responsive Design**: Works seamlessly across all devices and screen sizes
- 🎨 **Material Design 3**: Modern UI with dark and light theme support
- 🚀 **GitHub Actions CI/CD**: Automated building, testing, and deployment
- ⚡ **Fast Performance**: Optimized for web with fast loading times
- 📱 **Progressive Web App**: PWA support for mobile-like experience

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── pages/
│   ├── home_page.dart        # Home page with hero section
│   ├── about_page.dart       # About page with feature details
│   └── contact_page.dart     # Contact form page
└── widgets/
    ├── app_bar.dart          # Custom app bar with navigation
    ├── hero_section.dart     # Hero banner with call-to-action
    ├── features_section.dart # Features showcase grid
    └── footer.dart           # Footer with links and info
```

## GitHub Actions Workflow

The project includes a comprehensive CI/CD pipeline:

### Triggers
- Push to `main` or `develop` branches
- Pull requests to `main` branch
- Manual workflow dispatch

### Workflow Steps
1. **Checkout**: Get the latest code
2. **Setup Flutter**: Install Flutter SDK (stable channel)
3. **Dependencies**: Download Flutter packages
4. **Analysis**: Run static code analysis
5. **Testing**: Execute unit tests
6. **Build**: Compile Flutter web application
7. **Deploy**: Publish to GitHub Pages (main branch only)
8. **Artifacts**: Upload build files for download

## Getting Started

### Prerequisites
- Flutter SDK (3.10.0 or higher)
- Dart SDK (3.0.0 or higher)
- Web browser for testing

### Local Development

1. Clone the repository:
   ```bash
   git clone https://github.com/syedabersabil/flutter-web-actions.git
   cd flutter-web-actions
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run -d chrome
   ```

4. Build for production:
   ```bash
   flutter build web --release
   ```

### Deployment

The app automatically deploys to GitHub Pages when you push to the main branch. You can access it at:
`https://syedabersabil.github.io/flutter-web-actions/`

## Configuration

### GitHub Pages Setup
1. Go to Repository Settings > Pages
2. Source: Deploy from a branch
3. Branch: `gh-pages` (created automatically by the workflow)
4. Folder: `/ (root)`

### Environment Variables
No additional environment variables are required for basic functionality.

## Customization

### Theming
- Edit `lib/main.dart` to modify app theme
- Update colors in `ColorScheme.fromSeed()`
- Add custom fonts in `pubspec.yaml`

### Content
- Modify page content in `lib/pages/`
- Update widgets in `lib/widgets/`
- Change app metadata in `web/manifest.json`

### Build Configuration
- Adjust base href in `.github/workflows/flutter-web.yml`
- Modify web renderer settings (`canvaskit` vs `html`)
- Update build flags for optimization

## Performance

- Uses CanvasKit renderer for better performance
- Service worker caching for offline support
- Optimized asset loading
- Responsive images and layouts

## Browser Support

- Chrome 84+
- Firefox 78+
- Safari 14+
- Edge 84+

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests: `flutter test`
5. Submit a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Resources

- [Flutter Web Documentation](https://docs.flutter.dev/platform-integration/web)
- [GitHub Actions for Flutter](https://docs.github.com/en/actions)
- [Material Design 3](https://m3.material.io/)
- [Progressive Web Apps](https://web.dev/progressive-web-apps/)

---

Made with ❤️ using Flutter and GitHub Actions