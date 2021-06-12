.class Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;)V
    .locals 0

    .line 1343
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$3;->this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(ILjava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueueRoom onChanged() state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " first size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " 2\'nd size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1347
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printDebuggingLog(Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$3;->this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$1300(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->isLoadFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "QueueRoom onChanged() but there is before reload."

    .line 1351
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    .line 1356
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "QueueRoom onChanged() RESTORE but there is no items."

    .line 1357
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    return-void

    .line 1360
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$3;->this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->access$1400(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1361
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$3;->this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->access$1400(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1363
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$3;->this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->access$1400(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreRequest;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$3;->this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    invoke-direct {v0, v2, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$RestoreRequest;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1365
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$3;->this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->access$1400(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1367
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$3;->this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->access$1400(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1368
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$3;->this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->access$1400(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    :goto_0
    return-void
.end method
