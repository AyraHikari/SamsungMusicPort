.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundController;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Landroid/database/ContentObserver;

.field private c:Z

.field private d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final e:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

.field private final f:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

.field private g:Z

.field private h:Z

.field private final i:Z

.field private final j:Landroid/app/Activity;

.field private final k:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->j:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    .line 763
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "activity.contentResolver"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->a:Landroid/content/ContentResolver;

    .line 765
    new-instance p1, Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1;

    iget-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;Landroid/os/Handler;)V

    check-cast p1, Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->b:Landroid/database/ContentObserver;

    const/4 p1, 0x1

    .line 776
    iput-boolean p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->c:Z

    .line 778
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->EmptyMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    const-string p2, "MediaChangeObservable.EmptyMediaChangeObservable"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 820
    new-instance p1, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    invoke-direct {p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->e:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    .line 822
    new-instance p1, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    iget-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->j:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->e:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->f:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    .line 824
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->j:Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->j(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->h:Z

    .line 825
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->i:Z

    .line 828
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    iget-boolean p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->h:Z

    if-eqz p2, :cond_0

    .line 829
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 831
    :cond_0
    new-instance p2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->j:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/app/music/background/BeyondBackgroundController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$1;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    .line 828
    :goto_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setCurrentImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Landroid/content/ContentResolver;
    .locals 0

    .line 759
    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->a:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/BeyondBackgroundController;Z)V
    .locals 0

    .line 759
    iput-boolean p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->c:Z

    return-void
.end method

.method private final a()Z
    .locals 3

    .line 885
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->a:Landroid/content/ContentResolver;

    const-string v1, "reduce_animations"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Landroid/database/ContentObserver;
    .locals 0

    .line 759
    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->b:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Z
    .locals 0

    .line 759
    iget-boolean p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->c:Z

    return p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Z
    .locals 0

    .line 759
    invoke-direct {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->a()Z

    move-result p0

    return p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;
    .locals 0

    .line 759
    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->f:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;
    .locals 0

    .line 759
    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    return-object p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Z
    .locals 0

    .line 759
    iget-boolean p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->i:Z

    return p0
.end method


# virtual methods
.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public final onDestroyCalled()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 815
    iget-boolean v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->h:Z

    if-nez v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->f:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->b()V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 863
    iget-boolean v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 864
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v3

    .line 865
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v4

    .line 866
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v1

    .line 867
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->j:Landroid/app/Activity;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    const v6, 0x7f100087

    new-instance p1, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onMetadataChanged$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onMetadataChanged$1;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)V

    move-object v7, p1

    check-cast v7, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 877
    iget-boolean v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 878
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->g:Z

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 879
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->g:Z

    .line 880
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->f:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->g:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->b(Z)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public final onStartCalled()V
    .locals 7
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 782
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 783
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->f:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->c:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a(Z)V

    :goto_0
    return-void
.end method

.method public final onStopCalled()V
    .locals 7
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 801
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 802
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStopCalled$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStopCalled$1;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->f:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a(Z)V

    :goto_0
    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method
