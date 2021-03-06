<?php namespace Aginev\Acl\Http\Middleware;

use Closure;
use Aginev\Acl\Http\Models\Permission;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Acl
{
    /**
     * Handle an incoming request.
     *
     * @param  Request $request
     * @param  \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $resource = $request->route()->getActionName();
        $permission = Permission::where('resource', '=', $resource)->first();

        // If the specific route requires permissions
        if ($permission) {
            // Get user permissions
            try {
                $user_permissions = Auth::user()->role->permissions->keyBy('resource');
            } catch (\Exception $e) {
                return abort(401, trans('acl::general.messages.user_permissions_not_found'));
            }

            // And the user has permissions
            if (! $user_permissions->has($resource)) {
                return abort(401, trans('acl::general.messages.no_permissions'));
            }
        }

        return $next($request);
    }
}
