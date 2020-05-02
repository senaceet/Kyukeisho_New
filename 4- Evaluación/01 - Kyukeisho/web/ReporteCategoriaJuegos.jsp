<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="net.sf.jasperreports.view.JasperViewer"%>
<%@page import="javax.servlet.ServletResponse"%>
<%@include file="Conexion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/png" href="IMG/GF.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kuykeisho</title>
    </head>
    <body>
        <%
            File reportfile = new File (application.getRealPath("ReportesPdf/ReporteCategoriaJuegos.jasper"));
            Map<String, Object> parameter = new HashMap<String, Object>();
            byte[] bytes = JasperRunManager.runReportToPdf(reportfile.getPath(), parameter, con);
            
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream outputstream = response.getOutputStream();
            outputstream.write(bytes,0,bytes.length);
            
            outputstream.flush();
            outputstream.close();
        %>        
    </body>
</html>
