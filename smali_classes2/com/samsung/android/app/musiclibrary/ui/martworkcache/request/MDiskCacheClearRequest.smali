.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheClearRequest;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 2

    .line 25
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    const-string v1, "Clear disk cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/content/Context;)V

    .line 27
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    const-string v1, "Clear disk cache completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MDiskCacheClearRequest"

    .line 32
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheClearRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
