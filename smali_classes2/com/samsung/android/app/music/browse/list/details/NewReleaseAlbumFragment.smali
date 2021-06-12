.class public Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment;
.super Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment$NewReleaseAlbumDataLoader;
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

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment;->c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

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
            "Lcom/samsung/android/app/music/model/base/AlbumModel;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance p1, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment$NewReleaseAlbumDataLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment$NewReleaseAlbumDataLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
    .locals 2

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const v1, 0x7f040178

    .line 67
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    move-result-object v0

    const-string v1, "album"

    .line 68
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    const-string v1, "artist"

    .line 69
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    const-string v1, "album_art"

    .line 70
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setThumbnailFullUriCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    .line 71
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
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x3

    const v0, 0x7f0f003a

    const v1, 0x7f0f003d

    .line 44
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment;->a(III)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    const v1, 0x7f10036e

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V

    const-string p1, "new_release_albums"

    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment;->b(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls;->b(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment;->d()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment;->a(IZ)V

    const-string p1, "NewReleaseAlbumFragment"

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewCreated. savedInstance - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->a(Landroid/app/Activity;)Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->a()Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;

    move-result-object v0

    return-object v0
.end method
