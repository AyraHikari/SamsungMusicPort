.class Lcom/samsung/android/library/beaconmanager/BleScanManager$1;
.super Ljava/lang/Object;
.source "BleScanManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/library/beaconmanager/BleScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mServiceConnection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onServiceConnected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    invoke-static {p2}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$202(Lcom/samsung/android/library/beaconmanager/BleScanManager;Lcom/samsung/android/library/beaconmanager/IBleProxyService;)Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    .line 3
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    invoke-static {p1}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$200(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    invoke-static {p1}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$300(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    invoke-static {p1}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$300(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;->onServiceConnected()V

    .line 5
    invoke-static {}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mServiceStateCallback .onServiceConnected"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$402(Lcom/samsung/android/library/beaconmanager/BleScanManager;Z)Z

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mServiceConnection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onServiceDisconnected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    invoke-static {p1}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$300(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    invoke-static {p1}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$300(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;->onServiceDisconnected()V

    .line 4
    invoke-static {}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mServiceStateCallback .onServiceDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$202(Lcom/samsung/android/library/beaconmanager/BleScanManager;Lcom/samsung/android/library/beaconmanager/IBleProxyService;)Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    .line 6
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$402(Lcom/samsung/android/library/beaconmanager/BleScanManager;Z)Z

    return-void
.end method
