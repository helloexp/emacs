<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><title>EmacsWiki: Scroll Bar</title><link rel="alternate" type="application/wiki" title="Редактировать" href="http://www.emacswiki.org/emacs?action=edit;id=ScrollBar" />
<link type="text/css" rel="stylesheet" href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.0/css/bootstrap-combined.min.css" />
<link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
<meta name="robots" content="INDEX,FOLLOW" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki" href="http://www.emacswiki.org/emacs?action=rss" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki: ScrollBar" href="http://www.emacswiki.org/emacs?action=rss;rcidonly=ScrollBar" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content"
      href="http://www.emacswiki.org/full.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content and diff"
      href="http://www.emacswiki.org/full-diff.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki including minor differences"
      href="http://www.emacswiki.org/minor-edits.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Changes for ScrollBar only"
      href="http://www.emacswiki.org/emacs?action=rss;rcidonly=ScrollBar" /><meta name="viewport" content="width=device-width" />
<script type="text/javascript" src="/outliner.0.5.0.62-toc.js"></script>
<script type="text/javascript">

  function addOnloadEvent(fnc) {
    if ( typeof window.addEventListener != "undefined" )
      window.addEventListener( "load", fnc, false );
    else if ( typeof window.attachEvent != "undefined" ) {
      window.attachEvent( "onload", fnc );
    }
    else {
      if ( window.onload != null ) {
	var oldOnload = window.onload;
	window.onload = function ( e ) {
	  oldOnload( e );
	  window[fnc]();
	};
      }
      else
	window.onload = fnc;
    }
  }

  // https://stackoverflow.com/questions/280634/endswith-in-javascript
  if (typeof String.prototype.endsWith !== 'function') {
    String.prototype.endsWith = function(suffix) {
      return this.indexOf(suffix, this.length - suffix.length) !== -1;
    };
  }

  var initToc=function() {

    var outline = HTML5Outline(document.body);
    if (outline.sections.length == 1) {
      outline.sections = outline.sections[0].sections;
    }

    if (outline.sections.length > 1
	|| outline.sections.length == 1
           && outline.sections[0].sections.length > 0) {

      var toc = document.getElementById('toc');

      if (!toc) {
	var divs = document.getElementsByTagName('div');
	for (var i = 0; i < divs.length; i++) {
	  if (divs[i].getAttribute('class') == 'toc') {
	    toc = divs[i];
	    break;
	  }
	}
      }

      if (!toc) {
	var h2 = document.getElementsByTagName('h2')[0];
	if (h2) {
	  toc = document.createElement('div');
	  toc.setAttribute('class', 'toc');
	  h2.parentNode.insertBefore(toc, h2);
	}
      }

      if (toc) {
        var html = outline.asHTML(true);
        toc.innerHTML = html;

	items = toc.getElementsByTagName('a');
	for (var i = 0; i < items.length; i++) {
	  while (items[i].textContent.endsWith('â')) {
            var text = items[i].childNodes[0].nodeValue;
	    items[i].childNodes[0].nodeValue = text.substring(0, text.length - 1);
	  }
	}
      }
    }
  }

  addOnloadEvent(initToc);
  </script>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://emacswiki.org/bootstrap.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head><body class="default"><div class="header"><div class="menu"><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/%d0%9a%d0%b0%d1%80%d1%82%d0%b0%d0%a1%d0%b0%d0%b9%d1%82%d0%b0">КартаСайта</a> <a href="http://www.emacswiki.org/emacs/%d0%9f%d0%be%d1%81%d0%bb%d0%b5%d0%b4%d0%bd%d0%b8%d0%b5%d0%98%d0%b7%d0%bc%d0%b5%d0%bd%d0%b5%d0%bd%d0%b8%d1%8f" class="local">ПоследниеИзменения</a> <a class="local" href="http://www.emacswiki.org/emacs/%d0%a2%d0%b5%d1%80%d1%80%d0%b8%d1%82%d0%be%d1%80%d0%b8%d1%8f%d0%95%d0%bc%d0%b0%d0%ba%d1%81%d0%9b%d0%b8%d1%81%d0%bf%d0%b0">ТерриторияЕмаксЛиспа</a> <a href="http://www.emacswiki.org/emacs/%d0%9a%d0%b0%d0%ba%d0%98%d1%87%d1%82%d0%be" class="local">КакИчто</a> <a href="http://www.emacswiki.org/emacs/%d0%98%d0%b7%d0%b2%d0%b5%d1%81%d1%82%d0%b8%d1%8f" class="local">Известия</a> </span><form method="get" action="http://www.emacswiki.org/emacs" enctype="multipart/form-data" class="search" accept-charset="utf-8"><p><label for="search">Поиск:</label> <input type="text" name="search"  size="20" accesskey="f" id="search" /> <label for="searchlang">Язык:</label> <input type="text" name="lang"  size="10" id="searchlang" /> <input type="submit" name="dosearch" value="Вперед!" /></p></form></div><h1><a href="http://www.emacswiki.org/emacs?search=%22ScrollBar%22" title="Щелкните для поиска ссылок на эту страницу" rel="nofollow"><span style="padding-right: 0.5ex;">Scroll</span><span style="padding-right: 0.5ex;">Bar</span></a></h1></div><div class="wrapper"><div class="content browse"><p>Emacs can have a vertical <strong><a href="http://www.emacswiki.org/emacs?search=%22scroll+bar%22" class="definition" title="Click to search for references to this permanent anchor" rel="nofollow" name="scroll_bar">scroll bar</a></strong> in each <a href="http://www.emacswiki.org/emacs/window" class="local">window</a>.</p><p>In order to disable the display of scroll bars, add the following to your ~/.emacs file, for <a class="local" href="http://www.emacswiki.org/emacs/GnuEmacs">GnuEmacs</a>: </p><pre>(scroll-bar-mode -1)
</pre><p>or this, for <a href="http://www.emacswiki.org/emacs/XEmacs" class="local">XEmacs</a>:</p><pre>(set-specifier horizontal-scrollbar-visible-p nil)
(set-specifier vertical-scrollbar-visible-p nil)
</pre><hr /><p>`M-x scroll-bar-mode` toggles scroll bars in all <a href="http://www.emacswiki.org/emacs/Frame" class="local">Frame</a>s. This is usually not what I want. To turn on scrollbars on a per-frame basis instead, you can put this handy function in your <a class="local" href="http://www.emacswiki.org/emacs/InitFile">InitFile</a>:</p><pre>    (<span class="keyword">defun</span> <span class="function">scroll-bars-in-this-frame</span> (<span class="type">&amp;optional</span> off)
      (interactive)
      (modify-frame-parameters (selected-frame)
 			   `((vertical-scroll-bars . ,(<span class="keyword elisp">if</span> off
							 nil
						       'left)))))</pre><p>Or use <code>&#x2018;M-x toggle-scroll-bar&#x2019;</code>.</p><hr /><p>You can also set where the scroll bars should be. For <a class="local" href="http://www.emacswiki.org/emacs/GnuEmacs">GnuEmacs</a>, use one of the following: </p><pre>(set-scroll-bar-mode 'right)   <span class="comment">; replace 'right with 'left to place it to the left</span>
</pre><p>and for <a class="local" href="http://www.emacswiki.org/emacs/XEmacs">XEmacs</a>:</p><pre>(set-specifier scrollbar-on-left-p nil) <span class="comment">; replace nil with t to place it to the left</span>
(set-specifier scrollbar-on-top-p nil) <span class="comment">; replace nil with t to place it on top</span>
</pre><hr /><p>To use a colored scroll bar (good to have good constrast) you can ./configure gnu emacs with &#x201c;--with-x-toolkit=motif&#x201d; See <code>&#x2018;system-configuration-options&#x2019;</code> variable to see how is your running emacs configured.</p><p>Apparently with only that toolkit you can  (set-face-background&#x2019;scroll-bar &#x201c;red&#x201d;)</p><p>Alternatively, users of the GTK toolkit can style scrollbars by putting something like this in ~/.gtkrc-2.0: </p><pre>style <span class="string">"contrast"</span>
{
        GtkScrollbar:<span class="builtin">:has</span>_forward_stepper  = 0
        GtkScrollbar:<span class="builtin">:has</span>_backward_stepper = 0
        bg[NORMAL]   = <span class="string">"red"</span>
        bg[PRELIGHT] = <span class="string">"dark red"</span>
}
class <span class="string">"GtkScrollbar"</span> style <span class="string">"contrast"</span>
</pre><hr /><p><a href="http://www.emacswiki.org/emacs/GnuEmacs" class="local">GnuEmacs</a> can draw its own &#x201c;native&#x201d; scroll bars, which (contrary to the above post) are quite customizable. In my opinion, this also gives the best results for users of <a class="local" href="http://www.emacswiki.org/emacs/ColorTheme">ColorTheme</a>. Details follow:</p><p>Build <a class="local" href="http://www.emacswiki.org/emacs/GnuEmacs">GnuEmacs</a> with the following options passed to `./configure`: </p><pre>--without-toolkit-scroll-bars --with-x-toolkit=no 
</pre><p>Then try a <a href="http://www.emacswiki.org/emacs/ColorTheme" class="local">ColorTheme</a>, or: </p><pre>M-x customize-face RET scroll-bar RET
</pre><p>You can set the foreground/background colors, border color/width, etc. There is a separate variable called scroll-bar-width.</p><p>Note: the default mouse behavior of the native scroll bar is not what most people will expect. This doesn&#x2019;t bother me, because I never click on the scroll bars anyway: instead I look to them for visual feedback on my location in the buffer, and to see how much of the buffer is exposed in the window. I use the <a class="local" href="http://www.emacswiki.org/emacs/MouseWheel">MouseWheel</a> or <a class="local" href="http://www.emacswiki.org/emacs/IncrementalSearch">IncrementalSearch</a> when I want to move around in a buffer, and have never found much reason to use the scroll bar for this.</p><p>However: the native scroll bar has its own keymap (try `C-h C-k`, then click or drag on the scroll bar). I haven&#x2019;t yet tried this, but in principle its response to mouse movements can be configured freely, perhaps even to duplicate the behavior of the typical scroller.</p><p>Any thoughts?</p><p>--<a href="http://www.emacswiki.org/emacs/DavidOtoole" class="local">DavidOtoole</a></p><div class="color one level0"><p> The Windows/NT ./configure script cannot deal with <code>--without-toolkit-scroll-bars --with-x-toolkit=no</code>. Is there another way to tell emacs to use its own scrollbars? &#x2013; <a href="http://www.emacswiki.org/emacs/Zarza" class="local">Zarza</a></p></div><div class="color two level0"><p> try <code>./configure --without-toolkit-scroll-bars --with-x-toolkit=yes</code> this way I get native scroll bars with whatever x-toolkit I want on my debian system. Maybe it works like that on windows NT too.</p></div><hr /><p>Is it possible to (de)activate the scrollbar only in one buffer? &#x2013; Michael</p><div class="color one level0"><p> Nope. You can request that this feature be added, however, via <code>&#x2018;M-x send-emacs-bug-report&#x2019;</code>.</p><p>Scroll bars are used or not used for all windows of a frame. The most you can do is turn scroll bars on/off for a given frame, using <code>&#x2018;toggle-scroll-bar&#x2019;</code>. &#x2013; <a class="local" href="http://www.emacswiki.org/emacs/DrewAdams">DrewAdams</a></p></div><hr /><p>See also <a class="local" href="http://www.emacswiki.org/emacs/MenuBar">MenuBar</a>, <a href="http://www.emacswiki.org/emacs/ToolBar" class="local">ToolBar</a>, <a href="http://www.emacswiki.org/emacs/ScrollAllMode" class="local">ScrollAllMode</a> </p><hr /><p><a class="local" href="http://www.emacswiki.org/emacs/CategoryDotEmacs">CategoryDotEmacs</a> <a class="local" href="http://www.emacswiki.org/emacs/CategoryDisplay">CategoryDisplay</a> <a href="http://www.emacswiki.org/emacs/CategoryGlossary" class="local">CategoryGlossary</a></p></div><div class="wrapper close"></div></div><div class="footer"><hr /><span class="translation bar"><br />  <a href="http://www.emacswiki.org/emacs?action=translate;id=ScrollBar;missing=de_es_fr_it_ja_ko_pt_ru_se_uk_zh" class="translation new" rel="nofollow">Добавить перевод</a></span><div class="edit bar"><a accesskey="c" class="comment local" href="http://www.emacswiki.org/emacs/Comments_on_ScrollBar">Обсуждение</a> <a rel="nofollow" title="Щелкните, чтобы править" accesskey="e" class="edit" href="http://www.emacswiki.org/emacs?action=edit;id=ScrollBar">Редактировать</a> <a class="history" href="http://www.emacswiki.org/emacs?action=history;id=ScrollBar" rel="nofollow">История</a> <a href="http://www.emacswiki.org/emacs?action=admin;id=ScrollBar" class="admin" rel="nofollow">Администрирование</a></div><div class="time">Редактировалось последний раз 2014-05-09 02:11 UTC пользователем <a class="author" href="http://www.emacswiki.org/emacs/pires" title="bl14-104-146.dsl.telepac.pt">pires</a> <a class="diff" href="http://www.emacswiki.org/emacs?action=browse;diff=2;id=ScrollBar" rel="nofollow">(изменения)</a></div><div style="float:right; margin-left:1ex;">
<!-- Creative Commons License -->
<a class="licence" href="http://creativecommons.org/licenses/GPL/2.0/"><img alt="CC-GNU GPL" style="border:none" src="/pics/cc-GPL-a.png" /></a>
<!-- /Creative Commons License -->
</div>

<!--
<rdf:RDF xmlns="http://web.resource.org/cc/"
 xmlns:dc="http://purl.org/dc/elements/1.1/"
 xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<Work rdf:about="">
   <license rdf:resource="http://creativecommons.org/licenses/GPL/2.0/" />
  <dc:type rdf:resource="http://purl.org/dc/dcmitype/Software" />
</Work>

<License rdf:about="http://creativecommons.org/licenses/GPL/2.0/">
   <permits rdf:resource="http://web.resource.org/cc/Reproduction" />
   <permits rdf:resource="http://web.resource.org/cc/Distribution" />
   <requires rdf:resource="http://web.resource.org/cc/Notice" />
   <permits rdf:resource="http://web.resource.org/cc/DerivativeWorks" />
   <requires rdf:resource="http://web.resource.org/cc/ShareAlike" />
   <requires rdf:resource="http://web.resource.org/cc/SourceCode" />
</License>
</rdf:RDF>
-->

<p class="legal">
This work is licensed to you under version 2 of the
<a href="http://www.gnu.org/">GNU</a> <a href="/GPL">General Public License</a>.
Alternatively, you may choose to receive this work under any other
license that grants the right to use, copy, modify, and/or distribute
the work, as long as that license imposes the restriction that
derivative works have to grant the same rights and impose the same
restriction. For example, you may choose to receive this work under
the
<a href="http://www.gnu.org/">GNU</a>
<a href="/FDL">Free Documentation License</a>, the
<a href="http://creativecommons.org/">CreativeCommons</a>
<a href="http://creativecommons.org/licenses/sa/1.0/">ShareAlike</a>
License, the XEmacs manual license, or
<a href="/OLD">similar licenses</a>.
</p>
</div>
</body>
</html>
