.class Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;
.super Landroid/bluetooth/le/ScanCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/internal/BleScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanCallBackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/places/internal/BleScannerImpl;


# direct methods
.method private constructor <init>(Lcom/facebook/places/internal/BleScannerImpl;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/internal/BleScannerImpl;Lcom/facebook/places/internal/BleScannerImpl$1;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;-><init>(Lcom/facebook/places/internal/BleScannerImpl;)V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 196
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-static {v0}, Lcom/facebook/places/internal/BleScannerImpl;->access$300(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .line 200
    invoke-static {v1}, Lcom/facebook/places/internal/BleScannerImpl;->access$400(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-static {v2}, Lcom/facebook/places/internal/BleScannerImpl;->access$300(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "Exception in ble scan callback"

    .line 207
    invoke-static {v0, p1}, Lcom/facebook/places/internal/BleScannerImpl;->access$100(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public onScanFailed(I)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    .line 191
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-static {v0, p1}, Lcom/facebook/places/internal/BleScannerImpl;->access$202(Lcom/facebook/places/internal/BleScannerImpl;I)I

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 1

    .line 213
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 215
    :try_start_0
    iget-object p1, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-static {p1}, Lcom/facebook/places/internal/BleScannerImpl;->access$300(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :try_start_1
    invoke-static {p2}, Lcom/facebook/places/internal/BleScannerImpl;->access$400(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 218
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-static {v0}, Lcom/facebook/places/internal/BleScannerImpl;->access$300(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "Exception in ble scan callback"

    .line 222
    invoke-static {p2, p1}, Lcom/facebook/places/internal/BleScannerImpl;->access$100(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
