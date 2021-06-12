.class Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/internal/WifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanResultBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/places/internal/WifiScannerImpl;


# direct methods
.method private constructor <init>(Lcom/facebook/places/internal/WifiScannerImpl;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;->this$0:Lcom/facebook/places/internal/WifiScannerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/internal/WifiScannerImpl;Lcom/facebook/places/internal/WifiScannerImpl$1;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;-><init>(Lcom/facebook/places/internal/WifiScannerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p1, "android.net.wifi.SCAN_RESULTS"

    .line 275
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;->this$0:Lcom/facebook/places/internal/WifiScannerImpl;

    invoke-static {p1}, Lcom/facebook/places/internal/WifiScannerImpl;->access$100(Lcom/facebook/places/internal/WifiScannerImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 277
    :try_start_0
    iget-object p2, p0, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;->this$0:Lcom/facebook/places/internal/WifiScannerImpl;

    invoke-static {p2}, Lcom/facebook/places/internal/WifiScannerImpl;->access$100(Lcom/facebook/places/internal/WifiScannerImpl;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 278
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    iget-object p1, p0, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;->this$0:Lcom/facebook/places/internal/WifiScannerImpl;

    invoke-static {p1}, Lcom/facebook/places/internal/WifiScannerImpl;->access$200(Lcom/facebook/places/internal/WifiScannerImpl;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 278
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
