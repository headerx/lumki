<?php

namespace Kineticamobile\Lumki\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Laravel\Fortify\Contracts\CreatesNewUsers;

class UserController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('lumki::' . config('lumki.theme') . '.users.index', [
            'users' => User::orderBy('name')->paginate(10),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('lumki::' . config('lumki.theme') . '.users.create', [
            'roles' => $this->roles->all(),
            'custom_fields' => config('lumki.custom_fields'),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, CreatesNewUsers $createsNewUsers)
    {
        $validatedData = $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);

        $user = $createsNewUsers->create($validatedData);
        $user->syncRoles(request('roles'));

        return redirect(route('lumki.users.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return view('lumki::' . config('lumki.theme') . '.users.show', [
            'menu' => $menu,
            'users' => $menu->users,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        return view('lumki::' . config('lumki.theme') . '.users.edit', [
            'user' => $user,
            'roles' => $this->roles->all(),
            'custom_fields' => config('lumki.custom_fields'),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $rules = [];

        if ($request->has('name')) {
            $rules['name'] = ['required', 'string', 'max:255'];
        }

        if ($request->has('email')) {
            $rules['email'] = ['required', 'string', 'email', 'max:255', 'unique:users,email,'.$user->id];
        }

        if ($request->filled('password')) {
            $rules['password'] = ['sometimes', 'required', 'string', 'min:8', 'confirmed'];
        }

        $validatedData = $request->validate($rules);
        if ($request->filled('password')) {
            $validatedData['password'] = Hash::make($validatedData['password']);
        }
        foreach (config('lumki.custom_fields') as $item) {
            $validatedData[$item['name']] = $request->{$item['name']};
        }

        $user->update($validatedData);
        $user->syncRoles(request('roles'));

        return redirect()->route('lumki.users.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user->delete();

        return redirect()->route('lumki.users.index');
    }
}
