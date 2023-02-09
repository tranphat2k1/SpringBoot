<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<table class="table table-hover">
	<thead>
		<tr>
			<th>ID</th>
			<th>Họ và tên</th>
			<th>Email</th>
			<th>Số điện thoại</th>
			<th>Phân quyền</th>
			<th>Thao tác</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="e" items="${list}">
		<tr>
			<td>${e.id}</td>
			<td>${e.fullname}</td>
			<td>${e.email}</td>
			<td>${e.phone}</td>
			<td>${e.userRole.roleName}</td>
			<td>
				<a class="btn btn-sm btn-primary" href="${base}/edit/${e.id}">Sửa</a>
				<a class="btn btn-sm btn-danger" href="${base}/delete/${e.id}">Xóa</a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>