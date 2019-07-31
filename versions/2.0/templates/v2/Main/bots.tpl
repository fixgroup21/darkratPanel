{include file="header.tpl"}
{include file="nav.tpl"}


<script>

    //  $('.bot_table').DataTable();

    function openBotInfo(id){

        $.get( /botinfo/+id, function( data ) {
            $("#botinfoModal").modal( { show: true } );
            $( "#botInformations" ).html( data );

        });
    }
</script>

<div class="page-header">
    <div class="container-fluid">
        <h2 class="h5 no-margin-bottom">Bots Overview</h2>
    </div>
</div>

<div class="col-md-12 col-lg-12">
    <div class="container">
        <div class="row">

            <!--
            <div>
                <input class="btn-dark btn" type="submit" name="clearBotlist" value="Delete All Bots">
                <hr>
            </div>
            -->


            <table class="table bot_table">
                <thead>
                <tr>
                    <th>Country</th>
                    <th class="hideTablet">IP</th>
                    <th  class="hideMobile">Computername</th>
                    <th class="hideTablet">Antivirus</th>
                    <th class="hideTablet">Opering System</th>
                    <th>Version</th>
                    <th  class="hideMobile">Last Seen</th>

                    <th>More Info</th>
                </tr>
                </thead>
                <tbody>
                {foreach from=$allbots item=bot}
                    <tr>
                        <td class="flag">  <img width="16" src="{$includeDir}assets/img/flags/flags/{$bot.country|lower}.png"> {if $bot.countryName == "unknow"} N/A {else} {$bot.countryName} {/if} </td>
                        <td class="hideTablet"> {$bot.ip}</td>
                        <td  class="hideMobile">{$bot.computrername}</td>
                        <td class="avtivirus hideTablet"> {$bot.antivirus} </td>
                        <td class="operingsystem hideTablet"> {$bot.operingsystem} </td>
                        <td> {$bot.version} </td>
                        <td class="hideMobile" data-order="{$bot.lastresponse}"> <span id="lastSeen-{$bot.id}"></span> <script>$("#lastSeen-{$bot.id}").html( timeDifference("{$bot.now}","{$bot.lastresponse}")) </script> </td>

                        <td>
                            <a class="botinfo_modal_link" onclick="openBotInfo({$bot.id})"> Info</a>
                        </td>
                    </tr>
                {/foreach}
                </tbody>
            </table>
        </div>
        <!-- The Modal -->
        <div class="modal" id="botinfoModal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Bot Info</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div id="botInformations" class="modal-body">

                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>


<script>
    $('.bot_table').DataTable();


    $.fn.dataTable.ext.filter.push(
        function( settings, data, dataIndex ) {
            var min = $('#min').val() * 1;
            var max = $('#max').val() * 1;
            var age = parseFloat( data[3] ) || 0; // use data for the age column

            if ( ( min == '' && max == '' ) ||
                ( min == '' && age <= max ) ||
                ( min <= age && '' == max ) ||
                ( min <= age && age <= max ) )
            {
                return true;
            }
            return false;
        }
    );


</script>