.class final Lcom/samsung/android/sdk/accessory/SASocket$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessory/SASocket;->a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

.field private synthetic c:Lcom/samsung/android/sdk/accessory/SASocket;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->c:Lcom/samsung/android/sdk/accessory/SASocket;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->b:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->c:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->a(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->b:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    new-instance v3, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->c:Lcom/samsung/android/sdk/accessory/SASocket;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$1;)V

    new-instance v4, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;

    iget-object v6, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->c:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-direct {v4, v6, v5}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I

    move-result v0
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to initiate connection!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/d;->a()I

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection request enqued successfully for peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->b:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection request failed for peer:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->b:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Cleaning up now"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->c:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->b(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->c:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->b(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$a;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->b:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/sdk/accessory/SASocket$a;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->c:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->c(Lcom/samsung/android/sdk/accessory/SASocket;)V

    return-void
.end method
