<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="JQUERY-1.aspx.cs" Inherits="JQUERY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
 
     <style>
         .standardDiv
            {
            background:#cccccc;
            width:369px;
            height:294px;
            }
    
        .specialDiv
            {
            background:#00ff00;
            width:300px;
            height:200px;
            }
    </style>

     <script type="text/javascript">
        
        //jQuery!
        function hellojQuery() 
        {
            $("#div1").html("STUDENT INFORMATION");
        }

        function hellojQuery2() {
            $("#div1").html("QUALIFICATION INFORMATION");
        }

        function hellojQuery3() {
            $("#div1").html("EXPERIENCE INFORMATION");
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

        <input type="button" value="STUDENT" onclick="javascript:hellojQuery();" />
        <input type="button" value="QUALIFICATION" onclick="javascript:hellojQuery2();" />
        <input type="button" value="EXPERIENCE" onclick="javascript:hellojQuery3();" /><br />
            
            <div id="div1" class="standardDiv">
              I am a boring grey div element
            </div>
            <br />

      
</asp:Content>

