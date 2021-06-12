.class public Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://media/external/audio/albumart"

    .line 45
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->a:Landroid/net/Uri;

    const-string v0, "radio://mod?action=play&target=song"

    .line 48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->b:Landroid/net/Uri;

    const-string v0, "radio://mod?action=play&target=playlist"

    .line 51
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->c:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;-><init>(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->f:Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;)I
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->b()I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)J
    .locals 6

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->d:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v2, "album_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "source_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 219
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "album_id"

    .line 220
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 222
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 216
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 222
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
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private a(I)Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;
    .locals 6

    .line 68
    new-instance v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;-><init>()V

    .line 70
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    const-string v2, "_id"

    .line 71
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->d:Landroid/content/Context;

    .line 73
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->a()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/service/metadata/playingitem/LocalPlayingItemFactory;

    invoke-direct {v4}, Lcom/samsung/android/app/music/service/metadata/playingitem/LocalPlayingItemFactory;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->d:Landroid/content/Context;

    .line 74
    invoke-static {v5}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v5

    .line 73
    invoke-static {v2, v3, v4, v5, v1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    const/4 v2, 0x1

    .line 76
    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    .line 77
    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->a(Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)V

    .line 80
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->a(Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;I)V

    .line 82
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->release()V

    const-string p1, "LastPlayInfoServiceStub"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastPlayInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;I)Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->a(I)Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;

    move-result-object p0

    return-object p0
.end method

.method private a(J)Ljava/lang/String;
    .locals 2

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->e:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->e:Landroid/util/Pair;

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 147
    new-instance v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 150
    iget-object p2, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->d:Landroid/content/Context;

    iget-object v1, v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;->uri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    const/4 p1, 0x0

    .line 152
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->d:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p2, :cond_2

    .line 153
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "play_list_name"

    .line 154
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v1

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v3, p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 152
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    :goto_0
    if-eqz p2, :cond_1

    if-eqz v3, :cond_0

    .line 156
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catch_1
    move-exception p2

    :try_start_4
    invoke-virtual {v3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw v1

    :cond_2
    :goto_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p2

    .line 157
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 159
    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->d:Landroid/content/Context;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;->uri:Landroid/net/Uri;

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    return-object p1

    :goto_4
    iget-object p2, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->d:Landroid/content/Context;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;->uri:Landroid/net/Uri;

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw p1
.end method

.method private a(Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)V
    .locals 4

    .line 90
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getCurAudioId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->d:Landroid/content/Context;

    invoke-static {p2, v0, v1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;->a(Landroid/content/Context;J)Lcom/samsung/android/app/music/model/SimpleTrack;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 100
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->a(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/SimpleTrack;->getArtistNames()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->b(Ljava/lang/String;)V

    const-string v1, "@"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 106
    sget-object v1, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->a:Landroid/net/Uri;

    .line 107
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 108
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 112
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->a(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->c(Ljava/lang/String;)V

    .line 114
    :cond_3
    :goto_0
    sget-object p2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    sget-object v1, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->b:Landroid/net/Uri;

    .line 115
    invoke-static {p2, v0, v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 116
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;I)V
    .locals 3

    const/4 v0, 0x6

    .line 121
    invoke-interface {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    const/16 v1, 0xa

    .line 123
    invoke-interface {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string v1, "com.samsung.android.app.music.core.state.queue.RADIO_PLAYLIST_ID"

    .line 124
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->e(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->f(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->g(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->a(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->h(Ljava/lang/String;)V

    .line 132
    sget-object p3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PLAYLIST_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    sget-object v1, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->c:Landroid/net/Uri;

    invoke-static {p3, p2, v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 134
    sget-object p3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 135
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 136
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b()I
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getActiveQueueType()I

    move-result v0

    const-string v1, "LastPlayInfoServiceStub"

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastActiveState : getLastActiveState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    return v1
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(J)Ljava/lang/String;
    .locals 7

    const v0, 0x80002

    .line 199
    invoke-static {v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v2

    .line 200
    iget-object v1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->d:Landroid/content/Context;

    const-string v0, "image_url_big"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "thumbnail_id=?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 203
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    const/4 v6, 0x0

    .line 200
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 204
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 207
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v0, p2

    .line 200
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 207
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
    throw p2

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->c()Z

    move-result p0

    return p0
.end method

.method private c()Z
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getActiveQueueType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 179
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isRadioPlaying()Z

    move-result v0

    goto :goto_0

    .line 181
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isPlaying()Z

    move-result v0

    :goto_0
    const-string v1, "LastPlayInfoServiceStub"

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying : IsPlaying = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private c(J)Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->e:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->e:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->f:Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;

    return-object v0
.end method
