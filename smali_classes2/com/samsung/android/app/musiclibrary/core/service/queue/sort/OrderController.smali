.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mIsRunning:Z

.field private mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

.field private final mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

.field private final mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private final mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mIsRunning:Z

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 47
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    .line 48
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    return-void
.end method

.method private buildUpSortList(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;IZ)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;->setOnResultListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V

    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 180
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    goto :goto_0

    .line 169
    :pswitch_0
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p2, v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;I)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    goto :goto_0

    .line 166
    :pswitch_1
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    goto :goto_0

    .line 172
    :pswitch_2
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    goto :goto_0

    .line 175
    :pswitch_3
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    .line 183
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 184
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mIsRunning:Z

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 188
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;->syncExecute()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    move-result-object p1

    .line 189
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;->positionList:Ljava/util/List;

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->setList(Ljava/util/List;)V

    .line 190
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " buildUpSortList() end size : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;->positionList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->printInfoLog(Ljava/lang/String;)V

    .line 191
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mIsRunning:Z

    return-void

    .line 194
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;->setOnResultListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V

    .line 195
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cleanPositions(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-List"

    .line 157
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->clearList()V

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->setSortMode(IZ)Z

    return-void
.end method

.method public clearList()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;->setOnResultListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mIsRunning:Z

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->setList(Ljava/util/List;)V

    return-void
.end method

.method public createSortList(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mIsRunning:Z

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->setList(Ljava/util/List;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->getSortMode()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->buildUpSortList(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;IZ)V

    return-void
.end method

.method public getSortInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->getSortMode()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->getOrderedList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->getSortInfo(ILjava/util/List;)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mIsRunning:Z

    return v0
.end method

.method public onResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;->positionList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->setList(Ljava/util/List;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onResult() end size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;->positionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->printInfoLog(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)V

    :cond_0
    const/4 p1, 0x0

    .line 205
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mIsRunning:Z

    return-void
.end method

.method public removePositions([II)I
    .locals 9

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->getOrderedList()Ljava/util/ArrayList;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget v6, p1, v5

    .line 103
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_0

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " pos : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " sortList.size : "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->printInfoLog(Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    .line 114
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 119
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 120
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_4

    .line 121
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 122
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-ge v3, p2, :cond_3

    add-int/lit8 p2, p2, -0x1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 127
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->cleanPositions(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->setList(Ljava/util/List;)V

    if-ltz p2, :cond_7

    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_5

    const/4 p2, 0x0

    .line 137
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_6
    return v4

    :cond_7
    return p2
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->setList(Ljava/util/List;)V

    return-void
.end method

.method public setSortMode(IZ)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->getSortMode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->setSortMode(I)V

    if-eqz p2, :cond_1

    .line 88
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setSortMode(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
