.class public Lcom/samsung/android/app/music/service/browser/OnlinePlayableLoadItemsTask;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableLoadItemsTask;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableLoadItemsTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected getListInBackground(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;
    .locals 3
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

    .line 21
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->mediaItem:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;

    .line 22
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;

    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->category:Ljava/lang/String;

    const-string v1, "Top charts"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/network/request/browse/TopChartApi;->a(Landroid/content/Context;J)V

    .line 27
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableLoadItemsTask;->getListInBackground(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
