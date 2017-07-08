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
<div class="main container">
    <header>
            @include('layouts.partials.header')
    <header>
    <div class="row">
        <section class="col-sm-9">
            @yield('content')
        </section>
        <aside class="col-sm-3">
            @include('layouts.partials.aside')
        <aside>
    </div>
    <footer>
            @include('layouts.partials.footer')
    <footer>
</div>

</body>
</html>
