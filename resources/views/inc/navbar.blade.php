<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarCollapse" aria-controls="navbarCollapse"
            aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link {{ Request::is('/') ? 'active' : '' }}" href="{{ URL::to('/') }}">Categories</a>
            </li>
            <li class="nav-item {{ Request::is('categories/create') ? 'active' : '' }}">
                <a class="nav-link" href="{{ route('category-create') }}">Insert new Category</a>
            </li>


        </ul>
    </div>
</nav>
