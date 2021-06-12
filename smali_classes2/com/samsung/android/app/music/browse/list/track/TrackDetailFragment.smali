.class public Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/browse/list/BrowseShareable;
.implements Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$OnItemClickListener;
.implements Lcom/samsung/android/app/music/milk/share/ShareItemCreator;
.implements Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/support/design/widget/AppBarLayout;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

.field private n:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

.field private o:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;

.field private p:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

.field private q:Z

.field private r:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

.field private s:Lio/reactivex/disposables/CompositeDisposable;

.field private t:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

.field private u:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

.field private v:Lcom/samsung/android/app/music/view/NoNetworkViewController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 117
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->s:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)J
    .locals 4

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 364
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 365
    invoke-static {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->fromTrackInfoModel(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)Lcom/samsung/android/app/music/model/PlayTrackInfo;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object p1, Lcom/samsung/android/app/music/model/PlayTrackInfo;->PLAY_TRACK_INFO_CONVERTER:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    .line 367
    invoke-static {v0, v3, p1}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)[J

    move-result-object p1

    if-eqz p1, :cond_1

    .line 368
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 369
    aget-wide v0, p1, v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;
    .locals 1

    .line 126
    new-instance v0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;-><init>()V

    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->n:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;Lcom/samsung/android/app/music/model/base/TrackInfoModel;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->n:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;)Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->r:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f13018d

    .line 230
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    const v0, 0x7f1301b8

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v1, 0x7f040027

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 233
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->j:Landroid/view/View;

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->j:Landroid/view/View;

    const v1, 0x7f13017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02006f

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f13017f

    .line 236
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->k:Landroid/widget/ImageView;

    const v0, 0x7f1301b4

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->i:Landroid/widget/TextView;

    const v0, 0x7f1301a1

    .line 238
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->h:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->i()V

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->e:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/support/design/widget/AppBarLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->u:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->u:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->u:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    const v2, 0x7f130167

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;Lcom/samsung/android/app/music/model/base/TrackInfoModel;)J
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    .line 502
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 503
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 504
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 503
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private b(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "TrackDetailFragment"

    const-string v0, "item is null"

    .line 431
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 435
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->d:Ljava/lang/String;

    .line 436
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->g:Landroid/view/View;

    const v1, 0x7f1301b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 446
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->d:Ljava/lang/String;

    .line 447
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getLargeSizeAlbumArtUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->c:Ljava/lang/String;

    const v1, 0x7f100086

    .line 451
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->k:Landroid/widget/ImageView;

    const v3, 0x7f0202e5

    .line 452
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    .line 454
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 455
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f1301b6

    .line 456
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 457
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isVariousArtist()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f1301b7

    .line 459
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 460
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 462
    :cond_3
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->n:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isPlayable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 467
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->j:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->o:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;Lcom/samsung/android/app/music/model/base/TrackInfoModel;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->b(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)V

    return-void
.end method

.method private c()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->e:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Lcom/samsung/android/app/music/view/NoNetworkViewController;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->v:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040261

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    const v1, 0x7f130575

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->l:Landroid/widget/TextView;

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->q:Z

    return p0
.end method

.method private i()V
    .locals 3

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->d(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->f(Landroid/app/Activity;)I

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->e:Landroid/support/design/widget/AppBarLayout;

    .line 271
    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 272
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 273
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 274
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100389

    .line 280
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 281
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    .line 282
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    return-void
.end method

.method private j()V
    .locals 4

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->s:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->c(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 334
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)V

    new-instance v3, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$2;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)V

    .line 335
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;Lcom/samsung/android/app/music/network/NetworkManager;)Lcom/samsung/android/app/music/view/NoNetworkViewController;
    .locals 4
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

    const v0, 0x7f130168

    .line 584
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const v1, 0x7f130169

    .line 585
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    new-instance v2, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    new-instance v3, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$4;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$4;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;Landroid/view/View;)V

    invoke-direct {v2, v3, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;-><init>(Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;Lcom/samsung/android/app/music/network/NetworkManager;)V

    .line 609
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    .line 610
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->b(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 611
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->b(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    .line 612
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 613
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->c(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    .line 614
    invoke-virtual {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a()Lcom/samsung/android/app/music/view/NoNetworkViewController;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "TrackDetailFragment"

    const-string p2, "onCreateNoNetworkController. maybe network error view stub is not included in root view"

    .line 586
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/view/View;II)V
    .locals 1
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 396
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->n:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 414
    :sswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e()V

    goto :goto_0

    .line 408
    :sswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->c()V

    goto :goto_0

    .line 405
    :sswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->b()V

    goto :goto_0

    .line 402
    :sswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 411
    :sswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->b(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V

    goto :goto_0

    .line 417
    :sswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    iget-boolean p3, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->q:Z

    xor-int/lit8 p3, p3, 0x1

    new-instance v0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$3;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$3;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;I)V

    invoke-virtual {p1, p3, v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(ZLcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00aa -> :sswitch_5
        0x7f0b00ae -> :sswitch_4
        0x7f0b0192 -> :sswitch_3
        0x7f0b023b -> :sswitch_2
        0x7f0b023e -> :sswitch_1
        0x7f0b023f -> :sswitch_0
    .end sparse-switch
.end method

.method protected a(Lcom/samsung/android/app/music/browse/list/BrowseShareable;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->t:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    return-void
.end method

.method public f()Lcom/samsung/android/app/music/milk/share/ShareItem;
    .locals 5

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->q_()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TrackDetailFragment"

    const-string v1, "item is null"

    .line 305
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 308
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/share/ShareItem;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->n:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->n:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->n:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    .line 309
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getLargeSizeAlbumArtUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->n:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/share/ShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->t:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->t:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/BrowseShareable;->l()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m_()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->t:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->t:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/BrowseShareable;->m_()V

    :cond_0
    return-void
.end method

.method public n_()Ljava/lang/Boolean;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->r:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->r:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;->n_()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o_()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->r:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->r:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;->o_()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->q_()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TrackDetailFragment"

    const-string v0, "item is null"

    .line 377
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 381
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f13017f

    if-eq p1, v0, :cond_3

    const v0, 0x7f1301b5

    if-eq p1, v0, :cond_2

    const v0, 0x7f1301b8

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 389
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->n:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->fromTrackInfoModel(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)Lcom/samsung/android/app/music/model/PlayTrackInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/PlayTrackInfo;)V

    goto :goto_0

    .line 386
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->b(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 383
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->d()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 136
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;

    const v1, 0x7f140011

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;-><init>(ILandroid/support/v4/app/Fragment;)V

    .line 289
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->a(Lcom/samsung/android/app/music/browse/list/BrowseShareable;)Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->a()Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 291
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f04003b

    const/4 p3, 0x0

    .line 143
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 217
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroy()V

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->s:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->a()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 296
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 297
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->u:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->u:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->v:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->v:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->onStartCalled()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->v:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->v:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->onStopCalled()V

    .line 212
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 148
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a:Landroid/content/Context;

    .line 152
    new-instance p2, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p2, v0, v1, p0, v2}, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/app/music/milk/share/ShareItemCreator;I)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowseShareable;)V

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "extra_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->b:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "extra_show_ban"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_is_banned"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->q:Z

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    .line 163
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->c(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->f:Landroid/view/View;

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->d()V

    const v0, 0x7f1301a1

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 168
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a:Landroid/content/Context;

    .line 169
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002d

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 170
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 171
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->b(Landroid/view/View;)V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a(Landroid/view/View;Lcom/samsung/android/app/music/network/NetworkManager;)Lcom/samsung/android/app/music/view/NoNetworkViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->v:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    :cond_1
    const v0, 0x7f1301a0

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->g:Landroid/view/View;

    const v0, 0x7f130136

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->e:Landroid/support/design/widget/AppBarLayout;

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a(Landroid/view/View;)V

    :cond_2
    const p1, 0x7f130150

    .line 184
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 185
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 186
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v1, v3, v1

    invoke-direct {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f003d

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 187
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setBackgroundColor(I)V

    .line 189
    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->c(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 191
    new-instance v0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->o:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->o:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$OnItemClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->o:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->q:Z

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a(ZZ)V

    .line 194
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->o:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->j()V

    return-void
.end method

.method public q_()Z
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->n:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
