<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    @include('layouts.partials.head')
</head>
<body id="@yield('title')">
<div class="container">
    <div class="row">
            @include('layouts.partials.header')
    </div>
    <div class="row">
        <div class="col-sm-3">
            @include('layouts.partials.aside')
        </div>
        <div class="col-sm-9">
            @yield('content')
        </div>

    </div>
    <div class="row">
            @include('layouts.partials.footer')
    </div>
</div>

</body>
</html>
