<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="inner_title" value="��ɫ����" />
<%@ include file="../../includes/t.jsp"%>

<div class="row-fluid">
    <div class="span12">
        <div class="page-header">
            <h4>��ɫ����</h4>
        </div>

        <div style="text-align: right; margin: 15px 0px">
            <a href="${ctx}/sysMgmt/roleMgmt/add" style="padding-right: 20px">
                <font style="font-weight: bold;" class="btn">������ɫ</font>
            </a>
        </div>

        <c:if test="${empty datas.data}">
            <div class="alert alert-info">
                <strong>
                    <i class="icon24 i-info"></i>
                    ��ǰû����ؼ�¼��
                </strong>
            </div>
        </c:if>

        <c:if test="${not empty datas.data}">
            <table class="table table-bordered table-hover table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>��ɫ��</th>
                        <th>����</th>
                        <th>ʹ����</th>
                        <th>����</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${datas.data}" var="item">
                        <tr>
                            <td class="center vcenter">${item.id}</td>
                            <td class="center vcenter">${item.role_name}</td>
                            <td class="center vcenter">${item.remark}</td>
                            <td class="center vcenter">${item.userCount}</td>
                            <td class="center vcenter">
                                <c:if test="${item.id != 0}">
                                    <a href="${ctx}/sysMgmt/roleMgmt/view/${item.id}">�鿴</a>
                                    |
                                    <a href="${ctx}/sysMgmt/roleMgmt/edit/${item.id}">�༭</a>
                                    |
                                    <a href="${ctx}/sysMgmt/roleMgmt/authority/${item.id}">Ȩ��</a>
                                    |
                                    <a href="${ctx}/sysMgmt/roleMgmt/delete/${item.id}" data-confirm="ȷ��ɾ����">ɾ��</a>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <ht:page pageData="${datas}" />
        </c:if>

    </div>
</div>

<%@ include file="../../includes/b.jsp"%>