.class final Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-static {p1, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils;->getItemDescriptionWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/media/MediaDescription;

    move-result-object p1

    .line 42
    new-instance p2, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    return-object p2
.end method

.method private a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Tracks"

    const/4 v2, 0x1

    .line 47
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;->a(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Artists"

    const/4 v2, 0x3

    .line 48
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;->a(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Albums"

    const/4 v2, 0x2

    .line 49
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;->a(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Playlists"

    const/4 v2, 0x5

    .line 51
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;->a(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Tracks"

    const/4 v2, 0x1

    .line 57
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;->a(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Artists"

    const/4 v2, 0x3

    .line 58
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;->a(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Albums"

    const/4 v2, 0x2

    .line 59
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;->a(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Playlists"

    const/4 v2, 0x5

    .line 61
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;->a(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Top charts"

    const/16 v2, 0xc9

    .line 63
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;->a(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected getListInBackground(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->mediaItem:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;

    move-result-object p1

    .line 28
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->category:Ljava/lang/String;

    const-string v0, "root"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;->a()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "bt_root"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;->a()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "root_include_online"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;->b()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
