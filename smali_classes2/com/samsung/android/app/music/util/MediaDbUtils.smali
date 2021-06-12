.class public final Lcom/samsung/android/app/music/util/MediaDbUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;
    }
.end annotation


# static fields
.field private static final a:[J

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x0

    .line 54
    new-array v0, v0, [J

    sput-object v0, Lcom/samsung/android/app/music/util/MediaDbUtils;->a:[J

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "album"

    const-string v4, "artist"

    const-string v5, "album_id"

    const-string v6, "duration"

    const-string v7, "_data"

    const-string v8, "mime_type"

    const-string v9, "_size"

    const-string v10, "provider_name"

    const-string v11, "extension"

    const-string v12, "provider_id"

    const-string v13, "seed"

    const-string v14, "genre"

    .line 56
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/util/MediaDbUtils;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    const v0, 0x10001

    .line 364
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 1

    .line 368
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const-string v0, "count(*)"

    .line 374
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    .line 376
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 377
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 378
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 379
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 383
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string p0, "MediaDbUtils"

    .line 386
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMusicCount() count : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    .line 383
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
.end method

.method public static a(Landroid/content/Context;[JI)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 391
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 395
    :cond_0
    array-length v1, p1

    if-lez v1, :cond_4

    const/16 v2, 0x3e7

    if-le v2, v1, :cond_1

    add-int/lit8 v2, v1, 0x0

    :cond_1
    if-gtz v2, :cond_2

    return v0

    .line 408
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_id"

    .line 410
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IN ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    new-array p2, v2, [Ljava/lang/String;

    :goto_0
    if-ge v0, v2, :cond_3

    const-string v3, "?,"

    .line 413
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    aget-wide v3, p1, v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string p1, ","

    .line 416
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    .line 417
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v0
.end method

.method public static a(Landroid/content/Context;[J)J
    .locals 11

    .line 512
    array-length v0, p1

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 516
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id"

    .line 517
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 519
    aget-wide v6, p1, v5

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 521
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    .line 522
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 525
    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const-string p1, "sum(_size)"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    .line 527
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    .line 526
    invoke-static/range {v5 .. v10}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 528
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 529
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 525
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    .line 531
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw p1

    :cond_4
    :goto_3
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    const-string p0, "MediaDbUtils"

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSize size : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;III)Landroid/database/Cursor;
    .locals 7

    add-int v0, p4, p5

    .line 205
    array-length v1, p3

    if-le v0, v1, :cond_0

    .line 206
    array-length p5, p3

    sub-int/2addr p5, p4

    :cond_0
    if-gtz p5, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object p6

    invoke-direct {v0, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p6, " AND ("

    .line 216
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " IN ("

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    new-array v5, p5, [Ljava/lang/String;

    const/4 p6, 0x0

    :goto_0
    if-ge p6, p5, :cond_3

    const/16 v1, 0x3f

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p5, -0x1

    if-ge p6, v1, :cond_2

    const/16 v1, 0x2c

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int v1, p4, p6

    .line 225
    aget-object v1, p3, v1

    aput-object v1, v5, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_3
    const-string p3, "))"

    .line 227
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v6, p2

    .line 232
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    const v0, 0x10000b

    if-eq p1, v0, :cond_0

    const v0, 0x10000f

    if-eq p1, v0, :cond_0

    .line 68
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    move-result-object p0

    return-object p0

    .line 66
    :cond_0
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .locals 7

    const/4 v0, 0x0

    .line 76
    :try_start_0
    sget-object v3, Lcom/samsung/android/app/music/util/MediaDbUtils;->b:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 78
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;-><init>()V

    .line 80
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->b:Landroid/net/Uri;

    const-string p1, "title"

    .line 81
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->c:Ljava/lang/String;

    const-string p1, "album"

    .line 82
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->d:Ljava/lang/String;

    const-string p1, "artist"

    .line 83
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->e:Ljava/lang/String;

    const-string p1, "album_id"

    .line 84
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->g:J

    const-string p1, "duration"

    .line 85
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->h:J

    const-string p1, "mime_type"

    .line 86
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->i:Ljava/lang/String;

    const-string p1, "_data"

    .line 87
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->j:Ljava/lang/String;

    const-string p1, "extension"

    .line 88
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->l:Ljava/lang/String;

    const-string p1, "_id"

    .line 89
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->a:J

    const-string p1, "_size"

    .line 90
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->k:J

    const-string p1, "provider_name"

    .line 91
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->m:Ljava/lang/String;

    const-string p1, "provider_id"

    .line 92
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->n:Ljava/lang/String;

    const-string p1, "seed"

    .line 93
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->o:Ljava/lang/String;

    const-string p1, "genre"

    .line 94
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->p:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "MediaDbUtils"

    const-string v1, "AS: getAlbumInfo: cursor.moveToFirst() FAIL"

    .line 96
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_1
    const-string p1, "MediaDbUtils"

    const-string v1, "AS: getAlbumInfo: cursor==null"

    .line 99
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_2

    .line 103
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string p0, "MediaDbUtils"

    const-string p1, "AS: MusicAlbumInfo : Title: %s, Artist: %s, Album: %s, Duration: %s, MimeType: %s"

    const/4 v1, 0x5

    .line 106
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v3, "null"

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->c:Ljava/lang/String;

    :goto_1
    aput-object v3, v1, v2

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const-string v3, "null"

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->e:Ljava/lang/String;

    :goto_2
    aput-object v3, v1, v2

    const/4 v2, 0x2

    if-nez v0, :cond_5

    const-string v3, "null"

    goto :goto_3

    :cond_5
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->d:Ljava/lang/String;

    :goto_3
    aput-object v3, v1, v2

    const/4 v2, 0x3

    if-nez v0, :cond_6

    const-string v3, "null"

    goto :goto_4

    :cond_6
    iget-wide v3, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->h:J

    .line 109
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_4
    aput-object v3, v1, v2

    const/4 v2, 0x4

    if-nez v0, :cond_7

    const-string v3, "null"

    goto :goto_5

    :cond_7
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->i:Ljava/lang/String;

    :goto_5
    aput-object v3, v1, v2

    .line 106
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_6
    if-eqz p0, :cond_8

    .line 103
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_8
    throw p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "nic_id"

    .line 301
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "provider_id = ?"

    const/4 v1, 0x1

    .line 303
    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    .line 305
    :try_start_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Server;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    move-object v2, p0

    .line 306
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 308
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "nic_id"

    .line 309
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 313
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p1

    :cond_2
    :goto_2
    const-string p0, "MediaDbUtils"

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNic() - deviceID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " NIC: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J
    .locals 1

    const/4 v0, 0x1

    .line 167
    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)[J

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)[J
    .locals 13

    move-object/from16 v0, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 173
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_4

    .line 177
    :cond_0
    array-length v8, v0

    .line 178
    div-int/lit16 v2, v8, 0x3e7

    rem-int/lit16 v3, v8, 0x3e7

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    add-int/2addr v2, v3

    .line 181
    new-array v9, v2, [Landroid/database/Cursor;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v8, :cond_2

    add-int/lit8 v12, v11, 0x1

    const/16 v6, 0x3e7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move v5, v10

    move/from16 v7, p4

    .line 186
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;III)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v9, v11

    add-int/lit16 v10, v10, 0x3e7

    move v11, v12

    goto :goto_1

    .line 190
    :cond_2
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v9}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    const/4 v2, 0x0

    .line 191
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/database/Cursor;)[J

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {v1}, Landroid/database/MergeCursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 190
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v3, :cond_3

    .line 192
    :try_start_2
    invoke-virtual {v1}, Landroid/database/MergeCursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/database/MergeCursor;->close()V

    :goto_3
    throw v2

    .line 174
    :cond_4
    :goto_4
    new-array v0, v1, [J

    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)[J
    .locals 0

    .line 238
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 8

    const-string v0, "count(*)"

    .line 430
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    .line 432
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 433
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 435
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 440
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string p0, "MediaDbUtils"

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlaylistCount() count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_2

    .line 440
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method public static b(Landroid/content/Context;[J)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 749
    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    .line 753
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_9

    const/16 v2, 0x3e7

    add-int/lit16 v3, v1, 0x3e7

    .line 756
    array-length v4, p1

    if-le v3, v4, :cond_1

    .line 757
    array-length v2, p1

    sub-int/2addr v2, v1

    :cond_1
    if-gtz v2, :cond_2

    return v0

    .line 765
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    .line 766
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "drm_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " OR "

    .line 767
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "is_drm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=1)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_id"

    .line 768
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    new-array v10, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_3

    const-string v6, "?,"

    .line 771
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v6, v1, v5

    .line 772
    aget-wide v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const-string v1, ","

    .line 774
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 775
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 777
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v1, "count(*)"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    .line 779
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    move-object v6, p0

    .line 778
    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 780
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 781
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_7

    if-eqz v1, :cond_4

    .line 786
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v2, p0

    .line 777
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_6

    if-eqz v2, :cond_5

    .line 786
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    throw p0

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    move v1, v3

    goto/16 :goto_0

    :cond_9
    return v0

    :cond_a
    :goto_4
    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 8

    const-string v0, "count(*)"

    .line 450
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "recently_added_remove_flag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " != 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    .line 454
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 455
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 457
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 462
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string p0, "MediaDbUtils"

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecentlyAddedTrackCount() count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_2

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 8

    const-string v0, "count(*)"

    .line 472
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "most_played != 0"

    const/4 v0, 0x0

    .line 475
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 476
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 478
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 483
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string p0, "MediaDbUtils"

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMostPlayedTrackCount() count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_2

    .line 483
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 8

    const-string v0, "count(*)"

    .line 493
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "recently_played != 0"

    const/4 v0, 0x0

    .line 496
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 497
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 499
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 504
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string p0, "MediaDbUtils"

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecentlyPlayedTrackCount() count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_2

    .line 504
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method
