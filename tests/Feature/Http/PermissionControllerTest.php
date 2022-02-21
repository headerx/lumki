<?php

namespace Kineticamobile\Lumki\Tests\Feature;

use Kineticamobile\Lumki\Tests\TestCase;

class PermissionControllerTest extends TestCase
{
    public function setUp(): void
    {
        parent::setUp();

        $this->permissions = \Spatie\Permission\Models\Permission::factory()->create();
    }

    public function testItShouldShowPermissions()
    {
        $response = $this->get('/lumki/permissions');

        $response->assertStatus(200);
        $response->assertViewIs('lumki::' . config('lumki.theme') . '.permissions.index');
        $response->assertViewHas('permissions');
    }

    public function testItShouldShowPermissionCreateForm()
    {
        $response = $this->get('/lumki/permissions/create');

        $response->assertStatus(200);
        $response->assertViewIs('lumki::' . config('lumki.theme') . '.permissions.create');
    }

    public function testItShouldCreatePermission()
    {
        $response = $this->post('/lumki/permissions', [
            'name' => 'test',
        ]);

        $response->assertStatus(302);
        $response->assertRedirect('/lumki/permissions');
        $response->assertSessionHas('success');
    }

    public function testItShouldShowPermissionShow()
    {
        $response = $this->get('/lumki/permissions/' . $this->permissions->first()->id);

        $response->assertStatus(200);
        $response->assertViewIs('lumki::' . config('lumki.theme') . '.permissions.show');
        $response->assertViewHas('permission');
    }
}
