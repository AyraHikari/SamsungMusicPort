.class final Lcom/samsung/android/sdk/accessory/SASocket$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessory/SASocket;->b(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

.field private synthetic d:Lcom/samsung/android/sdk/accessory/SASocket;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SAAdapter;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->d:Lcom/samsung/android/sdk/accessory/SASocket;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->a:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->c:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->a:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->c:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->c:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->f()J

    move-result-wide v4

    new-instance v6, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;

    iget-object v7, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->d:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-direct {v6, v7, v0}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$1;)V

    new-instance v7, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;

    iget-object v8, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->d:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-direct {v7, v8, v0}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$1;)V

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connection accepted successfully. connection Id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->d:Lcom/samsung/android/sdk/accessory/SASocket;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/samsung/android/sdk/accessory/SASocket;->a(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to accept service connection: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/d;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->d:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/d;->a()I

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/accessory/SASocket;->a(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;I)V

    return-void
.end method
