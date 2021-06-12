.class public final Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private final e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

.field private final f:Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;

.field private g:Z

.field private h:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

.field private i:Z

.field private j:Z

.field private final k:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->g:Z

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->i:Z

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->j:Z

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$1;-><init>(Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->k:Landroid/content/BroadcastReceiver;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->c:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->d:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 57
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 58
    iput-object p3, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->f:Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;

    .line 60
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->isAdaptSoundOn(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->g:Z

    .line 62
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.sec.hearingadjust.checkmusic"

    .line 63
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->c:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private a()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->h:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->h:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->release()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->h:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a(Landroid/content/Context;)V

    .line 115
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->g:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    sget-object v1, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetAdaptSound() mIsAdaptSoundOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " exception msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->d:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getAudioSessionId()I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->h:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 130
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->h:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    .line 131
    sget-object p1, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a:Ljava/lang/String;

    const-string v0, "Adapt sound created"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    sget-object v0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureAdaptSound() mIsAdaptSoundOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " exception msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->i:Z

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->h:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    if-nez v1, :cond_0

    return-void

    .line 150
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->g:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 152
    iget-object v2, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->h:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->activate(Z)V

    goto :goto_0

    .line 155
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->i:Z

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->h:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->activate(Z)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->h:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->activate(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 162
    sget-object v2, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdaptSound() mIsAdaptSoundOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->g:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " exception msg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->g:Z

    .line 167
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdaptSound mWarnAdaptSound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Connected ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZZ)V
    .locals 3

    .line 80
    sget-object v0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdaptSound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " show toast ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a(Landroid/content/Context;)V

    .line 84
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->g:Z

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->h:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->setAdaptSoundOn(Landroid/content/Context;Z)V

    :cond_1
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isHeadsetOrBT()Z

    move-result v0

    .line 95
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a(Z)V

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->b()V

    .line 101
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->setAdaptSoundOn(Landroid/content/Context;Z)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 173
    sget-object v0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warningAdaptSound() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->i:Z

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->f:Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->f:Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;

    const v1, 0x7f0b03a4

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;->a(I)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 0

    if-nez p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->c:Landroid/content/Context;

    .line 233
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isHeadsetOrBT()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 234
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a(Z)V

    if-nez p1, :cond_2

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->b()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.sec.hearingadjust.checkmusic"

    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 211
    iget-object p1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->isAdaptSoundOn(Landroid/content/Context;)Z

    move-result p1

    .line 212
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a(ZZ)V

    if-eqz p1, :cond_5

    .line 216
    iget-object p1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->c:Landroid/content/Context;

    const-string p2, "ADSD"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 219
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 222
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->b(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "android.intent.action.HEADSET_PLUG"

    .line 224
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->b(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "com.samsung.android.app.music.core.state.SET_ADAPT_SOUND"

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "com.samsung.android.app.music.core.state.SET_ADAPT_SOUND"

    .line 226
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 227
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a(ZZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    const/4 p1, 0x1

    .line 187
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->j:Z

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 192
    iget-boolean p1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->j:Z

    if-eqz p1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->a()V

    const/4 p1, 0x0

    .line 194
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->j:Z

    :cond_0
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

.method public release()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->h:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->h:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->release()V

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->h:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    :cond_0
    return-void
.end method
