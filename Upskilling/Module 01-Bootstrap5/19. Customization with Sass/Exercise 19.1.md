**Exercise 19.1: Set up Bootstrap 5 with Sass using npm**

1. Initialize the project: `npm init -y`.
2. Install Bootstrap and Sass: `npm install bootstrap sass`.
3. Create a `scss` folder and add `main.scss` with:
   - `@import "../node_modules/bootstrap/scss/bootstrap";`
4. Add a build script in `package.json`:
   - `"sass": "sass scss/main.scss css/main.css --no-source-map"`
5. Run: `npm run sass` and link `css/main.css` in your HTML file.
