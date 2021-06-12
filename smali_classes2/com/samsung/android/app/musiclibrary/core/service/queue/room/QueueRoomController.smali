.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Def;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

.field private static final DEBUG:Z = false

.field public static final ETC:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field public static final REPLACE:I = 0x1

.field public static final RESTORE:I = 0x2

.field private static final SUB_TAG:Ljava/lang/String; = "QueueController >> "

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private availableItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final baseUri:Landroid/net/Uri;

.field private contentChangedJob:Lkotlinx/coroutines/Job;

.field private final context:Landroid/content/Context;

.field private final dispatcher$delegate:Lkotlin/Lazy;

.field private insertJob:Lkotlinx/coroutines/Job;

.field private final insertScope$delegate:Lkotlin/Lazy;

.field private isNeedRestore:Z

.field private metaItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final observer:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;

.field private queueItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final queueRepository$delegate:Lkotlin/Lazy;

.field private updateScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "dispatcher"

    const-string v4, "getDispatcher()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "insertScope"

    const-string v4, "getInsertScope()Lkotlinx/coroutines/CoroutineScope;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "queueRepository"

    const-string v4, "getQueueRepository()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->baseUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->observer:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;

    .line 46
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$dispatcher$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$dispatcher$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->dispatcher$delegate:Lkotlin/Lazy;

    .line 47
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insertScope$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insertScope$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->insertScope$delegate:Lkotlin/Lazy;

    .line 52
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$queueRepository$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$queueRepository$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->queueRepository$delegate:Lkotlin/Lazy;

    .line 53
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;->getEMPTY_LIST()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->queueItems:Ljava/util/List;

    .line 54
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;->getEMPTY_LIST()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->availableItems:Ljava/util/List;

    .line 55
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;->getEMPTY_META_LIST()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->metaItems:Ljava/util/List;

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getInsertScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$cancel(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->cancel(Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final synthetic access$ensureAddition(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;ILjava/util/List;Ljava/util/List;I)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->ensureAddition(ILjava/util/List;Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$ensureAvailableItems(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->ensureAvailableItems(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$ensureRetainItems(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->ensureRetainItems(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$ensureUpdateScope(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->ensureUpdateScope()V

    return-void
.end method

.method public static final synthetic access$getAvailableItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->availableItems:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getBaseUri$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Landroid/net/Uri;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->baseUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static final synthetic access$getContentChangedJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->contentChangedJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDispatcher$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getDispatcher()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getExistItems(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Landroid/content/Context;Ljava/util/List;Landroid/net/Uri;)Ljava/util/List;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getExistItems(Landroid/content/Context;Ljava/util/List;Landroid/net/Uri;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getIdOfPlaylist(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)J
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getIdOfPlaylist(Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getInsertJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->insertJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$getInsertScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getInsertScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getItemsFromCursor(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/List;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getItemsFromCursor(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMetaItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->metaItems:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getObserver$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->observer:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;

    return-object p0
.end method

.method public static final synthetic access$getQueueItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->queueItems:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getQueueRepository()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSourceIds(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getSourceIds(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->updateScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$isNeedRestore$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->isNeedRestore:Z

    return p0
.end method

.method public static final synthetic access$setAvailableItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->availableItems:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setContentChangedJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->contentChangedJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$setInitList(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->setInitList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setInsertJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->insertJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$setMetaItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->setMetaItems(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setNeedRestore$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->isNeedRestore:Z

    return-void
.end method

.method public static final synthetic access$setQueueItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->queueItems:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->updateScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method private final addToNextPosition(Ljava/util/List;ILjava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;)Z"
        }
    .end annotation

    .line 479
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    .line 480
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 903
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v7, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_0
    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    .line 481
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getVirtualState()I

    move-result v4

    if-ne v4, v6, :cond_2

    if-ne v3, p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :cond_2
    move v2, v7

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_1
    if-ne v2, v5, :cond_4

    .line 491
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$addToNextPosition$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$addToNextPosition$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logE(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    return v1

    .line 494
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v6

    if-lt v2, p2, :cond_5

    .line 495
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_5
    add-int/2addr v2, v6

    .line 497
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p1, v2, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_2
    return v6
.end method

.method private final cancel(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    .line 665
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$cancel$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$cancel$1;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 666
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    goto :goto_0

    .line 667
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$cancel$2;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$cancel$2;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method private final contentChanged(Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 630
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$ensureUpdateScope(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    .line 631
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getContentChangedJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 632
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$contentChanged$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$contentChanged$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 641
    :cond_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$contentChanged$2$1;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$contentChanged$2$1;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 640
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setContentChangedJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public static synthetic enqueue$default(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;ILjava/util/List;ILjava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 146
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object p4

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->enqueue(ILjava/util/List;ILjava/util/List;)V

    return-void
.end method

.method private final ensureAddition(ILjava/util/List;Ljava/util/List;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 468
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance p3, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$ensureAddition$1;

    invoke-direct {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$ensureAddition$1;-><init>(I)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logE(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 466
    :pswitch_0
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v1

    goto :goto_0

    :pswitch_1
    if-gez p4, :cond_0

    const/4 p4, 0x0

    .line 462
    :cond_0
    invoke-direct {p0, p2, p4, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->addToNextPosition(Ljava/util/List;ILjava/util/List;)Z

    move-result v1

    goto :goto_0

    .line 460
    :cond_1
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p2, v1, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final ensureAvailableItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;)V"
        }
    .end annotation

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 534
    check-cast p1, Ljava/lang/Iterable;

    .line 954
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    .line 534
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getAddedIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 536
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 957
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_1
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    .line 538
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setId(I)V

    .line 539
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getAddedIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAddedIndex(I)V

    move v1, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final ensureRetainItems(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 503
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    .line 505
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$ensureRetainItems$2$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$ensureRetainItems$2$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 507
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->ensureAvailableItems(Ljava/util/List;)V

    return-void

    .line 510
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 511
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 950
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    .line 512
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getVirtualState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 513
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 517
    :cond_2
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$ensureRetainItems$2$2;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$ensureRetainItems$2$2;-><init>(Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 519
    check-cast p2, Ljava/lang/Iterable;

    .line 952
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 520
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 522
    :cond_3
    move-object p2, v1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 523
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 524
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 526
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$ensureRetainItems$2$3;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$ensureRetainItems$2$3;-><init>(Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 527
    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 528
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->ensureAvailableItems(Ljava/util/List;)V

    return-void
.end method

.method private final ensureUpdateScope()V
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->updateScope:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v0, :cond_0

    .line 647
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$ensureUpdateScope$1$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$ensureUpdateScope$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->updateScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez v0, :cond_1

    .line 650
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getDispatcher()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 651
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$ensureUpdateScope$2$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$ensureUpdateScope$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 650
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->updateScope:Lkotlinx/coroutines/CoroutineScope;

    :cond_1
    return-void
.end method

.method private final getDispatcher()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->dispatcher$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    return-object v0
.end method

.method private final getExistItems(Landroid/content/Context;Ljava/util/List;Landroid/net/Uri;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;"
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, "source_id"

    .line 549
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 550
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getQuerySelection(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "source_id"

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p3

    .line 548
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 959
    move-object p2, p1

    check-cast p2, Ljava/io/Closeable;

    const/4 p3, 0x0

    check-cast p3, Ljava/lang/Throwable;

    :try_start_0
    move-object v0, p2

    check-cast v0, Landroid/database/Cursor;

    if-nez p1, :cond_0

    goto :goto_0

    .line 971
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 563
    :goto_0
    invoke-static {p2, p3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 565
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 552
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const-string v1, "_id"

    .line 553
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "source_id"

    .line 554
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 557
    :cond_2
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;-><init>()V

    .line 558
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAudioId(J)V

    .line 559
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "c.getString(sourceIdx)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setSourceId(Ljava/lang/String;)V

    .line 557
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 563
    invoke-static {p2, p3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object p3, p1

    :try_start_2
    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {p2, p3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final getIdOfPlaylist(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;)J"
        }
    .end annotation

    .line 437
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getQueueRepository()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getPlaylistItems()Ljava/util/List;

    move-result-object v0

    .line 438
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getIdOfPlaylist$comparator$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getIdOfPlaylist$comparator$1;

    check-cast v1, Ljava/util/Comparator;

    .line 441
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 444
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;->playlistId:Ljava/lang/String;

    const-string v5, "list[0].playlistId"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->setPlaylistId(Ljava/lang/String;)V

    .line 442
    invoke-static {v0, v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 448
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->getId()J

    move-result-wide v0

    goto :goto_0

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getQueueRepository()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;-><init>()V

    .line 451
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;->playlistId:Ljava/lang/String;

    const-string v2, "list[0].playlistId"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->setPlaylistId(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->insertPlaylist(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private final getInsertScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->insertScope$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method private final getItemsFromCursor(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;"
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 411
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    .line 412
    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$$inlined$tsp$lambda$3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$$inlined$tsp$lambda$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/CoroutineScope;Ljava/util/List;Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 413
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object p3

    .line 414
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;

    const-string v2, "ids"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[J)V

    check-cast v1, Landroid/database/Cursor;

    .line 884
    move-object p1, v1

    check-cast p1, Ljava/io/Closeable;

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    move-object p3, p1

    check-cast p3, Landroid/database/Cursor;

    .line 895
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 897
    :cond_0
    move-object p3, v1

    check-cast p3, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;

    .line 415
    invoke-static {p4}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 416
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    sget-object p4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$2$2$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$2$2$1;

    check-cast p4, Lkotlin/jvm/functions/Function0;

    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 419
    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getQueueBackBoneItem(Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-nez p3, :cond_0

    .line 900
    :goto_0
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 884
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 422
    :goto_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$3;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$3;-><init>(Ljava/util/List;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    return-object v0

    :catchall_0
    move-exception p3

    goto :goto_2

    :catch_0
    move-exception p2

    .line 884
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method private final getQuerySelection(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source_id IN ("

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    check-cast p1, Ljava/lang/Iterable;

    .line 974
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_0
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    if-lez v1, :cond_1

    const/16 v1, 0x2c

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getSourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    :cond_2
    const/16 p1, 0x29

    .line 575
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply {\n\u2026\')\')\n        }.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getQueueBackBoneItem(Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;
    .locals 5

    .line 427
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;-><init>()V

    .line 428
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->getAudioId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAudioId(J)V

    .line 429
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->getSourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setSourceId(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getAudioId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getSourceId()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 431
    :cond_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getQueueBackBoneItem$1$1;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getQueueBackBoneItem$1$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logE(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    return-object v0
.end method

.method private final getQueueRepository()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->queueRepository$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    return-object v0
.end method

.method private final getSourceIds(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 581
    check-cast p1, Ljava/lang/Iterable;

    .line 976
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    .line 582
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic init$default(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 97
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->init(Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private final insert(Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 589
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 590
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getInsertJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 591
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$cancel(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/CoroutineScope;)V

    :cond_1
    const/4 v0, 0x0

    .line 592
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/CoroutineScope;)V

    .line 593
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getInsertScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 604
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$3$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$3$1;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 603
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setInsertJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public static synthetic remove$default(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 201
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->remove(Ljava/util/List;Z)V

    return-void
.end method

.method private final setInitList(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 793
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 794
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getInsertJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 795
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$cancel(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/CoroutineScope;)V

    :cond_1
    const/4 v0, 0x0

    .line 796
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/CoroutineScope;)V

    .line 797
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getInsertScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;

    const/4 v6, 0x0

    move-object v4, v0

    move-object v5, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;Ljava/util/List;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 808
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$3$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$3$1;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 807
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setInsertJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public static synthetic setList$default(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 115
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->setList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final setMetaItems(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->metaItems:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 60
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .line 710
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_0
    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    .line 61
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getAudioId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getId()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getAddedIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v5

    goto :goto_0

    .line 64
    :cond_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$metaItems$2;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$metaItems$2;-><init>(Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebugging(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 65
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$metaItems$3;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$metaItems$3;-><init>(Ljava/util/Map;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebugging(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 66
    invoke-static {v0}, Lkotlin/collections/MapsKt;->c(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 712
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$metaItems$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$metaItems$$inlined$sortedBy$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 66
    invoke-static {p1}, Lkotlin/collections/MapsKt;->a(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    .line 67
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$metaItems$4;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$metaItems$4;-><init>(Ljava/util/Map;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebugging(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final setNewList(Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 371
    check-cast p1, Landroid/database/Cursor;

    if-nez p1, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 790
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;

    .line 372
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getQueueBackBoneItem(Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getInsertScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setNewList$2;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setNewList$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p1

    move-object v6, v0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final update(Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 609
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$ensureUpdateScope(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    .line 610
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$update$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$update$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object p1, v4

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 625
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$update$2$1;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$update$2$1;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 8

    .line 749
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 750
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getInsertJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 751
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$cancel(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/CoroutineScope;)V

    :cond_1
    const/4 v0, 0x0

    .line 752
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/CoroutineScope;)V

    .line 753
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getInsertScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$clear$$inlined$insert$1;

    invoke-direct {v1, p0, v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$clear$$inlined$insert$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 764
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$3$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$3$1;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 763
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setInsertJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public final enqueue(ILjava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;I)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->enqueue$default(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;ILjava/util/List;ILjava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public final enqueue(ILjava/util/List;ILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "addList"

    move-object v6, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retainPositions"

    move-object/from16 v8, p4

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 731
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$ensureUpdateScope(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    .line 732
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;

    const/4 v3, 0x0

    move-object v1, v11

    move-object v2, p0

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;ILjava/util/List;ILjava/util/List;)V

    move-object v4, v11

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v9

    move-object v3, v10

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 734
    :goto_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$update$2$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$update$2$1;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final getAvailableItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->availableItems:Ljava/util/List;

    return-object v0
.end method

.method public final getQueueItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->queueItems:Ljava/util/List;

    return-object v0
.end method

.method public final init(Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "cursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addedOrders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->queueItems:Ljava/util/List;

    .line 100
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->setNewList(Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 104
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$init$$inlined$run$lambda$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$init$$inlined$run$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;Ljava/util/List;Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 105
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->availableItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->setNewList(Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final onContentChanged()V
    .locals 7

    .line 767
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$ensureUpdateScope(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    .line 768
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getContentChangedJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 769
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;

    invoke-direct {v4, p0, v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 778
    :cond_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$contentChanged$2$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$contentChanged$2$1;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 777
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setContentChangedJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 81
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$release$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$release$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->updateScope:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->cancel(Lkotlinx/coroutines/CoroutineScope;)V

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getInsertScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->cancel(Lkotlinx/coroutines/CoroutineScope;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->contentChangedJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getDispatcher()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;->close()V

    return-void
.end method

.method public final remove(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "positions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$ensureUpdateScope(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    .line 738
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$remove$$inlined$update$1;

    const/4 v6, 0x0

    move-object v4, v0

    move-object v5, p0

    move-object v7, p0

    move-object v8, p1

    move v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$remove$$inlined$update$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;Z)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 740
    :goto_0
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$update$2$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$update$2$1;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final reorder(II)V
    .locals 10

    .line 743
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$ensureUpdateScope(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    .line 744
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$reorder$$inlined$update$1;

    const/4 v5, 0x0

    move-object v3, v9

    move-object v4, p0

    move-object v6, p0

    move v7, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$reorder$$inlined$update$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;II)V

    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 746
    :goto_0
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$update$2$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$update$2$1;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final restore(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "positions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$ensureUpdateScope(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    .line 782
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$restore$$inlined$update$1;

    invoke-direct {v4, p0, v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$restore$$inlined$update$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 784
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$update$2$1;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$update$2$1;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setList(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addedOrders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 714
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getInsertJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 715
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$cancel(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/CoroutineScope;)V

    :cond_1
    const/4 v0, 0x0

    .line 716
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/CoroutineScope;)V

    .line 717
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getInsertScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setList$$inlined$insert$1;

    const/4 v6, 0x0

    move-object v4, v0

    move-object v5, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setList$$inlined$insert$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;Ljava/util/List;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 728
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$3$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$3$1;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 727
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setInsertJob$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public final testUpdate()V
    .locals 7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 978
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$ensureUpdateScope(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    .line 979
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getUpdateScope$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$testUpdate$$inlined$update$1;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$testUpdate$$inlined$update$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 981
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$update$2$1;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$update$2$1;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
