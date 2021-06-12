.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;
.super Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;,
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;,
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$State;,
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;
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


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

.field private static final DEBUG:Z = false

.field private static final FEATURE_NOTIFY_ONLY_RESUME:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-Ui-MediaCenter"

.field private static final TAG:Ljava/lang/String; = "Ui-MediaCenter"

.field private static final TSP_TAG:Ljava/lang/String; = "Ui-MediaCenterTsp"


# instance fields
.field private activeQueueType:I

.field private final backgroundChangeListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$backgroundChangeListener$1;

.field private final callbackCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;

.field private final context:Landroid/content/Context;

.field private final dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

.field private isServiceConnected:Z

.field private needToStartService:Z

.field private final observers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private registeredCallbackBinder:Landroid/os/IBinder;

.field private final savedNotifier$delegate:Lkotlin/Lazy;

.field private final serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private serviceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

.field private state:I

.field private subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

.field private final uiHandler$delegate:Lkotlin/Lazy;

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
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "uiHandler"

    const-string v4, "getUiHandler()Landroid/os/Handler;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "savedNotifier"

    const-string v4, "getSavedNotifier()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 2
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

    const-string v0, "serviceClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;-><init>()V

    .line 53
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    .line 54
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->callbackCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$uiHandler$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$uiHandler$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->uiHandler$delegate:Lkotlin/Lazy;

    .line 65
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$savedNotifier$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$savedNotifier$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->savedNotifier$delegate:Lkotlin/Lazy;

    .line 110
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$backgroundChangeListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$backgroundChangeListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->backgroundChangeListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$backgroundChangeListener$1;

    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 132
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->serviceClass:Ljava/lang/Class;

    .line 133
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "a.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getDEBUG$cp()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->DEBUG:Z

    return v0
.end method

.method public static final synthetic access$getSavedNotifier$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getSavedNotifier()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getState$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->state:I

    return p0
.end method

.method public static final synthetic access$isServiceConnected$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->isServiceConnected:Z

    return p0
.end method

.method public static final synthetic access$notifyExtraChanged(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$setServiceConnected$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->isServiceConnected:Z

    return-void
.end method

.method public static final synthetic access$setState$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->state:I

    return-void
.end method

.method private final getActiveQueueType(Landroid/os/Bundle;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 362
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private final getActiveQueueType(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 368
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private final getMusicExtrasFromService()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 4

    .line 94
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    .line 95
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "Ui-MediaCenter"

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "META TSP getMusicExtrasFromService  MusicExtras: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ServiceCoreUtils.getMusi\u2026: $it\")\n                }"

    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tsp({ \"getMusicExtrasFro\u2026          }\n            }"

    .line 807
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getMusicMetadataFromService()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 4

    .line 76
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    .line 77
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v1, "Ui-MediaCenter"

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "META TSP getMusicMetadata  MusicMetadata object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ServiceCoreUtils.getMusi\u2026t $it\")\n                }"

    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tsp({ \"getMusicMetadataF\u2026          }\n            }"

    .line 731
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getMusicPlaybackStateFromService()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 4

    .line 85
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    .line 86
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    const-string v1, "Ui-MediaCenter"

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "META TSP getMusicPlaybackState  MusicPlaybackState object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ServiceCoreUtils.getMusi\u2026t $it\")\n                }"

    .line 86
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tsp({ \"getMusicPlaybackS\u2026          }\n            }"

    .line 769
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getQueueFromService()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    .line 104
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicQueue()Ljava/util/List;

    move-result-object v0

    const-string v1, "Ui-MediaCenter"

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "META TSP getQueueFromService  QueueItem object size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ServiceCoreUtils.getMusi\u2026size}\")\n                }"

    .line 104
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tsp({ \"getQueueFromServi\u2026          }\n            }"

    .line 845
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getSavedNotifier()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->savedNotifier$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;

    return-object v0
.end method

.method private final getUiHandler()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->uiHandler$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private final isDisabledNotify()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private final notifyActiveQueueType(I)V
    .locals 2

    .line 355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 356
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 357
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final notifyCurrentData()V
    .locals 2

    .line 224
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->wasServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCurrentBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->registeredCallbackBinder:Landroid/os/IBinder;

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->isServiceConnected:Z

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->registerCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyMetaChangedFromDataCenter()V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 231
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->registerCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyMetaChangedFromService()V

    .line 233
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->requestQueue()V

    .line 235
    :cond_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method private final notifyExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 420
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->isDisabledNotify()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SMUSIC-Ui-MediaCenter"

    const-string p2, "notifyExtraChanged do not update in Activity pause state."

    .line 421
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 424
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Ui-MediaCenter"

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyExtraChanged Action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    const/4 v1, -0x1

    .line 427
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_3

    goto :goto_1

    .line 431
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->notifyExtraChanged$musicLibrary_release(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    goto :goto_2

    .line 432
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;->access$notifyExtraChanged(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_3

    .line 434
    :cond_6
    :goto_2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;->access$notifyExtraChanged(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    .line 435
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->notifyExtraChanged$musicLibrary_release(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private final notifyMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3

    .line 373
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->notifyMetaChanged$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    :cond_0
    return-void

    .line 378
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->isDisabledNotify()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "SMUSIC-Ui-MediaCenter"

    const-string v0, "notifyMetaChanged do not update in Activity pause state."

    .line 379
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 382
    :cond_2
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Ui-MediaCenter"

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMetaChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_3
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;->access$notifyMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/util/List;)V

    return-void
.end method

.method private final notifyMetaChangedFromDataCenter()V
    .locals 5

    .line 441
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "dataCenter.musicExtras"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getActiveQueueType(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->setActiveQueueType(I)V

    .line 445
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->activeQueueType:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyActiveQueueType(I)V

    .line 447
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 448
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    const-string v2, "it"

    .line 449
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    const-wide/16 v3, 0x0

    .line 448
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->changeAttribute(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 454
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 456
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    const-string v1, "dataCenter.playbackState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyPlayStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method private final notifyMetaChangedFromService()V
    .locals 6

    .line 460
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    .line 462
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getMusicExtrasFromService()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setMusicExtras(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)V

    .line 463
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getActiveQueueType(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->setActiveQueueType(I)V

    .line 464
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->activeQueueType:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyActiveQueueType(I)V

    .line 466
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getMusicMetadataFromService()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 467
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    const-string v3, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->changeAttribute(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 466
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 472
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getMusicPlaybackStateFromService()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 474
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    const-string v2, "metadata"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 475
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    const-string v1, "playbackState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyPlayStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method private final notifyPlayStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    .line 389
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->activeQueueType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->notifyPlayStateChanged$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    :cond_0
    return-void

    .line 393
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->isDisabledNotify()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "SMUSIC-Ui-MediaCenter"

    const-string v0, "notifyPlayStateChanged do not update in Activity pause state."

    .line 394
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 397
    :cond_2
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Ui-MediaCenter"

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPlayStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_3
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;->access$notifyPlayStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Ljava/util/List;)V

    return-void
.end method

.method private final notifyQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
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

    if-eqz p2, :cond_0

    const-string v0, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    .line 404
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    .line 405
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->notifyQueueChanged$musicLibrary_release(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_2
    return-void

    .line 409
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->isDisabledNotify()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "SMUSIC-Ui-MediaCenter"

    const-string p2, "notifyQueueChanged do not update in Activity pause state."

    .line 410
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 413
    :cond_4
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "Ui-MediaCenter"

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyQueueChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_6
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;->access$notifyQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method private final registerCallback()Z
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->callbackCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "callbackCenter.registerO\u2026ctivityMediaChangeCenter)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final setActiveQueueType(I)V
    .locals 2

    .line 339
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->activeQueueType:I

    if-ne v0, p1, :cond_0

    return-void

    .line 342
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->activeQueueType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 344
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 346
    :cond_1
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->activeQueueType:I

    return-void
.end method

.method private static synthetic state$annotations()V
    .locals 0

    return-void
.end method

.method private final unregisterCallback()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->callbackCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)V

    const/4 v0, 0x0

    .line 485
    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->registeredCallbackBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v1, "dataCenter.metadata"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "dataCenter.musicExtras"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMusicQueue()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicQueue()Ljava/util/List;

    move-result-object v0

    const-string v1, "dataCenter.musicQueue"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    const-string v1, "dataCenter.playbackState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "PlayerService"

    .line 179
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    if-eqz p2, :cond_0

    .line 180
    move-object v0, p0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->setServiceConnection(Landroid/content/ServiceConnection;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->serviceClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->setServiceClass(Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$Companion;

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->serviceClass:Ljava/lang/Class;

    .line 184
    move-object v1, p0

    check-cast v1, Landroid/content/ServiceConnection;

    .line 182
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$Companion;->newInstance(Ljava/lang/Class;Landroid/content/ServiceConnection;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    move-result-object p2

    .line 186
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    check-cast p2, Landroid/support/v4/app/Fragment;

    const-string v0, "PlayerService"

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitNow()V

    .line 202
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.samsung.android.app.music.core.state.PLAYED_INFO_CHANGED"

    .line 203
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    .line 204
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->backgroundChangeListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$backgroundChangeListener$1;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->backgroundChangeListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$backgroundChangeListener$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :catch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 254
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->state:I

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->state:I

    const/4 p1, 0x4

    .line 242
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->state:I

    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 210
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->state:I

    .line 211
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->needToStartService:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startPlayerService()V

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->needToStartService:Z

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyCurrentData()V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->activate()V

    .line 217
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->wasServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getUiHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getSavedNotifier()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 259
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->state:I

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->deactivate()V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->unregisterCallback()V

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 332
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getActiveQueueType(Landroid/os/Bundle;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->setActiveQueueType(I)V

    .line 335
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyPlayStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

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

    .line 328
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "SMUSIC-Ui-MediaCenter"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected isServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->isServiceConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isStarted() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->state:I

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;->access$isStarted(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->isServiceConnected:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->registeredCallbackBinder:Landroid/os/IBinder;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->isServiceConnected:Z

    .line 145
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->isServiceConnected:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->state:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;->access$isStarted(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 147
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->registerCallback()Z

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->notifyMetaChangedFromService()V

    .line 149
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit v0

    .line 150
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->requestQueue()V

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->isServiceConnected:Z

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 153
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->registeredCallbackBinder:Landroid/os/IBinder;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 146
    monitor-exit v0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "SMUSIC-Ui-MediaCenter"

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected isStarted() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->state:I

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;->access$isStarted(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 159
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->isServiceConnected:Z

    const/4 p1, 0x0

    .line 160
    check-cast p1, Landroid/os/IBinder;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->registeredCallbackBinder:Landroid/os/IBinder;

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->weakActivity:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_2

    const-string v0, "activity"

    .line 163
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/app/ActivityManager;

    .line 164
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/app/Activity;->stopLockTask()V

    :cond_0
    const/4 v0, 0x1

    .line 168
    invoke-virtual {p1, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 169
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 163
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "Ui-MediaCenter"

    const-string v0, "registerMediaChangeObserver but it was already registered"

    .line 282
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
