.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder$StorageArgsSpec;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final NAME:Ljava/lang/String; = "StorageOrder"

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;

.field private mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

.field private final mStorageLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;

    .line 44
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mStorageLocation:I

    return-void
.end method

.method private notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;J)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
    .locals 0

    .line 113
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    if-eqz p2, :cond_0

    .line 114
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)V

    :cond_0
    const-string p2, "execute() end"

    .line 116
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->printLog(Ljava/lang/String;)V

    return-object p1
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-List"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-List"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->NAME:Ljava/lang/String;

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

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->syncExecute()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    return-void
.end method

.method public setOnResultListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    return-void
.end method

.method public syncExecute()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
    .locals 10

    const-string v0, "execute() start"

    .line 59
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->printLog(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;->playList:[J

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    .line 65
    array-length v3, v0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "_id"

    .line 70
    invoke-static {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    .line 71
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder$StorageArgsSpec;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;

    iget-object v5, v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;->baseUri:Landroid/net/Uri;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder$StorageArgsSpec;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueItemUtils;->getSortList(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Ljava/util/List;

    move-result-object v3

    .line 78
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 88
    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_1

    .line 89
    aget-wide v8, v0, v7

    cmp-long v8, v8, v5

    if-nez v8, :cond_2

    .line 90
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 106
    :cond_3
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    invoke-direct {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;J)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    move-result-object v0

    return-object v0

    .line 66
    :cond_4
    :goto_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;J)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    move-result-object v0

    return-object v0
.end method
