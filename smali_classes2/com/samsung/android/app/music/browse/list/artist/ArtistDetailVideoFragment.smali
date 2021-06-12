.class public Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;
.super Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment$ArtistDetailVideoDataLoader;
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

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;
    .locals 3

    .line 56
    new-instance v0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;-><init>()V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_id"

    .line 58
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

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

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->b(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment$ArtistDetailVideoDataLoader;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->c:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->a(Landroid/view/View;)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method

.method protected b(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment$ArtistDetailVideoDataLoader;
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 115
    new-instance p1, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment$ArtistDetailVideoDataLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->a:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment$ArtistDetailVideoDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
    .locals 2

    .line 121
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const v1, 0x7f04001f

    .line 122
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    move-result-object v0

    const-string v1, "title"

    .line 123
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    const-string v1, "artist"

    .line 124
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    const-string v1, "explicit"

    .line 125
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    move-result-object v0

    const-string v1, "album_art"

    .line 126
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setThumbnailFullUriCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    .line 127
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
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extra_id"

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->a:Ljava/lang/String;

    :cond_0
    const-string p1, "ArtistDetailVideoFragment"

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->c:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->d:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    .line 148
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->c:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    .line 149
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->d:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    .line 151
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

    .line 75
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x3

    const v1, 0x106000d

    const v2, 0x7f0f003d

    const/4 v3, 0x0

    .line 77
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->a(IIIZ)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    const v2, 0x7f100007

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V

    .line 83
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls;->a(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    const v0, 0x7f040055

    const v1, 0x7f0b01df

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->b(II)V

    const-string v0, "discover_artist_by_MV"

    .line 87
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->b(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->d()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->a(IZ)V

    const-string v0, "ArtistDetailVideoFragment"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewCreated. savedInstance - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz p2, :cond_0

    .line 93
    new-instance p2, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->c:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    .line 94
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->c:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->a(Landroid/view/View;)V

    .line 95
    new-instance p2, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    const v0, 0x7f130167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->d:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->c:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->b:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->d:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->a(Landroid/app/Activity;)Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$VideoGridItemDecorator;

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$VideoGridItemDecorator;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->a(Lcom/samsung/android/app/music/list/common/GridItemDecorator;)Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->a()Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;

    move-result-object v0

    return-object v0
.end method
