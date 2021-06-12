.class public final Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/music/player/fullplayer/M2TvControllable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$Companion;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/support/v4/app/FragmentManager;

.field private final e:Lkotlin/Lazy;

.field private f:Lkotlinx/coroutines/Job;

.field private g:Z

.field private h:J

.field private final i:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onTvStateChangeListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "m2TvConnectionManager"

    const-string v4, "getM2TvConnectionManager()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->b:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->c:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->d:Landroid/support/v4/app/FragmentManager;

    .line 32
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$m2TvConnectionManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$m2TvConnectionManager$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->e:Lkotlin/Lazy;

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->h:J

    .line 88
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onTvStateChangeListener$1;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onTvStateChangeListener$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->i:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onTvStateChangeListener$1;

    return-void
.end method

.method private final a()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->g:Z

    return-void
.end method

.method private final a(J)Z
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->c:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/util/MediaDbUtils;->b(Landroid/content/Context;[J)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->g:Z

    return p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;J)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->a(J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->h:J

    return-wide v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->a()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)Landroid/support/v4/app/FragmentManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->d:Landroid/support/v4/app/FragmentManager;

    return-object p0
.end method


# virtual methods
.method public e()Z
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->a()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isDeviceAvailable()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 3

    const-string v0, "UiPlayer"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "M2TvConnectionController requestDeviceList() isDlnaSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->a()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->g:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->requestDeviceList(Z)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->a()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->disconnectDevice()V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 6

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->h:J

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->h:J

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->f:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->k()V

    :cond_1
    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->g:Z

    .line 62
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onMetadataChanged$1;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onMetadataChanged$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->f:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onStart()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->a()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->i:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onTvStateChangeListener$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->addOnTvStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;)V

    return-void
.end method

.method public final onStop()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->f:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->a()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->i:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onTvStateChangeListener$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->removeOnTvStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->a()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->reset()V

    return-void
.end method
