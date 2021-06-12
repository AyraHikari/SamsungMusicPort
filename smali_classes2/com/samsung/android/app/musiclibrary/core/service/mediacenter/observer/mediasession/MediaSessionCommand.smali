.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand$CommandInfo;
    }
.end annotation


# static fields
.field public static final KEY_ARGS:Ljava/lang/String; = "KEY_ARGS"

.field public static final KEY_COMMAND:Ljava/lang/String; = "KEY_COMMAND"

.field public static final KEY_RECEIVER:Ljava/lang/String; = "KEY_RECEIVER"

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Player"

.field private static final SUB_TAG:Ljava/lang/String; = "MediaSessionCommand: "

.field private static final TAG:Ljava/lang/String; = "SV-Player"


# instance fields
.field private final mCommands:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand$CommandInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private mIsPlaying:Z

.field private mMetaInit:Z

.field private mPendingResultReceiver:Landroid/os/ResultReceiver;

.field private mRecentlyPlayedTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 2
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mCommands:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mRecentlyPlayedTime:J

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    return-void
.end method

.method private getRecentlyPlayedTime()J
    .locals 10

    .line 122
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mRecentlyPlayedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mIsPlaying:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mRecentlyPlayedTime:J

    :goto_0
    return-wide v0

    .line 125
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v1, "1"

    .line 126
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v0, "recently_played"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "recently_played DESC"

    .line 125
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 129
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v2, "recently_played"

    .line 131
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mRecentlyPlayedTime:J

    .line 132
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mRecentlyPlayedTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 134
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide v2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v1

    .line 125
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 134
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    throw v2

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-wide v2
.end method

.method private getUserActivity(Landroid/media/MediaMetadata;Landroid/media/session/PlaybackState;)Landroid/os/Bundle;
    .locals 2

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MEDIA_METADATA"

    .line 112
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "PLAYBACK_STATE"

    .line 113
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->getRecentlyPlayedTime()J

    move-result-wide p1

    const-string v1, "RECENTLY_PLAYED_TIMESTAMP"

    .line 115
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "CONNECTIVITY"

    const-string p2, "wifi"

    .line 116
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private selectMediaRoute(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 1

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 143
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mPendingResultReceiver:Landroid/os/ResultReceiver;

    .line 144
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const/16 v0, 0x68

    .line 145
    invoke-interface {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->onCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method private sendResultOk(Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1    # Landroid/os/ResultReceiver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCommand: [PlayerCast] sendResultOk"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RESULT"

    const-string v2, "OK"

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method addCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mCommands:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand$CommandInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand$CommandInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getPendingCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand$CommandInfo;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mCommands:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method isInit()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mMetaInit:Z

    return v0
.end method

.method sendGetUserActivityCommand(Landroid/media/MediaMetadata;Landroid/media/session/PlaybackState;Landroid/os/ResultReceiver;)V
    .locals 1

    if-nez p3, :cond_0

    const-string p1, "SV-Player"

    const-string p2, "MediaSessionCommand: cb is null"

    .line 89
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->getUserActivity(Landroid/media/MediaMetadata;Landroid/media/session/PlaybackState;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method sendTransferUserActivityCommand(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "SV-Player"

    const-string p2, "MediaSessionCommand: args is null"

    .line 97
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "DEVICE_ID"

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->selectMediaRoute(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method setInit(Z)V
    .locals 2

    .line 68
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mMetaInit:Z

    const-string p1, "SV-Player"

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaSessionCommand: setInit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mCommands:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    .line 74
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mIsPlaying:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mRecentlyPlayedTime:J

    .line 77
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mIsPlaying:Z

    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mPendingResultReceiver:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mPendingResultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->sendResultOk(Landroid/os/ResultReceiver;)V

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->mPendingResultReceiver:Landroid/os/ResultReceiver;

    :cond_1
    return-void
.end method
