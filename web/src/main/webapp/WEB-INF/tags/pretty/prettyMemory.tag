<%@ tag import="k0n9.common.utils.PrettyMemoryUtils" %>
<%@ tag pageEncoding="UTF-8"%>
<%@ attribute name="byteSize" type="java.lang.Long" required="true" description="字节" %>
<%=PrettyMemoryUtils.prettyByteSize(byteSize)%>