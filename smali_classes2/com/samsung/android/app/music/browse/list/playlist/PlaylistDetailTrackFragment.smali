.class public Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;
.super Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/samsung/android/app/music/milk/share/ShareItemCreator;
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment<",
        "Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;",
        ">;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Lcom/samsung/android/app/music/milk/share/ShareItemCreator;",
        "Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;"
    }
.end annotation


# instance fields
.field f:Landroid/os/Handler;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lcom/samsung/android/app/music/model/base/PlayListModel;

.field private l:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;

.field private m:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

.field private n:Z

.field private o:Z

.field private p:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

.field private q:Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->n:Z

    return-void
.end method

.method private O()Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->m:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    if-nez v0, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->P()Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->m:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->m:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    return-object v0
.end method

.method private P()Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;
    .locals 2

    .line 323
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;)V

    const v1, 0x7f040014

    .line 324
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment$2;-><init>(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;)V

    .line 325
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;)Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->b()Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;)Lcom/samsung/android/app/music/model/base/PlayListModel;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->k:Lcom/samsung/android/app/music/model/base/PlayListModel;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;I)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;)V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->c()V

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;
    .locals 3

    .line 89
    new-instance v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;-><init>()V

    .line 90
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_id"

    .line 91
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 365
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "discover_playlist"

    return-object p1

    :cond_0
    const-string v0, "discover_playlist"

    .line 370
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 371
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$TopChartPlaylists;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "top_chart_realtime"

    goto/16 :goto_0

    .line 373
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$TopChartPlaylists;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "top_chart_daily"

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$TopChartPlaylists;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "top_chart_weekly"

    goto :goto_0

    .line 377
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$TopChartPlaylists;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string v0, "top_chart_monthly"

    goto :goto_0

    :cond_4
    const-string v0, "top_chart_by_genre_detail"

    goto :goto_0

    .line 382
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 383
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "for_you_based_artist"

    goto :goto_0

    .line 385
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->g()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string v0, "for_you_based_song"

    goto :goto_0

    .line 388
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->d()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 389
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$JustForYouPlaylists;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "daily_for_you"

    goto :goto_0

    .line 391
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$JustForYouPlaylists;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "weekly_for_you"

    goto :goto_0

    .line 393
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$JustForYouPlaylists;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string v0, "most_played_for_you"

    :cond_a
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->B()Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected B()Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 342
    new-instance v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "_id"

    .line 343
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    const-string v1, "title"

    .line 344
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    const-string v1, "artist"

    .line 345
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    const-string v1, "track_is_explicit"

    .line 346
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    const-string v1, "is_playable"

    .line 347
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    .line 348
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->O()Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    .line 349
    iget-boolean v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->j:Z

    if-eqz v1, :cond_0

    const-string v1, "rank_chg"

    .line 350
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    move-result-object v1

    const-string v2, "track"

    .line 351
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .line 353
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)V

    const-string v1, "track_coverart_url"

    .line 354
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->setThumbnailFullUriCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 355
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->b()Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;

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

    .line 260
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->q:Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;

    return-object p1
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 11
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

    .line 266
    instance-of v0, p1, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 267
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;->f()Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;

    .line 269
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->k:Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->q_()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 271
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->k:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->isBannable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->o:Z

    .line 272
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->p:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 273
    new-instance v2, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    new-instance v10, Lcom/samsung/android/app/music/list/favorite/MilkCategory;

    const/16 v5, 0x66

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->k:Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 274
    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->k:Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 275
    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->k:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->k:Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 276
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImgList()Ljava/util/List;

    move-result-object v1

    const/16 v4, 0x258

    const/16 v8, 0x60

    invoke-static {v1, v4, v8}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v8, v1

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->k:Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 278
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, p0, v10}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/list/favorite/Category;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->p:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    goto :goto_0

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->p:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->c()V

    .line 282
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->p:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;)V

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->O()Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->n:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->k:Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 284
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getAd()Lcom/samsung/android/app/music/model/AdInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/AdInfo;->hasBannerAdYn()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->a(Z)V

    .line 285
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->k:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getAd()Lcom/samsung/android/app/music/model/AdInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Lcom/samsung/android/app/music/model/AdInfo;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 288
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 290
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->l:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;

    if-eqz p1, :cond_5

    .line 291
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->l:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->q:Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;->a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 297
    instance-of v0, p2, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    if-eqz v0, :cond_0

    .line 298
    check-cast p2, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/network/exception/ServerResponseException;->getResultCode()I

    move-result p1

    const/16 p2, 0x200c

    if-ne p1, p2, :cond_1

    .line 299
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;

    move-result-object p1

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const-string v0, "InvalidPlaylistDialog"

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Landroid/support/v4/content/Loader;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 402
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->d(I)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 407
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->d(I)V

    return-void
.end method

.method public c()V
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->f:Landroid/os/Handler;

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment$3;-><init>(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f()Lcom/samsung/android/app/music/milk/share/ShareItem;
    .locals 6

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->q_()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PlaylistDetailTrackFragment"

    const-string v1, "item is null"

    .line 243
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 247
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/share/ShareItem;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->k:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->k:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->k:Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 248
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImgList()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0x60

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/share/ShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected o()Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 195
    new-instance v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;)V

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 98
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "PlaylistDetailTrackFragment"

    const-string v0, "args is null"

    .line 102
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "extra_id"

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->i:Ljava/lang/String;

    const-string p1, "PlaylistDetailTrackFragment"

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "PlaylistDetailTrackFragment"

    const-string v0, "playlistId is null"

    .line 110
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;->c(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->j:Z

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object p1

    .line 118
    instance-of v0, p1, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;

    if-eqz v0, :cond_2

    .line 119
    check-cast p1, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->q:Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->q:Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;

    if-nez p1, :cond_3

    .line 122
    new-instance p1, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->i:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->j:Z

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->q:Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;

    if-eqz p1, :cond_4

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->l:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;

    .line 129
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;

    const v1, 0x7f140011

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;-><init>(ILandroid/support/v4/app/Fragment;)V

    .line 227
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->a(Lcom/samsung/android/app/music/browse/list/BrowseShareable;)Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->a()Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 229
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const p3, 0x7f04002d

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 185
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onDestroy()V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->q:Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->q:Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;->b()V

    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 234
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 169
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "is_banner_removed"

    .line 171
    iget-boolean v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 177
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onStop()V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    if-eqz p2, :cond_0

    const-string v0, "is_banner_removed"

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->n:Z

    .line 145
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x3

    const p2, 0x106000d

    const v0, 0x7f0f003d

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->a(IIIZ)V

    .line 149
    new-instance p1, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-direct {p1, p2, v0, p0, v2}, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/app/music/milk/share/ShareItemCreator;I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowseShareable;)V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 154
    new-instance p2, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->q:Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;->a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;)V

    const-string v0, "PlaylistDetails"

    const/4 v2, 0x2

    .line 157
    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object p2, v2, v1

    const/4 p2, 0x1

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->i:Ljava/lang/String;

    invoke-direct {v1, v3, v4, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    aput-object v1, v2, p2

    .line 157
    invoke-interface {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->i:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 163
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public q_()Z
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->k:Lcom/samsung/android/app/music/model/base/PlayListModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 361
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected x()Z
    .locals 2

    .line 412
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    .line 413
    iget-boolean v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->o:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->isAccountSignedIn()Z

    move-result v0

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
