.class public final Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private final c:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$wifiStateListener$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$wifiStateListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$wifiStateListener$1;-><init>(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->c:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$wifiStateListener$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->a:Z

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->a:Z

    return p0
.end method

.method private final d()I
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->a:Z

    if-eqz v0, :cond_1

    .line 103
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->q_:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b02a8

    goto :goto_0

    :cond_0
    const v0, 0x7f0b02b3

    goto :goto_0

    .line 108
    :cond_1
    sget v0, Lcom/samsung/android/app/music/regional/VariantStringIds;->c:I

    :goto_0
    return v0
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->c()Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 131
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindDlna()V

    .line 132
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0

    .line 140
    new-instance p1, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;-><init>()V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;
    .locals 2

    .line 126
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "provider_name"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x1000b

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "provider_id"

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    const v3, 0x7f14001f

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 153
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->c:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$wifiStateListener$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->c:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$wifiStateListener$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 88
    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v9, 0x2

    invoke-direct {v1, v3, p2, v9, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const v0, 0x7f100246

    .line 94
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->h(I)Landroid/view/View;

    .line 95
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->d()I

    move-result v4

    const v1, 0x7f0b02b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->c(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->g()I

    move-result p1

    invoke-static {p0, p1, p2, v9, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 136
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity!!.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
