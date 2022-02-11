<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!-- jQuery -->
<script src="<c:url value="resources/admin/js/jquery.min.js"/>"></script>
<script src="<c:url value="resources/admin/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="resources/admin/js/metisMenu.min.js"/>"></script>
<script src="<c:url value="resources/admin/js/raphael.min.js"/>"></script>
<script src="<c:url value="resources/admin/js/dataTables/jquery.dataTables.min.js"/>"></script>
<script src="<c:url value="resources/admin/js/dataTables/dataTables.bootstrap.min.js"/>"></script>
<script src="<c:url value="resources/admin/js/startmin.js"/>"></script>
<script src="<c:url value='resources/ckeditor/ckeditor.js'/>"></script>
 <script>
            $(document).ready(function() {
                $('#dataTables-example').DataTable({
                        responsive: true
                });
            });
        </script>
        
        
        <script>
	CKEDITOR.replace('schedule1');
</script>
<script>
	CKEDITOR.replace('schedule2');
</script>
<script>
	CKEDITOR.replace('schedule3');
</script>
<script>
	CKEDITOR.replace('ct');
</script>
</div>
<!-- /#wrapper -->


</body>
</html>
