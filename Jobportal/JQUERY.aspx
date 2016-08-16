<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="JQUERY.aspx.cs" Inherits="JQUERY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
 
     <style>
        .standardDiv
            {
            background:#cccccc;
            width:300px;
            height:200px;
            }
    
        .specialDiv
            {
            background:#00ff00;
            width:300px;
            height:200px;
            }
    </style>

    <script>

        //hello jQuery!
        function hellojQuery() 
        {
            $("#div1").html("hello jQuery");
        }

        //Create function
        jQuery.fn.say = function (message)
         {
            alert("jQuery says " + message);
            return this;
        }

        //Call our function
        $.fn.say("hello").say("good bye");

        //Load & run external JS file
        $.ajax
        (
            {
                type: "GET",
                url: "test.js",
                dataType: "script"
            }
        );

       
</script>  

    <p>
        <br />
        <input type="button" value="Hello jQuery" onclick="javascript:hellojQuery();" />
      
            <div id="div1" class="standardDiv">
            I am a boring grey div element
            </div>
            <br />

                <div id="div2" class="standardDiv">
                I am a boring grey div element
                </div>
                <br />

                <div id="div3" class="specialDiv">
                I am a special div!
                </div>

    </p>
    <p>
        &nbsp;</p>
</asp:Content>

