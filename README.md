# Food Festival Website
## For Mac
### 1. Install Java JDK
Download and install Java JDK.
After installation, open Terminal and verify Java is installed:
```bash
java -version
```
If a Java version is displayed, Java is working correctly.

---

### 2. Download Apache Tomcat
Download and extract Apache Tomcat.
Place the Tomcat folder somewhere easy to find, for example:

```text
Desktop/apache-tomcat-10.1.54
```

---
### 3. Clone or Pull the Project

Clone the repository:

```bash
git clone https://github.com/your-repository-link.git
```

Navigate to the project folder:

```bash
cd ~/food-festival-website
```

Open the project in VS Code:

```bash
code .
```

If you already have the project, update it with:

```bash
git pull
```

---

### 4. Copy the Project into Tomcat webapps

Tomcat serves web applications from the `webapps` folder.

Copy the project into:

```text
apache-tomcat-10.1.54/webapps
```

Example:

```bash
cp -R ~/food-festival-website ~/Desktop/apache-tomcat-10.1.54/webapps/
```

---

### 5. Start Tomcat

Run:

```bash
~/Desktop/apache-tomcat-10.1.54/bin/startup.sh
```

If permission is denied:

```bash
chmod +x ~/Desktop/apache-tomcat-10.1.54/bin/*.sh
```

Then run:

```bash
~/Desktop/apache-tomcat-10.1.54/bin/startup.sh
```

again.

---

### 6. Open the Website

Open your browser and go to:

```text
http://localhost:8080/food-festival-website/index.html
```

Registration Page:

```text
http://localhost:8080/food-festival-website/register.html
```

---

## Technologies Used

* HTML5
* CSS3
* JavaScript
* JSP
* Apache Tomcat 10
* Java JDK

---

## Features

* Home Page
* Festival Details Page
* Visitor Registration Form
* Form Validation
* Registration Confirmation Page
* Login Page
* Responsive Mobile-Friendly Design

## Alternative Setup (Using Tomcat Context Configuration)

Instead of copying the project into the `webapps` folder every time, you can configure Tomcat to use the project directory directly.

### Step 1

Navigate to Tomcat's localhost configuration folder:

```text
apache-tomcat-10.1.54/conf/Catalina/localhost
```

### Step 2

Create a file named:

```text
food-festival-website.xml
```

### Step 3

Add the following content:

```xml
<Context docBase="/Users/USERNAME/food-festival-website/src/main/webapp" />
```

Replace `USERNAME` with your own macOS username.

### Step 4

Restart Tomcat.

### Step 5

Open:

```text
http://localhost:8080/food-festival-website/index.html
```

Using this method, any changes made inside the project folder will be reflected immediately after refreshing the browser, without copying files into `webapps` again.

