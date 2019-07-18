
{include file="header.tpl"}
{include file="nav.tpl"}

<div class="page-header">
    <div class="container-fluid">
        <h2 class="h5 no-margin-bottom"> Miner Settings</h2>
    </div>
</div>


<div class="wrapper">
    <header class="main-header">
        <nav class="navbar-default navbar-static-top navbar-light bg-faded">
            <div class="container">
                <div class="navbar-header">
                    <a href="" class="navbar-brand"><b>Proxy</b>Panel</a>
                </div>

                <div class="navbar-default pull-left">
                    <ul class="nav navbar-nav">
                        <li><span id="exBTC"></span></li>
                        <li><span id="exXMR"></span></li>
                        <li><span id="exETN"></span></li>
                        <li><span id="exAEON"></span></li>
                    </ul>
                </div>
                <div class="navbar-custom-menu pull-right">
                    <ul class="nav navbar-nav">
                        <li><a class="nav-link" href="#" onclick="resetProxyUrl()" style="color: red">Reset proxy URL</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <div class="content-wrapper">
        <div class="container">
            <section class="content">
                <div class="row">
                    <div id="main" style="display: none">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="info-box">
                                    <span class="info-box-icon bg-green"><i class="ion ion-heart"></i></span>
                                    <div class="info-box-content">
                                        <span class="info-box-text">Online workers</span>
                                        <span class="info-box-number" id="activeworkers"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="info-box">
                                    <span class="info-box-icon bg-red"><i class="ion ion-heart-broken"></i></span>
                                    <div class="info-box-content">
                                        <span class="info-box-text">Offline workers</span>
                                        <span class="info-box-number" id="notactiveworkers"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="info-box">
                                    <span class="info-box-icon bg-aqua"><i class="ion ion-ios-world-outline"></i></span>
                                    <div class="info-box-content">
                                        <span class="info-box-text">All workers</span>
                                        <span class="info-box-number" id="allworkers"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="info-box">
                                    <span class="info-box-icon bg-aqua"><i class="ion ion-fireball"></i></span>
                                    <div class="info-box-content">
                                        <span class="info-box-text">Hashrate</span>
                                        <span class="info-box-number" id="hashrate"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="info-box">
                                    <span class="info-box-icon bg-green"><i class="ion ion-fireball"></i></span>
                                    <div class="info-box-content">
                                        <span class="info-box-text">Hashrate 1h</span>
                                        <span class="info-box-number" id="hashrate1h"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="info-box">
                                    <span class="info-box-icon bg-maroon"><i class="ion ion-fireball"></i></span>
                                    <div class="info-box-content">
                                        <span class="info-box-text">Hashrate 12h</span>
                                        <span class="info-box-number" id="hashrate12h"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="info-box">
                                    <span class="info-box-icon bg-purple"><i class="ion ion-fireball"></i></span>
                                    <div class="info-box-content">
                                        <span class="info-box-text">Hashrate 24h</span>
                                        <span class="info-box-number" id="hashrate24h"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="info-box">
                                    <span class="info-box-icon bg-green"><i class="ion ion-flag"></i></span>
                                    <div class="info-box-content">
                                        <span class="info-box-text">Accepted shares</span>
                                        <span class="info-box-number" id="acceptedshares"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="info-box">
                                    <span class="info-box-icon bg-red"><i class="ion ion-heart-broken"></i></span>
                                    <div class="info-box-content">
                                        <span class="info-box-text">Rejected shares</span>
                                        <span class="info-box-number" id="rejectedshares"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="info-box">
                                    <span class="info-box-icon bg-red"><i class="ion ion-medkit"></i></span>
                                    <div class="info-box-content">
                                        <span class="info-box-text">Invalid shares</span>
                                        <span class="info-box-number" id="invalidshares"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="info-box">
                                    <span class="info-box-icon bg-red"><i class="ion ion-clock"></i></span>
                                    <div class="info-box-content">
                                        <span class="info-box-text">Expired shares</span>
                                        <span class="info-box-number" id="expiredshares"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="box box-success">
                            <div class="box-header">
                                <h3 class="box-title">Online workers</h3>
                            </div>
                            <div class="box-body">
                                <table id="workerstable" class="table table-bordered table-hover table-striped" style="width: 100%"></table>
                            </div>
                        </div>
                        <div class="box box-danger">
                            <div class="box-header">
                                <h3 class="box-title">Offline workers</h3>
                            </div>
                            <div class="box-body">
                                <table id="naworkerstable" class="table table-bordered table-hover table-striped" style="width: 100%"></table>
                            </div>
                        </div>
                    </div>
                    <div id="setproxy">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Set proxy URL</h3>
                                </div>
                                <div class="box-body">
                                    <div class="input-group" style="width: 100%">
                                        <span class="input-group-addon" style="width: 10%">Proxy URL</span>
                                        <input type="text" class="form-control" id="sproxy" placeholder="Proxy URL" style="width: 100%">
                                    </div>
                                    <br>
                                    <div class="input-group pull-right">
                                        <button type="button" class="btn btn-block btn-success" onclick="setProxy()">Save</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3"></div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>



{include file="footer.tpl"}




<script>
    var exUrls = [
        'https://api.coinmarketcap.com/v1/ticker/bitcoin/',
        'https://api.coinmarketcap.com/v1/ticker/monero/',
        'https://api.coinmarketcap.com/v1/ticker/Electroneum/',
        'https://api.coinmarketcap.com/v1/ticker/aeon/'
    ];

    var miRefresh, wiRefresh, datatable, datatable2, workers = [], naworkers = [];

    function trim(s, c) {
        if (c === "]")
            c = "\\]";
        if (c === "\\")
            c = "\\\\";
        return s.replace(new RegExp(
            "^[" + c + "]+|[" + c + "]+$", "g"
        ), "");
    }

    Object.size = function (obj) {
        var size = 0, key;
        for (key in obj) {
            if (obj.hasOwnProperty(key))
                size++;
        }
        return size;
    };

    function ajaxget(url, callback) {
        $.ajax({
            type: 'GET',
            url: url,
            success: callback,
            dataType: 'json'
        });
    }

    function getExCallback(data) {
        if (data !== null && data.length > 0) {
            var exdata = data[0];
            $('#ex' + exdata.symbol).empty();
            $('#ex' + exdata.symbol).append('<li><span class="navbar-text">' + exdata.symbol + ': ' + exdata.price_usd + '/' + exdata.price_btc + '</span></li>');
        }
    }

    function loadEx() {
        $.each(exUrls, function (i, url) {
            ajaxget(url, getExCallback);
        });
    }

    function checkProxyUrl() {
        if (localStorage.proxy_url !== undefined && localStorage.proxy_url !== null && localStorage.proxy_url.length > 0) {
            $('#main').show();
            $('#setproxy').hide();
            if (miRefresh === undefined || miRefresh === null) {
                getProxyMainInfo();
            }
            if (wiRefresh === undefined || wiRefresh === null) {
                getProxyWorkersInfo();
            }
        } else {
            if (miRefresh !== undefined && miRefresh !== null) {
                clearInterval(miRefresh);
            }
            if (wiRefresh !== undefined && wiRefresh !== null) {
                clearInterval(wiRefresh);
            }
            workers = [];
            naworkers = [];
            fillTable();
            $('#allworkers').text('');
            $('#activeworkers').text('');
            $('#notactiveworkers').text('');
            $('#hashrate').text('');
            $('#hashrate1h').text('');
            $('#hashrate12h').text('');
            $('#hashrate24h').text('');
            $('#acceptedshares').text('');
            $('#rejectedshares').text('');
            $('#invalidshares').text('');
            $('#expiredshares').text('');
            $('#main').hide();
            $('#setproxy').show();
        }
    }

    function setProxy() {
        if ($('#sproxy').val() !== undefined && $('#sproxy').val() !== null && $('#sproxy').val().length > 0) {
            var sproxy = trim($('#sproxy').val(), 'http://');
            sproxy = trim(sproxy, '/');
            localStorage.proxy_url = 'http://' + sproxy;
        }
    }

    function mainInfoCallback(data) {
        if (data !== null && typeof data === 'object' && Object.size(data) > 0) {
            $('#hashrate').text(data.hashrate.total[0] + ' Kh');
            $('#hashrate1h').text(data.hashrate.total[2] + ' Kh');
            $('#hashrate12h').text(data.hashrate.total[3] + ' Kh');
            $('#hashrate24h').text(data.hashrate.total[4] + ' Kh');
            $('#acceptedshares').text(data.results.accepted);
            $('#rejectedshares').text(data.results.rejected);
            $('#invalidshares').text(data.results.invalid);
            $('#expiredshares').text(data.results.expired);
        }
    }

    function workersInfoCallback(data) {
        if (data !== null && typeof data === 'object' && Object.size(data) > 0) {
            workers = [];
            naworkers = [];
            var aworkerscount = 0;
            var naworkerscount = 0;
            $.each(data.workers, function (i, worker) {
                var name = '';
                if(worker[0].length > 30) {
                    name = '<span data-toggle="tooltip" data-placement="top" title="'+worker[0]+'">'+worker[0].substr(0,30)+'...</span>';
                } else {
                    name = worker[0];
                }
                var workdata = [name, worker[2], worker[1], worker[8] + ' Kh', worker[10] + ' Kh', worker[11] + ' Kh', worker[12] + ' Kh'];
                if (parseInt(worker[2]) > 0) {
                    workers.push(workdata);
                    aworkerscount++;
                } else {
                    naworkers.push(workdata);
                    naworkerscount++;
                }
            });
            $('#allworkers').text(aworkerscount + naworkerscount);
            $('#activeworkers').text(aworkerscount);
            $('#notactiveworkers').text(naworkerscount);
            fillTable();
        }
    }

    function getProxyMainInfo() {
        ajaxget(localStorage.proxy_url, mainInfoCallback);
        miRefresh = setInterval(function () {
            ajaxget(localStorage.proxy_url, mainInfoCallback);
        }, 60000);
    }

    function getProxyWorkersInfo() {
        ajaxget(localStorage.proxy_url + '/workers.json', workersInfoCallback);
        wiRefresh = setInterval(function () {
            ajaxget(localStorage.proxy_url + '/workers.json', workersInfoCallback);
        }, 60000);
    }

    function resetProxyUrl() {
        localStorage.clear();
    }

    function fillTable() {
        if (datatable !== null && typeof datatable === 'object') {
            datatable.clear();
            datatable.rows.add(workers);
            datatable.draw();
        }
        if (datatable2 !== null && typeof datatable2 === 'object') {
            datatable2.clear();
            datatable2.rows.add(naworkers);
            datatable2.draw();
        }
    }
    $(document).ready(function () {
        checkProxyUrl();
        setInterval(checkProxyUrl, 1000);
        loadEx();
        setInterval(loadEx, 120000);
        datatable = $('#workerstable').DataTable({
            data: workers,
            columns: [
                { title: "Name"},
                { title: "Count", width: '5%'},
                { title: "Last IP", width: '5%'},
                { title: "Hashrate", width: '12%'},
                { title: "Hashrate 1h", width: '12%'},
                { title: "Hashrate 12h", width: '12%'},
                { title: "Hashrate 24h", width: '12%'}
            ],
            "order": [[3, "desc"]]
        });
        datatable2 = $('#naworkerstable').DataTable({
            data: naworkers,
            columns: [
                { title: "Name"},
                { title: "Count", width: '5%'},
                { title: "Last IP", width: '5%'},
                { title: "Hashrate", width: '12%'},
                { title: "Hashrate 1h", width: '12%'},
                { title: "Hashrate 12h", width: '12%'},
                { title: "Hashrate 24h", width: '12%'}
            ],
            "order": [[3, "desc"]]
        });
    });
</script>