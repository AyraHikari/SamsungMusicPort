.class public Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;
.super Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment<",
        "Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;
    .locals 1

    .line 43
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;-><init>()V

    .line 44
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
    .locals 2
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

    .line 64
    new-instance p1, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    :cond_1
    return-void
.end method

.method protected c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
    .locals 2

    .line 71
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const v1, 0x7f040178

    .line 72
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    move-result-object v0

    const-string v1, "name"

    .line 73
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    const-string v1, "album_art"

    .line 74
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setThumbnailFullUriCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->b()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x3

    const p2, 0x7f0f003a

    const v0, 0x7f0f003d

    .line 52
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->a(III)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    const v0, 0x7f10036f

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls;->c(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->d(I)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->a(Landroid/app/Activity;)Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$SmallScreenGridItemDecorator;

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$SmallScreenGridItemDecorator;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->a(Lcom/samsung/android/app/music/list/common/GridItemDecorator;)Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->a()Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;

    move-result-object v0

    return-object v0
.end method
