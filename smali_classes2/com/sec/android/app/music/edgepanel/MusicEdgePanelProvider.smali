.class public final Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;
.super Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;,
        Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$AlbumUpdateHandler;,
        Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$Companion;
    }
.end annotation


# static fields
.field public static final ACTION_LAUNCH_PERMISSION_REQUEST:Ljava/lang/String; = "com.sec.android.app.music.intent.action.LAUNCH_PERMISSION_REQUEST"

.field public static final Companion:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$Companion;

.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-EdgePanel"

.field private static final TAG:Ljava/lang/String; = "EdgePanel"

.field private static volatile sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

.field private static sIsEdgeVisible:Z


# instance fields
.field private final artworkConverter:Lcom/samsung/android/app/music/service/observer/artwork/EdgePanelArtworkConverter;

.field private final builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

.field private final client:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

.field private final handler:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;

.field private isFirstLoad:Z

.field private metadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->Companion:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$Companion;

    .line 505
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;-><init>()V

    .line 79
    new-instance v0, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;-><init>(Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->client:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    .line 80
    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    .line 81
    new-instance v0, Lcom/samsung/android/app/music/service/observer/artwork/EdgePanelArtworkConverter;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/observer/artwork/EdgePanelArtworkConverter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->artworkConverter:Lcom/samsung/android/app/music/service/observer/artwork/EdgePanelArtworkConverter;

    .line 83
    new-instance v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory$Companion;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->handler:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->isFirstLoad:Z

    return-void
.end method

.method public static final synthetic access$buildPlaybackState(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public static final synthetic access$getArtworkConverter$p(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)Lcom/samsung/android/app/music/service/observer/artwork/EdgePanelArtworkConverter;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->artworkConverter:Lcom/samsung/android/app/music/service/observer/artwork/EdgePanelArtworkConverter;

    return-object p0
.end method

.method public static final synthetic access$getBuilderManager$p(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    return-object p0
.end method

.method public static final synthetic access$getCurrentAlbumUri$p(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)Landroid/net/Uri;
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->getCurrentAlbumUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDEBUG$cp()Z
    .locals 1

    .line 78
    sget-boolean v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->DEBUG:Z

    return v0
.end method

.method public static final synthetic access$getHandler$p(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->handler:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;

    return-object p0
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;
    .locals 1

    .line 78
    sget-object v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    return-object v0
.end method

.method public static final synthetic access$reloadQueue(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->reloadQueue(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;)V
    .locals 0

    .line 78
    sput-object p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    return-void
.end method

.method public static final synthetic access$updateAllEdgeItems(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->updateAllEdgeItems(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$updateEdgeArtwork(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->updateEdgeArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final buildCardView(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;",
            ">;)V"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a(Ljava/util/List;)V

    return-void
.end method

.method private final buildChannelInfo(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.queue.RADIO_PLAYLIST_ID"

    .line 372
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.core.state.queue.RADIO_PLAYLIST_NAME"

    .line 373
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.core.state.queue.RADIO_PLAYLIST_DESCRIPTION"

    .line 374
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 375
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v2, v0, v1, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final buildEmptyTrackEdgePanelData(Landroid/content/Context;)V
    .locals 2

    .line 575
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-EdgePanel"

    const-string v1, "buildEmptyTrackEdgePanelData()"

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a(Landroid/content/Context;)V

    .line 221
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->buildMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->b(Landroid/content/Context;)V

    return-void
.end method

.method private final buildMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 361
    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->metadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void

    :cond_1
    return-void
.end method

.method private final buildNewEdgePanelData(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V
    .locals 0

    .line 231
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->printMetaLog(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    .line 232
    iget-object p4, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    if-nez p4, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p4, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a(Landroid/content/Context;)V

    .line 233
    invoke-direct {p0, p2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->buildMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 234
    invoke-direct {p0, p3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method private final buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a(Z)V

    return-void
.end method

.method private final getBlurBitmapCacheClient()Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->client:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->getCurrentAlbumUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;->a(Landroid/net/Uri;)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->client:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    return-object v0
.end method

.method private final getCurrentAlbumUri()Landroid/net/Uri;
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->metadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v0

    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->getCurrentBaseAlbumUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "MArtworkUtils.getAlbumUr\u2026entBaseAlbumUri, albumId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getCurrentBaseAlbumUri()Landroid/net/Uri;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->metadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    .line 99
    invoke-static {v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "MArtworkUtils.getArtWorkUri(cpAttrs)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getExtras(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)Landroid/os/Bundle;
    .locals 1

    .line 322
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->getMusicMeta(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    .line 324
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.os.Bundle"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 326
    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "playerQueue.extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static final getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;
    .locals 1

    sget-object v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->Companion:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    move-result-object v0

    return-object v0
.end method

.method private final getMusicMeta(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    const/4 v0, 0x3

    .line 318
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.core.service.metadata.MusicMetadata"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getPlayerQueue(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 4

    .line 331
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    const v1, 0x10001

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>(I)V

    .line 334
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->a()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v1

    .line 335
    new-instance v2, Lcom/samsung/android/app/music/service/metadata/playingitem/LocalPlayingItemFactory;

    invoke-direct {v2}, Lcom/samsung/android/app/music/service/metadata/playingitem/LocalPlayingItemFactory;-><init>()V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v3

    .line 336
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 333
    invoke-static {p1, v1, v2, v3, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    const/4 v0, 0x1

    .line 338
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    .line 339
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    const-string v0, "PlayerQueueFactory\n     \u2026Queue(true)\n            }"

    .line 337
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final hasPermissionWithAction(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .line 208
    new-instance v0, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;

    invoke-direct {v0}, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;-><init>()V

    .line 209
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final printDebugging(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 414
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-EdgePanel"

    .line 415
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final printMetaLog(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V
    .locals 5

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicMetadata "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MusicPlaybackState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueItemId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getActiveQueueItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " PlayerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicExtras "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SMUSIC-EdgePanel"

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAllWidgetItems() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final reloadCardViewItems(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;",
            ">;"
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 384
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$PlaylistCardViewQuery;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$PlaylistCardViewQuery;-><init>()V

    if-nez p1, :cond_0

    .line 385
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 387
    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$PlaylistCardViewQuery;->uri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$PlaylistCardViewQuery;->projection:[Ljava/lang/String;

    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$PlaylistCardViewQuery;->selection:Ljava/lang/String;

    iget-object v6, v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$PlaylistCardViewQuery;->selectionArgs:[Ljava/lang/String;

    .line 388
    iget-object v7, v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$PlaylistCardViewQuery;->orderBy:Ljava/lang/String;

    .line 386
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 579
    move-object v1, p1

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    if-nez p1, :cond_1

    goto :goto_0

    .line 590
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 390
    :cond_2
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;

    const-string v4, "_id"

    .line 391
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v4, "number_of_tracks"

    .line 392
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v4, "album_id"

    .line 393
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v4, "name"

    .line 394
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v4, v3

    .line 390
    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;-><init>(JIJLjava/lang/String;)V

    .line 396
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getDEBUG$cp()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "SMUSIC-EdgePanel"

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reloadCardViewItems() Playlist id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    iget v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->numTracks:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " track(s)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 599
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 402
    check-cast v0, Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 579
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final reloadQueue(Landroid/content/Context;)V
    .locals 4

    .line 302
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    if-nez v0, :cond_0

    .line 304
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->getPlayerQueue(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    .line 305
    invoke-direct {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->getMusicMeta(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 306
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v2

    .line 307
    invoke-direct {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->getExtras(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)Landroid/os/Bundle;

    move-result-object v3

    .line 308
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->release()V

    const-string v0, "s"

    .line 309
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->reloadQueue(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    .line 312
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    const-string v2, "playerQueue"

    .line 313
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->getMusicMeta(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    const-string v3, "s"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->getExtras(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->reloadQueue(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private final reloadQueue(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V
    .locals 1

    .line 347
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->buildEmptyTrackEdgePanelData(Landroid/content/Context;)V

    return-void

    .line 351
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->buildNewEdgePanelData(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    .line 352
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 353
    invoke-direct {p0, p4}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->buildChannelInfo(Landroid/os/Bundle;)V

    goto :goto_0

    .line 355
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->reloadCardViewItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->buildCardView(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private final updateAllEdgeItems(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V
    .locals 1

    .line 240
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->buildEmptyTrackEdgePanelData(Landroid/content/Context;)V

    return-void

    .line 245
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->buildNewEdgePanelData(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide p3

    long-to-int p3, p3

    const-string p4, "android.media.metadata.ALBUM_ART"

    .line 248
    invoke-virtual {p2, p4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 249
    iget-boolean p4, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->isFirstLoad:Z

    if-eqz p4, :cond_2

    const/4 p4, 0x0

    .line 250
    iput-boolean p4, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->isFirstLoad:Z

    if-nez p2, :cond_2

    .line 251
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->d(I)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p2, "SMUSIC-EdgePanel"

    const-string p3, "updateAllEdgeItems() not update album cover this time (Online Track)"

    .line 252
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->b(Landroid/content/Context;)V

    return-void

    .line 260
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->updateEdgeArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final updateEdgeArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->artworkConverter:Lcom/samsung/android/app/music/service/observer/artwork/EdgePanelArtworkConverter;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

    invoke-static {p1, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter$Util;->convert(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a(Landroid/graphics/Bitmap;)V

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->updateEdgeArtworkBackground(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 266
    iget-object p2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->b(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method private final updateEdgeArtworkBackground(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 9

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_2

    .line 275
    iget-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->b(Landroid/graphics/Bitmap;)V

    return v1

    .line 278
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_3

    return v1

    .line 281
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 282
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 283
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const v2, 0x7f1003f1

    .line 284
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v1, v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    int-to-float p2, v2

    mul-float v1, v1, p2

    const p2, 0x7f100087

    .line 286
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    div-float v5, v1, p2

    .line 289
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->getBlurBitmapCacheClient()Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    .line 290
    new-instance p2, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateEdgeArtworkBackground$1;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateEdgeArtworkBackground$1;-><init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;)V

    move-object v8, p2

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v2, p1

    .line 288
    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FFZLandroid/os/Looper;Lkotlin/jvm/functions/Function2;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public clearRemoteViews()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->builderManager:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->b()V

    return-void
.end method

.method public isEdgePanelVisible()Z
    .locals 1

    .line 200
    sget-boolean v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->sIsEdgeVisible:Z

    return v0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getDEBUG$cp()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SMUSIC-EdgePanel"

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisabled() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->handler:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getDEBUG$cp()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SMUSIC-EdgePanel"

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnabled() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getDEBUG$cp()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SMUSIC-EdgePanel"

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    const-string v1, "com.sec.android.app.music.intent.action.LAUNCH_PERMISSION_REQUEST"

    .line 143
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->hasPermissionWithAction(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->handler:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;

    const/4 v2, 0x2

    .line 547
    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->removeMessages(I)V

    const/4 v2, 0x1

    .line 548
    new-instance v3, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onReceive$$inlined$update$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onReceive$$inlined$update$1;-><init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->access$post(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "SMUSIC-EdgePanel"

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error happened: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V
    .locals 2

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getDEBUG$cp()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "SMUSIC-EdgePanel"

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdate() cocktailIds\'s length : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->handler:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;

    const/4 p3, 0x2

    .line 533
    invoke-virtual {p2, p3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->removeMessages(I)V

    const/4 p3, 0x1

    .line 534
    new-instance v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onUpdate$$inlined$update$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onUpdate$$inlined$update$1;-><init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {p2, p3, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->access$post(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;II)V
    .locals 2

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 120
    :goto_0
    sput-boolean p3, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->sIsEdgeVisible:Z

    .line 536
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getDEBUG$cp()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "SMUSIC-EdgePanel"

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibilityChanged() sIsEdgeVisible : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->sIsEdgeVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    sget-boolean p3, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->sIsEdgeVisible:Z

    if-nez p3, :cond_2

    .line 123
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object p3

    if-eqz p3, :cond_2

    const/16 v0, 0x67

    .line 124
    invoke-interface {p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stopForwardRewind(I)V

    .line 126
    :cond_2
    iget-object p3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->handler:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;

    const/4 v0, 0x2

    .line 540
    invoke-virtual {p3, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->removeMessages(I)V

    .line 541
    new-instance v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onVisibilityChanged$$inlined$update$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onVisibilityChanged$$inlined$update$1;-><init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {p3, p2, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->access$post(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void
.end method

.method public updateArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SMUSIC-EdgePanel"

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateArtwork() artwork > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->handler:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;

    const/4 v1, 0x2

    .line 567
    new-instance v2, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateArtwork$$inlined$updatePartial$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateArtwork$$inlined$updatePartial$1;-><init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->access$post(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void
.end method

.method public updateCardViewItems(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-EdgePanel"

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCardViewItems() list size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->handler:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;

    const/4 v1, 0x2

    .line 573
    new-instance v2, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateCardViewItems$$inlined$updatePartial$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateCardViewItems$$inlined$updatePartial$1;-><init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Ljava/util/List;Landroid/content/Context;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->access$post(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void
.end method

.method public updateMetadataChanged(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "m"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "s"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 168
    invoke-virtual {p4, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 550
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-EdgePanel"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMetadataChanged() m >\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->handler:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;

    const/4 v1, 0x2

    .line 554
    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->removeMessages(I)V

    const/4 v7, 0x1

    .line 555
    new-instance v8, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateMetadataChanged$$inlined$also$lambda$1;

    move-object v1, v8

    move-object v2, p4

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateMetadataChanged$$inlined$also$lambda$1;-><init>(Landroid/os/Bundle;Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    check-cast v8, Ljava/lang/Runnable;

    invoke-static {v0, v7, v8}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->access$post(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;ILjava/lang/Runnable;)V

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "SMUSIC-EdgePanel"

    const-string p2, "updateMetadataChanged() but queue extras is null"

    .line 173
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    :goto_0
    return-void
.end method

.method public updatePlaybackStateChanged(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "s"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-EdgePanel"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlaybackStateChanged() s >\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->handler:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;

    const/4 v1, 0x2

    .line 561
    new-instance v2, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;-><init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/content/Context;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->access$post(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void
.end method
