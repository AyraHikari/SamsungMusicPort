.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
.source "SourceFile"


# static fields
.field public static final AUDIO_ID_INDEX:I = 0x63

.field private static final BLANK:Ljava/lang/String; = " "

.field private static final CAPITAL_AS:Ljava/lang/String; = " AS "

.field private static final CURSOR_MAX_COUNT:I = 0x1388

.field private static final EMPTY:[J

.field private static final LETTER_AS:Ljava/lang/String; = " as "

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-QueueCursor"

.field private static final ROW_ID_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "QueueCursor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[J

.field private mNowPlaying:[J

.field private mNowPlayingIds:[J

.field private final mProjection:[Ljava/lang/String;

.field private final mProjectionIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    new-array v0, v0, [J

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->EMPTY:[J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[J[Ljava/lang/String;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;-><init>()V

    .line 56
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->EMPTY:[J

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlayingIds:[J

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mProjectionIndexMap:Ljava/util/Map;

    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mUri:Landroid/net/Uri;

    .line 81
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mProjection:[Ljava/lang/String;

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mProjection:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->initMap([Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->initNowCursor([J)V

    return-void
.end method

.method private getRealCursor([J)Landroid/database/Cursor;
    .locals 11

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-QueueCursor"

    const-string v0, "getRealCursor() But uri is null, is service dying? or check service connection"

    .line 135
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-eqz p1, :cond_7

    .line 139
    array-length v0, p1

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 145
    :cond_1
    array-length v0, p1

    const/16 v1, 0x1388

    if-gt v0, v1, :cond_2

    .line 147
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    const-string v0, "_id"

    .line 148
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "_id"

    .line 147
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto/16 :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    .line 157
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    :goto_0
    add-int/lit8 v1, v0, 0x1

    mul-int/lit16 v3, v1, 0x1388

    .line 160
    array-length v4, p1

    if-le v3, v4, :cond_3

    .line 161
    array-length v3, p1

    :cond_3
    mul-int/lit16 v4, v0, 0x1388

    .line 164
    invoke-static {p1, v4, v3}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    .line 166
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "_id"

    .line 167
    invoke-static {v8, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 166
    invoke-static/range {v5 .. v10}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_4

    const-string p1, "SMUSIC-QueueCursor"

    const-string v1, "getRealCursor, cursor is null"

    .line 173
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v0, "QueueCursor"

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRealCursor limit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cursor.getCount() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-static {v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    array-length v0, p1

    if-lt v3, v0, :cond_6

    move v0, v1

    :goto_1
    const/4 p1, 0x1

    if-le v0, p1, :cond_5

    .line 185
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    .line 186
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/Cursor;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/Cursor;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_2

    :cond_5
    move-object p1, v4

    :goto_2
    return-object p1

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    :goto_3
    const-string p1, "SMUSIC-QueueCursor"

    const-string v0, "Request list is 0"

    .line 140
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getRealCursorIndex(Landroid/database/Cursor;)[J
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 194
    new-array p1, v0, [J

    return-object p1

    .line 197
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 198
    new-array v2, v1, [J

    .line 200
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "_id"

    .line 201
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    :goto_0
    if-ge v0, v1, :cond_1

    .line 204
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 205
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    return-object v2
.end method

.method private initMap([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 88
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 89
    aget-object v1, p1, v0

    const-string v2, " AS "

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, " "

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mProjectionIndexMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initNowCursor([J)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 99
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mSize:I

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlaying:[J

    goto :goto_0

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlaying:[J

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlaying:[J

    array-length p1, p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mSize:I

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlaying:[J

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->getRealCursor([J)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->getRealCursorIndex(Landroid/database/Cursor;)[J

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCursorIdxs:[J

    .line 106
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mSize:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->initializeIdArray(I)V

    :goto_0
    return-void
.end method

.method private initializeIdArray(I)V
    .locals 4

    .line 296
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlayingIds:[J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlayingIds:[J

    add-int v2, p1, v0

    int-to-long v2, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    :cond_0
    return-void
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mProjectionIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mProjectionIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 388
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x1

    .line 326
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->onChange(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public getLong(I)J
    .locals 2

    if-nez p1, :cond_0

    .line 336
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlayingIds:[J

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurPos:I

    aget-wide v0, p1, v0

    return-wide v0

    :cond_0
    const/16 v0, 0x63

    if-ne p1, v0, :cond_1

    .line 339
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const/4 p1, 0x1

    .line 344
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->onChange(Z)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOrderedPosition(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getQueuePosition(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getShort(I)S
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x1

    .line 308
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->onChange(Z)V

    const-string p1, ""

    return-object p1
.end method

.method public getType(I)I
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public isAvailableNetwork()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMyMusicMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNull(I)Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isShuffleEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(II)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlaying:[J

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCursorIdxs:[J

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mSize:I

    if-gt p2, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlaying:[J

    aget-wide v3, v1, p2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCursorIdxs:[J

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    .line 244
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SMUSIC-QueueCursor"

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to move to position "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " newId : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_2
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurPos:I

    return v0

    :catch_0
    move-exception p1

    const-string p2, "SMUSIC-QueueCursor"

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This cursor abnormal, it is need to update with new cursor that query after queue_changed from service, msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    :goto_0
    return v2
.end method

.method public removeItems([I)V
    .locals 0

    return-void
.end method

.method public reorder(II)V
    .locals 0

    return-void
.end method

.method public requery()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAvailableNetwork(Z)V
    .locals 0

    return-void
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setMyMusicMode(Z)V
    .locals 0

    return-void
.end method

.method public setSupportLocalMode(Z)V
    .locals 0

    return-void
.end method
