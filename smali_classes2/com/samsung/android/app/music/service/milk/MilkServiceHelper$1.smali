.class Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;
.super Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceResult(IIILandroid/content/Intent;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v0, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    const-string v1, "MilkServiceHelper"

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceResult() onServiceResult : reqID - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reqType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rspType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "reason - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, v9, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 60
    :try_start_0
    iget-object v1, v9, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->b(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, v9, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-static {v1, v12}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Landroid/content/Intent;)V

    .line 62
    iget-object v1, v9, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->b(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    if-eqz v3, :cond_0

    .line 64
    iget-object v1, v9, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->b(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    const-string v1, "responseData"

    .line 68
    invoke-virtual {v12, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    const-string v1, "responseExtData"

    .line 70
    invoke-virtual {v12, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, [Ljava/lang/Object;

    .line 72
    iget-object v1, v9, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v1, v0, v10, v12}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(IILandroid/content/Intent;)Z

    move-result v14

    const-string v1, "MilkServiceHelper"

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceResult() broadcast - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", callback - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", reqMapSize - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 76
    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->b(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reqMap - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 77
    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->b(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 80
    iget-object v1, v9, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->c(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/os/Handler;

    move-result-object v15

    new-instance v6, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;

    move-object v1, v6

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object v0, v6

    move/from16 v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;-><init>(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;IIILjava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v14, :cond_3

    .line 88
    iget-object v0, v9, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11, v12}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(IIILandroid/content/Intent;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, v9, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v10, v11, v12}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(IIILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "MilkServiceHelper"

    const-string v1, "onServiceResult() onServiceResult : context or reqmap is null"

    .line 94
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_3
    :goto_0
    monitor-exit v13

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
