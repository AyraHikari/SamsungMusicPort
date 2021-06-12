.class final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LifeCycleListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

.field private final b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener$audioStateChangedListener$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 760
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener$audioStateChangedListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener$audioStateChangedListener$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener$audioStateChangedListener$1;

    return-void
.end method


# virtual methods
.method public final onCreated()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 777
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    const-string v1, "FullPlayer onCreated"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    check-cast v1, Lcom/samsung/android/app/music/player/PlayerSceneStateListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V

    :cond_0
    return-void
.end method

.method public final onDestroyed()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 830
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    const-string v1, "FullPlayer onDestroyed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    check-cast v1, Lcom/samsung/android/app/music/player/PlayerSceneStateListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;->removePlayerSceneStateListener(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V

    :cond_0
    return-void
.end method

.method public final onPaused()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 804
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    const-string v1, "FullPlayer onPaused"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;Ljava/lang/String;)V

    return-void
.end method

.method public final onResumed()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 797
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    const-string v1, "FullPlayer onResumed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->g(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->m()Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "full_player"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public final onStarted()V
    .locals 4
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 783
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    const-string v1, "FullPlayer onStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    .line 785
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->d(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->e(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->f(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Z)V

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->m()Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener$audioStateChangedListener$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 790
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    .line 791
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onStopped()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 809
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    const-string v1, "FullPlayer onStopped"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;Ljava/lang/String;)V

    .line 811
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->m()Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener$audioStateChangedListener$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :catch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->e(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->f(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->removeOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->e(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->f(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->removeOnMultiWindowSizeChangedListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;)V

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Z)V

    .line 820
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->m()Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->removeOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 821
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->i(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 822
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->h(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    move-result-object v0

    .line 823
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->j(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;->removeOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    :cond_3
    return-void

    .line 820
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.OnKeyObservable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
