
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Fruit</title>
</head>
<body>
<form method="post" action="insert-fruit">
    <table>
        <tr>
            <td>Fruit Name</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Fruit Description</td>
            <td><input type="text" name="description"></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input type="number" name="price"></td>
        </tr>
        <tr>
            <td>Unit</td>
            <td><input type="text" name="unit"></td>
        </tr>
        <tr>
            <td>Origin</td>
            <td><input type="text" name="origin"></td>
        </tr>
        <tr>
            <td>Thumbnail</td>
            <td><input type="text" name="thumbnail"></td>
        </tr>
        <tr>
            <td>Category ID</td>
            <td><input type="number" name="categoryId"></td>
        </tr>
        <tr>
            <td><input type="submit" value="Save product"></td>
        </tr>

    </table>
</form>
</body>
</html>
