<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Quotes to Scrape</title>
    <link rel="stylesheet" href="/static/bootstrap.min.css">
    <link rel="stylesheet" href="/static/main.css">
</head>
<body>
    <div class="container">
        <div class="row header-box">
            <div class="col-md-8">
                <h1>
                    <a href="/" style="text-decoration: none">Quotes to Scrape</a>
                </h1>
            </div>
            <div class="col-md-4">
                <p>
                
                    <a href="/login">Login</a>
                
                </p>
            </div>
        </div>
    
<hr>
<form action="/filter.aspx" method="post" accept-charset="utf-8" name="filterform">
    <div class="row">
        <div class="col-md-4 form-group">
            <label for="author">Author</label>
            <select class="form-control" name="author" id="author" onchange="__doPostBack()">
                <option>----------</option>
                
                <option value="Albert Einstein" >
                    Albert Einstein
                </option>
                
                <option value="J.K. Rowling" >
                    J.K. Rowling
                </option>
                
                <option value="Jane Austen" >
                    Jane Austen
                </option>
                
                <option value="Marilyn Monroe" >
                    Marilyn Monroe
                </option>
                
                <option value="André Gide" >
                    André Gide
                </option>
                
                <option value="Thomas A. Edison" >
                    Thomas A. Edison
                </option>
                
                <option value="Eleanor Roosevelt" >
                    Eleanor Roosevelt
                </option>
                
                <option value="Steve Martin" >
                    Steve Martin
                </option>
                
                <option value="Bob Marley" >
                    Bob Marley
                </option>
                
                <option value="Dr. Seuss" >
                    Dr. Seuss
                </option>
                
                <option value="Douglas Adams" >
                    Douglas Adams
                </option>
                
                <option value="Elie Wiesel" >
                    Elie Wiesel
                </option>
                
                <option value="Friedrich Nietzsche" >
                    Friedrich Nietzsche
                </option>
                
                <option value="Mark Twain" >
                    Mark Twain
                </option>
                
                <option value="Allen Saunders" >
                    Allen Saunders
                </option>
                
                <option value="Pablo Neruda" >
                    Pablo Neruda
                </option>
                
                <option value="Ralph Waldo Emerson" >
                    Ralph Waldo Emerson
                </option>
                
                <option value="Mother Teresa" >
                    Mother Teresa
                </option>
                
                <option value="Garrison Keillor" >
                    Garrison Keillor
                </option>
                
                <option value="Jim Henson" >
                    Jim Henson
                </option>
                
                <option value="Charles M. Schulz" >
                    Charles M. Schulz
                </option>
                
                <option value="William Nicholson" >
                    William Nicholson
                </option>
                
                <option value="Jorge Luis Borges" >
                    Jorge Luis Borges
                </option>
                
                <option value="George Eliot" >
                    George Eliot
                </option>
                
                <option value="George R.R. Martin" >
                    George R.R. Martin
                </option>
                
                <option value="C.S. Lewis" >
                    C.S. Lewis
                </option>
                
                <option value="Martin Luther King Jr." >
                    Martin Luther King Jr.
                </option>
                
                <option value="James Baldwin" >
                    James Baldwin
                </option>
                
                <option value="Haruki Murakami" >
                    Haruki Murakami
                </option>
                
                <option value="Alexandre Dumas fils" >
                    Alexandre Dumas fils
                </option>
                
                <option value="Stephenie Meyer" >
                    Stephenie Meyer
                </option>
                
                <option value="Ernest Hemingway" >
                    Ernest Hemingway
                </option>
                
                <option value="Helen Keller" >
                    Helen Keller
                </option>
                
                <option value="George Bernard Shaw" >
                    George Bernard Shaw
                </option>
                
                <option value="Charles Bukowski" >
                    Charles Bukowski
                </option>
                
                <option value="Suzanne Collins" >
                    Suzanne Collins
                </option>
                
                <option value="J.R.R. Tolkien" >
                    J.R.R. Tolkien
                </option>
                
                <option value="Alfred Tennyson" >
                    Alfred Tennyson
                </option>
                
                <option value="Terry Pratchett" >
                    Terry Pratchett
                </option>
                
                <option value="J.D. Salinger" >
                    J.D. Salinger
                </option>
                
                <option value="George Carlin" >
                    George Carlin
                </option>
                
                <option value="John Lennon" >
                    John Lennon
                </option>
                
                <option value="W.C. Fields" >
                    W.C. Fields
                </option>
                
                <option value="Jimi Hendrix" >
                    Jimi Hendrix
                </option>
                
                <option value="J.M. Barrie" >
                    J.M. Barrie
                </option>
                
                <option value="E.E. Cummings" >
                    E.E. Cummings
                </option>
                
                <option value="Khaled Hosseini" >
                    Khaled Hosseini
                </option>
                
                <option value="Harper Lee" >
                    Harper Lee
                </option>
                
                <option value="Madeleine L&#39;Engle" >
                    Madeleine L&#39;Engle
                </option>
                
            </select>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 form-group">
            <label for="tag">Tag</label>
            <select class="form-control" name="tag" id="tag">
                <option>----------</option>
                
            </select>
        </div>
    </div>
    <input name="submit_button" type="submit" value="Search" class="btn btn-default" />
    
    <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="MWE0ZGE3NWMzNDgxNDg0YjliNDBlMDA1YTcxNjgyZjUsQWxiZXJ0IEVpbnN0ZWluLEouSy4gUm93bGluZyxKYW5lIEF1c3RlbixNYXJpbHluIE1vbnJvZSxBbmRyw6kgR2lkZSxUaG9tYXMgQS4gRWRpc29uLEVsZWFub3IgUm9vc2V2ZWx0LFN0ZXZlIE1hcnRpbixCb2IgTWFybGV5LERyLiBTZXVzcyxEb3VnbGFzIEFkYW1zLEVsaWUgV2llc2VsLEZyaWVkcmljaCBOaWV0enNjaGUsTWFyayBUd2FpbixBbGxlbiBTYXVuZGVycyxQYWJsbyBOZXJ1ZGEsUmFscGggV2FsZG8gRW1lcnNvbixNb3RoZXIgVGVyZXNhLEdhcnJpc29uIEtlaWxsb3IsSmltIEhlbnNvbixDaGFybGVzIE0uIFNjaHVseixXaWxsaWFtIE5pY2hvbHNvbixKb3JnZSBMdWlzIEJvcmdlcyxHZW9yZ2UgRWxpb3QsR2VvcmdlIFIuUi4gTWFydGluLEMuUy4gTGV3aXMsTWFydGluIEx1dGhlciBLaW5nIEpyLixKYW1lcyBCYWxkd2luLEhhcnVraSBNdXJha2FtaSxBbGV4YW5kcmUgRHVtYXMgZmlscyxTdGVwaGVuaWUgTWV5ZXIsRXJuZXN0IEhlbWluZ3dheSxIZWxlbiBLZWxsZXIsR2VvcmdlIEJlcm5hcmQgU2hhdyxDaGFybGVzIEJ1a293c2tpLFN1emFubmUgQ29sbGlucyxKLlIuUi4gVG9sa2llbixBbGZyZWQgVGVubnlzb24sVGVycnkgUHJhdGNoZXR0LEouRC4gU2FsaW5nZXIsR2VvcmdlIENhcmxpbixKb2huIExlbm5vbixXLkMuIEZpZWxkcyxKaW1pIEhlbmRyaXgsSi5NLiBCYXJyaWUsRS5FLiBDdW1taW5ncyxLaGFsZWQgSG9zc2VpbmksSGFycGVyIExlZSxNYWRlbGVpbmUgTCdFbmdsZQ==">
</form>
<div class="results">
    
</div>
<script type="text/javascript">
    var theForm = document.forms['filterform'];
        if (!theForm) {
            theForm = document.filterform;
        }   
    function __doPostBack() {
        if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
            theForm.submit();
        }
    }
</script>

    </div>
    <footer class="footer">
        <div class="container">
            <p class="text-muted">
                Quotes by: <a href="https://www.goodreads.com/quotes">GoodReads.com</a>
            </p>
            <p class="copyright">
                Made with <span class='sh-red'>❤</span> by <a href="https://scrapinghub.com">Scrapinghub</a>
            </p>
        </div>
    </footer>
</body>
</html>