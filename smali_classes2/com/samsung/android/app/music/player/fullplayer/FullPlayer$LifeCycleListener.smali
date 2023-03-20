.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;
.super Ljava/lang/Object;
.source "FullPlayer.kt"

# interfaces
.implements Landroidx/lifecycle/r;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LifeCycleListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreated()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_CREATE:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    :cond_0
    const-string v1, "FullPlayer"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreated"

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->M(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final onDestroyed()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_DESTROY:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    :cond_0
    const-string v1, "FullPlayer"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroyed"

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->G(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->P(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;->F0(Landroidx/viewpager2/widget/ViewPager2$i;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->M(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final onPaused()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_PAUSE:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    :cond_0
    const-string v1, "FullPlayer"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPaused"

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onResumed()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_RESUME:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    :cond_0
    const-string v1, "FullPlayer"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResumed"

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/a;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/a;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v1

    const-string v2, "full_player"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/a;->g(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public final onStarted()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_START:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    :cond_0
    const-string v1, "FullPlayer"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStarted"

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    .line 6
    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener$a;

    invoke-direct {v3, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener$a;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/musiclibrary/core/service/v3/a;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->X(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/j$a;Lkotlin/jvm/functions/a;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->N(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/n;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter;->i(Lcom/samsung/android/app/music/player/fullplayer/n;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->S(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/viewmodel/d;->I()V

    return-void
.end method

.method public final onStopped()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_STOP:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    :cond_0
    const-string v1, "FullPlayer"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStopped"

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->N(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/n;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter;->p(Lcom/samsung/android/app/music/player/fullplayer/n;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->b(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/j$a;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/v;->removeOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/v$a;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->J(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/h;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/b;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->J(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/h;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "backPressedListener"

    invoke-static {v1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_3
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/b;->removeOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/h;)V

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->S(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/viewmodel/d;->d0()V

    return-void
.end method
