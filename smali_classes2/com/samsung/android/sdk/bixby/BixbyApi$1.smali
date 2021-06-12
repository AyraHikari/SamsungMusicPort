.class Lcom/samsung/android/sdk/bixby/BixbyApi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/data/State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/bixby/data/State;

.field final synthetic b:Lcom/samsung/android/sdk/bixby/BixbyApi;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/bixby/BixbyApi;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 0

    .line 1370
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->b:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iput-object p2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->a:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1373
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->b:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi;)Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0x12c

    .line 1375
    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->b:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Lcom/samsung/android/sdk/bixby/BixbyApi;)I

    move-result v2

    const/16 v3, 0x21

    if-le v2, v3, :cond_0

    .line 1376
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->j()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sendState: Failed to call onStateReceived()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->b:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void

    .line 1380
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->b:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->b:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1381
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->b:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->c(Lcom/samsung/android/sdk/bixby/BixbyApi;)I

    .line 1382
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendState: Interim Listener is not set. Waiting for it."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1384
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendState: Call onStateReceived() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->a:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/State;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->b:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi;)Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->a:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-interface {v0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V

    .line 1386
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->b:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :goto_0
    return-void
.end method
