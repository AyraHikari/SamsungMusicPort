.class public Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;
.super Lcom/samsung/android/app/music/AbsSlidingTabFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/BrowseShareable;
.implements Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;
.implements Lcom/samsung/android/app/music/milk/share/ShareItemCreator;
.implements Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$DataLoaderCallback;,
        Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$ArtistDetailTabAdapter;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

.field private c:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$DataLoaderCallback;

.field private d:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

.field private e:Lio/reactivex/disposables/CompositeDisposable;

.field private f:Lcom/samsung/android/app/music/browse/list/BrowseShareable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;-><init>()V

    .line 59
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->e:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$DataLoaderCallback;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->c:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$DataLoaderCallback;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;
    .locals 3

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;-><init>()V

    .line 65
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_id"

    .line 66
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)Lcom/samsung/android/app/music/list/ListFavoriteableImpl;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->d:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;Lcom/samsung/android/app/music/model/base/ArtistInfoModel;)Lcom/samsung/android/app/music/model/base/ArtistInfoModel;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->b:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Lcom/samsung/android/app/music/list/ListFavoriteableImpl;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->d:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Lcom/samsung/android/app/music/model/base/ArtistInfoModel;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->b:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->a:Ljava/lang/String;

    return-object p0
.end method

.method private i()V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->e:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 133
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$3;-><init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)V

    .line 134
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)V

    new-instance v3, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$2;-><init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)V

    .line 144
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method protected a(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)Lcom/samsung/android/app/music/view/SlidingTabController;
    .locals 1

    const/4 v0, 0x2

    .line 122
    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 123
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->a(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)Lcom/samsung/android/app/music/view/SlidingTabController;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/browse/list/BrowseShareable;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->f:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method protected b()Landroid/support/v4/view/PagerAdapter;
    .locals 2

    .line 128
    new-instance v0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$ArtistDetailTabAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$ArtistDetailTabAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;Landroid/support/v4/app/FragmentManager;)V

    return-object v0
.end method

.method public b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method public f()Lcom/samsung/android/app/music/milk/share/ShareItem;
    .locals 4

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->q_()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ArtistDetailTabFragment"

    const-string v1, "item is null"

    .line 229
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/share/ShareItem;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->b:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getArtistId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->b:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getArtistName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->b:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/share/ShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->f:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->f:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/BrowseShareable;->l()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m_()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->f:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->f:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/BrowseShareable;->m_()V

    :cond_0
    return-void
.end method

.method public n_()Ljava/lang/Boolean;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->d:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->d:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->n_()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o_()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->d:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->d:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->o_()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->setHasOptionsMenu(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$DataLoaderCallback;

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$DataLoaderCallback;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->c:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$DataLoaderCallback;

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;

    const v1, 0x7f140011

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;-><init>(ILandroid/support/v4/app/Fragment;)V

    .line 107
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->a(Lcom/samsung/android/app/music/browse/list/BrowseShareable;)Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->a()Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 109
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->i()V

    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroyView(Z)V
    .locals 0

    .line 196
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->onDestroyView(Z)V

    .line 197
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->e:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->a()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    new-instance p2, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p2, v0, v1, p0, v2}, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/app/music/milk/share/ShareItemCreator;I)V

    .line 94
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowseShareable;)V

    const p2, 0x7f130142

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    return-void
.end method

.method public q_()Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->b:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t_()V
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
