.class public Lcom/facebook/places/internal/BleScannerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/places/internal/BleScanner;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;
    }
.end annotation


# static fields
.field private static final EDDYSTONE_PREFIX:[B

.field private static final GRAVITY_PREFIX:[B

.field private static final IBEACON_PREFIX:[B

.field private static final TAG:Ljava/lang/String; = "BleScannerImpl"


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private context:Landroid/content/Context;

.field private errorCode:I

.field private isScanInProgress:Z

.field private params:Lcom/facebook/places/internal/LocationPackageRequestParams;

.field private scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

.field private final scanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/places/internal/BluetoothScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ff4c000215"

    .line 55
    invoke-static {v0}, Lcom/facebook/places/internal/BleScannerImpl;->fromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/places/internal/BleScannerImpl;->IBEACON_PREFIX:[B

    const-string v0, "16aafe"

    .line 56
    invoke-static {v0}, Lcom/facebook/places/internal/BleScannerImpl;->fromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/places/internal/BleScannerImpl;->EDDYSTONE_PREFIX:[B

    const-string v0, "17ffab01"

    .line 57
    invoke-static {v0}, Lcom/facebook/places/internal/BleScannerImpl;->fromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/places/internal/BleScannerImpl;->GRAVITY_PREFIX:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/facebook/places/internal/BleScannerImpl;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/facebook/places/internal/BleScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/facebook/places/internal/BleScannerImpl;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$202(Lcom/facebook/places/internal/BleScannerImpl;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/facebook/places/internal/BleScannerImpl;->errorCode:I

    return p1
.end method

.method static synthetic access$300(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/facebook/places/internal/BleScannerImpl;->newBluetoothScanResult(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;

    move-result-object p0

    return-object p0
.end method

.method private static formatPayload([B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 242
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {p0}, Lcom/facebook/places/internal/BleScannerImpl;->getPayloadLength([B)I

    move-result v0

    .line 246
    invoke-static {p0, v0}, Lcom/facebook/places/internal/BleScannerImpl;->toHexString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static fromHexString(Ljava/lang/String;)[B
    .locals 7

    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 351
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 353
    div-int/lit8 v3, v2, 0x2

    .line 354
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 355
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getPayloadLength([B)I
    .locals 2

    const/4 v0, 0x0

    .line 251
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 252
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-gez v1, :cond_1

    .line 258
    array-length p0, p0

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    .line 262
    :cond_2
    array-length p0, p0

    return p0
.end method

.method private static isAdvPacketBeacon([BI)Z
    .locals 3

    add-int/lit8 v0, p1, 0x1

    .line 307
    sget-object v1, Lcom/facebook/places/internal/BleScannerImpl;->IBEACON_PREFIX:[B

    invoke-static {p0, v0, v1}, Lcom/facebook/places/internal/BleScannerImpl;->isArrayContained([BI[B)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 310
    :cond_0
    sget-object v1, Lcom/facebook/places/internal/BleScannerImpl;->EDDYSTONE_PREFIX:[B

    invoke-static {p0, v0, v1}, Lcom/facebook/places/internal/BleScannerImpl;->isArrayContained([BI[B)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 313
    :cond_1
    sget-object v0, Lcom/facebook/places/internal/BleScannerImpl;->GRAVITY_PREFIX:[B

    invoke-static {p0, p1, v0}, Lcom/facebook/places/internal/BleScannerImpl;->isArrayContained([BI[B)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 316
    :cond_2
    invoke-static {p0, p1}, Lcom/facebook/places/internal/BleScannerImpl;->isAltBeacon([BI)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static isAltBeacon([BI)Z
    .locals 4

    add-int/lit8 v0, p1, 0x5

    .line 323
    array-length v1, p0

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 324
    aget-byte v1, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 325
    aget-byte v3, p0, v3

    add-int/lit8 p1, p1, 0x4

    .line 326
    aget-byte p1, p0, p1

    .line 327
    aget-byte p0, p0, v0

    const/16 v0, 0x1b

    if-ne v1, v0, :cond_0

    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    const/16 v0, -0x42

    if-ne p1, v0, :cond_0

    const/16 p1, -0x54

    if-ne p0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method private static isArrayContained([BI[B)Z
    .locals 5

    .line 337
    array-length v0, p2

    add-int v1, p1, v0

    .line 338
    array-length v2, p0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    add-int v2, p1, v1

    .line 342
    aget-byte v2, p0, v2

    aget-byte v4, p2, v1

    if-eq v2, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static isBeacon([B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 288
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 290
    aget-byte v3, p0, v2

    if-gtz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v2

    if-le v3, v1, :cond_2

    return v0

    .line 298
    :cond_2
    invoke-static {p0, v2}, Lcom/facebook/places/internal/BleScannerImpl;->isAdvPacketBeacon([BI)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    return v0
.end method

.method private static logException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 278
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BleScannerImpl"

    .line 279
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static newBluetoothScanResult(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;
    .locals 4

    .line 228
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v1

    .line 230
    invoke-static {v1}, Lcom/facebook/places/internal/BleScannerImpl;->isBeacon([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/places/internal/BleScannerImpl;->formatPayload([B)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v1

    .line 233
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v2

    .line 234
    new-instance p0, Lcom/facebook/places/internal/BluetoothScanResult;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/places/internal/BluetoothScanResult;-><init>(Ljava/lang/String;IJ)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static toHexString([BI)Ljava/lang/String;
    .locals 6

    .line 266
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-ltz p1, :cond_0

    .line 267
    array-length v1, p0

    if-le p1, v1, :cond_1

    .line 268
    :cond_0
    array-length p1, p0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 271
    aget-byte v3, p0, v2

    const-string v4, "%02x"

    const/4 v5, 0x1

    .line 272
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private waitForMainLooper(J)V
    .locals 3

    .line 133
    :try_start_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 134
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :try_start_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    new-instance v2, Lcom/facebook/places/internal/BleScannerImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/places/internal/BleScannerImpl$1;-><init>(Lcom/facebook/places/internal/BleScannerImpl;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 151
    monitor-exit v0

    goto :goto_0

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

    const-string p2, "Exception waiting for main looper"

    .line 153
    invoke-static {p2, p1}, Lcom/facebook/places/internal/BleScannerImpl;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getErrorCode()I
    .locals 1

    monitor-enter p0

    .line 159
    :try_start_0
    iget v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->errorCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScanResults()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/places/internal/BluetoothScanResult;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    :try_start_1
    iget-object v1, p0, Lcom/facebook/places/internal/BleScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v1}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getBluetoothMaxScanResults()I

    move-result v1

    .line 167
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    new-instance v3, Lcom/facebook/places/internal/BleScannerImpl$2;

    invoke-direct {v3, p0}, Lcom/facebook/places/internal/BleScannerImpl$2;-><init>(Lcom/facebook/places/internal/BleScannerImpl;)V

    .line 176
    iget-object v4, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 179
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    iget-object v1, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v1

    .line 182
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 164
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initAndCheckEligibility()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 78
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasBluetoothPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 85
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 89
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 92
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    .line 86
    :cond_1
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->DISABLED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    .line 82
    :cond_2
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->PERMISSION_DENIED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    .line 79
    :cond_3
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->PERMISSION_DENIED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    .line 76
    :cond_4
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->NOT_SUPPORTED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 74
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startScanning()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    monitor-enter p0

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->isScanInProgress:Z

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;-><init>(Lcom/facebook/places/internal/BleScannerImpl;Lcom/facebook/places/internal/BleScannerImpl$1;)V

    iput-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->isScanInProgress:Z

    const/4 v2, 0x0

    .line 101
    iput v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->errorCode:I

    .line 103
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 105
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    .line 112
    :try_start_3
    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v3, 0x2

    .line 113
    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    const-wide/16 v3, 0x0

    .line 114
    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 115
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    invoke-virtual {v3, v1, v2, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 116
    iput-boolean v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->isScanInProgress:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    monitor-exit p0

    return-void

    .line 118
    :catch_0
    :try_start_4
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    .line 108
    :cond_0
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_0
    move-exception v0

    .line 105
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 97
    :cond_1
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->SCAN_ALREADY_IN_PROGRESS:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 95
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopScanning()V
    .locals 2

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 126
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v0}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getBluetoothFlushResultsTimeoutMs()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/places/internal/BleScannerImpl;->waitForMainLooper(J)V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->isScanInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 123
    monitor-exit p0

    throw v0
.end method
