<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    <?php if(session('status')): ?>
                        <div class="alert alert-success">
                            <?php echo e(session('status')); ?>

                        </div>
                    <?php endif; ?>
                    You are logged in!<br>
                    Your key: <strong><?php echo e(Auth::user()->api_token); ?></strong><br><br>
                    <strong style = "font-size:22px">Documentation</strong><br>
                    <center>
                    <table class = "table-striped col-md-8" style = "width:100%">
                        <tr>
                            <th>Route</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td>/api/{Key}</td>
                            <td>Serves as an authentication for the user to use the api<br>
                                Can be found when logging in</td>
                        </tr>
                         <tr>
                            <td>flightstatus/{key}/{number}/{from}<br>/{to}/{date}</td>
                            <td>Number is an optional value, If number is not known put "NULL value on the number and specify the cities in {from}, {to}</td>
                        </tr>
                          <tr>
                            <td>/api/date/{Date}</td>
                            <td>Returns fl</td>
                        </tr>
                        <tr>
                            <td>Hello</td>
                            <td>Hi</td>
                        </tr>
                    </table>
                    <center>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>