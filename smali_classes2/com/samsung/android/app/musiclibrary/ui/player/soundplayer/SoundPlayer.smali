.class public final Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;,
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;,
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SoundPlayer"


# instance fields
.field private b:F

.field private final c:Landroid/content/Context;

.field private final d:Landroid/media/MediaPlayer;

.field private final e:Landroid/media/AudioManager;

.field private final f:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

.field private final g:Landroid/media/session/MediaSession;

.field private h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

.field private i:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;

.field private j:Landroid/media/session/PlaybackState$Builder;

.field private k:Landroid/os/Bundle;

.field private l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

.field private m:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

.field private n:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

.field private o:Landroid/net/Uri;

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private final u:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

.field private final v:Landroid/os/Handler;

.field private final w:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b:F

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    const/4 v1, -0x1

    .line 94
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->q:I

    .line 96
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->r:I

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s:Z

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->t:Z

    .line 102
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->u:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    .line 588
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->v:Landroid/os/Handler;

    .line 688
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$4;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->w:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->c:Landroid/content/Context;

    .line 117
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 119
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 122
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    const-string v1, "audio"

    .line 125
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->e:Landroid/media/AudioManager;

    .line 126
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->f:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    .line 127
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Landroid/content/Context;)Landroid/media/session/MediaSession;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->g:Landroid/media/session/MediaSession;

    .line 128
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    .line 130
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->H:Z

    if-nez p1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->u()V

    :cond_0
    return-void
.end method

.method private A()Z
    .locals 2

    .line 499
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->r:I

    return p1
.end method

.method private a(Landroid/content/Context;)Landroid/media/session/MediaSession;
    .locals 5

    .line 187
    new-instance v0, Landroid/media/session/MediaSession;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;Landroid/media/session/MediaSession;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->i:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;

    .line 189
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->i:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 190
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "exceptMusicController"

    const/4 v2, 0x1

    .line 191
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setExtras(Landroid/os/Bundle;)V

    .line 194
    new-instance p1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {p1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j:Landroid/media/session/PlaybackState$Builder;

    .line 195
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j:Landroid/media/session/PlaybackState$Builder;

    const-wide/16 v3, 0x37f

    invoke-virtual {p1, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 200
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j:Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    const/4 p1, 0x3

    .line 201
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 203
    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setActive(Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->t:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 257
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    const-string v1, "isPlayableDrm() - file path is null, return true"

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->f:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->b(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "type"

    .line 261
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 262
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPlayableDrm() - drm type :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/16 v0, 0x18

    const/4 v2, 0x0

    if-ne v1, v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->m:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 268
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->k:Landroid/os/Bundle;

    .line 271
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    const-string v0, "isPlayableDrm() - playReadyDrm, try again"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;->a(Landroid/os/Bundle;)V

    return v2
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/net/Uri;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->o:Landroid/net/Uri;

    return-object p0
.end method

.method private b(I)V
    .locals 4

    .line 464
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->u:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->a(I)V

    :goto_0
    return-void
.end method

.method private b(J)V
    .locals 3

    .line 208
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaybackState() - position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->g:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j:Landroid/media/session/PlaybackState$Builder;

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 210
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    .line 213
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->g:Landroid/media/session/MediaSession;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j:Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {p2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    .line 328
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play() - mPlayerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", applyFadeUp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->w:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    const-string v0, "play() - Can\'t play during call."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;->a(I)V

    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->e:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->w:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 338
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    const-string v0, "play() - Can\'t play because audio focus request is failed."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 346
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 348
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->v:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v2, 0x14

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 350
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b:F

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b:F

    invoke-virtual {p1, v0, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 353
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x4

    .line 354
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    .line 355
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->m:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 357
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b(J)V

    .line 358
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->c(Z)V

    .line 359
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/ui/feature/USAFeatures;->B_:Z

    if-eqz p1, :cond_5

    const-string p1, "AUDI_PLAYING"

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->o:Landroid/net/Uri;

    .line 362
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/regional/usa/GateMessageUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 365
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->o:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Landroid/net/Uri;Z)V

    .line 366
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->m:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/os/Bundle;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->k:Landroid/os/Bundle;

    return-object p0
.end method

.method private c(Z)V
    .locals 1

    .line 493
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->I:Z

    if-eqz v0, :cond_0

    .line 494
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/BatteryState;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)F
    .locals 0

    .line 41
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b:F

    return p0
.end method

.method static synthetic e(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->v:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    return p0
.end method

.method static synthetic h(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->t:Z

    return p0
.end method

.method static synthetic i(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/media/session/MediaSession;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->g:Landroid/media/session/MediaSession;

    return-object p0
.end method

.method static synthetic j(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->v()V

    return-void
.end method

.method static synthetic k(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->y()Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->x()V

    return-void
.end method

.method static synthetic s()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    return-object v0
.end method

.method private t()V
    .locals 4

    .line 218
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    const-string v1, "updateMediaSessionMeta()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v1, "android.media.metadata.TITLE"

    .line 220
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string v1, "android.media.metadata.ARTIST"

    .line 221
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string v1, "android.media.metadata.DURATION"

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->m()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 223
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->g:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method private u()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->f:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;)V

    return-void
.end method

.method private v()V
    .locals 1

    const/4 v0, 0x0

    .line 321
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b(Z)V

    return-void
.end method

.method private w()V
    .locals 2

    .line 401
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    const-string v1, "reset()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x0

    .line 403
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    return-void
.end method

.method private x()V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->a()V

    :cond_0
    return-void
.end method

.method private y()Z
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private z()I
    .locals 5

    .line 483
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->r:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 484
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwardRewindSkip;->a:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 485
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwardRewindSkip;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 487
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->v:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->v:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 489
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwardRewindSkip;->a:[I

    aget v0, v1, v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 371
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() - mPlayerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->v:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x5

    .line 378
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->m:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 381
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b(J)V

    .line 382
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->c(Z)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 513
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 514
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b(J)V

    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;Z)V
    .locals 3

    .line 280
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource() - uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", needToPlay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPlayerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->o:Landroid/net/Uri;

    .line 283
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s:Z

    const/4 p2, 0x0

    .line 284
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->q:I

    .line 285
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;->a:Landroid/net/Uri;

    .line 287
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->b:Ljava/lang/String;

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 300
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->w()V

    const/4 v0, 0x2

    .line 301
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 303
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 308
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource() - IllegalStateException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;->a(I)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 305
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource() - IOException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;->a(I)V

    :goto_1
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;)V
    .locals 0

    .line 873
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->m:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->g:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->g:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 584
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->g:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 386
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop() - mPlayerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->v:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x5

    .line 390
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    :cond_0
    const-wide/16 v0, 0x0

    .line 392
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(J)V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x6

    .line 394
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    .line 395
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->m:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 396
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->m:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->c(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 397
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->w()V

    return-void
.end method

.method public c()V
    .locals 6

    .line 407
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->H:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->f:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 412
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    .line 413
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->e:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->w:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->v:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 416
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->x()V

    .line 417
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->g:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j:Landroid/media/session/PlaybackState$Builder;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->g:Landroid/media/session/MediaSession;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j:Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {v2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->g:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 421
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->g:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->i:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->i:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a()V

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_3
    return-void
.end method

.method public d()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 434
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(J)V

    return-void
.end method

.method public e()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 438
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(J)V

    return-void
.end method

.method public f()V
    .locals 5

    .line 442
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->m()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->z()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    move-wide v1, v3

    .line 451
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(J)V

    return-void
.end method

.method public g()V
    .locals 5

    .line 455
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->z()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 457
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(J)V

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(J)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 506
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->t:Z

    return-void
.end method

.method public i()V
    .locals 1

    .line 520
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a()V

    goto :goto_0

    .line 523
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->v()V

    :goto_0
    return-void
.end method

.method public j()Z
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .line 532
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()I
    .locals 1

    .line 536
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->q:I

    return v0
.end method

.method public m()I
    .locals 2

    .line 541
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()J
    .locals 2

    .line 549
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    .line 161
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBufferingUpdate() - precent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->q:I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 151
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    const-string v0, "onCompletion()"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->v:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->x()V

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a()V

    const/4 p1, 0x7

    .line 155
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    .line 156
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->m:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->b()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 167
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError() - what : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const/16 v0, -0x3ed

    if-ne p3, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ne p2, v1, :cond_1

    if-nez p3, :cond_1

    const/4 v0, 0x3

    .line 175
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    invoke-interface {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;->a(I)V

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 137
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    const-string v0, "onPrepared()"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 138
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->p:I

    .line 139
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->m:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->t()V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b(J)V

    .line 143
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s:Z

    if-eqz p1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->v()V

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s:Z

    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 181
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a:Ljava/lang/String;

    const-string v0, "onSeekComplete()"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->m:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->c(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b(J)V

    return-void
.end method

.method public p()Z
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget-wide v1, v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->a:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/privatemode/DefaultPrivateUtils;->a(Landroid/content/Context;J)Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->o:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public r()I
    .locals 1

    .line 575
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    return v0

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0
.end method
