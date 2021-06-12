.class Lcom/facebook/internal/WorkQueue$WorkNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/WorkQueue$WorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WorkQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkNode"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final callback:Ljava/lang/Runnable;

.field private isRunning:Z

.field private next:Lcom/facebook/internal/WorkQueue$WorkNode;

.field private prev:Lcom/facebook/internal/WorkQueue$WorkNode;

.field final synthetic this$0:Lcom/facebook/internal/WorkQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    const-class v0, Lcom/facebook/internal/WorkQueue;

    return-void
.end method

.method constructor <init>(Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->callback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method addToList(Lcom/facebook/internal/WorkQueue$WorkNode;Z)Lcom/facebook/internal/WorkQueue$WorkNode;
    .locals 2

    if-nez p1, :cond_0

    .line 189
    iput-object p0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object p0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    move-object p1, p0

    goto :goto_0

    .line 191
    :cond_0
    iput-object p1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 192
    iget-object v0, p1, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 193
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object p0, v1, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object p0, v0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    :goto_0
    if-eqz p2, :cond_1

    move-object p1, p0

    :cond_1
    return-object p1
.end method

.method public cancel()Z
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    invoke-static {v0}, Lcom/facebook/internal/WorkQueue;->access$100(Lcom/facebook/internal/WorkQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/internal/WorkQueue$WorkNode;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    invoke-static {v2}, Lcom/facebook/internal/WorkQueue;->access$200(Lcom/facebook/internal/WorkQueue;)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/internal/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/internal/WorkQueue;->access$202(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    const/4 v1, 0x1

    .line 150
    monitor-exit v0

    return v1

    .line 152
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method getNext()Lcom/facebook/internal/WorkQueue$WorkNode;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->isRunning:Z

    return v0
.end method

.method public moveToFront()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    invoke-static {v0}, Lcom/facebook/internal/WorkQueue;->access$100(Lcom/facebook/internal/WorkQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/internal/WorkQueue$WorkNode;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    invoke-static {v2}, Lcom/facebook/internal/WorkQueue;->access$200(Lcom/facebook/internal/WorkQueue;)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/internal/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/internal/WorkQueue;->access$202(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 162
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    invoke-static {v2}, Lcom/facebook/internal/WorkQueue;->access$200(Lcom/facebook/internal/WorkQueue;)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/facebook/internal/WorkQueue$WorkNode;->addToList(Lcom/facebook/internal/WorkQueue$WorkNode;Z)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/internal/WorkQueue;->access$202(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 164
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    .line 204
    iget-object p1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    if-ne p1, p0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 211
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object v2, v1, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 212
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object v2, v1, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 213
    iput-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    return-object p1
.end method

.method setIsRunning(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->isRunning:Z

    return-void
.end method

.method verify(Z)V
    .locals 0

    return-void
.end method
