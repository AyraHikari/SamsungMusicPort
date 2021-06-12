.class Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoomObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreComparator;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreRequest;
    }
.end annotation


# static fields
.field private static final MSG_RELOAD_FROM_ROOM:I = 0x1


# instance fields
.field private final mAddedListComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/os/Handler$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;

.field private final mRestoreComparator:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreComparator;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;Landroid/os/Looper;)V
    .locals 1

    .line 1248
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1244
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreComparator;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreComparator;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->mRestoreComparator:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreComparator;

    .line 1256
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->mCallback:Landroid/os/Handler$Callback;

    .line 1335
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->mAddedListComparator:Ljava/util/Comparator;

    .line 1343
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;

    .line 1249
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;)Landroid/os/Handler;
    .locals 0

    .line 1241
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreRequest;)V
    .locals 0

    .line 1241
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->restoreQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreRequest;)V

    return-void
.end method

.method private getAddedList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1325
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->mAddedListComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1327
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1329
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1331
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAddedList list ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printDebuggingLog(Ljava/lang/String;)V

    return-object v0
.end method

.method private restoreQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreRequest;)V
    .locals 14

    const-string v0, "restoreQueue"

    .line 1270
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Ljava/util/List;

    move-result-object v0

    .line 1272
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->mRestoreComparator:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreComparator;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreRequest;->availableItems:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreComparator;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "restoreQueue but both is not same."

    .line 1273
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    return-void

    .line 1277
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)I

    move-result v4

    .line 1283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreQueue playPos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 1284
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreRequest;->queueItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;

    .line 1285
    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->getVirtualState()I

    move-result v8

    const/4 v10, 0x3

    if-eq v8, v10, :cond_1

    .line 1287
    new-instance v10, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->getAudioId()J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->getPlaylistId()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;-><init>(JLjava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1288
    new-instance v10, Landroid/util/Pair;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->getAddedIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v10, v11, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    if-ne v8, v7, :cond_1

    .line 1290
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1291
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v7, v8

    if-lt v4, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    add-int v6, v4, v5

    .line 1299
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreQueue calculate play position = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " addPlayPosIndex : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restore size "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1299
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 1302
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "restoreQueue but restore is empty."

    .line 1303
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    return-void

    .line 1308
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreQueue newList = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printDebuggingLog(Ljava/lang/String;)V

    .line 1309
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$1000(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->restore(Ljava/util/List;)V

    .line 1310
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$1100(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object p1

    new-instance v10, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1311
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->getAddedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v11, 0x0

    move-object v1, v10

    move v2, v4

    move-object v4, v5

    move-object v5, v7

    move v7, v8

    move v8, v11

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;IZZ)V

    .line 1310
    invoke-virtual {p1, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V

    .line 1314
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1315
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0, v9, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;IZZ)V

    .line 1317
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    const/4 v0, 0x4

    invoke-static {p1, v9, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;ZI)V

    const-string p1, "restoreQueue end. queue changed."

    .line 1318
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getObserver()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;

    return-object v0
.end method
