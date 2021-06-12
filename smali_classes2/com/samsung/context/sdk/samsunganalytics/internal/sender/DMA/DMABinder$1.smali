.class Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

.field final synthetic b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const/4 p1, 0x1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-static {p2}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Lcom/sec/android/diagmonagent/sa/IDMAInterface;)Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    .line 33
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-static {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;)Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/diagmonagent/sa/IDMAInterface;->checkToken()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 35
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->c()V

    .line 36
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-static {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Z)Z

    const-string p2, "DMABinder"

    const-string v0, "Token failed"

    .line 37
    invoke-static {p2, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Z)Z

    .line 40
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    invoke-interface {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "DMABinder"

    const-string v0, "DMA connected"

    .line 41
    invoke-static {p2, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 44
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->c()V

    .line 45
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-static {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Z)Z

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    .line 47
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Lcom/sec/android/diagmonagent/sa/IDMAInterface;)Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    return-void
.end method
