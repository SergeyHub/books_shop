<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0,
          maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Books Shop</title>
    <!--<link rel="stylesheet" href="/css/app.css">-->
    <!--<link rel="stylesheet" href="{{-- URL::to('/css/app.css') --}}">-->
    <link rel="stylesheet" href="{{ asset('/css/app.css') }}">

</head>
<body>
    @include('inc.navbar')
    @include('inc.messages')
    @yield('content')
</body>
</html>

