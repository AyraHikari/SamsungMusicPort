.class public Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;
.super Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader;
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
.field private a:Ljava/lang/String;

.field private b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

.field private c:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

.field private d:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;
    .locals 3

    .line 61
    new-instance v0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_id"

    .line 63
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic a(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->b(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->c:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->a(Landroid/view/View;)V

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method

.method protected b(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader;
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 119
    new-instance p1, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->a:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
    .locals 2

    .line 125
    new-instance v0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "category"

    .line 126
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;

    move-result-object v0

    const v1, 0x7f040178

    .line 127
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    move-result-object v0

    const-string v1, "album"

    .line 128
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    const-string v1, "artist"

    .line 129
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    const-string v1, "album_art_single"

    .line 130
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extra_id"

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->c:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->d:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    .line 150
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->c:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    .line 151
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->d:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    .line 153
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x3

    const v1, 0x106000d

    const v2, 0x7f0f003d

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->a(IIIZ)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    const v2, 0x7f100007

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls;->b(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    const v0, 0x7f040055

    const v1, 0x7f0b01df

    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->b(II)V

    const-string v0, "discover_artist_by_album"

    .line 91
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->b(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->d()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->a(IZ)V

    const-string v0, "ArtistDetailVideoFragment"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewCreated. savedInstance - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz p2, :cond_0

    .line 97
    new-instance p2, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->c:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    .line 98
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->c:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->a(Landroid/view/View;)V

    .line 99
    new-instance p2, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    const v0, 0x7f130167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->d:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->c:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->d:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->a(Landroid/app/Activity;)Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->a()Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;

    move-result-object v0

    return-object v0
.end method
