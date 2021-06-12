.class Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "DLC Sender"

    const-string v0, "DLC Client ServiceConnected"

    .line 54
    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {p2}, Lcom/sec/spp/push/dlc/api/IDlcService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Lcom/sec/spp/push/dlc/api/IDlcService;)Lcom/sec/spp/push/dlc/api/IDlcService;

    .line 56
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->b(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->c(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->c(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "DLC Sender"

    const-string v0, "Client ServiceDisconnected"

    .line 66
    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Lcom/sec/spp/push/dlc/api/IDlcService;)Lcom/sec/spp/push/dlc/api/IDlcService;

    .line 68
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Z)Z

    return-void
.end method
