.class Lcom/samsung/android/sdk/bixby/BixbyAppService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/bixby/BixbyAppService;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/bixby/BixbyAppService;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 156
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send command to EM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send command to EM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 162
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No Bixby Agent response callback method registered."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a(Lcom/samsung/android/sdk/bixby/BixbyAppService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 169
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to handle response command to Bixby Agent."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 172
    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 173
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-static {p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;->onResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 177
    :catch_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to send command to Bixby Agent."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
