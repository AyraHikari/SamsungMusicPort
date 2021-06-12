.class public final Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/PowerManager$WakeLock;

.field private final c:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private final d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

.field private e:Landroid/support/v7/media/RemotePlaybackClient;

.field private f:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

.field private final m:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

.field private final n:Landroid/support/v7/media/RemotePlaybackClient$OnMessageReceivedListener;

.field private final o:Landroid/os/Handler;

.field private final p:Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouter$RouteInfo;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 3

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 120
    iput-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->i:Z

    .line 126
    iput-boolean v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->j:Z

    .line 131
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->l:Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

    .line 134
    new-instance v1, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$1;-><init>(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->m:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    .line 162
    new-instance v1, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$2;-><init>(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->n:Landroid/support/v7/media/RemotePlaybackClient$OnMessageReceivedListener;

    .line 290
    new-instance v1, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;-><init>(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    .line 646
    new-instance v1, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$9;-><init>(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->p:Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;

    .line 172
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a:Landroid/content/Context;

    .line 173
    iput-object p3, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x1

    .line 175
    invoke-interface {p3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 174
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->k:I

    .line 176
    iput-object p4, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->c:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const-string p3, "power"

    .line 177
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b:Landroid/os/PowerManager$WakeLock;

    .line 179
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 180
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 181
    iput v0, p1, Landroid/os/Message;->what:I

    .line 182
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 183
    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Landroid/os/Bundle;
    .locals 3

    .line 659
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    .line 660
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.media.metadata.TITLE"

    .line 661
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.media.metadata.ARTIST"

    .line 662
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.media.metadata.ARTWORK_URI"

    .line 664
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->l:Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Ljava/lang/String;
    .locals 9

    .line 669
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 670
    iget-object v2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->a:Landroid/net/Uri;

    const-string v0, "image_url_big"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "thumbnail_id=?"

    new-array v6, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 673
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v0

    const/4 v7, 0x0

    .line 670
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 674
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "image_url_big"

    .line 675
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 677
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 670
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 677
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw v1

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    .line 679
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->obtainServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    move-result-object v0

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->getBaseUrl(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "track/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/artwork"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-virtual {v0}, Landroid/support/v7/media/RemotePlaybackClient;->hasSession()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-SV-PlayerCast"

    const-string v1, "onResult: MSG_STOP - no session"

    .line 354
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->p:Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/RemotePlaybackClient;->stop(Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 7

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-virtual {v0}, Landroid/support/v7/media/RemotePlaybackClient;->hasSession()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-SV-PlayerCast"

    const-string v0, "onResult: MSG_SEEK - no session"

    .line 335
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->g:Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v3, p1

    const/4 v5, 0x0

    new-instance v6, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$4;-><init>(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/media/RemotePlaybackClient;->seek(Ljava/lang/String;JLandroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Landroid/os/Message;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->c(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 631
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 638
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 639
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->c:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const-string v0, "com.samsung.android.bt.AVRCP"

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->onCustomEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "SMUSIC-SV-PlayerCast"

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore event, wrong formation exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->j:Z

    return p1
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;)Z
    .locals 1

    .line 643
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->getPlayState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-virtual {v0}, Landroid/support/v7/media/RemotePlaybackClient;->hasSession()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-SV-PlayerCast"

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessageRemote: no session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 453
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.media.intent.extra.MESSAGE"

    .line 454
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    new-instance v2, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$6;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$6;-><init>(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/media/RemotePlaybackClient;->sendMessage(Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V

    const-string v0, "SMUSIC-SV-PlayerCast"

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessageRemote: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ServerDump;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/server/ServerDump;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ServerDump;->putLog(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->f:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-virtual {v0}, Landroid/support/v7/media/RemotePlaybackClient;->hasSession()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-SV-PlayerCast"

    const-string v1, "onResult: MSG_PAUSE - no session"

    .line 362
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->p:Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/RemotePlaybackClient;->pause(Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V

    return-void
.end method

.method private b(I)V
    .locals 3

    .line 439
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;

    const-string v2, "repeat"

    .line 440
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 12

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->i:Z

    .line 383
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 384
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 385
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    const/4 v2, 0x1

    .line 386
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 387
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    .line 388
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v4, "localhost"

    .line 390
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "localhost"

    iget-object v4, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a:Landroid/content/Context;

    .line 393
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/utility/IpUtils;->getDeviceIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->f()Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    move-result-object v3

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->getBaseUrl(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "track/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/contents"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_1
    :goto_0
    move-object v5, v3

    .line 402
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Landroid/os/Bundle;

    move-result-object v7

    .line 403
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.samsung.continuity.attr.ITEM_ID"

    .line 404
    iget-object v2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->g:Ljava/lang/String;

    invoke-virtual {v10, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;

    const-string v3, "queue_item_id"

    .line 406
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getQueueItemId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.continuity.attr.EXTRA_DATA"

    .line 407
    invoke-virtual {v10, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play itemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " queueItemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-SV-PlayerCast"

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play itemId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v4, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    const-string v6, "audio/*"

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v8, p1

    new-instance v11, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$5;

    invoke-direct {v11, p0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$5;-><init>(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V

    invoke-virtual/range {v4 .. v11}, Landroid/support/v7/media/RemotePlaybackClient;->play(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;JLandroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;)V

    .line 431
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/server/ServerDump;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/server/ServerDump;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ServerDump;->putLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Landroid/os/Message;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->i:Z

    return p1
.end method

.method private c()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-virtual {v0}, Landroid/support/v7/media/RemotePlaybackClient;->hasSession()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-SV-PlayerCast"

    const-string v1, "onResult: MSG_RESUME - no session"

    .line 370
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->l:Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SMUSIC-SV-PlayerCast"

    const-string v1, "resume requested but it is already playing"

    .line 374
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 378
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->p:Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/RemotePlaybackClient;->resume(Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V

    return-void
.end method

.method private c(I)V
    .locals 3

    .line 444
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;

    const-string v2, "shuffle"

    .line 445
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 444
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private c(Landroid/os/Message;)V
    .locals 3

    .line 508
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    const-string v0, "android.media.intent.category.REMOTE_PLAYBACK"

    .line 509
    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getControlFilters()Ljava/util/List;

    move-result-object v0

    .line 511
    new-instance v1, Landroid/content/IntentFilter;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    const-string v2, "android.media.intent.category.REMOTE_PLAYBACK"

    .line 512
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 513
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_0
    new-instance v0, Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/media/RemotePlaybackClient;-><init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    .line 516
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->m:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/RemotePlaybackClient;->setStatusCallback(Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;)V

    .line 517
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->n:Landroid/support/v7/media/RemotePlaybackClient$OnMessageReceivedListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/RemotePlaybackClient;->setOnMessageReceivedListener(Landroid/support/v7/media/RemotePlaybackClient$OnMessageReceivedListener;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Landroid/os/Message;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Landroid/os/Message;)V

    return-void
.end method

.method private d(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 622
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v0, 0x2

    .line 623
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object p1

    .line 625
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object p1
.end method

.method static synthetic d(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->c()V

    return-void
.end method

.method private d()Z
    .locals 3

    .line 435
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;

    const-string v2, "queue_changed"

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 4

    .line 472
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 473
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-virtual {v0}, Landroid/support/v7/media/RemotePlaybackClient;->isSessionManagementSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "temp_session_id"

    .line 474
    iput-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->h:Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->f:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;->onSessionStateChanged(Z)V

    return-void

    .line 478
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 479
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->f()Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    move-result-object v2

    const-string v3, "com.samsung.continuity.attr.EXTRA_DATA"

    .line 480
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->getBaseUrl(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    new-instance v2, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$7;-><init>(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/media/RemotePlaybackClient;->startSession(Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b()V

    return-void
.end method

.method private f()Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->obtainServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    move-result-object v0

    .line 522
    iget v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->k:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->d(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->setPlayerQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)V

    .line 523
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->a()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->setMusicContent(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V

    .line 524
    new-instance v1, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;-><init>(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->setCallback(Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;)V

    .line 616
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->start()V

    return-object v0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->j:Z

    return p0
.end method

.method static synthetic i(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->c:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    return-object p0
.end method

.method static synthetic j(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic l(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->i:Z

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 286
    iput p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->k:I

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->obtainServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->d(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->setPlayerQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)V

    return-void
.end method

.method public getPlaybackState()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->l:Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->getPlayState()I

    move-result v0

    return v0
.end method

.method public isSessionActivated()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public play(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;J)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "SMUSIC-SV-PlayerCast"

    const-string p2, "play: dataSource is null"

    .line 194
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 197
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 198
    iput v1, v0, Landroid/os/Message;->what:I

    .line 199
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    long-to-int p1, p2

    .line 200
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 201
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public queueChanged()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public release()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-virtual {v0}, Landroid/support/v7/media/RemotePlaybackClient;->release()V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->obtainServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->release()V

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->setOnCastPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;)V

    return-void
.end method

.method public repeat(I)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 271
    iput v1, v0, Landroid/os/Message;->what:I

    .line 272
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 273
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestStartSession()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public resume()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public seek(J)V
    .locals 2

    .line 233
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 234
    iput v1, v0, Landroid/os/Message;->what:I

    long-to-int p1, p1

    .line 235
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 236
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCurrentItemId(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->g:Ljava/lang/String;

    return-void
.end method

.method public setOnCastPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->f:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    return-void
.end method

.method public shuffle(I)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 280
    iput v1, v0, Landroid/os/Message;->what:I

    .line 281
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 282
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
