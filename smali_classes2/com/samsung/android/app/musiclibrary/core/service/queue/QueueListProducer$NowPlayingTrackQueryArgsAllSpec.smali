.class Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NowPlayingTrackQueryArgsAllSpec"
.end annotation


# static fields
.field private static final DEFAULT_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULT_PROJECTION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PROJECTION_ONLINE:[Ljava/lang/String;

.field private static final DLNA_PROJECTION:[Ljava/lang/String;

.field private static final OTHER_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "artist"

    const-string v3, "duration"

    const-string v4, "album"

    const-string v5, "album_id"

    const-string v6, "is_secretbox"

    const-string v7, "sampling_rate"

    const-string v8, "bit_depth"

    const-string v9, "genre"

    const-string v10, "mime_type"

    const-string v11, "cp_attrs"

    .line 242
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->DEFAULT_PROJECTION_LIST:Ljava/util/List;

    .line 250
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->DEFAULT_PROJECTION_LIST:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->toStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 252
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->DEFAULT_PROJECTION_LIST:Ljava/util/List;

    const-string v1, "explicit"

    const-string v2, "is_celeb"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->addItem(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->toStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->DEFAULT_PROJECTION_ONLINE:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "artist"

    const-string v4, "duration"

    const-string v5, "album"

    const-string v6, "album_id"

    const-string v7, "genre"

    const-string v8, "mime_type"

    const-string v9, "cp_attrs"

    .line 256
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->DLNA_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "artist"

    const-string v4, "duration"

    const-string v5, "album"

    const-string v6, "album_id"

    .line 264
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->OTHER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Z)V
    .locals 0

    .line 269
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->getQueueProjection(Landroid/net/Uri;Z)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->projection:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 271
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->selection:Ljava/lang/String;

    .line 272
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->selectionArgs:[Ljava/lang/String;

    const-string p1, "_id"

    .line 273
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->orderBy:Ljava/lang/String;

    return-void
.end method

.method private static varargs addItem(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    .line 296
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getDefaultProjection(Z)[Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 287
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->DEFAULT_PROJECTION_ONLINE:[Ljava/lang/String;

    return-object p0

    .line 289
    :cond_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->DEFAULT_PROJECTION:[Ljava/lang/String;

    return-object p0
.end method

.method private getQueueProjection(Landroid/net/Uri;Z)[Ljava/lang/String;
    .locals 1

    .line 277
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->getDefaultProjection(Z)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 279
    :cond_0
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 280
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->DLNA_PROJECTION:[Ljava/lang/String;

    return-object p1

    .line 282
    :cond_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->OTHER_PROJECTION:[Ljava/lang/String;

    return-object p1
.end method

.method private static toStringArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 302
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
