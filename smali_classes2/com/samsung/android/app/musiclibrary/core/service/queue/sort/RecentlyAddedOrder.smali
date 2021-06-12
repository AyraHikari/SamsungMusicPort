.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final NAME:Ljava/lang/String; = "RecentlyAddedOrder"

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private final mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;

.field private mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;

    return-void
.end method

.method private notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)V

    :cond_0
    return-object p1
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-List"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->syncExecute()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    return-void
.end method

.method public setOnResultListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    return-void
.end method

.method public syncExecute()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
    .locals 2

    const-string v0, "execute() start"

    .line 44
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->printLog(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;->playList:[J

    if-eqz v0, :cond_1

    .line 46
    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;->addedOrderList:Ljava/util/List;

    .line 51
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    move-result-object v0

    return-object v0

    .line 47
    :cond_1
    :goto_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    move-result-object v0

    return-object v0
.end method
