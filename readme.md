# 📝 Command-Line Blog Generator

A simple Ruby tool that converts Markdown (`.md`) files into static HTML pages to build a minimal blog. This project helps practice **file I/O**, **string manipulation**, and **templating** using Ruby.

---

## 🚀 Features

- Convert Markdown files into HTML
- Generate a static blog site from a folder of `.md` files
- Automatically wrap content in a clean HTML template
- Simple command-line interface

---

## 📂 Project Structure

```

blog\_generator/
├── markdowns/         # Folder containing .md blog posts
├── output/            # Folder where generated HTML files go
├── template.html      # Base HTML template
├── blog\_generator.rb  # Main Ruby script
└── README.md

```

---

## 🛠️ How to Use

### 1. 🔧 Prerequisites

- Ruby installed (`ruby -v` to check)
- Basic knowledge of Markdown syntax

---

### 2. 📦 Clone the Project

```bash
git clone https://github.com/yourusername/blog_generator.git
cd blog_generator
```

---

### 3. 📁 Add Markdown Files

- Place your `.md` blog posts into the `markdowns/` folder.
- Example:

```markdown
# My First Post

This is an example blog post written in Markdown.
```

---

### 4. 🧠 Create/Edit Template

Edit `template.html` and include `{{content}}` where the Markdown should be inserted:

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>My Blog</title>
  </head>
  <body>
    <div class="blog-post">{{content}}</div>
  </body>
</html>
```

---

### 5. ▶️ Run the Generator

```bash
ruby blog_generator.rb
```

- All `.md` files will be converted to `.html` in the `output/` folder using the `template.html`.

---

## 📌 Example Output

If your file is `hello.md`, the tool generates `hello.html` like:

```html
<!DOCTYPE html>
<html>
  <head>
    <title>My Blog</title>
  </head>
  <body>
    <div class="blog-post">
      <h1>Hello</h1>
      <p>This is my first blog post.</p>
    </div>
  </body>
</html>
```

---

## 🧠 What You’ll Learn

- File handling in Ruby (`Dir`, `File`, `IO`)
- String substitution and templating
- Building tools with clean CLI structure

---

## 👤 Author

**ODIIX**
🚀 Software Engineer | 💻 Embedded & Cybersecurity Enthusiast
📍 Rwanda Coding Academy
🔗 [GitHub Profile](https://github.com/mahingaRodin)

---

## 📝 License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
