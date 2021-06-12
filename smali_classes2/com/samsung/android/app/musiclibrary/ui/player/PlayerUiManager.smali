.class public final Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;,
        Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private d:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;

.field private final f:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "lifeCyclePublisher"

    const-string v4, "getLifeCyclePublisher()Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->b:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$lifeCyclePublisher$2;

    invoke-direct {v1, p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$lifeCyclePublisher$2;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->c:Lkotlin/Lazy;

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->d:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->f:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    .line 35
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 36
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    invoke-direct {v0, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->f()Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;

    move-result-object p1

    move-object p3, v0

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V

    .line 36
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->d:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    if-eqz p2, :cond_1

    .line 41
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->f()Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;

    move-result-object p2

    move-object p3, p1

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->e:Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v4/app/FragmentActivity;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, "PlayerUi"

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;-><init>(Landroid/support/v4/app/FragmentActivity;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 58
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Z)V

    return-void
.end method

.method private final f()Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->d:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V
    .locals 3

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->f()Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->b(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V

    .line 75
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->d:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    goto :goto_0

    .line 77
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->b:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activeMediaChangePublisher is null. controller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;Ljava/lang/String;)V

    .line 80
    :cond_1
    :goto_0
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->e:Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;)V

    goto :goto_1

    .line 82
    :cond_2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->b:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statePublisher is null. controller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Z)V
    .locals 2

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->e:Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;Z)V

    goto :goto_0

    .line 61
    :cond_0
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->b:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statePublisher is null. controller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;Ljava/lang/String;)V

    .line 64
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->f()Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V

    .line 66
    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    if-eqz p2, :cond_3

    .line 67
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->d:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    goto :goto_1

    .line 68
    :cond_2
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->b:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activeMediaChangePublisher is null. controller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final b()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->d:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Z)V
    .locals 2

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->e:Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->b(Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;Z)V

    goto :goto_0

    .line 89
    :cond_0
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->b:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stateController is null. controller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->f:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    return-object v0
.end method

.method public final d()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->f()Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a()V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->f()Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->b()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 54
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->b:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$release$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$release$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->f()Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->release()V

    return-void
.end method
