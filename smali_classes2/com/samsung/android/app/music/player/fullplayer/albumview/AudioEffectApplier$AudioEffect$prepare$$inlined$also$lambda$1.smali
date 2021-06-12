.class final Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$prepare$$inlined$also$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$prepare$$inlined$also$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 2

    const-string v0, "AudioEffectApplier"

    const-string v1, "SoundAlive.OnErrorListener onError() is called"

    .line 220
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$prepare$$inlined$also$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->e()V

    return-void
.end method
