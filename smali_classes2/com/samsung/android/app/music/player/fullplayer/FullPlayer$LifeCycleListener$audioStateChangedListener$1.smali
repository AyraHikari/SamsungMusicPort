.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener$audioStateChangedListener$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 761
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener$audioStateChangedListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 764
    sget-object p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 968
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "SMUSIC-FullPlayer"

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioStateChangedListener - action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :goto_0
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener$audioStateChangedListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->k(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/volume/VolumeController;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->b()V

    goto :goto_1

    :cond_1
    const-string p2, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    .line 767
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 768
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener$audioStateChangedListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->k(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/volume/VolumeController;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->b()V

    .line 769
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener$audioStateChangedListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->l(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a()V

    :cond_3
    :goto_1
    return-void
.end method
