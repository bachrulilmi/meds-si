<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">

        </div>

        <!-- search form -->

        <!-- /.search form -->

        <?= dmstr\widgets\Menu::widget(
            [
            'options' => ['class' => 'sidebar-menu'],
            'items' => [
            ['label' => 'Menu', 'options' => ['class' => 'header']],
            ['label' => 'Upload Data Stock', 'icon' => 'file-code-o', 'url' => ['upload/index']],
            ['label' => 'Upload Data Sales', 'icon' => 'file-code-o', 'url' => ['upload/sales']],
            ['label' => 'Upload Data PO', 'icon' => 'file-code-o', 'url' => ['upload/po']],
            ['label' => 'Manual Input Data', 'icon' => 'book', 'url' => ['upload/manual-input']],
            ['label' => 'Dashboard', 'icon' => 'dashboard', 'url' => ['dashboard/index']],
            ['label' => 'Report Stock vs Sales', 'icon' => 'dashboard', 'url' => ['dashboard/stockvsales']],
            ['label' => 'Logout', 'icon' => 'sign-out','url' => ['site/logout']],

            ],
            ]
            ) ?>





    </section>

</aside>
