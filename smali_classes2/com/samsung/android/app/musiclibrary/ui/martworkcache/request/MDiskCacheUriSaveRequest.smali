.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheUriSaveRequest;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;
.source "SourceFile"


# instance fields
.field private final e:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    .line 24
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheUriSaveRequest;->e:I

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 5

    .line 34
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->c()Landroid/content/Context;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheUriSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheUriSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v3, v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheUriSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    .line 36
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->b(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheUriSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    const/4 v3, 0x0

    check-cast v3, Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Ljava/io/File;I)V

    return-void

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheUriSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 52
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheUriSaveRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheUriSaveRequest;->e:I

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MDiskCacheUriSaveRequest"

    return-object v0
.end method
