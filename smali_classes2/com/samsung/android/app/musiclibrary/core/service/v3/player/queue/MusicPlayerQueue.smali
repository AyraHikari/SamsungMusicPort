.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final ABNORMAL_POSITION:I = -0x63

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$Companion;

.field private static final DEBUG:Z = false

.field private static final DEBUG_INTERNAL:Z = false

.field private static final MAX_QUEUE:I = 0x2710


# instance fields
.field private composeJob:Lkotlinx/coroutines/Job;

.field private final context:Landroid/content/Context;

.field private final currentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

.field private currentPosition:I

.field private modifyScope:Lkotlinx/coroutines/CoroutineScope;

.field private final options:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

.field private playList:[J

.field private final playerSettingManager$delegate:Lkotlin/Lazy;

.field private queueBuildJob:Lkotlinx/coroutines/Job;

.field private final queueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;

.field private final queueCoroutineContext$delegate:Lkotlin/Lazy;

.field private queueItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

.field private queueOptions:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

.field private final queueSingleThreadDispatcher$delegate:Lkotlin/Lazy;

.field private final rootJob$delegate:Lkotlin/Lazy;

.field private selectJob:Lkotlinx/coroutines/Job;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerSettingManager"

    const-string v4, "getPlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "rootJob"

    const-string v4, "getRootJob()Lkotlinx/coroutines/Job;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "queueSingleThreadDispatcher"

    const-string v4, "getQueueSingleThreadDispatcher()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "queueCoroutineContext"

    const-string v4, "getQueueCoroutineContext()Lkotlin/coroutines/CoroutineContext;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->tag:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->options:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    .line 60
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyLongArray()[J

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    const/16 p1, -0x63

    .line 61
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    .line 63
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    .line 64
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$playerSettingManager$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$playerSettingManager$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playerSettingManager$delegate:Lkotlin/Lazy;

    .line 69
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->context:Landroid/content/Context;

    .line 71
    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;

    .line 72
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;

    move-object v3, p3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    .line 74
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;

    .line 75
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->tag:Ljava/lang/String;

    move-object v0, p1

    move-object v4, p2

    .line 69
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    .line 356
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueItems:Ljava/util/List;

    .line 358
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptions:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    .line 502
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$rootJob$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$rootJob$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->rootJob$delegate:Lkotlin/Lazy;

    .line 503
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$queueSingleThreadDispatcher$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$queueSingleThreadDispatcher$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueSingleThreadDispatcher$delegate:Lkotlin/Lazy;

    .line 504
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$queueCoroutineContext$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$queueCoroutineContext$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueCoroutineContext$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 53
    move-object p2, v0

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    :cond_0
    move-object v3, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 54
    move-object p3, v0

    check-cast p3, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;

    :cond_1
    move-object v4, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const-string p4, ""

    :cond_2
    move-object v5, p4

    move-object v1, p0

    move-object v2, p1

    move-object v6, p5

    .line 55
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;)V

    return-void
.end method

.method public static final synthetic access$buildExtraMeta(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)Landroid/media/MediaMetadata;
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->buildExtraMeta(Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)Landroid/media/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$buildExtraMetaOthers(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Landroid/database/Cursor;)Landroid/media/MediaMetadata;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->buildExtraMetaOthers(Landroid/database/Cursor;)Landroid/media/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertQueueItemId(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;JJ)J
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->convertQueueItemId(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->composeJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getCurrentPlayingItem$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    return-object p0
.end method

.method public static final synthetic access$getCurrentPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    return p0
.end method

.method public static final synthetic access$getDEBUG_INTERNAL$cp()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->DEBUG_INTERNAL:Z

    return v0
.end method

.method public static final synthetic access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->modifyScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getOptions$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->options:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    return-object p0
.end method

.method public static final synthetic access$getPlayList$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)[J
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    return-object p0
.end method

.method public static final synthetic access$getPlayerSettingManager$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getPlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getQueueCoroutineContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getQueueCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getQueueOptionBuilder$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    return-object p0
.end method

.method public static final synthetic access$getQueueSingleThreadDispatcher$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getQueueSingleThreadDispatcher()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRootJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getRootJob()Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelectJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->selectJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$getStringOrNull(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$isExistItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;I)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->isExistItem(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$notifyQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[J)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->notifyQueueChanged([J)V

    return-void
.end method

.method public static final synthetic access$notifyQueueComposed(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->notifyQueueComposed(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;)V

    return-void
.end method

.method public static final synthetic access$openInternalAndPosition(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;)I
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->openInternalAndPosition(IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$printDebugLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->printDebugLog(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$removeByPositionsInternal(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->removeByPositionsInternal([I)V

    return-void
.end method

.method public static final synthetic access$saveQueue(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[JI)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->saveQueue([JI)V

    return-void
.end method

.method public static final synthetic access$selectPosition(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;ILjava/lang/Integer;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->selectPosition(ILjava/lang/Integer;Z)V

    return-void
.end method

.method public static final synthetic access$setComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->composeJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$setCurrentPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    return-void
.end method

.method public static final synthetic access$setModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->modifyScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$setPlayList$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[J)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    return-void
.end method

.method public static final synthetic access$setSelectJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->selectJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final buildExtraMeta(Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)Landroid/media/MediaMetadata;
    .locals 2

    .line 430
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v1, "android.media.metadata.TITLE"

    .line 431
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string p1, "android.media.metadata.ALBUM"

    const-string v1, "album"

    .line 432
    invoke-direct {p0, p3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string p1, "android.media.metadata.ARTIST"

    .line 433
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string p1, "android.media.metadata.GENRE"

    const-string p2, "genre"

    .line 434
    invoke-direct {p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string p1, "android.media.metadata.DURATION"

    const-string p2, "duration"

    .line 435
    invoke-direct {p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getLongOrZero(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 436
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    return-object p1
.end method

.method private final buildExtraMetaOthers(Landroid/database/Cursor;)Landroid/media/MediaMetadata;
    .locals 5

    .line 401
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v1, "com.samsung.android.app.music.metadata.CP_ATTRS"

    const-string v2, "cp_attrs"

    .line 402
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getLongOrZero(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    const-string v1, "com.samsung.android.app.music.metadata.ALBUM_ID"

    const-string v2, "album_id"

    .line 403
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getLongOrZero(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    const-string v1, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    .line 404
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$Builder;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$Builder;-><init>()V

    const-string v3, "is_secretbox"

    .line 406
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getIntOrZero(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 407
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$Builder;->putPrivateAttribute()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$Builder;

    goto :goto_0

    :cond_0
    const-string v3, "explicit"

    .line 409
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getIntOrZero(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 410
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$Builder;->putExplicitAttribute()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$Builder;

    goto :goto_0

    :cond_1
    const-string v3, "is_celeb"

    .line 412
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getIntOrZero(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 413
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$Builder;->putCelebAttribute()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$Builder;

    .line 416
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$Builder;->build()J

    move-result-wide v2

    .line 404
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    const-string v1, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    const-string v2, "sampling_rate"

    .line 421
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getIntOrZero(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "bit_depth"

    .line 422
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getIntOrZero(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "mime_type"

    .line 423
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-static {v2, v3, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(IILjava/lang/String;)J

    move-result-wide v2

    .line 418
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 426
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    return-object p1
.end method

.method private final compose(Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 510
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getSelectJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 511
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 882
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_1

    .line 883
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->k()V

    goto :goto_0

    .line 882
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scope cannot be cancelled because it does not have a job: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 512
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 513
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getQueueCoroutineContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$compose$1;

    const/4 v7, 0x0

    invoke-direct {v0, p0, p1, v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$compose$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$setComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlinx/coroutines/Job;)V

    .line 885
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMUSIC-SV"

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, ""

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\t "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicPlayerQueue DEBUG "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compose active? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lkotlinx/coroutines/Job;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :cond_5
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 888
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private final composeQueueItems([J)V
    .locals 7

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueBuildJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 366
    :cond_0
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[JLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueBuildJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final convertQueueItemId(JJ)J
    .locals 1

    const/16 v0, 0x11

    shl-long/2addr p1, v0

    or-long/2addr p1, p3

    return-wide p1
.end method

.method private final doShuffle([JI)I
    .locals 2

    if-gez p2, :cond_0

    .line 132
    sget-object p2, Lkotlin/random/Random;->b:Lkotlin/random/Random$Default;

    array-length v0, p1

    invoke-virtual {p2, v0}, Lkotlin/random/Random$Default;->b(I)I

    move-result p2

    .line 133
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->makeShuffleList([JI)Ljava/util/List;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->setShuffle(I)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->setShufflePositions([I)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    .line 136
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->notifyQueueOptions(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    return p2
.end method

.method static synthetic doShuffle$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[JIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 131
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->doShuffle([JI)I

    move-result p0

    return p0
.end method

.method private final getAllLocalTrack()[J
    .locals 8

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 201
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v3, "title"

    .line 202
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "title DESC LIMIT 10000"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 200
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 205
    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    const-string v3, "c"

    .line 206
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v3, v3, [J

    .line 731
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " title:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->printLog(Ljava/lang/String;)V

    .line 734
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 211
    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v1

    .line 205
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final getIntOrZero(Landroid/database/Cursor;I)I
    .locals 1

    .line 588
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final getIntOrZero(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1

    .line 586
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final getLongOrZero(Landroid/database/Cursor;I)J
    .locals 1

    .line 592
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private final getLongOrZero(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 1

    .line 590
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private final getPlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playerSettingManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    return-object v0
.end method

.method private final getPosition(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 334
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    goto :goto_1

    .line 332
    :pswitch_0
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    array-length p1, p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    goto :goto_0

    .line 329
    :pswitch_1
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    array-length v0, v0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    add-int/lit8 p1, p1, 0x1

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getPositionOrAbnormal(I)I
    .locals 1

    .line 129
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->isExistItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, -0x63

    :goto_0
    return p1
.end method

.method private final getQueueCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueCoroutineContext$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method private final getQueueSingleThreadDispatcher()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueSingleThreadDispatcher$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    return-object v0
.end method

.method private final getRootJob()Lkotlinx/coroutines/Job;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->rootJob$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method private final getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    .line 584
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 582
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final isComposeRunning()Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->composeJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->b()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final isExistItem(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final isLegalAgreed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private final makeShuffleList([JI)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JI)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 141
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    if-lt v2, p2, :cond_0

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/util/List;

    .line 142
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method private final modify(Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 521
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/16 v1, 0x40

    const/16 v2, 0x5b

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getRootJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 522
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getQueueSingleThreadDispatcher$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 523
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$setModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlinx/coroutines/CoroutineScope;)V

    .line 893
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "SMUSIC-SV"

    .line 897
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    const-string v7, "Thread.currentThread()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MusicPlayerQueue DEBUG "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "modify is reallocated"

    .line 524
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 896
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$modify$3;

    invoke-direct {v0, p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$modify$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 901
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMUSIC-SV"

    .line 905
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v5, "Thread.currentThread()"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const-string p1, ""

    :goto_3
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\t "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicPlayerQueue DEBUG "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modify active? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 904
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private final notifyQueueChanged([J)V
    .locals 1

    const-string v0, "call notifyQueueChanged"

    .line 348
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->printLog(Ljava/lang/String;)V

    .line 349
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->composeQueueItems([J)V

    .line 351
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;->onQueueChanged([J)V

    :cond_0
    return-void
.end method

.method private final notifyQueueComposed(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;",
            ")V"
        }
    .end annotation

    .line 464
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueItems:Ljava/util/List;

    .line 465
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;->onQueueComposed(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    :cond_0
    return-void
.end method

.method private final notifyQueueOptions(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;->onQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    :cond_0
    return-void
.end method

.method private final openInternalAndPosition(IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;IZ",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openInternalAndPosition mode?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " type?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " key?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ids?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueueKt;->access$toLog([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " q?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " pos?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " play?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ext?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->printLog(Ljava/lang/String;)V

    if-gez p6, :cond_0

    const/16 p1, -0x63

    .line 120
    invoke-direct {p0, p4, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->doShuffle([JI)I

    move-result p6

    .line 124
    :cond_0
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    .line 125
    invoke-direct {p0, p6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getPositionOrAbnormal(I)I

    move-result p1

    return p1
.end method

.method static synthetic openInternalAndPosition$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;ILjava/lang/Object;)I
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    const-string v1, ""

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 109
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyLongArray()[J

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    .line 110
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    move/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    move/from16 v10, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 113
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string v1, "Bundle.EMPTY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v0

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    move-object v3, p0

    move v5, p2

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->openInternalAndPosition(IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private final printDebugLog(Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 578
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-SV"

    .line 946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicPlayerQueue DEBUG "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 945
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private final printLog(Ljava/lang/String;)V
    .locals 5

    .line 575
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->tag:Ljava/lang/String;

    const-string v1, "SMUSIC-SV"

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicPlayerQueue "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 939
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final removeByPositionsInternal([I)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 222
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    .line 223
    :cond_1
    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    array-length v1, v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    return-void

    .line 225
    :cond_3
    array-length v1, v0

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    array-length v4, v4

    if-ne v1, v4, :cond_4

    .line 228
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyLongArray()[J

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    const/4 v1, 0x1

    const/16 v0, -0x63

    .line 229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->selectPosition$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;ILjava/lang/Integer;ZILjava/lang/Object;)V

    .line 230
    iget-object v0, v6, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    invoke-direct {v6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->notifyQueueChanged([J)V

    return-void

    .line 234
    :cond_4
    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    .line 235
    iget v4, v6, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    .line 767
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysKt;->b([I)V

    .line 773
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 776
    array-length v7, v1

    move v11, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_2
    const/16 v14, 0x5b

    if-ge v8, v7, :cond_11

    aget-wide v15, v1, v8

    add-int/lit8 v17, v9, 0x1

    .line 778
    array-length v2, v0

    if-lt v10, v2, :cond_8

    .line 780
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMUSIC-SV"

    .line 784
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v19, v1

    const-string v1, "Thread.currentThread()"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x40

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const-string v1, ""

    :goto_3
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\t "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicPlayerQueue DEBUG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "removePositions filter in "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 783
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    move-object/from16 v19, v1

    :cond_7
    :goto_4
    const/16 v18, 0x1

    goto/16 :goto_9

    :cond_8
    move-object/from16 v19, v1

    .line 789
    aget v1, v0, v10

    if-ne v9, v1, :cond_e

    if-ge v4, v9, :cond_9

    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    :cond_9
    if-ne v4, v9, :cond_a

    const/4 v12, 0x1

    :cond_a
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 797
    :goto_6
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v10, v1, :cond_b

    aget v1, v0, v10

    if-ne v9, v1, :cond_b

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 799
    :cond_b
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SMUSIC-SV"

    .line 803
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    const-string v2, "Thread.currentThread()"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x40

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    const-string v1, ""

    :goto_7
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\t "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicPlayerQueue DEBUG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "removePositions filter out "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 802
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_9

    .line 810
    :cond_e
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMUSIC-SV"

    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    const-string v14, "Thread.currentThread()"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_f

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x40

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    const-string v1, ""

    :goto_8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\t "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MusicPlayerQueue DEBUG "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "removePositions filter in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 813
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :goto_9
    if-eqz v18, :cond_10

    .line 819
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v17

    move-object/from16 v1, v19

    goto/16 :goto_2

    .line 822
    :cond_11
    check-cast v5, Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    .line 772
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object v0

    .line 824
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMUSIC-SV"

    .line 828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "Thread.currentThread()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    goto :goto_a

    :cond_12
    const-string v1, ""

    :goto_a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\t "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicPlayerQueue DEBUG "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removePositions filter results "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "java.util.Arrays.toString(this)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 827
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_13
    iput-object v0, v6, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    if-eqz v12, :cond_14

    const/4 v1, 0x1

    .line 240
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->selectPosition$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;ILjava/lang/Integer;ZILjava/lang/Object;)V

    .line 242
    :cond_14
    iget-object v0, v6, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    invoke-direct {v6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->notifyQueueChanged([J)V

    return-void
.end method

.method private final removePositions([JI[ILkotlin/jvm/functions/Function3;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JI[I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "-[J",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 251
    invoke-static/range {p3 .. p3}, Lkotlin/collections/ArraysKt;->b([I)V

    .line 834
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 837
    array-length v4, v0

    move v9, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v12, 0x5b

    if-ge v6, v4, :cond_c

    aget-wide v13, v0, v6

    add-int/lit8 v15, v7, 0x1

    .line 256
    array-length v5, v2

    const/16 v16, 0x1

    if-lt v8, v5, :cond_2

    .line 839
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "SMUSIC-SV"

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    move/from16 v17, v4

    const-string v4, "Thread.currentThread()"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x40

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, ""

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\t "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MusicPlayerQueue DEBUG "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removePositions filter in "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1
    move/from16 v17, v4

    goto/16 :goto_6

    :cond_2
    move/from16 v17, v4

    .line 259
    aget v0, v2, v8

    if-ne v7, v0, :cond_8

    if-ge v1, v7, :cond_3

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_3
    if-ne v1, v7, :cond_4

    const/4 v10, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 267
    :goto_3
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_5

    aget v0, v2, v8

    if-ne v7, v0, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 847
    :cond_5
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "SMUSIC-SV"

    .line 851
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    const-string v12, "Thread.currentThread()"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x40

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, ""

    :goto_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MusicPlayerQueue DEBUG "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removePositions filter out "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 850
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 855
    :cond_8
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "SMUSIC-SV"

    .line 859
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    const-string v12, "Thread.currentThread()"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x40

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const-string v0, ""

    :goto_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MusicPlayerQueue DEBUG "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removePositions filter in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_6
    if-eqz v16, :cond_b

    .line 273
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v6, v6, 0x1

    move v7, v15

    move/from16 v4, v17

    move-object/from16 v0, p1

    goto/16 :goto_0

    .line 865
    :cond_c
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    .line 274
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object v0

    .line 866
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMUSIC-SV"

    .line 870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "Thread.currentThread()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    const-string v1, ""

    :goto_7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\t "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicPlayerQueue DEBUG "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removePositions filter results "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.util.Arrays.toString(this)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 869
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-interface {v3, v1, v2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final saveQueue([JI)V
    .locals 2

    .line 452
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getPlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    move-result-object v0

    .line 453
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->convertQueueToString([J)Ljava/lang/String;

    move-result-object p1

    .line 452
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->setQueue(Ljava/lang/String;I)V

    return-void
.end method

.method private final selectPosition(ILjava/lang/Integer;Z)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    .line 541
    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    array-length v1, v1

    const/16 v7, 0x40

    const/16 v8, 0x5b

    const/4 v9, 0x0

    if-gtz v1, :cond_7

    .line 909
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getSelectJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->k()V

    .line 910
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 911
    invoke-interface {v1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v3, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_1

    .line 912
    invoke-interface {v2}, Lkotlinx/coroutines/Job;->k()V

    goto :goto_0

    .line 911
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scope cannot be cancelled because it does not have a job: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 914
    :cond_2
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->k()V

    .line 915
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getQueueCoroutineContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$$inlined$also$lambda$1;

    invoke-direct {v1, v6, v9, v6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$$inlined$also$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Ljava/lang/Integer;)V

    move-object v13, v1

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$setComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlinx/coroutines/Job;)V

    .line 920
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-SV"

    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicPlayerQueue DEBUG "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compose active? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lkotlinx/coroutines/Job;->b()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    :cond_5
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    if-eqz v0, :cond_8

    .line 546
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v1, :cond_8

    const-string v0, "selectPosition but ignore this request. It is exceed play list length."

    .line 547
    invoke-direct {v6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->printLog(Ljava/lang/String;)V

    return-void

    :cond_8
    if-eqz v0, :cond_9

    .line 552
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    move v10, v0

    goto :goto_3

    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getPosition(I)I

    move-result v0

    goto :goto_2

    .line 553
    :goto_3
    iput v10, v6, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    .line 555
    iget-object v0, v6, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->selectJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 556
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getQueueCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;

    const/4 v5, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move v2, v10

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;IIZLkotlin/coroutines/Continuation;)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->selectJob:Lkotlinx/coroutines/Job;

    .line 929
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-SV"

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    const-string v0, ""

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicPlayerQueue DEBUG "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectPosition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " active? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getSelectJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface {v4}, Lkotlinx/coroutines/Job;->b()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    :cond_c
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 932
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method static synthetic selectPosition$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;ILjava/lang/Integer;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    .line 538
    check-cast p2, Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 539
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->isSupposedToBePlaying()Z

    move-result p3

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->selectPosition(ILjava/lang/Integer;Z)V

    return-void
.end method

.method private final setNextPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->setNext(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    return-void
.end method

.method private final setOption(III)V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->getRepeat()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->getShuffle()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->getSort()I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->setRepeat(I)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    .line 479
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    .line 480
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->setRepeat(I)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    .line 481
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->setShuffle(I)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    .line 482
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->setSort(I)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    .line 484
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->notifyQueueOptions(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    :cond_1
    return-void
.end method

.method static synthetic setOption$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;IIIILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    .line 475
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->setOption(III)V

    return-void
.end method

.method private final setRepeat(I)V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->getRepeat()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 490
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->setRepeat(I)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    .line 491
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->notifyQueueOptions(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    :cond_0
    return-void
.end method

.method private final setShuffle(I)V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->getShuffle()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->setShuffle(I)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    .line 498
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->notifyQueueOptions(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    :cond_0
    return-void
.end method

.method private final testGetIdsFromContentProvider(I)[J
    .locals 9

    .line 629
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 630
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ASC LIMIT "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 629
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v0, 0x0

    .line 634
    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    const-string v2, "c"

    .line 635
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v2, v2, [J

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 970
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 638
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v2, v6

    .line 639
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " title:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->printLog(Ljava/lang/String;)V

    .line 973
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 642
    :cond_1
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 634
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic testGetIdsFromContentProvider$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;IILjava/lang/Object;)[J
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xa

    .line 628
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->testGetIdsFromContentProvider(I)[J

    move-result-object p0

    return-object p0
.end method

.method public static synthetic testPrepareQueueData$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[JIILjava/lang/Object;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 602
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->testPrepareQueueData([JI)V

    return-void
.end method


# virtual methods
.method public add(II[JZILandroid/os/Bundle;)V
    .locals 6

    const-string p1, "ids"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    const/16 p2, 0x40

    const/16 p4, 0x5b

    const/4 p5, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p6

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p5

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getRootJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 680
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getQueueSingleThreadDispatcher$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    .line 681
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$setModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlinx/coroutines/CoroutineScope;)V

    .line 683
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object p1

    const-string p6, "SMUSIC-SV"

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\t "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicPlayerQueue DEBUG "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modify is reallocated"

    .line 682
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 686
    invoke-static {p6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;

    invoke-direct {p1, p0, p5, p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[J)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 701
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "SMUSIC-SV"

    .line 705
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p4

    const-string v0, "Thread.currentThread()"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const-string p1, ""

    :goto_3
    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\t "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MusicPlayerQueue DEBUG "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "modify active? "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    if-eqz p4, :cond_6

    invoke-static {p4}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    :cond_6
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 704
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    return-object v0
.end method

.method public final getQueueItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueItems:Ljava/util/List;

    return-object v0
.end method

.method public final getQueueOptions()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    move-result-object v0

    return-object v0
.end method

.method final synthetic loadSavedQueue(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;

    iget v3, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v3

    .line 166
    iget v4, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    .line 193
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :pswitch_0
    iget-object v3, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->L$2:Ljava/lang/Object;

    check-cast v3, [J

    iget-object v4, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->L$1:Ljava/lang/Object;

    check-cast v4, [J

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    instance-of v4, v1, Lkotlin/Result$Failure;

    if-nez v4, :cond_1

    goto/16 :goto_6

    :cond_1
    check-cast v1, Lkotlin/Result$Failure;

    iget-object v1, v1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v1

    :pswitch_1
    iget-object v4, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->L$1:Ljava/lang/Object;

    check-cast v4, [J

    iget-object v7, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    instance-of v8, v1, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    move-object v1, v4

    move-object v4, v7

    goto/16 :goto_3

    :cond_2
    check-cast v1, Lkotlin/Result$Failure;

    iget-object v1, v1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v1

    :pswitch_2
    iget-object v4, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    instance-of v7, v1, Lkotlin/Result$Failure;

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    check-cast v1, Lkotlin/Result$Failure;

    iget-object v1, v1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v1

    :pswitch_3
    instance-of v4, v1, Lkotlin/Result$Failure;

    if-nez v4, :cond_c

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->isLegalAgreed()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "loadSavedQueue: isLegalAgreed: false"

    .line 168
    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->printLog(Ljava/lang/String;)V

    .line 169
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    .line 171
    :cond_4
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    array-length v1, v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    xor-int/2addr v1, v6

    if-eqz v1, :cond_6

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSavedQueue but it was already done. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.util.Arrays.toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->printLog(Ljava/lang/String;)V

    .line 173
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    .line 175
    :cond_6
    iput-object v0, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->L$0:Ljava/lang/Object;

    iput v6, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->label:I

    invoke-static {v2}, Lkotlinx/coroutines/YieldKt;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_7
    move-object v4, v0

    .line 176
    :goto_2
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;

    .line 177
    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getPlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->getQueue()Ljava/lang/String;

    move-result-object v7

    .line 176
    invoke-virtual {v1, v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->convertQueueToArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 179
    iput-object v4, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->label:I

    invoke-static {v2}, Lkotlinx/coroutines/YieldKt;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_8

    return-object v3

    .line 182
    :cond_8
    :goto_3
    array-length v7, v1

    if-nez v7, :cond_9

    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_a

    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getAllLocalTrack()[J

    move-result-object v7

    goto :goto_5

    :cond_a
    move-object v7, v1

    .line 183
    :goto_5
    iput-object v4, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->L$2:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$loadSavedQueue$1;->label:I

    invoke-static {v2}, Lkotlinx/coroutines/YieldKt;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_b

    return-object v3

    :cond_b
    move-object v2, v4

    move-object v3, v7

    :goto_6
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 186
    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getPlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->getQueuePosition()I

    move-result v14

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xd5

    const/16 v18, 0x0

    move-object v8, v2

    move-object v12, v3

    .line 184
    invoke-static/range {v8 .. v18}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->openInternalAndPosition$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;ILjava/lang/Object;)I

    move-result v1

    .line 189
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v6, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->selectPosition(ILjava/lang/Integer;Z)V

    .line 190
    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->notifyQueueChanged([J)V

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reload list and current position is changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->printLog(Ljava/lang/String;)V

    .line 193
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    .line 166
    :cond_c
    check-cast v1, Lkotlin/Result$Failure;

    iget-object v1, v1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public move(II)V
    .locals 6

    if-ne p1, p2, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    aget-wide v1, v0, p1

    if-ge p1, p2, :cond_1

    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    sub-int v5, p2, p1

    invoke-static {v0, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    add-int/lit8 v4, p2, 0x1

    sub-int/2addr p1, p2

    invoke-static {v0, p2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    aput-wide v1, p1, p2

    .line 299
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->notifyQueueChanged([J)V

    return-void
.end method

.method public moveToNext()V
    .locals 7

    const-string v0, "next"

    .line 314
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->printLog(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getQueueCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$moveToNext$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$moveToNext$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public moveToPrev()V
    .locals 7

    .line 321
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getQueueCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$moveToPrev$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$moveToPrev$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public open(IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;IZ",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p0

    const-string v0, "keyWord"

    move-object/from16 v6, p3

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    move-object/from16 v7, p4

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queue"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    move-object/from16 v11, p8

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "open"

    .line 93
    invoke-direct {v12, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->printLog(Ljava/lang/String;)V

    .line 659
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getSelectJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 660
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 661
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_1

    .line 662
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->k()V

    goto :goto_0

    .line 661
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scope cannot be cancelled because it does not have a job: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 664
    :cond_2
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 665
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getQueueCoroutineContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v16, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$open$$inlined$compose$1;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$open$$inlined$compose$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x3

    move-object/from16 p1, v13

    move-object/from16 p2, v14

    move-object/from16 p3, v15

    move-object/from16 p4, v0

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$setComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlinx/coroutines/Job;)V

    .line 670
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-SV"

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicPlayerQueue DEBUG "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compose active? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lkotlinx/coroutines/Job;->b()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public openPosition(IIZ)V
    .locals 0

    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->selectPosition(ILjava/lang/Integer;Z)V

    return-void
.end method

.method public release()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->modifyScope:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v0, :cond_1

    .line 656
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_0

    .line 657
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->k()V

    goto :goto_0

    .line 656
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scope cannot be cancelled because it does not have a job: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 80
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getRootJob()Lkotlinx/coroutines/Job;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->getQueueSingleThreadDispatcher()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;->close()V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->release()V

    return-void
.end method

.method public reloadItems()V
    .locals 8

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->composeJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 710
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getSelectJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 711
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 712
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_2

    .line 713
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->k()V

    goto :goto_0

    .line 712
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scope cannot be cancelled because it does not have a job: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 715
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 716
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getQueueCoroutineContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$reloadItems$$inlined$compose$1;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$reloadItems$$inlined$compose$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$setComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlinx/coroutines/Job;)V

    .line 721
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-SV"

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicPlayerQueue DEBUG "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compose active? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lkotlinx/coroutines/Job;->b()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :cond_6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public removeByIds([J)V
    .locals 10

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    .line 874
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 877
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-wide v5, v0, v3

    add-int/lit8 v7, v4, 0x1

    .line 282
    invoke-static {p1, v5, v6}, Lkotlin/collections/ArraysKt;->a([JJ)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    :cond_0
    xor-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    .line 881
    :cond_2
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    .line 283
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    .line 284
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->notifyQueueChanged([J)V

    return-void
.end method

.method public removeByPositions([I)V
    .locals 11

    const-string v0, "positions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/16 v1, 0x40

    const/16 v2, 0x5b

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getRootJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 737
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getQueueSingleThreadDispatcher$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 738
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$setModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlinx/coroutines/CoroutineScope;)V

    .line 740
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "SMUSIC-SV"

    .line 744
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    const-string v7, "Thread.currentThread()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MusicPlayerQueue DEBUG "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "modify is reallocated"

    .line 739
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$removeByPositions$$inlined$modify$1;

    invoke-direct {v0, p0, v3, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$removeByPositions$$inlined$modify$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[I)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 758
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMUSIC-SV"

    .line 762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v5, "Thread.currentThread()"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const-string p1, ""

    :goto_3
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\t "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicPlayerQueue DEBUG "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modify active? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 761
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public setNext(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 1

    const-string v0, "playingItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final testGetPlayList()[J
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    return-object v0
.end method

.method public final testGetPosition()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 620
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    return v0
.end method

.method public final testGetShufflePosition()[I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->getShufflePositions()[I

    move-result-object v0

    return-object v0
.end method

.method public final testOnSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->getLegalAgreeSettingKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 610
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->isLegalAgreed()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 949
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getSelectJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->k()V

    .line 950
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getModifyScope$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 951
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    sget-object v0, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/Job;

    if-eqz p2, :cond_1

    .line 952
    invoke-interface {p2}, Lkotlinx/coroutines/Job;->k()V

    goto :goto_0

    .line 951
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Scope cannot be cancelled because it does not have a job: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 954
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->k()V

    .line 955
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getQueueCoroutineContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$testOnSettingChanged$$inlined$compose$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$testOnSettingChanged$$inlined$compose$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$setComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlinx/coroutines/Job;)V

    .line 960
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMUSIC-SV"

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, ""

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\t "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicPlayerQueue DEBUG "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compose active? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getComposeJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lkotlinx/coroutines/Job;->b()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :cond_5
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 963
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public final testPrepareQueueData([JI)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    .line 604
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    return-void
.end method

.method public final testRemoveByPositions([I)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string v0, "positions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->removeByPositionsInternal([I)V

    return-void
.end method

.method public toggleMode(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->playList:[J

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->currentPosition:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->doShuffle([JI)I

    .line 306
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->queueOptionBuilder:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->notifyQueueOptions(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    :goto_0
    return-void
.end method
