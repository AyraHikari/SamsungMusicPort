.class public Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;
.super Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment<",
        "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private e:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

.field private f:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

.field private i:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;
    .locals 3

    .line 61
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 63
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "id"

    .line 64
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "user_id"

    .line 65
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "thumb"

    .line 66
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->c()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;

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

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->b(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    .line 137
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(Landroid/view/View;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->i:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->a(Landroid/view/View;)V

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->i:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method

.method protected b(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader;
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 169
    new-instance p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 147
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "album"

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->b:Ljava/lang/String;

    .line 148
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->a(Z)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;

    move-result-object v0

    const-string v1, "title"

    .line 149
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;

    const-string v1, "artist"

    .line 150
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;

    const-string v1, "album"

    .line 151
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;

    move-result-object v0

    const-string v1, "image_url"

    .line 152
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->setThumbnailFullUriCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;

    const-string v1, "album"

    .line 153
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "track"

    .line 154
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .line 157
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->b()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 74
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "id"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->a:Ljava/lang/String;

    const-string v0, "type"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->b:Ljava/lang/String;

    const-string v0, "SpotifyDetailTrackFragment"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate : id - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user_id"

    .line 81
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 92
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroyView(Z)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onDestroyView(Z)V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->i:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->i:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    .line 128
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->i:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->f:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->i:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->f:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onDetach()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public onItemClick(Landroid/view/View;IJ)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 97
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f13013d

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->c:Landroid/view/View;

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v2, 0x7f020220

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const/4 p2, 0x3

    const v0, 0x7f0f003a

    const v1, 0x7f0f003d

    .line 101
    invoke-virtual {p0, p2, v0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->a(III)V

    .line 102
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    const p2, 0x7f040055

    const v0, 0x7f0b02c4

    .line 103
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->b(II)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->g()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->a(IZ)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz p2, :cond_0

    .line 107
    new-instance p2, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    .line 108
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->a(Landroid/view/View;)V

    .line 109
    new-instance p2, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    const v0, 0x7f130167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->f:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->i:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->i:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->i:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->f:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 163
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
