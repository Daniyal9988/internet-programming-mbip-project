<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Electricity Consumption</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/styles.css' />" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@500&family=Montserrat:ital@1&family=Roboto+Mono:ital@1&family=Roboto:ital,wght@1,900&family=Rubik+Burned&family=Sora:wght@300&display=swap"
	rel="stylesheet">
  </head>
  <body>
    <jsp:include page="../header/header.jsp" />

    <div class="container">
      <div>
        <form
          id="FormBox"
          action="http://localhost:8080/Project/recyclebillform"
          enctype="multipart/form-data"
          method="post"
        >
          <div class="leg">
            <legend>Waste Consumption</legend>
          </div>
          <div class="form_data_box">
            <label for="electricity">Value (kg)</label>
              <input
                type="number"
                id="electricity"
                name="recycle"
                required
              /><br />
            <div
              id="drop-area"
              ondragover="handleDragOver(event)"
              ondragleave="handleDragLeave(event)"
              ondrop="handleDrop(event)"
            >
              <div>Drag &amp; Drop files here</div>
              <input
                type="file"
                id="file-input"
                name="file"
                multiple
                onchange="handleFiles(this.files)"
              />
              <label for="file-input" id="file-label">or <br> click to select</label>
              <ul id="file-list"></ul>
              <button type="button"
                id="select-button"
                onclick="document.getElementById('file-input').click()"
              >
                Select File
              </button>
            </div>
          </div>
          <div class="buttoms">
            <button type="submit" style="margin-right: 50px">Submit</button>
            <button type="reset">Reset</button>
          </div>
        </form>
      </div>
    </div>

    <jsp:include page="../footer/footer.jsp" />

    <script>
      function handleDragOver(event) {
        event.preventDefault();
        document.getElementById("drop-area").classList.add("highlight");
      }

      function handleDragLeave(event) {
        event.preventDefault();
        document.getElementById("drop-area").classList.remove("highlight");
      }

      function handleDrop(event) {
        event.preventDefault();
        document.getElementById("drop-area").classList.remove("highlight");
        handleFiles(event.dataTransfer.files);
      }

      function handleFiles(files) {
        const fileList = document.getElementById("file-list");

        fileList.innerHTML = "";

        for (const file of files) {
          const listItem = document.createElement("li");
          listItem.className = "file-item";
          listItem.textContent = `${file.name} (${formatBytes(file.size)})`;
          fileList.appendChild(listItem);
        }
      }

      function formatBytes(bytes) {
        const k = 1024;
        const sizes = ["Bytes", "KB", "MB", "GB", "TB"];

        if (bytes === 0) return "0 Byte";
        const i = parseInt(Math.floor(Math.log(bytes) / Math.log(k)));
        return Math.round(bytes / Math.pow(k, i)) + " " + sizes[i];
      }
    </script>
  </body>
</html>
