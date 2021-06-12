.class public Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-class v0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->a:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(I)Z
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;->close()V

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 49
    iput v2, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->c:I

    const/4 v2, 0x1

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeSocketConnection("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): map size = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    .line 54
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/app/music/service/accessory/message/SAPMessageListener;)Z
    .locals 4

    .line 24
    check-cast p1, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 27
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;->setReceiveListener(Lcom/samsung/android/app/music/service/accessory/message/SAPMessageListener;)V

    .line 28
    iget-object p2, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->c:I

    const/4 p2, 0x1

    .line 31
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSocketConnection("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): map size = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;

    return-object v0
.end method
