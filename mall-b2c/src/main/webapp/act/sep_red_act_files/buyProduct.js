function addProduct(productId){document.cart.productId.value=productId;var cart=CART+"?actionType=addproduct&productId="+productId;window.location.href=cart;}
function addPorductRequest(){if(http_request.readyState==4){if(http_request.status==200){var returnText=http_request.responseText;if(returnText=="noLoginUser"){alert("�㻹û�е�½,ֻ�е�½�û����ܹ�����Ʒ");return;}
if(returnText=="noProduct"){alert("�㹺�����Ʒ��ʱû��,�����̳���ϵ");return;}
if(returnText=="addProductSuccess"){alert("��Ʒ�Ѿ���ӵ���Ĺ��ﳵ��,����Բ鿴��Ĺ��ﳵ�����!");}}else{}}}