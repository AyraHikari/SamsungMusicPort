.class public Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;,
        Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$AlbumUpdateHandler;,
        Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$Companion;

.field private static final DEBUG:Z

.field public static final DIM_POSITION:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Widget"

.field private static final TAG:Ljava/lang/String; = "SV-Widget"

.field private static volatile sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;


# instance fields
.field private final artworkConverter:Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;

.field private final builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

.field private final client:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

.field private final handler:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

.field private isFirstLoad:Z

.field private lastUpdatedModeData:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;

.field private metadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private sortMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->Companion:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$Companion;

    .line 543
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;-><init>(Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->client:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    .line 58
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a()Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    .line 59
    new-instance v0, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->artworkConverter:Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;

    .line 61
    new-instance v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory$Companion;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->handler:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

    .line 62
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->create()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;

    move-result-object v0

    const-string v2, "QueueMode.ModeData.create()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->lastUpdatedModeData:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;

    .line 63
    iput-boolean v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->isFirstLoad:Z

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->sortMode:I

    return-void
.end method

.method public static final synthetic access$buildConfiguration(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->buildConfiguration()V

    return-void
.end method

.method public static final synthetic access$buildPlaybackState(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public static final synthetic access$buildQueueMode(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/os/Bundle;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->buildQueueMode(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static final synthetic access$getArtworkConverter$p(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;)Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->artworkConverter:Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;

    return-object p0
.end method

.method public static final synthetic access$getBuilderManager$p(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;)Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    return-object p0
.end method

.method public static final synthetic access$getCurrentAlbumUri$p(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;)Landroid/net/Uri;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->getCurrentAlbumUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDEBUG$cp()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->DEBUG:Z

    return v0
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;
    .locals 1

    .line 56
    sget-object v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;

    return-object v0
.end method

.method public static final synthetic access$reloadQueue(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->reloadQueue(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;)V
    .locals 0

    .line 56
    sput-object p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;

    return-void
.end method

.method public static final synthetic access$setSortMode(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/os/Bundle;)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->setSortMode(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$updateAllWidgetItems(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updateAllWidgetItems(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$updateWidget(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updateWidget(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final synthetic access$updateWidgetArtwork(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updateWidgetArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private final buildConfiguration()V
    .locals 5

    .line 399
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "background_color"

    const/4 v2, 0x0

    .line 400
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 401
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "background_alpha"

    const/16 v3, 0x1e

    .line 402
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "SMUSIC-SV-Widget"

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildConfiguration() Widget Theme Color : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v4, "White"

    goto :goto_0

    :cond_0
    const-string v4, "Black"

    .line 405
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Alpha : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->b(II)V

    return-void
.end method

.method private final buildListViews(Landroid/content/Context;)V
    .locals 6

    .line 411
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    const-string v2, "builderManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 412
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 413
    iget-object v2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    const-string v3, "builderManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->c()I

    move-result v2

    const-string v3, "SMUSIC-SV-Widget"

    .line 414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildListViews() listViewResId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v3, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a(ILandroid/content/Intent;)V

    .line 416
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    iget-object v3, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    const-string v4, "builderManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->d()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a(II)V

    .line 421
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    const-string v4, "builderManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->e()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.samsung.android.app.music.core.action.appwidget.ACTION_MUSIC_LIST_CLICKED"

    .line 422
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v3, 0x8000000

    .line 426
    invoke-static {p1, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 427
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private final buildMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 307
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->metadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 308
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result v0

    .line 309
    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 310
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->b(Z)V

    return-void
.end method

.method private final buildNewWidgetData(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V
    .locals 1

    .line 258
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->printMetaLog(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a(Landroid/content/Context;)V

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->buildConfiguration()V

    .line 261
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->buildMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 262
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    const/4 p2, 0x1

    .line 263
    invoke-direct {p0, p4, p2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->buildQueueMode(Landroid/os/Bundle;Z)V

    .line 264
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->setSortMode(Landroid/os/Bundle;)Z

    .line 265
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->buildListViews(Landroid/content/Context;)V

    return-void
.end method

.method private final buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a(Z)V

    return-void
.end method

.method private final buildQueueMode(Landroid/os/Bundle;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->lastUpdatedModeData:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->create(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;

    move-result-object v0

    if-eqz p2, :cond_1

    const-string v1, "extra.repeat_state"

    .line 323
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mode"

    .line 324
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->setRepeat(I)V

    const-string v1, "extra.shuffle_state"

    .line 326
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 327
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->setShuffle(I)V

    goto :goto_0

    :cond_1
    const-string v1, "extra.list_mode_type"

    .line 329
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "extra.repeat_state"

    .line 332
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "mode"

    .line 333
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->setRepeat(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const-string v1, "extra.shuffle_state"

    .line 336
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "mode"

    .line 337
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->setShuffle(I)V

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    .line 340
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->lastUpdatedModeData:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 343
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;)V

    const-string p1, "mode"

    .line 344
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->lastUpdatedModeData:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;

    return-void
.end method

.method private final getBlurBitmapCacheClient()Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->client:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->getCurrentAlbumUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;->a(Landroid/net/Uri;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->client:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    return-object v0
.end method

.method private final getCurrentAlbumUri()Landroid/net/Uri;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->metadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v0

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->getCurrentBaseAlbumUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "MArtworkUtils.getAlbumUr\u2026entBaseAlbumUri, albumId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getCurrentBaseAlbumUri()Landroid/net/Uri;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->metadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    .line 79
    invoke-static {v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "MArtworkUtils.getArtWorkUri(cpAttrs)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->Companion:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$Companion;->a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;

    move-result-object v0

    return-object v0
.end method

.method private final getPlayerQueue(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 4

    .line 243
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    const v1, 0x10001

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>(I)V

    .line 246
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->a()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v1

    .line 247
    new-instance v2, Lcom/samsung/android/app/music/service/metadata/playingitem/LocalPlayingItemFactory;

    invoke-direct {v2}, Lcom/samsung/android/app/music/service/metadata/playingitem/LocalPlayingItemFactory;-><init>()V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v3

    .line 248
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 245
    invoke-static {p1, v1, v2, v3, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    const-string v0, "PlayerQueueFactory\n     \u2026       args\n            )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 250
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    .line 251
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    return-object p1
.end method

.method private final isCurrentPlayingSong(I)Z
    .locals 2

    .line 459
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "extra.list_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final isNotActive(Landroid/content/Context;)Z
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    const-string v1, "builderManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->hasActiveWidget(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

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

.method private final onListItemClicked(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "extra_list_position"

    const/4 v1, 0x0

    .line 434
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 435
    sget-boolean v1, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SMUSIC-SV-Widget"

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClicked() ACTION_CLICK_LIST  position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 441
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->isCurrentPlayingSong(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->togglePause()V

    goto :goto_0

    :cond_2
    const-string v1, "extra_list_ids"

    .line 444
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p1

    .line 445
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->openWidgetQueue([JI)V

    :goto_0
    return-void
.end method

.method private final onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 200
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4418042d

    if-eq v1, v2, :cond_5

    const v2, 0x41e2d941

    if-eq v1, v2, :cond_4

    const p2, 0x4494bd88

    if-eq v1, p2, :cond_2

    const p2, 0x4d26f5a3    # 1.75069744E8f

    if-eq v1, p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_0

    :cond_2
    const-string p2, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 211
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->isNotActive(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v0

    .line 214
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->handler:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

    const/4 p3, 0x2

    .line 625
    new-instance v1, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$onReceiveInternal$$inlined$updatePartial$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$onReceiveInternal$$inlined$updatePartial$1;-><init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {p2, p3, v1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->a(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;ILjava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    const-string p1, "com.samsung.android.app.music.core.action.appwidget.ACTION_MUSIC_LIST_CLICKED"

    .line 200
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 201
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->onListItemClicked(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    const-string p2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 200
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 203
    invoke-static {}, Lcom/samsung/android/app/music/service/PlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 204
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object p2

    const-string p3, "extra.list_length"

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_7

    .line 205
    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->hasActiveWidget(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 206
    iget-object p2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->b(Landroid/content/Context;)V

    :cond_7
    :goto_1
    return v0
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

    .line 535
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-SV-Widget"

    .line 536
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final printMetaLog(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V
    .locals 5

    .line 450
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

    .line 452
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

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicExtras "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SMUSIC-SV-Widget"

    .line 454
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

.method private final reloadQueue(Landroid/content/Context;)V
    .locals 5

    .line 224
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 226
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->getPlayerQueue(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    .line 227
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 228
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v2

    .line 229
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 230
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->release()V

    const-string v0, "s"

    .line 231
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->reloadQueue(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    goto :goto_0

    .line 227
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.core.service.metadata.MusicMetadata"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v2

    .line 234
    invoke-interface {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 235
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    const-string v3, "playerQueue"

    .line 236
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "s"

    .line 237
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->reloadQueue(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    :goto_0
    return-void

    .line 234
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.core.service.metadata.MusicMetadata"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final reloadQueue(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V
    .locals 1

    .line 271
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->buildNewWidgetData(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    const p2, 0x7f100073

    .line 274
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p2

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->getCurrentAlbumUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p2

    .line 276
    new-instance p3, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$AlbumUpdateHandler;

    iget-object p4, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->handler:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

    invoke-virtual {p4}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->getLooper()Landroid/os/Looper;

    move-result-object p4

    const-string v0, "handler.looper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p1, p4, p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$AlbumUpdateHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;)V

    check-cast p3, Landroid/os/Handler;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/os/Handler;)V

    return-void
.end method

.method private final setSortMode(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "extra.sort_state"

    .line 351
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 354
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->sortMode:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 357
    :cond_1
    iput p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->sortMode:I

    return v0
.end method

.method private final updateAllWidgetItems(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V
    .locals 4

    .line 282
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->buildNewWidgetData(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    .line 285
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide p3

    long-to-int p3, p3

    .line 286
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v0

    const/4 p4, 0x0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "android.media.metadata.ALBUM_ART"

    .line 288
    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 289
    iget-boolean v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->isFirstLoad:Z

    if-eqz v1, :cond_1

    .line 290
    iput-boolean p4, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->isFirstLoad:Z

    if-nez p2, :cond_1

    .line 291
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->d(I)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p2, "SMUSIC-SV-Widget"

    const-string p3, "updateAllWidgetItems() not update album cover this time."

    .line 292
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updateWidget(Landroid/content/Context;Z)V

    return-void

    .line 297
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updateWidgetArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private final updateWidget(Landroid/content/Context;Z)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a(Landroid/content/Context;Z)V

    const-string p1, "SMUSIC-SV-Widget"

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWidget() needToUpdateList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final updateWidgetArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->artworkConverter:Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

    invoke-static {p1, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter$Util;->convert(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a(Landroid/graphics/Bitmap;)V

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updateWidgetArtworkBackground(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 366
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updateWidget(Landroid/content/Context;Z)V

    return-void
.end method

.method private final updateWidgetArtworkBackground(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 9

    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 374
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 378
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 379
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const v3, 0x7f100073

    .line 380
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v3

    mul-float v1, v1, v2

    const v2, 0x7f100087

    .line 382
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float v5, v1, v0

    .line 384
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->getBlurBitmapCacheClient()Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    .line 385
    new-instance v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateWidgetArtworkBackground$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateWidgetArtworkBackground$1;-><init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v2, p1

    .line 383
    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FFZLandroid/os/Looper;Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public hasActiveWidget(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->c(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "appWidgetManager"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$getDEBUG$cp()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "SMUSIC-SV-Widget"

    .line 104
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onAppWidgetOptionsChanged() "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->handler:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

    const/4 p3, 0x2

    .line 580
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->removeMessages(I)V

    const/4 p3, 0x1

    .line 581
    new-instance p4, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$onAppWidgetOptionsChanged$$inlined$update$1;

    invoke-direct {p4, p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$onAppWidgetOptionsChanged$$inlined$update$1;-><init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;)V

    check-cast p4, Ljava/lang/Runnable;

    invoke-static {p2, p3, p4}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->a(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appWidgetIds"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$getDEBUG$cp()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SMUSIC-SV-Widget"

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeleted() "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->handler:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$getDEBUG$cp()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SMUSIC-SV-Widget"

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisabled() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->handler:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$getDEBUG$cp()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SMUSIC-SV-Widget"

    .line 83
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

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$getDEBUG$cp()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SMUSIC-SV-Widget"

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    return-void

    :catch_0
    move-exception v1

    const-string v2, "SMUSIC-SV-Widget"

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error happened: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mgr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$getDEBUG$cp()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "SMUSIC-SV-Widget"

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdate() appWidgetIds\'s length : "

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

    .line 93
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->handler:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

    const/4 p3, 0x2

    .line 569
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->removeMessages(I)V

    const/4 p3, 0x1

    .line 570
    new-instance v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$onUpdate$$inlined$update$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$onUpdate$$inlined$update$1;-><init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {p2, p3, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->a(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void
.end method

.method public updateArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->isNotActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 606
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SMUSIC-SV-Widget"

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateArtwork() artwork > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->handler:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

    const/4 v1, 0x2

    .line 610
    new-instance v2, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateArtwork$$inlined$updatePartial$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateArtwork$$inlined$updatePartial$1;-><init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->a(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void
.end method

.method public updateConfiguration(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->handler:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

    const/4 v1, 0x2

    .line 622
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->removeMessages(I)V

    .line 623
    new-instance v1, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateConfiguration$$inlined$update$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateConfiguration$$inlined$update$1;-><init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;)V

    check-cast v1, Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->a(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void
.end method

.method public updateHomeWidgetList(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->isNotActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 618
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SMUSIC-SV-Widget"

    const-string v1, "updateHomeWidgetList()"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->builderManager:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->b(Landroid/content/Context;)V

    return-void
.end method

.method public updateMetadataChanged(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "m"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "s"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 128
    invoke-virtual {p4, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_0

    const-string p1, "SMUSIC-SV-Widget"

    const-string p2, "updateMetadataChanged() but queue extras is null"

    .line 130
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 133
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->hasActiveWidget(Landroid/content/Context;)Z

    move-result p4

    if-nez p4, :cond_1

    return-void

    .line 587
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$getDEBUG$cp()Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p4, "SMUSIC-SV-Widget"

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMetadataChanged() m >\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    iget-object p4, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->handler:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

    const/4 v0, 0x2

    .line 591
    invoke-virtual {p4, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 592
    new-instance v7, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateMetadataChanged$$inlined$update$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateMetadataChanged$$inlined$update$1;-><init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    check-cast v7, Ljava/lang/Runnable;

    invoke-static {p4, v0, v7}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->a(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void
.end method

.method public updateModeChanged(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 170
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->isNotActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SMUSIC-SV-Widget"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateModeChanged() modeValues > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->handler:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

    const/4 v1, 0x2

    .line 616
    new-instance v2, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateModeChanged$$inlined$updatePartial$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateModeChanged$$inlined$updatePartial$1;-><init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/os/Bundle;Landroid/content/Context;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->a(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public updatePlaybackStateChanged(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "s"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->isNotActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 594
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SMUSIC-SV-Widget"

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlaybackStateChanged() s >\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->handler:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

    const/4 v1, 0x2

    .line 598
    new-instance v2, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;-><init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/content/Context;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->a(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void
.end method

.method public updateQueueChanged(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 152
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->isNotActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SMUSIC-SV-Widget"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateQueueChanged() extras >\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->handler:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;

    const/4 v1, 0x2

    .line 604
    new-instance v2, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateQueueChanged$$inlined$updatePartial$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateQueueChanged$$inlined$updatePartial$1;-><init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/os/Bundle;Landroid/content/Context;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->a(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
