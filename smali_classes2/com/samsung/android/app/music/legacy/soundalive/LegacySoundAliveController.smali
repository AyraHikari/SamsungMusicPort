.class public final Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$FxSoundAliveController;,
        Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;,
        Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$ISoundAliveController;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private final c:Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;

.field private final d:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$ISoundAliveController;

.field private final e:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

.field private final f:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

.field private final g:Landroid/content/BroadcastReceiver;

.field private h:[I

.field private i:[I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$1;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->f:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 80
    new-instance v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$2;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->g:Landroid/content/BroadcastReceiver;

    const/16 v0, -0x64

    .line 94
    iput v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->j:I

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 99
    invoke-static {p1}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->c:Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;

    .line 100
    iget-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->f:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->addOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V

    .line 101
    iget-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->g:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.samsungsound.ACTION_SOUNDALIVE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->isSoundAliveFX()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$FxSoundAliveController;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$FxSoundAliveController;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$1;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;

    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->d:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$ISoundAliveController;

    .line 105
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->e:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 172
    iput p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->j:I

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCompat;->getMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 175
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getGenre()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 178
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(Landroid/media/MediaPlayer;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(Landroid/media/MediaPlayer;I)V

    .line 182
    :goto_0
    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->o:I

    if-ne p1, v0, :cond_1

    .line 183
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->h:[I

    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->i:[I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a([I[I)V

    :cond_1
    return-void
.end method

.method private a(Landroid/media/MediaPlayer;I)V
    .locals 3

    if-gez p2, :cond_0

    const-string p1, "LegacySoundAlive"

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call setSoundAlivePreset() with soundEffect < 0 value, is something wrong in your codes? Because LegacySoundAlive can\'t handle \'-1\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "LegacySoundAlive"

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSoundAlivePreset() - preset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->d:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$ISoundAliveController;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$ISoundAliveController;->a(Landroid/media/MediaPlayer;I)V

    return-void
.end method

.method private a(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .locals 1

    .line 332
    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->a:I

    .line 333
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->getAutoGenre(Ljava/lang/String;I)I

    move-result p2

    .line 332
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(Landroid/media/MediaPlayer;I)V

    return-void
.end method

.method private a(Landroid/media/MediaPlayer;[I)V
    .locals 3

    const/4 v0, 0x5

    if-nez p2, :cond_0

    .line 300
    new-array p2, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 302
    aput v1, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    :cond_0
    array-length v1, p2

    if-ge v1, v0, :cond_1

    const-string p1, "LegacySoundAlive"

    const-string p2, "call setSoundAliveUserExtInternal(), ext length is under 5 please check your userEq value again"

    .line 306
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->d:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$ISoundAliveController;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$ISoundAliveController;->b(Landroid/media/MediaPlayer;[I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->c:Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;

    const-string v1, "user_eq"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a([I[I)V
    .locals 1

    .line 189
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->h:[I

    .line 190
    iput-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->i:[I

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPreparing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCompat;->getMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 193
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b(Landroid/media/MediaPlayer;[I)V

    .line 194
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(Landroid/media/MediaPlayer;[I)V

    :cond_1
    return-void
.end method

.method private a(IZ)Z
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->b(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "LegacySoundAlive"

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " canChangeLegacySoundAlivePreset() preset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " enableToast : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " message : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    .line 258
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->e:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->showToast(I)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b(I)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->c:Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;

    const-string v1, "sound_alive"

    .line 272
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Landroid/media/MediaPlayer;[I)V
    .locals 3

    const/4 v0, 0x7

    if-nez p2, :cond_0

    .line 341
    new-array p2, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/16 v2, 0xa

    .line 343
    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    :cond_0
    array-length v1, p2

    if-ge v1, v0, :cond_1

    const-string p1, "LegacySoundAlive"

    const-string p2, "call setSoundAliveUserEqInternal(), eq length is under 7 please check your userEq value again"

    .line 347
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->d:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$ISoundAliveController;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$ISoundAliveController;->a(Landroid/media/MediaPlayer;[I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->c:Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;

    const-string v1, "user_ext"

    .line 292
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b([I[I)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 231
    array-length v1, p1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 234
    aget v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "|"

    .line 235
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_3

    .line 239
    array-length p1, p2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v0, v1, :cond_2

    .line 243
    aget v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    .line 244
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private d()V
    .locals 2

    .line 159
    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->a:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(IZZ)V

    return-void
.end method

.method private e()[I
    .locals 6

    const/4 v0, 0x7

    .line 199
    new-array v1, v0, [I

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->h()Ljava/lang/String;

    move-result-object v2

    .line 201
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 204
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v4

    goto :goto_1

    .line 208
    :cond_0
    aput v2, v1, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private f()[I
    .locals 6

    const/4 v0, 0x5

    .line 215
    new-array v1, v0, [I

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->i()Ljava/lang/String;

    move-result-object v2

    .line 217
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 220
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v4

    goto :goto_1

    .line 224
    :cond_0
    aput v2, v1, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private g()I
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->c:Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;

    const-string v1, "sound_alive"

    sget v2, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->a:I

    .line 266
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private h()Ljava/lang/String;
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->c:Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;

    const-string v1, "user_eq"

    const-string v2, "0|0|0|0|0|0|0|"

    .line 277
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->c:Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;

    const-string v1, "user_ext"

    const-string v2, "0|0|0|0|0|"

    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->d:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$ISoundAliveController;

    invoke-interface {v0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$ISoundAliveController;->a()V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->f:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->removeOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public a(IZZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->g()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 119
    :cond_0
    sget p2, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->o:I

    if-ne p1, p2, :cond_1

    const/4 p2, 0x0

    .line 120
    invoke-virtual {p0, p2, p2, p3}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a([I[IZ)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(IZ)Z

    move-result p2

    if-nez p2, :cond_2

    .line 123
    sget p1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->a:I

    .line 125
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(I)V

    .line 127
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b(I)V

    return-void
.end method

.method public a([I[IZ)V
    .locals 1

    .line 131
    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->o:I

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(IZ)Z

    move-result p3

    if-eqz p3, :cond_2

    if-nez p1, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->e()[I

    move-result-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->f()[I

    move-result-object p2

    .line 138
    :cond_1
    sget p3, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->o:I

    iput p3, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->j:I

    .line 139
    iget-object p3, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCompat;->getMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object p3

    .line 141
    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->o:I

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(Landroid/media/MediaPlayer;I)V

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a([I[I)V

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b([I[I)V

    goto :goto_0

    .line 145
    :cond_2
    sget p1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->a:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(I)V

    .line 146
    sget p1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->a:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b(I)V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 2

    .line 152
    iget v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->j:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->c()V

    .line 155
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->j:I

    return v0
.end method

.method public c()V
    .locals 3

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->g()I

    move-result v0

    .line 164
    sget v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->o:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->e()[I

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->f()[I

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a([I[IZ)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0, v0, v2, v2}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(IZZ)V

    :goto_0
    return-void
.end method
