.class public Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;)V

    return-void
.end method


# virtual methods
.method public runBrowsableResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 43
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;

    move-result-object v0

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;->obtainBrowsableLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    move-result-object p1

    if-nez p1, :cond_0

    .line 46
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;->sendEmptyResult(Landroid/service/media/MediaBrowserService$Result;)V

    return-void

    :cond_0
    const-string p2, "Playlists"

    .line 49
    iget-object p3, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->category:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 50
    new-instance p2, Lcom/samsung/android/app/music/service/browser/PlaylistBrowsableLoadItemsTask;

    invoke-direct {p2}, Lcom/samsung/android/app/music/service/browser/PlaylistBrowsableLoadItemsTask;-><init>()V

    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    aput-object p1, v0, p3

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/service/browser/PlaylistBrowsableLoadItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 52
    :cond_1
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;

    invoke-direct {p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;-><init>()V

    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    aput-object p1, v0, p3

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public runBrowsableRootResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;->obtainBrowserRootLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    move-result-object p1

    if-nez p1, :cond_0

    .line 34
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;->sendEmptyResult(Landroid/service/media/MediaBrowserService$Result;)V

    return-void

    .line 37
    :cond_0
    new-instance p2, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;

    invoke-direct {p2}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;-><init>()V

    const/4 p3, 0x1

    new-array p3, p3, [Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/service/browser/OnlineRootItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public runPlayableResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 59
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;

    move-result-object v0

    const-string v1, "req_track_one"

    .line 60
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 62
    new-instance v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v8}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    const-string v1, "_id=?"

    .line 63
    iput-object v1, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 64
    new-array v1, v3, [Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    aput-object v0, v1, v2

    iput-object v1, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v6, 0x0

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;

    const-string v1, "title"

    const-string v4, "artist"

    invoke-direct {v9, p2, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    move-object v5, p1

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    .line 67
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;

    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->a()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V

    new-array p2, v3, [Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    aput-object v0, p2, v2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;->obtainPlayableLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    move-result-object p1

    if-nez p1, :cond_1

    .line 71
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;->sendEmptyResult(Landroid/service/media/MediaBrowserService$Result;)V

    return-void

    .line 74
    :cond_1
    new-instance p2, Lcom/samsung/android/app/music/service/browser/OnlinePlayableLoadItemsTask;

    invoke-direct {p2}, Lcom/samsung/android/app/music/service/browser/OnlinePlayableLoadItemsTask;-><init>()V

    new-array p3, v3, [Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    aput-object p1, p3, v2

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/service/browser/OnlinePlayableLoadItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
