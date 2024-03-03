<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Now</title>
    <link rel="stylesheet" href="styles.css">
</head>

<?php 
include_once("database.inc.php");
if(isset($_POST['upload'])){


    $question = $_POST['question'];
    $answer = $_POST['answer'];
    $fileName = "null";
$size = "0";

 
    // echo "$targetPath";


    // if (move_uploaded_file($uploadedFile["tmp_name"], $targetPath)) {
        // Insert data into the database
        $sql = "INSERT INTO `chatbot_hints` (`id`, `question`, `reply`, `fileName`, `size`, `src`, `period`) VALUES (NULL, '$question', '$answer', '$fileName', '$size', 'NO file', CURRENT_TIMESTAMP());";
        
        if ($con->query($sql) === TRUE) {
            echo "<script>alert('File uploaded successfully and record inserted into the database.');</script>";
            // header("Location:file.php");
        } else {
            echo "Error inserting record into the database: " . $con->error;
        }
    // } else {
    //     echo "Error uploading file.";
    // }

}

?>
<style>
    *{
    color: black !important;

    }
    body {
    font-family: Arial, sans-serif;
    /* background-color: #333; */
    background-color: #4c9baf;

    color: black;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.form-container {
    background-color: whitesmoke;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border: 2px solid  white;


}

form {
    display: flex;
    flex-direction: column;

}

.form-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 16px;
}

label {
    margin-bottom: 8px;
}

input,
button {
    padding: 10px;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    border: 2px solid #4c9baf;
}
button{
    background-color: #4c9baf;

}
input[type="file"] {
    padding: 8px;
}

.buttons {
    display: flex;
    justify-content: space-between;
    margin-top: 16px;

}

button {
    cursor: pointer;
}

button:hover {
    background-color: #666;
}

</style>
<body>
    <div class="form-container">
        <h2>Document Information</h2>
        <form action="Write.php" method="post" enctype="multipart/form-data">
            <div class="form-grid">

            <label for="file_name">Question:</label>
                <input type="text" id="file_name" name="question" placeholder="AI || QUESTION paper of AI 2012 || AI" required>



                <label for="file_name">Answer:</label>
                <input type="text" id="file_name" name="answer" placeholder="AI Question Paper" required>

                <!-- <label for="file_name">File Name:</label>
                <input type="text" id="file_name" name="fileName" placeholder="AI-Question-2024-April" required> -->

              

             
<!-- 
                <label for="size">Size:</label>
                <input type="text" id="size" name="size" placeholder="12.5MB" required> -->

                <!-- <label for="pdf_file">Upload PDF:</label>
                <input type="file" id="pdf_file" name="pdf_file" accept=".pdf" > -->
            </div>

            <div class="buttons">
                <button type="submit" name="upload">Submit</button>
                <button type="reset">Reset</button>
            </div>
        </form>
    </div>
</body>
</html>
