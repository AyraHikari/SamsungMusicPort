.class Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final FOCUS_CHANGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Player"

.field private static final TAG:Ljava/lang/String; = "SV-Player"


# instance fields
.field private final mAudioAttributes:Landroid/media/AudioAttributes;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAudioFocusGained:Z

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mFocusRequest:Landroid/media/AudioFocusRequest;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private mPausedByAudioFocusTransientLoss:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Landroid/media/AudioAttributes;)V
    .locals 0

    .line 53
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 39
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mPausedByAudioFocusTransientLoss:Z

    .line 41
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioFocusGained:Z

    .line 43
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 54
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 55
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildFocusRequest()Landroid/media/AudioFocusRequest;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 78
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 79
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 80
    invoke-virtual {v0, v1, p0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    return-object v0
.end method

.method private ensureAudioManager(Landroid/content/Context;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "audio"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioManager:Landroid/media/AudioManager;

    .line 64
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->isOverO()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->buildFocusRequest()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mFocusRequest:Landroid/media/AudioFocusRequest;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mFocusRequest:Landroid/media/AudioFocusRequest;

    :goto_0
    return-void
.end method

.method private gainAudioFocus()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mPausedByAudioFocusTransientLoss:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setCurrentVolume(F)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->playWithoutAudioFocus()V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->fade(F)V

    :goto_0
    return-void
.end method

.method private handleAudioFocus(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const-string p1, "SMUSIC-SV-Player"

    const-string v1, "Unknown audio focus change code"

    .line 158
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioFocusGained:Z

    goto :goto_0

    :pswitch_0
    const-string p1, "AudioFocus: received AUDIOFOCUS_LOSS"

    .line 134
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->printLog(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->lossAudioFocus()V

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioFocusGained:Z

    goto :goto_0

    :pswitch_1
    const-string p1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    .line 147
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->printLog(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->lossTransient()V

    .line 149
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioFocusGained:Z

    goto :goto_0

    :pswitch_2
    const-string p1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    .line 139
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->printLog(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->lossTransientCanDuck()V

    .line 144
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioFocusGained:Z

    goto :goto_0

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN paused by focus before ? "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mPausedByAudioFocusTransientLoss:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->printLog(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->gainAudioFocus()V

    .line 155
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioFocusGained:Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isOverO()Z
    .locals 2

    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lossAudioFocus()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isRemotePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS in remote case so ignore it."

    .line 196
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->printLog(Ljava/lang/String;)V

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->clearPausedByAudioFocus()V

    return-void
.end method

.method private lossTransient()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isRemotePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT in remote case so ignore it."

    .line 175
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->printLog(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mPausedByAudioFocusTransientLoss:Z

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause(Z)V

    :cond_1
    return-void
.end method

.method private lossTransientCanDuck()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK this will fade down until volume 20%"

    .line 188
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->printLog(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->fade(F)V

    :cond_0
    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-Player"

    .line 210
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method abandonAudioFocus()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->ensureAudioManager(Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioFocusGained:Z

    :cond_1
    return-void
.end method

.method clearPausedByAudioFocus()V
    .locals 1

    const-string v0, "AudioFocus: set mPausedByAudioFocusTransientLoss as false"

    .line 119
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mPausedByAudioFocusTransientLoss:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 73
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->handleAudioFocus(I)V

    return-void
.end method

.method hasAudioFocus()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioFocusGained:Z

    return v0
.end method

.method isPausedByAudioFocus()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mPausedByAudioFocusTransientLoss:Z

    return v0
.end method

.method requestAudioFocus()I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isRemotePlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "AudioFocus: requestAudioFocus but, this is remote playing. ignore this request."

    .line 87
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->printLog(Ljava/lang/String;)V

    return v1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->ensureAudioManager(Landroid/content/Context;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->mFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 100
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request audio focus result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->printLog(Ljava/lang/String;)V

    return v0
.end method
