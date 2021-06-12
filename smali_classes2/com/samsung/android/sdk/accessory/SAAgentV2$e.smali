.class final Lcom/samsung/android/sdk/accessory/SAAgentV2$e;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->g(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    return-void

    :cond_0
    const-string p1, "[SA_SDK]SAAgentV2"

    const-string v0, "Stale agent entry. Agent already destroyed. Ignoring..."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$d;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$d;->a(Lcom/samsung/android/sdk/accessory/SAAgentV2$d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$d;->b(Lcom/samsung/android/sdk/accessory/SAAgentV2$d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$d;->c(Lcom/samsung/android/sdk/accessory/SAAgentV2$d;)Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

    move-result-object v3

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->b()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->f(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const/16 p1, 0xa04

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class could not be initialized: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Error occurred while releasing agent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->a(ILjava/lang/String;)V

    return-void

    :cond_1
    add-int/2addr p1, v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/accessory/SAAgentV2$e;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAAgentV2$e;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_2
    if-eqz v3, :cond_5

    invoke-interface {v3, v4}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->a(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->c()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/16 p1, 0xa03

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->c()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class could not be initialized: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Call super inside constructor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->a(ILjava/lang/String;)V

    return-void

    :cond_4
    if-eqz v3, :cond_5

    invoke-interface {v3, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->a(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception occurred while calling constructor of class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->c()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class instantiation error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Invalid context passed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->a(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->c()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class constructor not accessible: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->a(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->c()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_3
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class instantiation error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->a(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->c()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_4
    move-exception p1

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/16 p1, 0xa02

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constructor with Context argument not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->a(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->c()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_5
    move-exception p1

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/16 p1, 0xa01

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->a(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->c()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->c()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
