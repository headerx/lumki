<?php

namespace Kineticamobile\Lumki\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Contracts\Role;

class RoleController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('lumki::' . config('lumki.theme') . '.roles.index', ['roles' => $this->roles->paginate(10)]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('lumki::roles.create', [
            'permissions' => $this->permissions->all(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $roles = app(Role::class);
        $role = $roles->create([
            'name' => request('name'),
            'guard_name' => 'web',
        ]);
        $role->syncPermissions(request('permissions'));

        return redirect()->route('lumki.roles.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Role $role)
    {
        return view('lumki::' . config('lumki.theme') . '.roles.show', [
            'menu' => $menu,
            'roles' => $menu->roles,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Role $role)
    {
        return view('lumki::' . config('lumki.theme') . '.roles.edit', [
            'role' => $role,
            'permissions' => $this->permissions->all(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Role $role)
    {
        $role->syncPermissions($request->input('permissions'));

        return redirect()->route('lumki.roles.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Role $role)
    {
        $role->delete();

        return redirect()->route('lumki.roles.index');
    }
}
