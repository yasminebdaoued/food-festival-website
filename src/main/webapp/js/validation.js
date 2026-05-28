function validateRegisterForm() {
    const fullName = document.getElementById("fullName").value.trim();
    const email = document.getElementById("email").value.trim();
    const password = document.getElementById("password").value.trim();
    const festival = document.getElementById("festival").value;
    const message = document.getElementById("message").value.trim();

    if (fullName === "") {
        alert("Please enter your full name.");
        return false;
    }

    if (email === "") {
        alert("Please enter your email.");
        return false;
    }

    if (!email.includes("@") || !email.includes(".")) {
        alert("Please enter a valid email address.");
        return false;
    }

    if (password === "") {
        alert("Please enter your password.");
        return false;
    }

    if (password.length < 8) {
        alert("Password must have at least 8 characters.");
        return false;
    }

    if (festival === "") {
        alert("Please select your preferred festival.");
        return false;
    }

    if (message === "") {
        alert("Please enter your message or special request.");
        return false;
    }

    return true;
}