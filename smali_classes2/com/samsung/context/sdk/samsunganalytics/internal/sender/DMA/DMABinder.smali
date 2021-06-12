.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

.field private c:Landroid/content/ServiceConnection;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/Callback<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->d:Z

    .line 23
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->e:Z

    .line 26
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->a:Landroid/content/Context;

    .line 28
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;

    invoke-direct {p1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->c:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;)Lcom/sec/android/diagmonagent/sa/IDMAInterface;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->b:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Lcom/sec/android/diagmonagent/sa/IDMAInterface;)Lcom/sec/android/diagmonagent/sa/IDMAInterface;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->b:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->d:Z

    return p1
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 59
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->d:Z

    if-nez v0, :cond_0

    .line 61
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.diagmonagent"

    const-string v2, "com.sec.android.diagmonagent.sa.receiver.SALogReceiverService"

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->c:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->e:Z

    const-string v0, "DMABinder"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    .line 70
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->d:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->d:Z

    return v0
.end method

.method public c()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->b:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->e:Z

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->e:Z

    const-string v0, "DMABinder"

    const-string v1, "unbind"

    .line 82
    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d()Lcom/sec/android/diagmonagent/sa/IDMAInterface;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->b:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->e:Z

    return v0
.end method
