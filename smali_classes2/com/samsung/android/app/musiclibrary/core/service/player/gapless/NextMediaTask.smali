.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final SUB_TAG:Ljava/lang/String; = "NextTask: "

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"


# instance fields
.field private final mAudioAttributes:Landroid/media/AudioAttributes;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAudioSession:Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;

.field private final mContext:Landroid/content/Context;

.field private final mData:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsCancel:Z

.field private final mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

.field private mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;Landroid/media/AudioAttributes;)V
    .locals 1
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/media/AudioAttributes;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsCancel:Z

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mContext:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mAudioSession:Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;

    .line 58
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mData:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 59
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    .line 61
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    .line 62
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private releaseNextMediaPlayer()V
    .locals 1

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsCancel:Z

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->reset()V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->release()V

    const-string v0, "releaseNextMediaPlayer"

    .line 112
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    :cond_0
    return-void
.end method

.method private setNextMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 4
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 127
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->reset()V

    const/4 v1, 0x2

    .line 128
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 129
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->extraData:Landroid/os/Bundle;

    .line 135
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsCancel:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez v1, :cond_2

    .line 145
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    if-eqz p1, :cond_1

    .line 146
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)V

    :cond_1
    return-void

    :cond_2
    const-string v2, "error"

    .line 149
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    if-eqz p1, :cond_3

    .line 154
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)V

    :cond_3
    return-void

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mAudioSession:Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;->setUpNextAudioSessionId(Landroid/media/MediaPlayer;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-nez v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->setAudioStreamType(I)V

    goto :goto_0

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->setDataSource(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;Landroid/net/Uri;)V

    .line 177
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsCancel:Z

    if-eqz p1, :cond_6

    return-void

    .line 184
    :cond_6
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->isCrossFadeActivated()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 185
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->disableOffload(Landroid/media/MediaPlayer;)Z

    .line 187
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->prepare()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const-string v0, "cancel called"

    .line 98
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->printLog(Ljava/lang/String;)V

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->releaseNextMediaPlayer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during cancel. Ignore all case of exception. Don\'t handle it. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->printLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public hasMedia()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->hasMedia()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Task started without media, please check your logic"

    .line 80
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->printInfoLog(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mData:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->setNextMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsCancel:Z

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in nextUri. Ignore all case of exception. Don\'t handle it. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->printLog(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->releaseNextMediaPlayer()V

    :cond_1
    :goto_0
    const-string v0, "Task end"

    .line 94
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->printInfoLog(Ljava/lang/String;)V

    return-void
.end method
