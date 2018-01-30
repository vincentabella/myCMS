<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

$route['default_controller'] = 'Themes';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;


// THEME ROUTES
$route['page/(:num)/(:any)'] = 'themes/page/$1/$2';
$route['post/(:num)/(:any)'] = 'themes/post/$1/$2';
$route['category/(:any)/(:any)'] = 'themes/category/$1/$2';


// APP ROUTES
$route['admin/login'] = 'user/admin/user/login';
$route['admin/logout'] = 'user/admin/user/logout';


// DASHBOARD
$route['admin'] = 'dashboard/dashboard';
$route['admin/dashboard'] = 'dashboard/dashboard';

// BLOGS
$route['admin/blogs'] = 'blog/admin/blog';
$route['admin/blogs/add'] = 'blog/admin/blog/add_post';
$route['admin/blogs/edit/(:num)'] = 'blog/admin/blog/edit_post/$1';
$route['admin/blogs/categories'] = 'blog/admin/blog/categories';
$route['admin/blogs/categories/edit/(:num)'] = 'blog/admin/blog/edit_category/$1';
$route['admin/blogs/status/(:any)'] = 'blog/admin/blog/blog_by_status/$1';
$route['admin/blogs/status/(:any)/(:num)'] = 'blog/admin/blog/blog_by_status/$1/$2'; 
$route['admin/blogs/search'] = 'blog/admin/blog/search';

// PAGES
$route['admin/pages'] = 'page/admin/page';
$route['admin/pages/add'] = 'page/admin/page/add_page';
$route['admin/pages/edit/(:num)'] = 'page/admin/page/edit_page/$1';
$route['admin/pages/status/(:any)'] = 'page/admin/page/page_by_status/$1';
$route['admin/pages/status/(:any)/(:num)'] = 'page/admin/page/page_by_status/$1/$2'; 

// MENUS
$route['admin/menus'] = 'menus/admin/menus';
$route['admin/menus/edit/(:num)'] = 'menus/admin/menus/edit_menu/$1';


// USERS
$route['admin/users'] = 'user/admin/user';
$route['admin/users/add'] = 'user/admin/user/add_user';
$route['admin/users/edit/(:num)'] = 'user/admin/user/edit/$1';
$route['admin/users/role/(:any)'] = 'user/admin/user/user_by_role/$1';
$route['admin/users/role/(:any)/(:num)'] = 'user/admin/user/user_by_role/$1/$2'; 
$route['admin/users/profile'] = 'user/admin/user/profile';