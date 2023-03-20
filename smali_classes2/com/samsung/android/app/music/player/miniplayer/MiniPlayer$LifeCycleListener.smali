.class public final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;
.super Ljava/lang/Object;
.source "MiniPlayer.kt"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/c$a;
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LifeCycleListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreated()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_CREATE:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->o(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/ui/debug/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->a()Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->b()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onCreated"

    const/4 v3, 0x0

    .line 5
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final onDestroyed()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_DESTROY:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->o(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/ui/debug/b;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->b()I

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onDestroyed"

    const/4 v3, 0x0

    .line 4
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->u(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->release()V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->n(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/player/miniplayer/f;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/f;->b()V

    :goto_0
    return-void
.end method

.method public final onPaused()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_PAUSE:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->o(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/ui/debug/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->a()Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->b()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onPaused"

    const/4 v3, 0x0

    .line 5
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final onResumed()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_RESUME:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->o(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/ui/debug/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->a()Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->b()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onResumed"

    const/4 v3, 0x0

    .line 5
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final onStarted()V
    .locals 5
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_START:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->o(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/ui/debug/b;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->b()I

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onStarted"

    const/4 v3, 0x0

    .line 4
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    .line 6
    invoke-static {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->i(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context.applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->q(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$a;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener$a;

    invoke-direct {v4, v1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener$a;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;Lcom/samsung/android/app/musiclibrary/core/service/v3/a;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->X(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/j$a;Lkotlin/jvm/functions/a;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->n(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/player/miniplayer/f;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/f;->c()V

    :goto_0
    return-void
.end method

.method public final onStopped()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_STOP:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->o(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/ui/debug/b;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->b()I

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onStopped"

    const/4 v3, 0x0

    .line 4
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->q(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->b(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/j$a;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->n(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/player/miniplayer/f;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/f;->d()V

    :goto_0
    return-void
.end method
