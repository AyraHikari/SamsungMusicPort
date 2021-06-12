.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;
.super Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LifeCycleListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 2

    const-string p1, "SMUSIC-MiniPlayer"

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - onCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyCalled()V
    .locals 3

    .line 190
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    .line 280
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MiniPlayer"

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onDestroyed()"

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->a()V

    :cond_1
    return-void
.end method

.method public onPauseCalled()V
    .locals 3

    .line 178
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    .line 250
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MiniPlayer"

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onPaused()"

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onResumeCalled()V
    .locals 3

    .line 172
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    .line 235
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MiniPlayer"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onResumed()"

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onStartCalled()V
    .locals 3

    .line 166
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    .line 220
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MiniPlayer"

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onStarted()"

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onStopCalled()V
    .locals 3

    .line 184
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    .line 265
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MiniPlayer"

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onStoppeed()"

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
