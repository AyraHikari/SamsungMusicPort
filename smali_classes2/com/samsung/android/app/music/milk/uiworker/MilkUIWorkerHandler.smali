.class public Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;,
        Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;)V
    .locals 1

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->a:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->b:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    return-void
.end method

.method private a(ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V
    .locals 9

    .line 112
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v1, -0x1869f

    .line 113
    iput v1, v0, Landroid/os/Message;->what:I

    .line 114
    new-instance v1, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;-><init>(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 p1, 0x1f4

    .line 116
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public a(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V
    .locals 6

    const/16 v4, 0x14

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->a(ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    if-eqz p1, :cond_6

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0x1869f

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;

    if-eqz v0, :cond_6

    .line 40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;

    .line 41
    iget-boolean v8, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->b:Z

    .line 42
    iget-boolean v9, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->c:Z

    .line 43
    iget-object v10, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->e:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;

    .line 45
    iget v2, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    if-gez v2, :cond_0

    const-string p1, "MilkUIWorkerHandler"

    const-string v0, "handleMessage : request retry count is over .. just finish"

    .line 46
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->b:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    const/4 v11, 0x0

    if-nez v2, :cond_1

    .line 51
    iget v2, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    const-string v2, "MilkUIWorkerHandler"

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : Callback is not registered ... Retry Count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->removeMessages(I)V

    .line 55
    iget-object v5, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->a:Ljava/lang/Runnable;

    iget v6, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    move-object v2, p0

    move v3, v8

    move v4, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->a(ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    return-void

    :cond_1
    if-eqz v8, :cond_3

    .line 60
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->b:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->a()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    if-nez v2, :cond_2

    .line 62
    iget v2, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    const-string v2, "MilkUIWorkerHandler"

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : Radio Service is not initialized ... Retry Count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->removeMessages(I)V

    .line 66
    iget-object v5, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->a:Ljava/lang/Runnable;

    iget v6, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    move-object v2, p0

    move v3, v8

    move v4, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->a(ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    .line 68
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.common.uiworker.REINITIALIZE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d()Z

    move-result v2

    if-nez v2, :cond_3

    .line 71
    iget v2, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    const-string v2, "MilkUIWorkerHandler"

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : Radio Service is not connected ... Retry Count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->removeMessages(I)V

    .line 75
    iget-object v5, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->a:Ljava/lang/Runnable;

    iget v6, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    move-object v2, p0

    move v3, v8

    move v4, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->a(ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    return-void

    :cond_3
    :goto_0
    if-eqz v10, :cond_5

    .line 94
    invoke-interface {v10}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 102
    :cond_4
    iget v2, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    const-string v2, "MilkUIWorkerHandler"

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : Runnable is not excutablbe.. Retry Count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iput-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->removeMessages(I)V

    .line 106
    iget-object v5, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->a:Ljava/lang/Runnable;

    iget v6, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    move-object v2, p0

    move v3, v8

    move v4, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->a(ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_2

    .line 95
    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->a:Ljava/lang/Runnable;

    if-eqz v2, :cond_6

    .line 96
    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 98
    iput-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->removeMessages(I)V

    :cond_6
    :goto_2
    return-void
.end method
