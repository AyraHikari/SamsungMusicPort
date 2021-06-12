.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

.field private static volatile INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final SUB_TAG:Ljava/lang/String; = "QueueRoomManager >> "

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private observers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final queueRoomController:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    .line 23
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v2, "MediaContents.Tracks.CONTENT_URI"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;

    .line 21
    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->queueRoomController:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;
    .locals 1

    .line 15
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    return-object v0
.end method

.method public static final synthetic access$getObservers$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;)V
    .locals 0

    .line 15
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    return-void
.end method

.method public static final synthetic access$setObservers$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic enqueue$default(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;ILjava/util/List;ILjava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 92
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object p4

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->enqueue(ILjava/util/List;ILjava/util/List;)V

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic init$default(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 77
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->init(Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic remove$default(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 102
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->remove(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic remove$default(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;[IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 98
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->remove([IZ)V

    return-void
.end method

.method public static synthetic setList$default(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 84
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->setList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .line 118
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    const-string v0, "SMUSIC-SV-List"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueRoomManager >>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "clearMetaItems"

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->queueRoomController:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->clear()V

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

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->enqueue$default(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;ILjava/util/List;ILjava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public final enqueue(ILjava/util/List;ILjava/util/List;)V
    .locals 3
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

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retainPositions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    const-string v0, "SMUSIC-SV-List"

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueRoomManager >>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enqueue"

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->queueRoomController:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->enqueue(ILjava/util/List;ILjava/util/List;)V

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

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->queueRoomController:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getAvailableItems()Ljava/util/List;

    move-result-object v0

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

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->queueRoomController:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getQueueItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final init(Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->init$default(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 79
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    const-string v0, "SMUSIC-SV-List"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueRoomManager >>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "init"

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->queueRoomController:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->init(Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final onContentChanged()V
    .locals 3

    .line 128
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    const-string v0, "SMUSIC-SV-List"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueRoomManager >>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onContentChanged"

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->queueRoomController:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->onContentChanged()V

    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;)V
    .locals 4

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    const-string v0, "SMUSIC-SV-List"

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueRoomManager >>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerObserver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final release()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    const-string v0, "SMUSIC-SV-List"

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueRoomManager >>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "release but observer is not empty. Please check unregister call"

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    .line 61
    :try_start_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    .line 62
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->queueRoomController:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->release()V

    return-void

    :catchall_0
    move-exception v0

    .line 60
    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/util/List;Z)V
    .locals 3
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

    .line 103
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    const-string v0, "SMUSIC-SV-List"

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueRoomManager >>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "remove"

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->queueRoomController:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->remove(Ljava/util/List;Z)V

    return-void
.end method

.method public final remove([IZ)V
    .locals 1

    const-string v0, "positions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->a([I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->remove(Ljava/util/List;Z)V

    return-void
.end method

.method public final removeAll()V
    .locals 3

    .line 108
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    const-string v0, "SMUSIC-SV-List"

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueRoomManager >>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "removeAll"

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->queueRoomController:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->clear()V

    return-void
.end method

.method public final reorder(II)V
    .locals 3

    .line 113
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    const-string v0, "SMUSIC-SV-List"

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueRoomManager >>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "reorder"

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->queueRoomController:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->reorder(II)V

    return-void
.end method

.method public final restore(Ljava/util/List;)V
    .locals 4
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

    .line 123
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    const-string v0, "SMUSIC-SV-List"

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueRoomManager >>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->queueRoomController:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->restore(Ljava/util/List;)V

    return-void
.end method

.method public final setList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->setList$default(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public final setList(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    .line 85
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    const-string v0, "SMUSIC-SV-List"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueRoomManager >>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setList"

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->queueRoomController:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->setList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;)V
    .locals 4

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager$Companion;

    const-string v0, "SMUSIC-SV-List"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueRoomManager >>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterObserver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
