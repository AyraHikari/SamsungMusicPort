.class public LMarkany/MILK/DRM/DRMManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_OPEN_MODE:Ljava/lang/String; = "default"

.field private static final DOMAIN:Ljava/lang/String; = "MILK"

.field private static final LICENSE_ISSUE_URL:Ljava/lang/String; = "https://drm.glb.samsungmilkradio.com/license/issue"

.field private static final TAG:Ljava/lang/String; = "MDRM-DRMManager"

.field private static final TIME_SERVER:Ljava/lang/String; = "http://www.csafer.net/XSync/RTCTimer/RTCTimer.asp"

.field private static volatile sDrmManager:LMarkany/MILK/DRM/DRMManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mContentPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDrmServer:Lcom/markany/drm/xsync/DRMServer;

.field private mIsRunning:Z

.field private final mLock:Ljava/lang/Object;

.field private mValidPeriodFormat:Ljava/text/DateFormat;

.field private secureDbPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mLock:Ljava/lang/Object;

    .line 79
    iput-object p1, p0, LMarkany/MILK/DRM/DRMManager;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LMarkany/MILK/DRM/DRMManager;->secureDbPath:Ljava/lang/String;

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/SamsungMusic/Download"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LMarkany/MILK/DRM/DRMManager;->mContentPath:Ljava/lang/String;

    .line 84
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddhhmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, LMarkany/MILK/DRM/DRMManager;->mValidPeriodFormat:Ljava/text/DateFormat;

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, LMarkany/MILK/DRM/DRMManager;->mIsRunning:Z

    .line 88
    invoke-direct {p0}, LMarkany/MILK/DRM/DRMManager;->initDrmServer()V

    return-void
.end method

.method private closeServer()Z
    .locals 4

    const-string v0, "MDRM-DRMManager"

    const-string v1, "closeServer : __ CLOSE SERVER ___"

    .line 332
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LMarkany/MILK/DRM/DRMManager;->mIsRunning:Z

    if-eqz v0, :cond_0

    const-string v0, "MDRM-DRMManager"

    const-string v2, "closeServer : -- stop mDrmServer --"

    .line 335
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0}, Lcom/markany/drm/xsync/DRMServer;->Stop()Z

    move-result v0

    .line 337
    iget-object v2, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v2}, Lcom/markany/drm/xsync/DRMServer;->delete()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 341
    iput-boolean v1, p0, LMarkany/MILK/DRM/DRMManager;->mIsRunning:Z

    :cond_1
    const-string v1, "MDRM-DRMManager"

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeServer : ___ CLOSE SERVER ___ result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private completeDRMLicense(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MDRM-DRMManager"

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeDRMLicense - track id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/music/network/request/order/DRMApis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)LMarkany/MILK/DRM/DRMManager;
    .locals 2

    .line 68
    sget-object v0, LMarkany/MILK/DRM/DRMManager;->sDrmManager:LMarkany/MILK/DRM/DRMManager;

    if-nez v0, :cond_1

    .line 69
    const-class v0, LMarkany/MILK/DRM/DRMManager;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, LMarkany/MILK/DRM/DRMManager;->sDrmManager:LMarkany/MILK/DRM/DRMManager;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, LMarkany/MILK/DRM/DRMManager;

    invoke-direct {v1, p0}, LMarkany/MILK/DRM/DRMManager;-><init>(Landroid/content/Context;)V

    sput-object v1, LMarkany/MILK/DRM/DRMManager;->sDrmManager:LMarkany/MILK/DRM/DRMManager;

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 75
    :cond_1
    :goto_0
    sget-object p0, LMarkany/MILK/DRM/DRMManager;->sDrmManager:LMarkany/MILK/DRM/DRMManager;

    return-object p0
.end method

.method private getLicense(Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;Lcom/markany/drm/xsync/LicenseData;)I
    .locals 1

    .line 182
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;->a(Lcom/markany/drm/xsync/LicenseData;)I

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-direct {p0, p2}, LMarkany/MILK/DRM/DRMManager;->getLicenseResult(Lcom/markany/drm/xsync/LicenseData;)I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 184
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getLicense(Ljava/lang/String;Lcom/markany/drm/xsync/LicenseData;)I
    .locals 3

    .line 189
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    const-string v2, "MILK"

    invoke-virtual {v1, v2, p1, p2}, Lcom/markany/drm/xsync/DRMServer;->GetLicense(Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/LicenseData;)I

    .line 191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-direct {p0, p2}, LMarkany/MILK/DRM/DRMManager;->getLicenseResult(Lcom/markany/drm/xsync/LicenseData;)I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 191
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getLicenseResult(Lcom/markany/drm/xsync/LicenseData;)I
    .locals 4

    .line 197
    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getLicenseType()Lcom/markany/drm/xsync/LicenseType;

    move-result-object v0

    const-string v1, "MDRM-DRMManager"

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/markany/drm/xsync/LicenseType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getCID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getReadable()Z

    move-result v1

    const/16 v2, -0xc8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 200
    sget-object v1, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    invoke-virtual {v0}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const-string p1, "MDRM-DRMManager"

    const-string v0, "LICENSE_NONE_MATCHED"

    .line 244
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "MDRM-DRMManager"

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MDRM-DRMManager"

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MDRM-DRMManager"

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceKey: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getDeviceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MDRM-DRMManager"

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Date : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getStartDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MDRM-DRMManager"

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End Date : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MDRM-DRMManager"

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Description: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "MDRM-DRMManager"

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MDRM-DRMManager"

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End Date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "MDRM-DRMManager"

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Date : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getStartDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MDRM-DRMManager"

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End Date : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "MDRM-DRMManager"

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MDRM-DRMManager"

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End Date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "MDRM-DRMManager"

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getDeviceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "MDRM-DRMManager"

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x190

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "MDRM-DRMManager"

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getDomain()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "MDRM-DRMManager"

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "MDRM-DRMManager"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MDRM-DRMManager"

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End Date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x65

    goto :goto_1

    .line 247
    :cond_0
    sget-object v1, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    invoke-virtual {v0}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    const-string p1, "MDRM-DRMManager"

    const-string v0, "NONE_MATCHED_LICENSE"

    .line 260
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    const-string v0, "MDRM-DRMManager"

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MDRM-DRMManager"

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End Date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_a
    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    :pswitch_b
    const/16 v2, -0x8fc

    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_a
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private getValidPeriod(Ljava/lang/String;)J
    .locals 4

    .line 385
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mValidPeriodFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "MDRM-DRMManager"

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValidPeriodInternal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private initDrmServer()V
    .locals 4

    const-string v0, "MDRM-DRMManager"

    const-string v1, "initDrmServer"

    .line 92
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/markany/drm/xsync/DRMServer;

    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mContentPath:Ljava/lang/String;

    iget-object v2, p0, LMarkany/MILK/DRM/DRMManager;->secureDbPath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/markany/drm/xsync/DRMServer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    .line 94
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    const-string v1, "com.sec.android.app.music:playerService"

    invoke-virtual {v0, v1}, Lcom/markany/drm/xsync/DRMServer;->SetPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    const-string v1, "mdrm"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Lcom/markany/drm/xsync/DRMServer;->SetMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    const-string v1, "http://www.csafer.net/XSync/RTCTimer/RTCTimer.asp"

    invoke-virtual {v0, v1}, Lcom/markany/drm/xsync/DRMServer;->SetTimeServer(Ljava/lang/String;)Z

    .line 97
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0}, Lcom/markany/drm/xsync/DRMServer;->UpdateTime()Z

    .line 98
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    const/16 v1, 0x1b58

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/markany/drm/xsync/DRMServer;->SetTimeOut(II)V

    .line 99
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/markany/drm/xsync/DRMServer;->SetDeviceKey(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/markany/drm/xsync/DRMServer;->SetUserID(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public closeMDrm(Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;)V
    .locals 2

    .line 133
    invoke-interface {p1}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;->c()Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    move-result-object v0

    .line 134
    sget-object v1, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$samsung$android$app$music$service$drm$IMilkDrmOpen$DrmOpenType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    invoke-interface {p1}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;->a()Lcom/markany/drm/xsync/DRMSession;

    move-result-object p1

    .line 142
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0, p1}, Lcom/markany/drm/xsync/DRMServer;->CloseSession(Lcom/markany/drm/xsync/DRMSession;)V

    .line 143
    invoke-virtual {p1}, Lcom/markany/drm/xsync/DRMSession;->delete()V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-interface {p1}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;->b()Lcom/markany/drm/xsync/DRMFile;

    move-result-object p1

    .line 137
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0, p1}, Lcom/markany/drm/xsync/DRMServer;->CloseFile(Lcom/markany/drm/xsync/DRMFile;)V

    .line 138
    invoke-virtual {p1}, Lcom/markany/drm/xsync/DRMFile;->delete()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized delete()V
    .locals 1

    monitor-enter p0

    .line 379
    :try_start_0
    invoke-direct {p0}, LMarkany/MILK/DRM/DRMManager;->closeServer()Z

    const/4 v0, 0x0

    .line 380
    sput-object v0, LMarkany/MILK/DRM/DRMManager;->sDrmManager:LMarkany/MILK/DRM/DRMManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 378
    monitor-exit p0

    throw v0
.end method

.method public ensureLicense(Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;Lcom/markany/drm/xsync/LicenseData;)I
    .locals 7

    .line 149
    invoke-direct {p0, p1, p2}, LMarkany/MILK/DRM/DRMManager;->getLicense(Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;Lcom/markany/drm/xsync/LicenseData;)I

    move-result v0

    .line 151
    invoke-virtual {p2}, Lcom/markany/drm/xsync/LicenseData;->getCID()Ljava/lang/String;

    move-result-object v1

    .line 152
    iget-object v2, p0, LMarkany/MILK/DRM/DRMManager;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MDRM-DRMManager"

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLicense first - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 157
    :try_start_0
    iget-object v3, p0, LMarkany/MILK/DRM/DRMManager;->mContext:Landroid/content/Context;

    const-string v4, "01"

    invoke-static {v3, v1, v2, v4}, Lcom/samsung/android/app/music/network/request/order/DRMApis;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Lio/reactivex/Observable;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "MDRM-DRMManager"

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check server - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    :goto_0
    const-string v3, "MDRM-DRMManager"

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check server error - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v2

    if-nez v0, :cond_1

    const-string v0, "MDRM-DRMManager"

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install license start of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v1}, LMarkany/MILK/DRM/DRMManager;->installLicense(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, LMarkany/MILK/DRM/DRMManager;->restartServer()V

    .line 168
    invoke-virtual {p0, v1}, LMarkany/MILK/DRM/DRMManager;->installLicense(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const-string v2, "MDRM-DRMManager"

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install license end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 172
    invoke-direct {p0, p1, p2}, LMarkany/MILK/DRM/DRMManager;->getLicense(Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;Lcom/markany/drm/xsync/LicenseData;)I

    move-result v0

    const-string p1, "MDRM-DRMManager"

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLicense second - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, LMarkany/MILK/DRM/DRMManager;->updateValidity(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public getDrmServerState()Ljava/lang/String;
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State : "

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v1}, Lcom/markany/drm/xsync/DRMServer;->GetState()Lcom/markany/drm/xsync/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Domain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    .line 372
    invoke-virtual {v1}, Lcom/markany/drm/xsync/DRMServer;->GetDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Last Error Code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    .line 373
    invoke-virtual {v1}, Lcom/markany/drm/xsync/DRMServer;->GetLastErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", PackageName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    .line 374
    invoke-virtual {v1}, Lcom/markany/drm/xsync/DRMServer;->GetPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastErrorCode()I
    .locals 1

    .line 362
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0}, Lcom/markany/drm/xsync/DRMServer;->GetLastErrorCode()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/markany/drm/xsync/State;
    .locals 1

    .line 366
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0}, Lcom/markany/drm/xsync/DRMServer;->GetState()Lcom/markany/drm/xsync/State;

    move-result-object v0

    return-object v0
.end method

.method public installLicense(Ljava/lang/String;)I
    .locals 5

    .line 267
    new-instance v0, Lcom/markany/drm/xsync/LicenseResult;

    invoke-direct {v0}, Lcom/markany/drm/xsync/LicenseResult;-><init>()V

    .line 270
    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_0
    iget-object v2, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    const-string v3, "MILK"

    const-string v4, "https://drm.glb.samsungmilkradio.com/license/issue"

    invoke-virtual {v2, v3, p1, v4, v0}, Lcom/markany/drm/xsync/DRMServer;->InstallLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/LicenseResult;)I

    move-result v2

    .line 272
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    sget-object v1, Lcom/markany/drm/xsync/ErrorCode;->E_DRM_OK:Lcom/markany/drm/xsync/ErrorCode;

    invoke-virtual {v1}, Lcom/markany/drm/xsync/ErrorCode;->swigValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    const-string p1, "MDRM-DRMManager"

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install error : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/markany/drm/xsync/ErrorCode;->swigToEnum(I)Lcom/markany/drm/xsync/ErrorCode;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MDRM-DRMManager"

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install server : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/markany/drm/xsync/LicenseResult;->getErrCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/markany/drm/xsync/LicenseResult;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0}, Lcom/markany/drm/xsync/LicenseResult;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-direct {p0, p1}, LMarkany/MILK/DRM/DRMManager;->completeDRMLicense(Ljava/lang/String;)V

    .line 281
    :goto_0
    invoke-virtual {v0}, Lcom/markany/drm/xsync/LicenseResult;->delete()V

    return v2

    :catchall_0
    move-exception p1

    .line 272
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isDBOpened()Z
    .locals 1

    .line 104
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    if-eqz v0, :cond_0

    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0}, Lcom/markany/drm/xsync/DRMServer;->IsDBOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isServerRunning()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, LMarkany/MILK/DRM/DRMManager;->mIsRunning:Z

    return v0
.end method

.method public openMDrm(Ljava/lang/String;Z)Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;
    .locals 4

    .line 117
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_1

    .line 119
    :try_start_0
    iget-boolean p2, p0, LMarkany/MILK/DRM/DRMManager;->mIsRunning:Z

    if-nez p2, :cond_0

    const-string p2, "MDRM-DRMManager"

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v2}, Lcom/markany/drm/xsync/DRMServer;->GetState()Lcom/markany/drm/xsync/State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/markany/drm/xsync/State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, LMarkany/MILK/DRM/DRMManager;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, LMarkany/MILK/DRM/DRMManager;->runServer()Z

    .line 123
    :cond_0
    iget-object p2, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    const-string v1, "default"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p2, v1, p1}, Lcom/markany/drm/xsync/DRMServer;->OpenSession(Ljava/lang/String;Ljava/lang/String;)Lcom/markany/drm/xsync/DRMSession;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmOpenSession;->a(Lcom/markany/drm/xsync/DRMSession;)Lcom/samsung/android/app/music/service/drm/MilkDrmOpenSession;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 126
    :cond_1
    iget-object p2, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/markany/drm/xsync/DRMServer;->OpenFile(Ljava/lang/String;)Lcom/markany/drm/xsync/DRMFile;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmOpenFile;->a(Lcom/markany/drm/xsync/DRMFile;)Lcom/samsung/android/app/music/service/drm/MilkDrmOpenFile;

    move-result-object p1

    .line 128
    :goto_0
    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public recreateServer()V
    .locals 2

    const-string v0, "MDRM-DRMManager"

    const-string v1, "recreateServer : ___ RECREATE SERVER ___"

    .line 355
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    invoke-direct {p0}, LMarkany/MILK/DRM/DRMManager;->initDrmServer()V

    .line 358
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restartServer()V
    .locals 2

    const-string v0, "MDRM-DRMManager"

    const-string v1, "restartServer : ___ RESTART SERVER ___"

    .line 349
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, LMarkany/MILK/DRM/DRMManager;->recreateServer()V

    .line 351
    invoke-virtual {p0}, LMarkany/MILK/DRM/DRMManager;->runServer()Z

    return-void
.end method

.method public runServer()Z
    .locals 6

    const-string v0, "MDRM-DRMManager"

    const-string v1, "runServer : ___ RUN SERVER ___"

    .line 311
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    const/4 v1, 0x1

    const/16 v2, 0x7918

    const/16 v3, 0x7530

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0, v3, v2}, Lcom/markany/drm/xsync/DRMServer;->Start(II)Z

    move-result v0

    goto :goto_0

    .line 318
    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/DRMServer;

    iget-object v4, p0, LMarkany/MILK/DRM/DRMManager;->mContentPath:Ljava/lang/String;

    iget-object v5, p0, LMarkany/MILK/DRM/DRMManager;->secureDbPath:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v1}, Lcom/markany/drm/xsync/DRMServer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    .line 319
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0, v3, v2}, Lcom/markany/drm/xsync/DRMServer;->Start(II)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 323
    iput-boolean v1, p0, LMarkany/MILK/DRM/DRMManager;->mIsRunning:Z

    :cond_1
    const-string v1, "MDRM-DRMManager"

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runServer : ___ RUN SERVER ___ result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setDeviceKey(Ljava/lang/String;)V
    .locals 1

    .line 108
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0, p1}, Lcom/markany/drm/xsync/DRMServer;->SetDeviceKey(Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .line 112
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0, p1}, Lcom/markany/drm/xsync/DRMServer;->SetUserID(Ljava/lang/String;)V

    return-void
.end method

.method public updateAllExpiryDate(Ljava/lang/String;)J
    .locals 2

    const-string v0, "MDRM-DRMManager"

    const-string v1, "updateAllExpiryDate"

    .line 396
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0, p1}, Lcom/markany/drm/xsync/DRMServer;->DBUpdateAllExpiryDate(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public updateValidity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 293
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;

    const-string v1, "track_id"

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "validity"

    .line 297
    invoke-direct {p0, p2}, LMarkany/MILK/DRM/DRMManager;->getValidPeriod(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 299
    iget-object p2, p0, LMarkany/MILK/DRM/DRMManager;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selection:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 300
    invoke-static {p2, v2, v1, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    const-string v0, "MDRM-DRMManager"

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateValidity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
