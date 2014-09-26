<%@ Page Language="C#" ContentType="text/css" %>
<%@ OutputCache Duration="31536000" VaryByParam="None" Location="Client" %>

<script runat="server">
   string editorid;
   protected override void OnInit(EventArgs e)
   {
	  //do not call base's OnInit , skip the theme bug!
      //base.OnInit(e);
	  editorid="#"+Request.QueryString["EditorID"];
   }
</script>
/*<style>*/
<%=editorid%> {}
<%=editorid%> IMG { border:0px;display:inline;}

<%=editorid%> .CuteEditorSelect { font:normal 11px Tahoma; margin-left:1px; margin-top:1px; height:21px; vertical-align:middle;}
<%=editorid%> .CuteEditorDropDown { display: block; float: left; padding:0; margin:2px 1px 1px 1px; width:80px; vertical-align:middle;border: #dddddd 1px solid!important;}
<%=editorid%> .CuteEditorDropDown Li {LIST-STYLE-TYPE: none;padding:0;}
<%=editorid%> .CuteEditorDropDown Span {font:normal 11px Tahoma;}
<%=editorid%> .CuteEditorToolbar {}
<%=editorid%> .CuteEditorToolBarContainer {padding:3px 3px 0px 3px;height:1;overflow-y:visible;}
<%=editorid%> .CuteEditorFrameContainer {padding:1px 4px 1px 4px;}
<%=editorid%> .CuteEditorBottomBarContainer {padding:3px 3px 3px 3px;height:1;overflow-y:visible;}
<%=editorid%> .CuteEditorGroupMenu {display: inline;background-image: url(images/horizontal.background.gif); background-repeat: repeat-x; background-position: bottom; height:24px; vertical-align:middle;border-bottom : 1px solid  #c0c0c0; border-left : 1px solid  #c0c0c0;border-right: 1px solid  #eeeeee; }
<%=editorid%> .CuteEditorGroupImage { margin:0px; vertical-align:middle;float: left; }
<%=editorid%> .CuteEditorLineBreak {padding:0px; height:0px; margin:0px}
<%=editorid%> .CuteEditorFrame {padding:0px 0 0px 0px;margin:0px 0 0px 0px;}
<%=editorid%> .CuteEditorButton { margin:1px; vertical-align:middle;}
<%=editorid%> .CuteEditorButtonActive { margin:0px; vertical-align:middle; border:#0a246a 1px solid!important; background-color:#d4d5d8;}
<%=editorid%> .CuteEditorButtonOver { margin:0px;vertical-align:middle;border:#0a246a 1px solid!important; background-color:#b6bdd2;}
<%=editorid%> .CuteEditorButtonDown { border-right: buttonhighlight 1px solid!important; border-TOP: buttonshadow 1px solid!important; border-left: buttonshadow 1px solid!important; border-bottom: buttonhighlight 1px solid!important; margin:0px;vertical-align:middle; }
<%=editorid%> .CuteEditorButtonDisabled { /* filter:gray alpha(opacity=25); margin:1px;vertical-align:middle; */ margin:1px;vertical-align:middle;}
<%=editorid%> .ToolControl{}
<%=editorid%> .ToolControlOver{}
<%=editorid%> .ToolControlDown{}
<%=editorid%> .separator {background-image: url(images/Separator.gif); height:22px; background-repeat: no-repeat; vertical-align:middle; width:2px;margin-left:2px; margin-right:2px;	}

/*case sensive for CSS1*/
<%=editorid%> #cmd_tofullpage.CuteEditorButtonActive { display:none }
<%=editorid%> #cmd_fromfullpage.CuteEditorButton { display:none }

/*</style>*/
