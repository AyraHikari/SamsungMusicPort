.class public final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$intentReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$intentReceiver$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

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

    .line 407
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$intentReceiver$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$intentReceiver$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 410
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x311a1d6c

    if-eq v0, v1, :cond_3

    const v1, 0x4693ecf1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "com.samsung.android.app.music.core.state.FINISHED_HIDE_NOTIFICATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    const-string p1, "SMUSIC-LockPlayer"

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyguard unlock. so, finished!! action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$intentReceiver$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->a()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method
