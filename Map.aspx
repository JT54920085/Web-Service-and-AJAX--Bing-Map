<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Map.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Toalu.info - AJAX Demo using Virtual Earth Map
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>AJAX Demo using Virtual Earth Map</h2>
<div id="informationDiv" style="width:800px">
<p style="color:Green">Please type your address, then click outside the Address box to display the map of the address.</p>
<%--<p>Title: <input type="text" id="Title" value="Cleveland" /></p>--%>
<p>Address: <input type="text" id="Address" value="USA" style="width:500px" maxlength="100" /></p>
<p>Latitude: <input type="text" id="Latitude" disabled="disabled" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Longitude: <input type="text" id="Longitude" disabled="disabled" /></p>
</div>
<%Html.RenderPartial("MapControl"); %>
<script type="text/javascript">
    $(document).ready(function() {
        $("#Address").blur(function(evt) {
            $("#Latitude").val("");
            $("#Longitude").val("");

            var address = jQuery.trim($("#Address").val());
            if (address.length < 1)
                return;

            FindAddressOnMap(address);
        });
    });
</script>
</asp:Content>