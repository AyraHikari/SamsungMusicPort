.class Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UriCache"
.end annotation


# instance fields
.field private final a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a:Landroid/util/LruCache;

    return-void
.end method

.method private static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThumbnailUpdateHelper.UriCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;JLjava/lang/String;)Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;
    .locals 13
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reload. albumId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v5, p2

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cache size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p0

    iget-object v3, v2, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v8, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->a:Landroid/net/Uri;

    const-string v10, "thumbnail_id=? AND thumbnail_type=?"

    const-string v0, "image_url_small"

    const-string v1, "image_url_middle"

    const-string v3, "image_url_big"

    .line 303
    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x2

    .line 307
    new-array v11, v0, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v11, v3

    const/4 v1, 0x1

    aput-object p4, v11, v1

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v12, 0x0

    .line 310
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 311
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 315
    :cond_0
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v11, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;

    invoke-direct {v11, v3, v1, v0}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    move-object v8, v11

    .line 319
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a(Landroid/content/Context;JLjava/lang/String;Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_1

    .line 320
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v11

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 309
    :try_start_1
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v9, :cond_3

    if-eqz v10, :cond_2

    .line 320
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v10, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    throw v1

    :cond_4
    :goto_2
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v10
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;Z)Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a:Landroid/util/LruCache;

    invoke-static {p2, p3, p4}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->b()Ljava/lang/String;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get. cache miss. albumId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cache size - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a:Landroid/util/LruCache;

    .line 289
    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {p5, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a(Landroid/content/Context;JLjava/lang/String;)Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a:Landroid/util/LruCache;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    const/4 v1, 0x0

    .line 328
    iput-boolean v1, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->b:Z

    .line 329
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearCache"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 329
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method a(Landroid/content/Context;)V
    .locals 10

    .line 334
    iget-boolean v0, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a:Landroid/util/LruCache;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->b:Z

    if-eqz v1, :cond_1

    .line 341
    monitor-exit v0

    return-void

    .line 343
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loadCacheIfNotLoaded. start"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v4, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->a:Landroid/net/Uri;

    const-string v1, "thumbnail_id"

    const-string v2, "thumbnail_type"

    const-string v3, "image_url_small"

    const-string v5, "image_url_middle"

    const-string v6, "image_url_big"

    .line 346
    filled-new-array {v1, v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".loadCacheIfNotLoaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "thumbnail_id DESC LIMIT 2000"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 356
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 357
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadCacheIfNotLoaded. count - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x0

    .line 359
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 360
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 361
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    .line 362
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    .line 363
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 364
    iget-object v9, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a:Landroid/util/LruCache;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;

    invoke-direct {v4, v6, v7, v8}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 353
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    .line 368
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    throw v2

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_6
    iput-boolean v2, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->b:Z

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".loadCacheIfNotLoaded"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "done"

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->f(Ljava/lang/String;Ljava/lang/String;)J

    .line 371
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "loadCacheIfNotLoaded. done"

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;)V
    .locals 7
    .param p5    # Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a:Landroid/util/LruCache;

    monitor-enter v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    .line 268
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a(Landroid/content/Context;JLjava/lang/String;Z)Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 270
    iget-object v1, p5, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p1, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->c:Ljava/lang/String;

    iput-object v1, p5, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->c:Ljava/lang/String;

    .line 273
    :cond_0
    iget-object v1, p5, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 274
    iget-object v1, p1, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->b:Ljava/lang/String;

    iput-object v1, p5, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->b:Ljava/lang/String;

    .line 276
    :cond_1
    iget-object v1, p5, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 277
    iget-object p1, p1, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->a:Ljava/lang/String;

    iput-object p1, p5, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->a:Ljava/lang/String;

    .line 280
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a:Landroid/util/LruCache;

    invoke-static {p2, p3, p4}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$UriCache;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
