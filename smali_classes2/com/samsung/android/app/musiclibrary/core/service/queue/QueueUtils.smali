.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Union;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$SortMode;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Shuffle;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Repeat;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Normal;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HEX_DIGITS:[C

.field static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field static final TAG:Ljava/lang/String; = "SV-List"

.field public static final UNDEFINED_ID:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 38
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendWithBaseUri(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 55
    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static buildupNewPositions(I)[I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 465
    new-array p0, v0, [I

    return-object p0

    .line 467
    :cond_0
    new-array v1, p0, [I

    :goto_0
    if-ge v0, p0, :cond_1

    .line 469
    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static ensurePlayItems([J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    .line 376
    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;

    invoke-direct {v5, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;-><init>(J)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static ensurePlayItems([JLjava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    .line 392
    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;

    invoke-direct {v5, v3, v4, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static ensurePlayItems([JLjava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;"
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    array-length v1, p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    return-object v0

    .line 411
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v4, p0, v2

    .line 412
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static ensurePlayListCapacity([JI)[J
    .locals 2

    if-eqz p0, :cond_0

    .line 130
    array-length v0, p0

    if-le p1, v0, :cond_2

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    .line 134
    new-array p1, p1, [J

    if-eqz p0, :cond_1

    .line 136
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move-object p0, p1

    :cond_2
    return-object p0
.end method

.method public static getAudioId(Ljava/util/List;I)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;I)J"
        }
    .end annotation

    .line 453
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;

    iget-wide p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;->audioId:J

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 p0, -0x1

    :goto_1
    return-wide p0
.end method

.method static getAudioIds(Landroid/content/Context;[JLandroid/net/Uri;)[J
    .locals 7

    const-string v0, "_id"

    .line 209
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "_id"

    .line 211
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v4

    const-string v6, "_id"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    .line 210
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    .line 214
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 215
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 216
    new-array v0, p2, [J

    const-string v1, "_id"

    .line 217
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 220
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 221
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 225
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 209
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 225
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw p2

    :cond_4
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p1
.end method

.method public static getAudioIds(Landroid/database/Cursor;)[J
    .locals 9

    if-nez p0, :cond_0

    .line 237
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAYLIST:[J

    return-object p0

    .line 240
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 242
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAYLIST:[J

    return-object p0

    .line 244
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string v1, "audio_id"

    .line 248
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "_id"

    .line 250
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 253
    :goto_0
    new-array v2, v0, [J

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 258
    :cond_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_3

    add-int/lit8 v7, v4, 0x1

    .line 260
    aput-wide v5, v2, v4

    move v4, v7

    .line 262
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v4, :cond_4

    .line 265
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAYLIST:[J

    return-object p0

    :cond_4
    if-eq v4, v0, :cond_5

    .line 269
    new-array p0, v4, [J

    .line 270
    invoke-static {v2, v3, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_5
    move-object p0, v2

    :goto_1
    return-object p0
.end method

.method public static getAudioIds(Ljava/util/List;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;)[J"
        }
    .end annotation

    .line 425
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 427
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;

    .line 428
    iget-wide v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;->audioId:J

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getListFromArray([J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    long-to-int v3, v3

    .line 194
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getNetworkError(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)I
    .locals 1

    .line 69
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isDataUsageAgreed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->hasDataConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x6

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isActiveMobileConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 74
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isMobileDataOn()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x5

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getPlayingItem(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 0

    .line 488
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;->getPlayingItem(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p0

    return-object p0
.end method

.method public static getPlaylistId(Ljava/util/List;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 442
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;

    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;->playlistId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static getQueueString([J)Ljava/lang/String;
    .locals 11

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-wide v5, p0, v4

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    const-string v5, "0;"

    .line 171
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    if-lez v9, :cond_2

    :goto_1
    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    const-wide/16 v9, 0xf

    and-long/2addr v9, v5

    long-to-int v9, v9

    const/4 v10, 0x4

    ushr-long/2addr v5, v10

    .line 176
    sget-object v10, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->HEX_DIGITS:[C

    aget-char v9, v10, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v5, 0x3b

    .line 178
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created queue string in "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getRemovePositionsByExistList([J[J)[I
    .locals 5

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 289
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 290
    aget-wide v3, p0, v2

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-gez v3, :cond_0

    .line 291
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 298
    aput v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method static getRemovePositionsByRemoveList([J[J)[I
    .locals 5

    .line 312
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 314
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 315
    aget-wide v3, p0, v2

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-ltz v3, :cond_0

    .line 316
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    .line 320
    new-array p1, p0, [I

    :goto_1
    if-ge v1, p0, :cond_2

    .line 322
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static getToggleMode(II)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    .line 351
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$SortMode;->getToggleMode(I)I

    move-result p0

    return p0

    .line 349
    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Union;->getToggleMode(I)I

    move-result p0

    return p0

    .line 347
    :pswitch_2
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Shuffle;->getToggleMode(I)I

    move-result p0

    return p0

    .line 345
    :pswitch_3
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Repeat;->getToggleMode(I)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isLegalAgreed(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)Z
    .locals 0

    .line 362
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isLegalAgreed()Z

    move-result p0

    return p0
.end method

.method public static isLegalAgreedError(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)Z
    .locals 0

    .line 358
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isLegalAgreed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static isOnlineContent(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 0

    .line 475
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result p0

    return p0
.end method

.method public static isSameList([J[J)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 331
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 334
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 335
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public static obtainActiveQueueItemId([JILjava/util/List;)J
    .locals 4
    .param p0    # [J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JI",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 502
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    array-length p2, p0

    if-nez p2, :cond_0

    move-wide p0, v0

    goto :goto_0

    :cond_0
    aget-wide v2, p0, p1

    int-to-long p0, p1

    .line 504
    invoke-static {v2, v3, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->getQueueItemId(JJ)J

    move-result-wide p0

    :goto_0
    return-wide p0

    .line 506
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {p0}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 509
    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    return-wide v0
.end method

.method static printDebuggingLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static printErrorLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-List"

    .line 537
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static printErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SMUSIC-SV-List"

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">> "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static printInfoLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-List"

    .line 529
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static printLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-List"

    .line 521
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SMUSIC-SV-List"

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">> "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static printWarnLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-List"

    .line 533
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static reloadQueue(Ljava/lang/String;)[J
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_4

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 98
    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->ensurePlayListCapacity([JI)[J

    move-result-object v3

    int-to-long v7, v5

    .line 99
    aput-wide v7, v3, v4

    move v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_3

    .line 104
    :cond_1
    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->HEX_DIGITS:[C

    aget-char v8, v8, v0

    if-lt v7, v8, :cond_2

    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->HEX_DIGITS:[C

    const/16 v9, 0x9

    aget-char v8, v8, v9

    if-gt v7, v8, :cond_2

    .line 105
    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->HEX_DIGITS:[C

    aget-char v8, v8, v0

    sub-int/2addr v7, v8

    shl-int/2addr v7, v6

    add-int/2addr v5, v7

    goto :goto_2

    .line 106
    :cond_2
    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->HEX_DIGITS:[C

    const/16 v9, 0xa

    aget-char v8, v8, v9

    if-lt v7, v8, :cond_4

    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->HEX_DIGITS:[C

    const/16 v10, 0xf

    aget-char v8, v8, v10

    if-gt v7, v8, :cond_4

    add-int/lit8 v7, v7, 0xa

    .line 107
    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->HEX_DIGITS:[C

    aget-char v8, v8, v9

    sub-int/2addr v7, v8

    shl-int/2addr v7, v6

    add-int/2addr v5, v7

    :goto_2
    add-int/lit8 v6, v6, 0x4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    .line 117
    :cond_4
    invoke-static {v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->shrinkQueue([JI)[J

    move-result-object p0

    return-object p0
.end method

.method private static shrinkQueue([JI)[J
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-array v1, p1, [J

    .line 155
    invoke-static {p0, v0, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 152
    :cond_1
    :goto_0
    new-array p0, v0, [J

    return-object p0
.end method
