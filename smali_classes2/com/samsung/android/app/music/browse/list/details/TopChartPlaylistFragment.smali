.class public Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;
.super Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment$TopChartPlaylistDataLoader;
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

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;-><init>()V

    return-void
.end method

.method public static c(I)Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;
    .locals 3

    .line 50
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_type"

    .line 52
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
    .locals 3
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
            "Lcom/samsung/android/app/music/model/base/PlayListModel;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance p1, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment$TopChartPlaylistDataLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment$TopChartPlaylistDataLoader;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
    .locals 2

    .line 86
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const v1, 0x7f040178

    .line 87
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    move-result-object v0

    const-string v1, "name"

    .line 88
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    const-string v1, "album_art"

    .line 89
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

    .line 60
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x3

    const p2, 0x7f0f003a

    const v0, 0x7f0f003d

    .line 62
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->a(III)V

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    const v0, 0x7f10036e

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "extra_type"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const-string p1, "top_charts_by_time"

    goto :goto_0

    :cond_0
    const-string p1, "top_charts_by_genres"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->b(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls;->c(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->d()I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->a(IZ)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->a(Landroid/app/Activity;)Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->a()Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;

    move-result-object v0

    return-object v0
.end method
