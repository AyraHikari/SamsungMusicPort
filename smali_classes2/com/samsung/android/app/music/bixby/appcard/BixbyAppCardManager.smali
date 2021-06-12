.class public Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# static fields
.field private static final a:Landroid/net/Uri;

.field private static b:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/Context;

.field private d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;

.field private h:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://media/external/audio/albumart"

    .line 89
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->c:Landroid/content/Context;

    return-void
.end method

.method public static a()I
    .locals 1

    .line 145
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const v0, 0x37ccd9b0

    return v0

    .line 147
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->z_:Z

    if-eqz v0, :cond_1

    const v0, 0x2f70ef90

    return v0

    :cond_1
    const v0, 0x81d80b0

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;
    .locals 2

    .line 109
    sget-object v0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->b:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;

    if-nez v0, :cond_1

    .line 110
    const-class v0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->b:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->b:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;

    .line 114
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 116
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->b:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;

    return-object p0
.end method

.method private a(I)Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(IJ)Ljava/lang/String;
    .locals 8

    .line 433
    invoke-static {p1}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v1

    const v0, 0x10001

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq p1, v0, :cond_6

    const v0, 0x80002

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->c:Landroid/content/Context;

    const-string p1, "image_url_big"

    const-string v3, "image_url_small"

    filled-new-array {p1, v3}, [Ljava/lang/String;

    move-result-object p1

    const-string v3, "thumbnail_id=?"

    new-array v4, v2, [Ljava/lang/String;

    .line 442
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    const/4 v5, 0x0

    move-object v2, p1

    .line 438
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 443
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "image_url_big"

    .line 444
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "image_url_small"

    .line 447
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_1
    new-instance v1, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->h:Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 453
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v7, p2

    .line 438
    :try_start_1
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_4

    if-eqz v7, :cond_3

    .line 453
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v7, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    throw p2

    :cond_5
    if-eqz p1, :cond_c

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 456
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    const-string v0, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "SMUSIC-BixbyAppCard"

    const-string p2, "getAlbumArtUrlInternal - bitmap null"

    .line 457
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 460
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->c:Landroid/content/Context;

    const-string p1, "source_album_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v3, "album_id=?"

    new-array v4, v2, [Ljava/lang/String;

    .line 463
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    const/4 v5, 0x0

    move-object v2, p1

    .line 461
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 464
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 465
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 466
    sget-object v2, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a:Landroid/net/Uri;

    .line 467
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    new-instance v1, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->h:Landroid/util/Pair;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_8

    .line 472
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v0

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    move-object v7, p2

    .line 460
    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    if-eqz p1, :cond_a

    if-eqz v7, :cond_9

    .line 472
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {v7, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_3
    throw p2

    :cond_b
    if-eqz p1, :cond_c

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_4
    return-object v7
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->f:Ljava/util/List;

    return-object p1
.end method

.method private a(IZ)V
    .locals 4

    .line 333
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(I)Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->getFirstTrackInfo()Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;->getTrackId()Ljava/lang/String;

    move-result-object v0

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "samu://service?action=play&playlistid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 338
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 339
    invoke-static {v3, v0, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 342
    sget-object p2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->OPTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->FULL_PLAYER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 344
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-static {p2, v3, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 347
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    .line 348
    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.BROWSABLE"

    .line 349
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 351
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->c:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p2, "SMUSIC-BixbyAppCard"

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send deeplink for playing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d()V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Z
    .locals 6

    .line 485
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 486
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string v3, "SMUSIC-BixbyAppCard"

    .line 488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPlaybackStateChanged - old : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", new : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->i:Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->i:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->i:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 408
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;-><init>(Ljava/lang/String;)V

    .line 410
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v0, :cond_4

    .line 411
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "play_list_name"

    .line 413
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 412
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :try_start_2
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->i:Landroid/util/Pair;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_0
    move-object v1, p1

    .line 410
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 416
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 417
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_5
    return-object v1
.end method

.method private b(I)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    const-string p0, "SMUSIC-BixbyAppCard"

    const-string v0, "Samsung Music do not provide app card below P"

    .line 122
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 126
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/spage/card/SpageCardSdk;

    invoke-direct {v0}, Lcom/samsung/android/sdk/spage/card/SpageCardSdk;-><init>()V

    .line 128
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/spage/card/SpageCardSdk;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    .line 135
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/spage/card/SpageCardSdk;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "SMUSIC-BixbyAppCard"

    const-string v0, "Bixby Home does not support the template card feature"

    .line 137
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return p0

    :catch_0
    const-string p0, "SMUSIC-BixbyAppCard"

    const-string v0, "SpageCardSdk is not supported on this device"

    .line 131
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private c()V
    .locals 4

    const-string v0, "SMUSIC-BixbyAppCard"

    const-string v1, "requestPlaylistData"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->c:Landroid/content/Context;

    const v1, 0x1869f

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis;->a(Landroid/content/Context;I)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    .line 170
    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->b(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager$1;-><init>(Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;)V

    .line 171
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private d()V
    .locals 4

    const-string v0, "SMUSIC-BixbyAppCard"

    const-string v1, "sendAppCardContent"

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/samsung/android/sdk/spage/card/CardContent;

    invoke-static {}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/spage/card/CardContent;-><init>(I)V

    const-string v1, "NO_CONTENTS"

    .line 198
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a()Lcom/samsung/android/sdk/spage/card/CardContentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/spage/card/CardContent;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->e()Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->g:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;

    .line 202
    invoke-static {}, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a()Lcom/samsung/android/sdk/spage/card/CardContentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->g:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->c:Landroid/content/Context;

    .line 203
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->j(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->a(Z)Lcom/samsung/android/sdk/spage/card/CardContent;

    move-result-object v2

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/spage/card/CardContent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SMUSIC-BixbyAppCard"

    const-string v1, "BixbyHome is not valid"

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private e()Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;
    .locals 5

    .line 211
    new-instance v0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;-><init>()V

    .line 213
    invoke-static {}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a()I

    move-result v1

    const-string v2, "MULTIMEDIA_MUSICPLAYER_BASIC"

    const v3, 0x37ccd9b0

    if-ne v1, v3, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "MULTIMEDIA_STREAMING_BASIC"

    .line 219
    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->a(I)V

    .line 220
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->a(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->f()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->b(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->c(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->g(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->b(Z)V

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->d(Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->b(I)V

    .line 232
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getPlayingUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->f(Ljava/lang/String;)V

    const-string v1, "event_launch_player"

    .line 233
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(I)Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 237
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->c(I)V

    .line 238
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->getPlaylistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->b(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->getTpoMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->c(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->getFirstTrackInfo()Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;->getAlbumArturl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->d(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->b(I)V

    const-string v1, "event_launch_play_player"

    .line 242
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->e(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_3
    :goto_0
    const-string v1, "MULTIMEDIA_STREAMING_BASIC"

    .line 245
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 246
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(I)Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;

    move-result-object v1

    if-eqz v1, :cond_4

    add-int/lit8 v2, v3, 0x1

    .line 248
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->d(I)V

    .line 249
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->getPlaylistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->i(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->getTpoMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->j(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->getFirstTrackInfo()Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;->getAlbumArturl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->h(Ljava/lang/String;)V

    const-string v1, "event_play_recommend_1"

    .line 253
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v2, v3

    .line 255
    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(I)Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 257
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->e(I)V

    .line 258
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->getPlaylistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->m(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->getTpoMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->n(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->getFirstTrackInfo()Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;->getAlbumArturl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->l(Ljava/lang/String;)V

    const-string v1, "event_play_recommend_2"

    .line 262
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->o(Ljava/lang/String;)V

    .line 264
    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "samu://mod?action=launch"

    .line 265
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->a(Landroid/content/Intent;)V

    :cond_6
    return-object v0
.end method

.method private f()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()Z
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v0

    .line 425
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->h:Landroid/util/Pair;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->h:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->h:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()I
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "SPAGE_ON_MEDIA_PREV"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "SPAGE_ON_MEDIA_PLAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "SPAGE_ON_MEDIA_NEXT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "event_play_recommend_2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "event_play_recommend_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "SPAGE_ON_MEDIA_PAUSE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_6
    const-string v1, "event_launch_play_player"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_7
    const-string v1, "event_launch_player"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p1, "SMUSIC-BixbyAppCard"

    const-string v0, "not supported event"

    .line 327
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 322
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->g:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;

    if-eqz p1, :cond_4

    .line 323
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->g:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->a()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(IZ)V

    goto :goto_2

    .line 318
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play()V

    .line 319
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->c:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/util/LaunchUtils;->a(Landroid/content/Context;Z)V

    goto :goto_2

    .line 313
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->g:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;

    if-eqz p1, :cond_4

    .line 314
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->g:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->c()I

    move-result p1

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(IZ)V

    goto :goto_2

    .line 308
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->g:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;

    if-eqz p1, :cond_4

    .line 309
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->g:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->b()I

    move-result p1

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(IZ)V

    goto :goto_2

    .line 301
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->g:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->g:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->a()I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_1

    .line 304
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->g:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->a()I

    move-result p1

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(IZ)V

    goto :goto_2

    .line 302
    :cond_3
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play()V

    goto :goto_2

    .line 298
    :pswitch_5
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->pause()V

    goto :goto_2

    .line 292
    :pswitch_6
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playNext()V

    .line 293
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->i()I

    move-result p1

    if-nez p1, :cond_4

    .line 294
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->pause()V

    goto :goto_2

    .line 286
    :pswitch_7
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playPrevious()V

    .line 287
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->i()I

    move-result p1

    if-nez p1, :cond_4

    .line 288
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->pause()V

    :cond_4
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79d2dbf8 -> :sswitch_7
        -0x709f1e7b -> :sswitch_6
        -0x430b0448 -> :sswitch_5
        -0x418e3018 -> :sswitch_4
        -0x418e3017 -> :sswitch_3
        -0xa6c8f2f -> :sswitch_2
        -0xa6b8eee -> :sswitch_1
        -0xa6b77ef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 2

    const-string v0, "SMUSIC-BixbyAppCard"

    const-string v1, "requestAppCardContent"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->c()V

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d()V

    :goto_0
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 375
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->b()V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 380
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 382
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->b()V

    goto :goto_0

    .line 386
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    :cond_1
    :goto_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method
