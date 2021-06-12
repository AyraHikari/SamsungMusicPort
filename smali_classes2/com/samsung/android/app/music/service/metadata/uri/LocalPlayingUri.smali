.class final Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->a:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->b:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->c:Ljava/lang/String;

    return-void
.end method

.method private a(I)Landroid/net/Uri;
    .locals 10

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    .line 132
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->buildStreamingId(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    .line 133
    new-instance v5, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri$1;-><init>(Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;)V

    const-string v9, "0"

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;JILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/streaming/MediaProxyServerFactory;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    move-result-object v1

    .line 147
    :try_start_0
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->requestUri(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;I)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lcom/samsung/android/app/musiclibrary/core/service/streaming/IllegalDrmStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "drm_error"

    .line 150
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IllegalDrmStateException;->getErrorCode()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory;->a(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->d:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->d:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->d:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    :cond_0
    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->d:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 1

    .line 58
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->a(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->b:Ljava/lang/String;

    .line 71
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public makeCache(J)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method
