.class public final Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaBrowser"

.field private static final SUB_TAG:Ljava/lang/String; = "ResultOneItemAsyncTask: "


# instance fields
.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->retrieveDefaultArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 29
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method private addCpAttrsColumn([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 102
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 103
    array-length p1, p1

    const-string v1, "cp_attrs"

    aput-object v1, v0, p1

    return-object v0
.end method

.method private hasLocationColumn([Ljava/lang/String;)Z
    .locals 5

    .line 69
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string v4, "cp_attrs"

    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private resizeAlbumArt(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v0, p2, :cond_1

    const/4 v0, 0x1

    .line 172
    invoke-static {p1, p2, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private retrieveDefaultArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 0

    if-nez p2, :cond_0

    .line 160
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->resizeAlbumArt(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private retrievePlayableMediaItem(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;Landroid/database/Cursor;II)V
    .locals 7

    .line 109
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->mediaItem:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->getMediaId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 110
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->mediaItem:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->getTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 111
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->mediaItem:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->getSubTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    .line 113
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 115
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-interface {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedArtworkUri(I)Landroid/net/Uri;

    move-result-object p2

    .line 116
    sget p3, Lcom/samsung/android/app/musiclibrary/R$dimen;->bitmap_size_big:I

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p3

    invoke-virtual {p3, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-void
.end method

.method private retrievePlayableResult(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)V
    .locals 7

    .line 78
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    .line 79
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->args:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 82
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->hasLocationColumn([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_0
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->addCpAttrsColumn([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 88
    :goto_0
    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 89
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 91
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "cp_attrs"

    .line 92
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "album_id"

    .line 93
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 94
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->retrievePlayableMediaItem(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;Landroid/database/Cursor;II)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, p1

    goto :goto_2

    .line 96
    :cond_1
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->result:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->sendEmptyResult(Landroid/service/media/MediaBrowserService$Result;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v0, :cond_2

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    .line 88
    :goto_2
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 98
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_4
    throw p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, [Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->doInBackground([Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/lang/Void;
    .locals 4

    const/4 v0, 0x0

    .line 47
    aget-object p1, p1, v0

    .line 52
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->retrievePlayableResult(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SMUSIC-SV-MediaBrowser"

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultOneItemAsyncTask: Error during load data in background. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->result:Landroid/service/media/MediaBrowserService$Result;

    if-eqz v0, :cond_0

    .line 56
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->result:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->sendEmptyResult(Landroid/service/media/MediaBrowserService$Result;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

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

    const/4 p1, 0x0

    return-object p1
.end method
