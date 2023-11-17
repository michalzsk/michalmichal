<?php

global $messagesArr;

?>

<div class="table-responsive">
    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>E-mail</th>
            <th>Message</th>
            <th>Created at</th>
        </tr>
        </thead>
        <tbody>
        <?php
        foreach ($messagesArr as $message):
        ?>
            <tr>
                <td><?= $message['id'] ?></td>
                <td><?= $message['email'] ?></td>
                <td><?= $message['message'] ?></td>
                <td><?= $message['created_at'] ?></td>
            </tr>
        <?php
        endforeach;
        ?>
        </tbody>
    </table>
</div>
