.class final Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioEffect"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;

.field private b:D

.field private c:Z

.field private final d:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$cancelRunnable$1;

.field private final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$cancelRunnable$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$cancelRunnable$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->d:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$cancelRunnable$1;

    .line 205
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->e:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;DZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 253
    iget-boolean p3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->c:Z

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a(DZ)V

    return-void
.end method


# virtual methods
.method public final a(DZ)V
    .locals 6

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, p1

    .line 254
    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt;->a(DDD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->b:D

    .line 255
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->b:D

    invoke-virtual {p1, p3, v0, v1}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->set3DEffectPosition(ZD)V

    .line 264
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "SMUSIC-AudioEffectApplier"

    .line 259
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEffect soundAliveCompat:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " fraction:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->b:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->d:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$cancelRunnable$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->d:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$cancelRunnable$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 196
    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->b:D

    :goto_0
    invoke-virtual {p0, v2, v3, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a(DZ)V

    .line 194
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->c:Z

    .line 198
    iput-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->b:D

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->c:Z

    return v0
.end method

.method public final b()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 216
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;

    const/4 v2, 0x0

    .line 219
    new-instance v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$prepare$$inlined$also$lambda$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$prepare$$inlined$also$lambda$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;)V

    check-cast v3, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;

    .line 216
    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;-><init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;

    :goto_0
    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a(Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a(Z)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->d:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$cancelRunnable$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 245
    check-cast v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;

    return-void
.end method
