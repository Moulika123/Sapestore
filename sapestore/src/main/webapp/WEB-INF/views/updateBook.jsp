<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME</title>
<c:set var="context" value="${pageContext.request.contextPath}" />
<script type="text/javascript"
	src="${context}/resources/js/pagination.js"></script>
<link rel="stylesheet" href="${context}/resources/css/home.css">
<link rel="stylesheet" href="${context}/resources/css/style.css">
<link href="${context}/resources/styles/fpc.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript"
        src="webjars/jquery/2.2.4/jquery.min.js"></script>
</head>

<style>
.details-wrapper {
	display: flex;
	flex-wrap: wrap;
}

.book-list {
	display: flex;
	flex-direction: column;
}

.book-image {
	width: 100px
}

body {
	background-color: #cacfc0
}

.footer-wrapper {
	padding: 0
}

.container-footer {
	background-color: #000;
}

.container-footer {
	display: flex;
	justify-content: center;
}

.footer-privacy-details {
	flex: 1;
	justify-content: center;
}

.details-wrapper-container {
	flex: 1;
}

.book-store-wrapper {
	display: flex;
	flex-direction: column;
	height: 100%;
}

#demo input[type=text], select {
	width: 70%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 70%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

.button {
	background-color: #B0B0B0; /* Green */
	border-radius: 12%;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.button1 {
	padding: 10px 24px;
}
</style>

<body>
	<div class="container-fluid book-store-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<%@ include file="header.jsp"%>
			</div>
		</div>
		<div class="row details-wrapper-container">
			<!--   <div class="col-lg-3">
	    </div>
	     -->
			<div class="col-lg-12">



				<center>
					<h2>Update The Book In Store</h2>
				</center>

				<div id="demo" class="container">
					<form action="updateBookForm" method="post">
						<table width='480px' align="center">
							<tr>

								<td><label>ISBN</label></td>

								<td colspan="2"><input type="text" disabled
									value="${book.iSBN}"> <input type="hidden" name="iSBN"
									value="${book.iSBN}"></td>

							</tr>

							<tr>
								<td><label>Title</label></td>
								<td colspan="2"><input type="text" disabled
									value="${book.title}"> <input type="hidden"
									name="title" value="${book.title}"></td>
							</tr>

							<tr>
								<td><label>Category</label></td>
								<td colspan="2"><%-- <input type="text" name="category" required pattern="[A-Za-z ]{3,25}" title="enter a valid category" 
									value="${book.category}"> --%>
									
									<select placeholder="---SELECT----"  name="category">  
										<option selected="selected">${book.category}</option>
 										<option disabled="disabled" style="background-color: lightgrey">A</option>
										<option value="Action and Adventure">Action and	Adventure</option>
										<option value="Anthology">Anthology</option>
										<option value="Art">Art</option>
										<option value="Autobiographies">Autobiographies</option>
										
										<option disabled="disabled" style="background-color: lightgrey">B</option>
										
										<option value="Biographies">Biographies</option>
										<option disabled="disabled" style="background-color: lightgrey">C</option>
										<option value="Children's">Children's</option>
										<option value="Comedy">Comedy</option>
										<option value="Comics">Comics</option>
										<option value="Cookbooks">Cookbooks</option>
										<option disabled="disabled" style="background-color: lightgrey">D</option>
										<option value="Diaries">Diaries</option>
										<option value="Dictionaries">Dictionaries</option>
										<option value="Drama">Drama</option>
										
										
										<option disabled="disabled" style="background-color: lightgrey">E</option>
										<option value="Encyclopedias">Encyclopedias</option>
										<option disabled="disabled" style="background-color: lightgrey">F</option>
										<option value="Fantasy">Fantasy</option>
										<option value="Fiction">Fiction</option>
									<option disabled="disabled" style="background-color: lightgrey">G</option>
										<option value="Guide">Guide</option>
										<option disabled="disabled" style="background-color: lightgrey">H</option>
										<option value="Health">Health</option>
										<option value="History">History</option>
										<option value="Horror">Horror</option>
										<option disabled="disabled" style="background-color: lightgrey">J</option>
										<option value="Journals">Journals</option>
										<option disabled="disabled" style="background-color: lightgrey">M</option>
										<option value="Math">Math</option>
										<option value="Mystery">Mystery</option>
										<option disabled="disabled" style="background-color: lightgrey">R</option>
										<option value="Religion, Spirituality & New Age">Religion,Spirituality & New Age</option>
										<option value="Poetry">Poetry</option>
										<option value="Romance">Romance</option>
										<option value="Prayer books">Prayer books</option>
										<option disabled="disabled" style="background-color: lightgrey">S</option>
										<option value="Satire">Satire</option>
										<option value="Science">Science</option>
										<option value="Science fiction">Science fiction</option>
										<option value="Self help">Self help</option>
										<option value="Series">Series</option>
										
										
										
										<option disabled="disabled" style="background-color: lightgrey">B</option>
										<option value="Travel">Travel</option>
										<option value="Trilogy">Trilogy</option>
										<option disabled="disabled" style="background-color: lightgrey"></option>
										<option value="Others">Others</option>

 
			

</select> 
									
									
									
									
									</td>
							</tr>

							<tr>
								<td><label>Author</label></td>
								<td colspan="2"><input type="text" name="author"  required pattern="[A-Za-z ]{3,25}" title="enter a valid author"
									value="${book.author}"></td>
							</tr>
						
						<tr>
								<td><label>Publisher</label></td>
								<td colspan="2"><input type="text" name="publisher"  required pattern="[A-Za-z ]{3,25}" title="enter a valid publisher"
									value="${book.publisher}"></td>
							</tr>

							<tr>
								<td><label>Quantity</label></td>
								<td colspan="2"><input type="number" name="quantity"  required pattern="[1-9]{1}[0-9.]{0,5}" title="enter valid quantity"
									value="${book.quantity}" style="width: 200px; height: 42px"></td>
							</tr>
<tr>
				<td><br></td>
				<td></td>
				</tr>
             <tr>
							<tr>
								<td><label>Price</label></td>
								<td colspan="2"><input type="number" name="price" required pattern="[1-9]{1}[0-9.]{1,9}" title="enter valid price" 
									value="${book.price}" style="width: 200px; height: 42px"></td>
							</tr>
<tr>
				<td><br></td>
				<td></td>
				</tr>
             <tr>
							<tr>
								<td><label>Short Description  </label></td>
								<td colspan="2"><textarea name="short_desc" required pattern="[0-1A-Za-z ]{3,150}" title="enter a description"
										style="width: 200px; height: 100px">${book.short_desc}</textarea></td>
							</tr>

							<tr>
								<td><label>Long Description  </label></td>
								<td colspan="2"><textarea name="long_desc" required pattern="[0-1A-Za-z ]{3,500}" title="enter a description" 	style="width: 200px; height: 100px"> 
								${book.long_desc}</textarea></td>
							</tr>


							<tr>
								<td><label>Language </label></td>
									<td colspan="2">	<select placeholder="---SELECT----"  name="language" value="${book.language}">  
				<option selected="selected">${book.language}</option> 
                                      <option disabled="disabled" style="background-color: lightgrey">A</option>
										<option value="Afrikanns">Afrikanns</option>
										<option value="Albanian">Albanian</option>
										<option value="Arabic">Arabic</option>
										<option value="Armenian">Armenian</option>
											<option disabled="disabled" style="background-color: lightgrey">B</option>
										<option value="Basque">Basque</option>
										<option value="Bengali">Bengali</option>
										<option value="Bulgarian">Bulgarian</option>
											<option disabled="disabled" style="background-color: lightgrey">C</option>
										<option value="Catalan">Catalan</option>
										<option value="Cambodian">Cambodian</option>
										<option value="Chinese (Mandarin)">Chinese (Mandarin)</option>
										<option value="Croation">Croation</option>
										<option value="Czech">Czech</option>
											<option disabled="disabled" style="background-color: lightgrey">D</option>
										<option value="Danish">Danish</option>
										<option value="Dutch">Dutch</option>
											<option disabled="disabled" style="background-color: lightgrey">E</option>
										<option value="English">English</option>
										<option value="Estonian">Estonian</option>
											<option disabled="disabled" style="background-color: lightgrey">F</option>
										<option value="Fiji">Fiji</option>
										<option value="Finnish">Finnish</option>
										<option value="French">French</option>
											<option disabled="disabled" style="background-color: lightgrey">G</option>
										<option value="Georgian">Georgian</option>
										<option value="German">German</option>
										<option value="Greek">Greek</option>
										<option value="Gujarati">Gujarati</option>
											<option disabled="disabled" style="background-color: lightgrey">H</option>
										<option value="Hebrew">Hebrew</option>
										<option value="Hindi">Hindi</option>
										<option value="Hungarian">Hungarian</option>
											<option disabled="disabled" style="background-color: lightgrey">I</option>
										<option value="Icelandic">Icelandic</option>
										<option value="Indonesian">Indonesian</option>
										<option value="Irish">Irish</option>
										<option value="Italian">Italian</option>
											<option disabled="disabled" style="background-color: lightgrey">J</option>
										<option value="Japanese">Japanese</option>
										<option value="Javanese">Javanese</option>
											<option disabled="disabled" style="background-color: lightgrey">K</option>
										<option value="Korean">Korean</option>
											<option disabled="disabled" style="background-color: lightgrey">L</option>
										<option value="Latin">Latin</option>
										<option value="Latvian">Latvian</option>
										<option value="Lithuanian">Lithuanian</option>
											<option disabled="disabled" style="background-color: lightgrey">M</option>
										<option value="Macedonian">Macedonian</option>
										<option value="Malay">Malay</option>
										<option value="Malayalam">Malayalam</option>
										<option value="Maltese">Maltese</option>
										<option value="Maori">Maori</option>
										<option value="Marathi">Marathi</option>
										<option value="Mongolian">Mongolian</option>
											<option disabled="disabled" style="background-color: lightgrey">N</option>
										<option value="Nepali">Nepali</option>
										<option value="Norwegian">Norwegian</option>
											<option disabled="disabled" style="background-color: lightgrey">P</option>
										<option value="Persian">Persian</option>
										<option value="Polish">Polish</option>
										<option value="Portuguese">Portuguese</option>
										<option value="Punjabi">Punjabi</option>
											<option disabled="disabled" style="background-color: lightgrey">Q</option>
										<option value="Quechua">Quechua</option>
											<option disabled="disabled" style="background-color: lightgrey">R</option>
										<option value="Romanian">Romanian</option>
										<option value="Russian">Russian</option>
											<option disabled="disabled" style="background-color: lightgrey">S</option>
										<option value="Samoan">Samoan</option>
										<option value="Serbian">Serbian</option>
										<option value="Slovak">Slovak</option>
										<option value="Slovenian">Slovenian</option>
										<option value="Spanish">Spanish</option>
										<option value="Swahili">Swahili</option>
										<option value="Swedish">Swedish</option>
											<option disabled="disabled" style="background-color: lightgrey">T</option>
										<option value="Tamil">Tamil</option>
										<option value="Tatar">Tatar</option>
										<option value="Telugu">Telugu</option>
										<option value="Thai">Thai</option>
										<option value="Tibetan">Tibetan</option>
										<option value="Tonga">Tonga</option>
										<option value="Turkish">Turkish</option>
											<option disabled="disabled" style="background-color: lightgrey">U</option>
										<option value="Ukranian">Ukranian</option>
										<option value="Urdu">Urdu</option>
										<option value="Uzbek">Uzbek</option>
											<option disabled="disabled" style="background-color: lightgrey">V</option>
										<option value="Vietnamese">Vietnamese</option>
											<option disabled="disabled" style="background-color: lightgrey">W</option>
										<option value="Welsh">Welsh</option>
											<option disabled="disabled" style="background-color: lightgrey">X</option>
										<option value="Xhosa">Xhosa</option>
											<option disabled="disabled" style="background-color: lightgrey"></option>
											<option value="Others">Others</option>
</select> </td>
							</tr>

							<tr>
								<td><label>Status</label></td>
								<td colspan="2">
								<div id="activeWrapper">
								<%-- 	<c:choose>
										<c:when test="${book.active} == 'true'">
											<input type="radio" name="active" checked value="true">Active</input> <br/><input type="radio" name="active" value="false">Deactive</input> <br/>
										</c:when> 
										<c:otherwise> 
											<input type="radio" name="active" value="true">Active</input> <br/><input type="radio" name="active" checked value="false">Deactive</input> <br/>
										</c:otherwise>
									</c:choose> --%>
								</div>
								</td>
							</tr> 
							<tr>
								<td><br></td>
							</tr>
							<tr>


							</tr>

							 <tr>

								<td ><b>Book Image</b></td>
								<td colspan="2"><span class="btn btn-primary btn-file"
									style="background-color: #cacfc0; padding: 5px 10px 5px 10px; border: none; color: #ffffff; border-radius: 0px">
										&nbsp;&nbsp;&nbsp;Browse Image <input type="file" name="file" id="imagePath"
										accept="image/jpeg"> <input type="hidden"
										name="fileName" id="fileName" value="${book.book_img}" /> <input
										type="hidden" name="book_img" id="bookImgPath" value="${book.book_img}" />
								</span></td>
								<td><input type="button" id="uploadImage"
									value="Upload Image" class="btn btn-warning" /></td>
							</tr>  

							<tr> 
								<td></td>
								<td><input type="submit" value="Update"></td>
								<!-- <td> <input type="submit"  value="Cancel"></td> -->

								<td><a href="${context}/adminHome"><button
											type="button" class="btn btn-success btn-lg">Cancel</button></a></td>

							</tr>


						</table>
					</form>
				</div>




			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 footer-wrapper">
				<%@ include file="footer.jsp"%>
			</div>
		</div>
	</div>
	<script>
	
	$("#uploadImage1").click(function(){
        alert("The paragraph was clicked.");
    });
	$('#uploadImage').click(function(){
		var data = new FormData();
	    data.append('file', $('#imagePath')[0].files[0]);
	   
	    var imgFileName = $('input[type=file]').val().split('\\').pop();
	    $('#bookImgPath').val('/resources/images/'+imgFileName);
		 $.ajax({
            type:'POST',
            url:'/addBook/uploadImage',
            enctype: 'multipart/form-data', 
            data:data,
            cache:false,
            contentType: false,
            processData: false,
            success:function(data){
	            console.log(data);
            	$('#fileName').val('/var/www/html/resources/images/'+data);
            	
            	var contents = $('#imagePath').val();
            	var main = contents.replace("C:\\tmp\\","Uploaded ");
            	$('#image').html(main);
            },
            error: function(data){
                console.log("error");
                console.log(data);
            }
        });
	});
	 
	
	(() => {
		if(${book.active}) {
			$("#activeWrapper").html('<input type="radio" name="active" checked value="true">Active</input> <br/><input type="radio" name="active" value="false">Deactive</input> <br/>');
		} else {
			$("#activeWrapper").html('<input type="radio" name="active" value="true">Active</input> <br/> <input type="radio" name="active" checked value="false">Deactive</input> <br/>');
		}
	})();
	
	


</script>
</body>
</html>
