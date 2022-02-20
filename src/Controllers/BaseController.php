<?php

namespace Kineticamobile\Lumki\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller;
use Spatie\Permission\Contracts\Permission;
use Spatie\Permission\Contracts\Role;

class BaseController extends Controller
{
    use AuthorizesRequests;
    use DispatchesJobs;
    use ValidatesRequests;

    public Permission $permissions;
    public Role $roles;

    public function __construct()
    {
        $this->permissions = app(Permission::class);
        $this->roles = app(Role::class);
    }
}
