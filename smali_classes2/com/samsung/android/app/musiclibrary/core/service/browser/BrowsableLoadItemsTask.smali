.class public Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;-><init>()V

    return-void
.end method

.method private getBrowsableList(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;ILcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;",
            "I",
            "Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p1

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 31
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;->getBrowsableMediaItem(Landroid/database/Cursor;ILcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p3

    goto :goto_0

    :catch_0
    move-exception p2

    .line 28
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 36
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw p3

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method private getBrowsableMediaItem(Landroid/database/Cursor;ILcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)Landroid/media/browse/MediaBrowser$MediaItem;
    .locals 2

    .line 42
    invoke-virtual {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->getMediaId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->getTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->getSubTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils;->getItemDescriptionWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/media/MediaDescription;

    move-result-object p1

    .line 47
    new-instance p2, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    return-object p2
.end method


# virtual methods
.method protected final getBrowsableList(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;
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

    .line 22
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->args:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->folderType:I

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->mediaItem:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;->getBrowsableList(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;ILcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getListInBackground(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;
    .locals 0
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

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;->getBrowsableList(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
