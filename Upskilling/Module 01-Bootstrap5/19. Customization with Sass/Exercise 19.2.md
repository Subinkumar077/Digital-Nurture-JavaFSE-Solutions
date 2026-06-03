**Exercise 19.2: Customize primary colors and border radius**

1. Create `scss/_variables.scss` and override values before importing Bootstrap:
   - `$primary: #ff6b35;`
   - `$border-radius: 0.75rem;`
2. Update `scss/main.scss`:
   - `@import "variables";`
   - `@import "../node_modules/bootstrap/scss/bootstrap";`
3. Run the Sass build command again to regenerate `css/main.css`.
4. Refresh the HTML page to see updated colors and rounded corners.
