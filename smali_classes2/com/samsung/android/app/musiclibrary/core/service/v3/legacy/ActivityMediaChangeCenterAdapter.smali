.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;
.super Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Service;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$callback$1;

.field private final context:Landroid/content/Context;

.field private final legacyActiveMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

.field private final serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private state:I

.field private token:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;

.field private final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceClazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->state:I

    .line 41
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->legacyActiveMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    .line 43
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$callback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$callback$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->callback:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$callback$1;

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 54
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->serviceClass:Ljava/lang/Class;

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "a.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getLegacyActiveMediaCenter$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;)Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->legacyActiveMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    return-object p0
.end method

.method private static synthetic state$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->legacyActiveMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v1, "legacyActiveMediaCenter.metadata"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->legacyActiveMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    return-object v0
.end method

.method public getMusicQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->legacyActiveMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->getMusicQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->legacyActiveMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->legacyActiveMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->serviceClass:Ljava/lang/Class;

    move-object v1, p0

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->bind(Landroid/content/Context;Ljava/lang/Class;Landroid/content/ServiceConnection;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->token:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;

    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->token:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->unbind(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;)V

    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 63
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->state:I

    .line 64
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getPlayers()Ljava/util/List;

    move-result-object p1

    .line 65
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->legacyActiveMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->changePlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    .line 68
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->callback:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$callback$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->registerOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;)Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 72
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->state:I

    .line 73
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->callback:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$callback$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->unregisterOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;)Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->legacyActiveMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void
.end method

.method public unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->legacyActiveMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void
.end method
