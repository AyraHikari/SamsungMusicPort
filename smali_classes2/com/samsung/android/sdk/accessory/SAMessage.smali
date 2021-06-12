.class public abstract Lcom/samsung/android/sdk/accessory/SAMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;,
        Lcom/samsung/android/sdk/accessory/SAMessage$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private c:Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SA_SDK]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/accessory/SAMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(JII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(JII)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Ack failed! "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/io/IOException;

    const-string p3, "Send Failed"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    const-string p1, "onMessageReceived(): Agent info empty!"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-class v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "com.samsung.accessory.adapter.extra.READ_BYTES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "com.samsung.accessory.adapter.extra.READ_LENGHT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v1, "com.samsung.accessory.adapter.extra.READ_OFFSET"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "fragmentIndex"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "peerAgent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string v1, "transactionId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v7}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->b()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    invoke-static {v1, v8, v9, v2}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const/16 v12, 0x706

    const/4 v13, 0x2

    :try_start_0
    invoke-virtual {v7}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->d()I

    move-result v2

    move-object v1, v10

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/accessory/i;->b(Ljava/lang/Object;II[BII)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    :try_start_1
    invoke-static {v10}, Lcom/samsung/android/sdk/accessory/i;->a(Ljava/lang/Object;)[B

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v7, v2}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v11, 0x700

    goto :goto_2

    :catchall_0
    move-exception p1

    move v11, v1

    goto/16 :goto_7

    :catch_0
    move-exception v2

    move v11, v1

    goto :goto_5

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :goto_1
    const/16 v11, 0x706

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b([B)V

    if-lez v11, :cond_6

    :try_start_2
    invoke-direct {p0, v8, v9, p1, v11}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(JII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_3
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to send message status! "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eq v1, v13, :cond_7

    invoke-static {v10}, Lcom/samsung/android/sdk/accessory/i;->b(Ljava/lang/Object;)V

    return-void

    :goto_3
    if-eq v1, v13, :cond_5

    invoke-static {v10}, Lcom/samsung/android/sdk/accessory/i;->b(Ljava/lang/Object;)V

    :cond_5
    throw p0

    :cond_6
    :goto_4
    if-eq v1, v13, :cond_7

    invoke-static {v10}, Lcom/samsung/android/sdk/accessory/i;->b(Ljava/lang/Object;)V

    :cond_7
    return-void

    :catchall_2
    move-exception p1

    goto :goto_7

    :catch_2
    move-exception v2

    :goto_5
    :try_start_4
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in onRead! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b([B)V

    :try_start_5
    invoke-direct {p0, v8, v9, p1, v12}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(JII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eq v11, v13, :cond_8

    invoke-static {v10}, Lcom/samsung/android/sdk/accessory/i;->b(Ljava/lang/Object;)V

    return-void

    :catchall_3
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    :try_start_6
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send message status! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eq v11, v13, :cond_8

    invoke-static {v10}, Lcom/samsung/android/sdk/accessory/i;->b(Ljava/lang/Object;)V

    :cond_8
    return-void

    :goto_6
    if-eq v11, v13, :cond_9

    invoke-static {v10}, Lcom/samsung/android/sdk/accessory/i;->b(Ljava/lang/Object;)V

    :cond_9
    throw p0

    :goto_7
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b([B)V

    if-eq v11, v13, :cond_a

    invoke-static {v10}, Lcom/samsung/android/sdk/accessory/i;->b(Ljava/lang/Object;)V

    :cond_a
    throw p1

    :cond_b
    :goto_8
    sget-object p0, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    const-string p1, "onMessageReceived(): PeerAgent is null!"

    goto/16 :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V
    .locals 3

    const-class v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "peerAgent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string v1, "transactionId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "errorcode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x700

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    return-void

    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;II)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->d:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/accessory/SAMessage$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sdk/accessory/SAMessage$a;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to un-register Mex callback! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/d;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method final a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->d:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/accessory/SAMessage$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sdk/accessory/SAMessage$a;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
.end method

.method protected abstract a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;II)V
.end method

.method protected abstract a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)V
.end method

.method final a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->d(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->c:Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V

    return-void
.end method
