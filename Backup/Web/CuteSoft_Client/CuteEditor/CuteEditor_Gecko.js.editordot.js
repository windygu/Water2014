var OxO3a57=["FocusDocument","GetDocument","GetWindow","PostBack","SetActiveTab","UpdateToolbar","length","Command","className","CuteEditorButtonActive","CuteEditorButton","IsCommandActive","CuteEditorButtonDisabled","IsCommandDisabled","LogSavePoint","Edit","html","SearchSelectionElement","body","parentNode","tagName","ShowTagDialog","ResourceDir","/Dialogs/Tag.Aspx?settinghash=[[_setting_]]","\x26Tag=","TagType","tagType","\x26Tab=","","\x26","\x26[[GetDNNArg]]","InsertElement","AfterEnd","container","SurroundElement","Control","div","innerHTML","rangeCount","childNodes","nodeName","\x3C","attributes","nodeValue"," ","=\x22","\x22","\x3E","\x3C![CDATA[","]]\x3E",";","\x3C!--","--\x3E","nodeType"]; editor[OxO3a57[0x0]]=function (){ editwin.focus() ;}  ; editor[OxO3a57[0x1]]=function (){return editdoc;}  ; editor[OxO3a57[0x2]]=function (){return editwin;}  ; editor[OxO3a57[0x3]]=function (Ox194){return editor.ExecCommand(OxO3a57[0x3],false,Ox194);}  ; editor[OxO3a57[0x4]]=function (Ox2ca){ _set_ActiveTab(Ox2ca) ;}  ; editor[OxO3a57[0x5]]=function (){var Ox195=cmd_active_imgs[OxO3a57[0x6]];for(var i=0x0;i<Ox195;i++){var Oxba=cmd_active_imgs[i];var Ox196=editor.QueryCommandActive(Oxba.getAttribute(OxO3a57[0x7]));if(Ox196){ Oxba[OxO3a57[0x8]]=OxO3a57[0x9] ;} else { Oxba[OxO3a57[0x8]]=OxO3a57[0xa] ;} ; Oxba.setAttribute(OxO3a57[0xb],Ox196) ;} ;var Ox195=cmd_enable_imgs[OxO3a57[0x6]];for(var i=0x0;i<Ox195;i++){var Oxba=cmd_enable_imgs[i];var Ox197=editor.QueryCommandEnable(Oxba.getAttribute(OxO3a57[0x7]));if(!Oxba.getAttribute(OxO3a57[0xb])){if(!Ox197){ Oxba[OxO3a57[0x8]]=OxO3a57[0xc] ;} else { Oxba[OxO3a57[0x8]]=OxO3a57[0xa] ;} ;} ; Oxba.setAttribute(OxO3a57[0xd],!Ox197) ;} ;}  ; editor[OxO3a57[0xe]]=function (){if(_get_ActiveTab()!=OxO3a57[0xf]){return ;} ;var Ox191=Log_GetSavePoint();var Ox192=Ox191?Ox191[OxO3a57[0x10]]:null;var Ox193=GetSavePoint();if(Ox192!=Ox193[OxO3a57[0x10]]){ Log_AddSavePoint(Ox193) ; editor.UpdateToolbar() ;} else { Log_SetSavePoint(Ox193) ;} ;}  ; editor[OxO3a57[0x11]]=function (Ox131){var sel=editwin.getSelection();var r=sel.getRangeAt(0x0);var Ox2f=Range_GetParentElement(r);for(var e=Ox2f;e!=null&&e!=editdoc[OxO3a57[0x12]];e=e[OxO3a57[0x13]]){if(e[OxO3a57[0x14]]==Ox131){return e;} ;} ;return null;}  ; editor[OxO3a57[0x15]]=function (element,Ox18f,Ox198,Ox199){return openModalWindow(editor.getAttribute(OxO3a57[0x16])+OxO3a57[0x17]+OxO3a57[0x18]+(element[OxO3a57[0x1a]]||element[OxO3a57[0x19]]||element[OxO3a57[0x14]])+OxO3a57[0x1b]+(Ox18f||OxO3a57[0x1c])+OxO3a57[0x1d]+(Ox199||OxO3a57[0x1c])+OxO3a57[0x1e],{element:element,editor:editor,window:editwin,document:editdoc,changed:Ox198},_tagDialogFeature);}  ; editor[OxO3a57[0x1f]]=function (element,Ox19a){if(Ox19a==element){ Ox19a=null ;} ;if(Ox19a!=null){ Ox19a.insertAdjacentElement(OxO3a57[0x20],element) ;return ;} ;var Ox19b=OxO3a57[0x21]+( new Date().getTime());var sel=editwin.getSelection();var r=sel.getRangeAt(0x0); r.deleteContents() ; sel.removeAllRanges() ; r.insertNode(element) ; r.collapse(true) ; sel.addRange(r) ; NotifySelectionChange() ;return true;}  ; editor[OxO3a57[0x22]]=function (element){var sel=editwin.getSelection();var r=sel.getRangeAt(0x0);var Oxf1=Range_GetSelectionType(r);var Oxb0=OxO3a57[0x1c];if(Oxf1!=OxO3a57[0x23]){var Ox2c9=r.cloneContents();var div=editdoc.createElement(OxO3a57[0x24]); div.appendChild(Ox2c9) ; Oxb0=div[OxO3a57[0x25]] ; editor.InsertElement(element) ;try{ element[OxO3a57[0x25]]=Oxb0 ;} catch(x){} ;} else {for(var i=0x0;i<sel[OxO3a57[0x26]];i++){var Ox176=sel.getRangeAt(i); element.appendChild(Ox176.cloneContents()) ;} ; editor.InsertElement(element) ;} ; editor.SelectElement(element) ;}  ; function getInnerHTML(Ox27f){var Ox1f=OxO3a57[0x1c];for(var i=0x0;i<Ox27f[OxO3a57[0x27]][OxO3a57[0x6]];i++){ Ox1f+=getOuterHTML(Ox27f[OxO3a57[0x27]].item(i)) ;} ;return Ox1f;}  ; function getOuterHTML(Ox27f){var Ox1f=OxO3a57[0x1c];switch(Ox27f[OxO3a57[0x35]]){case 0x1: Ox1f+=OxO3a57[0x29]+Ox27f[OxO3a57[0x28]] ;for(var i=0x0;i<Ox27f[OxO3a57[0x2a]][OxO3a57[0x6]];i++){if(Ox27f[OxO3a57[0x2a]].item(i)[OxO3a57[0x2b]]!=null){ Ox1f+=OxO3a57[0x2c] ; Ox1f+=Ox27f[OxO3a57[0x2a]].item(i)[OxO3a57[0x28]] ; Ox1f+=OxO3a57[0x2d] ; Ox1f+=Ox27f[OxO3a57[0x2a]].item(i)[OxO3a57[0x2b]] ; Ox1f+=OxO3a57[0x2e] ;} ;} ;if(Ox27f[OxO3a57[0x27]][OxO3a57[0x6]]==0x0&&leafElems[Ox27f[OxO3a57[0x28]]]){ Ox1f+=OxO3a57[0x2f] ;} else { Ox1f+=OxO3a57[0x2f] ; Ox1f+=getInnerHTML(Ox27f) ; Ox1f+=OxO3a57[0x29]+Ox27f[OxO3a57[0x28]]+OxO3a57[0x2f] ;} ;break ;case 0x3: Ox1f+=Ox27f[OxO3a57[0x2b]] ;break ;case 0x4: Ox1f+=OxO3a57[0x30]+Ox27f[OxO3a57[0x2b]]+OxO3a57[0x31] ;break ;case 0x5: Ox1f+=OxO3a57[0x1d]+Ox27f[OxO3a57[0x28]]+OxO3a57[0x32] ;break ;case 0x8: Ox1f+=OxO3a57[0x33]+Ox27f[OxO3a57[0x2b]]+OxO3a57[0x34] ;break ;;;;;;} ;return Ox1f;}  ;