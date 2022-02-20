<?php

$lumkiPermission = "manage users";

return [
    "prefix" => 'lumki',
    'theme' => 'default',
    "lumkiPermission" => $lumkiPermission,
    "middleware" => [
        "web",
        "auth:sanctum",
        "can:$lumkiPermission"
    ],
    'custom_fields' => [
        // [
        //     'type' => 'text',
        //     'name' => 'username',
        //     'label' => 'Username',
        //     'placeholder' => 'Username',
        // ],
    ]
];
