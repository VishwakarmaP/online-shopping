
<div class="container">
	<!-- bradcrumb -->

	<div class="row">

		<div class="col-xs-12">
			<ol class="breadcrumb">
				<li><a href="${contextRoot}/home">home</a></li>
				<li><a href="${contextRoot}/show/all/products">Products</a></li>
				<li class="active">${product.name}</li>
			</ol>
		</div>
	</div>

	<div class="row">
		<!-- display images -->
		<div class="col=xs-12 col-sm-4">
			<div class="thumbnail">
				<img alt="" src="${images}/${product.code}.jpg"
					class="img img-responsive">
			</div>
		</div>

		<!-- display details -->
		<div class="col=xs-12 col-sm-8"></div>
		<h3>${product.name}</h3>
		<hr />
		<p>${product.description}</p>
		<hr />
		<h4>
			Price: <strong>&#8377; ${product.unitPrice}/-</strong>
		</h4>
		<hr />

		<c:choose>
			<c:when test="${product.quantity < 1}">
				<h6>
					Qty. Available: <span style="color:red">Out of Stock!</span>
				</h6>
			</c:when>
			<c:otherwise>
				<h6>Qty. Available: ${product.quantity}</h6>
			</c:otherwise>
		</c:choose>

<security:authorize access="hasAuthority('USER')">
        <c:choose>
        
			<c:when test="${product.quantity < 1}">
				
					<a href="javascript:void(0)" class="btn btn-success disabled"><strike><span	class="glyphicon glyphicon-shopping-cart"></span> Add to Cart</strike></a>
				
			</c:when>
			<c:otherwise>
				<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"> Add to Cart</span></a>
			</c:otherwise>
		</c:choose>
</security:authorize>

			
<security:authorize access="hasAuthority('ADMIN')">
	
	<a href="${contextRoot}/manage/${product.id}/product" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"> Edit</span></a>
	
</security:authorize>
 		<a	href="${contextRoot}/show/all/products" class="btn btn-primary">Back</a>
	</div>
</div>
