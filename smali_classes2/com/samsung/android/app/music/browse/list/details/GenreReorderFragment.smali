.class public Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;
.super Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment<",
        "Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;-><init>()V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V
    .locals 2

    .line 160
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    .line 161
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a(I)V

    .line 162
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const p2, 0x7f0f003d

    .line 163
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setBackgroundResource(I)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;II)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 147
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 149
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingRight()I

    move-result v1

    .line 150
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingBottom()I

    move-result v2

    .line 149
    invoke-virtual {p1, v0, p3, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setPadding(IIII)V

    .line 151
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 153
    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 154
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 155
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    return-void
.end method

.method private o()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "GenreReorderFragment"

    const-string v1, "saveGenreOrders"

    .line 168
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "genre_id"

    .line 175
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "GenreReorderFragment"

    const-string v1, "saveGenreOrders. activity is null"

    .line 181
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 185
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->b(Landroid/content/Context;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi;->a(Landroid/content/Context;Ljava/util/List;)Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$2;-><init>(Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;)V

    new-instance v2, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$3;-><init>(Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;)V

    .line 187
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_3
    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader<",
            "*>;"
        }
    .end annotation

    .line 131
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->a:Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;

    return-object p1
.end method

.method protected a(Landroid/view/View;Lcom/samsung/android/app/music/network/NetworkManager;)Lcom/samsung/android/app/music/view/NoNetworkViewController;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/network/NetworkManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
    .locals 2

    .line 116
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const v1, 0x7f04002b

    .line 117
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    move-result-object v0

    const-string v1, "genre"

    .line 118
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    .line 119
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->b()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object p1

    .line 58
    instance-of v0, p1, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->a:Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->a:Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;

    .line 64
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->a:Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const p3, 0x7f040035

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 108
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onPause()V

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->o()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 77
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const v0, 0x7f0b00ba

    .line 81
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    const v0, 0x7f100362

    const v1, 0x7f100363

    .line 86
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;II)V

    const/4 v0, 0x3

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V

    .line 90
    new-instance p1, Lcom/samsung/android/app/music/browse/list/BrowseReorderableImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/browse/list/BrowseReorderableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->f(Z)V

    const-string p1, "genres_reorder"

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->b(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    new-instance p2, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->setOnItemLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->d(I)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 125
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
