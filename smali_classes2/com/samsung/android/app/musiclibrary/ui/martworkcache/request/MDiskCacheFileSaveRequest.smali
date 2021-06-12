.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;
.source "SourceFile"


# instance fields
.field private final e:I

.field private final f:Ljava/io/File;

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;ILjava/io/File;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    .line 29
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->e:I

    .line 30
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->f:Ljava/io/File;

    .line 31
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->g:I

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 8

    .line 42
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->c()Landroid/content/Context;

    move-result-object v0

    .line 43
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->e:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    .line 47
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->f:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 48
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    .line 49
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v5, v5, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    .line 48
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 51
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v4, v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    invoke-static {v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 52
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->g:I

    .line 53
    invoke-virtual {v4, v0, v5, v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-object v5, v1

    check-cast v5, Ljava/io/File;

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->g:I

    .line 63
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Ljava/io/File;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 47
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_1
    if-eqz v4, :cond_1

    .line 65
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_6
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :goto_2
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 67
    :catch_2
    :try_start_7
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    check-cast v1, Ljava/io/File;

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->g:I

    .line 68
    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Ljava/io/File;I)V

    .line 69
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load bitmap from temporary file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 75
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->f:Ljava/io/File;

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->g:I

    .line 76
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Ljava/io/File;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 86
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MDiskCacheFileSaveRequest"

    .line 92
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
