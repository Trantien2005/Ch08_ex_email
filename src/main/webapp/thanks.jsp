<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Thanks</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<div class="form-container">
    <h1>🎉 Thanks for joining our email list!!!</h1>
    <p>Here is the information that you entered:</p>

    <div class="thank-you-content">
        <p><b>Email:</b> ${user.email}</p>
        <p><b>First Name:</b> ${user.firstName}</p>
        <p><b>Last Name:</b> ${user.lastName}</p>

        <p>This email address was added to our list on 
            <b>${requestScope.currentDate}</b></p>

        <p>The first address on our list is <b>${sessionScope.users[0].email}</b></p>
        <p>The second address on our list is <b>${sessionScope.users[1].email}</b></p>

		<p>For customer service, contact ${initParam.custServEmail}</p>

        <p>To enter another email address, click on the Back button in your browser or the Return button shown below.</p>
    </div>

    <form action="" method="get">
        <input type="hidden" name="action" value="join">
        <button type="submit" class="btn-submit">Return</button>
    </form>
</div>


</body>
</html>
