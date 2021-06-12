.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/Copyable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest<",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/Copyable<",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;-><init>(J)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->g:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 98
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->d(Landroid/net/Uri;)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x3ff199999999999aL    # 1.1

    mul-double v1, v1, v3

    double-to-long v1, v1

    const-string v3, "SMUSIC-ArtWork"

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxRequestDuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 103
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->g:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v5, v5, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->tryLock(Ljava/lang/Object;J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->g:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->lock(Ljava/lang/Object;J)V

    const/4 v3, 0x1

    :cond_0
    const-string v1, "SMUSIC-ArtWork"

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start loading"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " wasWait: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    .line 115
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :try_start_2
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->g:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->unlock(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    .line 118
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->i()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 120
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    :try_start_4
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->g:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->unlock(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 124
    :cond_2
    :try_start_5
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->b()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->c()Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    .line 125
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    move v4, p2

    .line 124
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object p1

    .line 126
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    if-ne p1, p2, :cond_3

    .line 127
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->f:Z

    .line 128
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 131
    :try_start_6
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->g:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->unlock(Ljava/lang/Object;)V

    return-object p1

    :cond_3
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->g:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_0
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->g:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "SMUSIC-ArtWork"

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "there was an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->f:Z

    .line 136
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    return-object p1
.end method

.method private g()Landroid/graphics/Bitmap;
    .locals 7

    .line 73
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "SMUSIC-ArtWork"

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loaded bitmap using loader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->z_()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;)V

    :cond_0
    return-object v2
.end method

.method private h()Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 148
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->a()I

    move-result v1

    .line 150
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->z_()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-static {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;)V

    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->a(Landroid/graphics/Bitmap;)V

    .line 158
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;)V

    .line 163
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private i()Landroid/graphics/Bitmap;
    .locals 4

    .line 167
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->z_()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 174
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->z_()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->z_()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public synthetic a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/Copyable;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->f()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a(Landroid/graphics/Bitmap;)V

    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public f()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;
    .locals 3

    .line 49
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "LoadArtworkRequest"

    .line 188
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
