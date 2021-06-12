.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;
.source "SourceFile"


# instance fields
.field private final e:Landroid/graphics/Bitmap;

.field private final f:I

.field private final g:Ljava/io/File;


# direct methods
.method private f()V
    .locals 7

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->g:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v1

    .line 66
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->c()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->g:Ljava/io/File;

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->f:I

    .line 66
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 13

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 73
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "-network-temp"

    .line 77
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v2, "tempBitmap"

    const-string v3, ""

    .line 81
    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 83
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->e:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 85
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v6

    .line 86
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->c()Landroid/content/Context;

    move-result-object v7

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v8, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v9, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->f:I

    .line 86
    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_3

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v1

    .line 82
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 84
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :goto_1
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_2
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 89
    :goto_2
    :try_start_7
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    const-string v3, "failed to create temp file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_3

    .line 92
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_5

    :catchall_2
    move-exception v1

    :goto_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    throw v1

    :cond_3
    :goto_5
    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->g()V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->g:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MDiskCacheBitmapSaveRequest"

    .line 100
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
