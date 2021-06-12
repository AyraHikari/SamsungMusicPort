.class public Lcom/mapps/android/share/ShareUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;,
        Lcom/mapps/android/share/ShareUtil$CODETYPE;,
        Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;,
        Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;
    }
.end annotation


# static fields
.field private static mShareInstance:Lcom/mapps/android/share/ShareUtil;


# instance fields
.field public DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

.field private final NOT_SUPPORTED_VERSION:I

.field public advertise_ID:Ljava/lang/String;

.field public mConfhandler:Landroid/os/Handler;

.field public m_media:Ljava/lang/String;

.field public m_publisher:Ljava/lang/String;

.field public m_section:Ljava/lang/String;

.field public preference:Lcom/mz/common/utils/AdPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    const-string v1, ""

    .line 33
    iput-object v1, p0, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    const-string v1, ""

    .line 34
    iput-object v1, p0, Lcom/mapps/android/share/ShareUtil;->m_section:Ljava/lang/String;

    const-string v1, ""

    .line 35
    iput-object v1, p0, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->mConfhandler:Landroid/os/Handler;

    const/16 v0, 0x13

    .line 40
    iput v0, p0, Lcom/mapps/android/share/ShareUtil;->NOT_SUPPORTED_VERSION:I

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;ILjava/lang/String;)Z
    .locals 0

    .line 527
    invoke-direct {p0, p1, p2, p3}, Lcom/mapps/android/share/ShareUtil;->checkInterval(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private checkInterval(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    .line 528
    new-instance v9, Lcom/mapps/android/share/Track;

    invoke-direct {v9}, Lcom/mapps/android/share/Track;-><init>()V

    const/4 v10, 0x1

    .line 530
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd a hh:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 531
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 532
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ad_time"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mapps/android/share/ShareUtil;->m_section:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v3, ""

    .line 534
    invoke-virtual {v9, v0, v12}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 535
    invoke-virtual {v9, v0, v12}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, ""

    .line 536
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 537
    new-instance v4, Ljava/text/ParsePosition;

    const/4 v13, 0x0

    invoke-direct {v4, v13}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 538
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 540
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 541
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 542
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    .line 544
    div-long v14, v4, v2

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interval_sec : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mapps/android/share/ShareUtil;->m_section:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 547
    iget-object v4, v1, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    iget-object v5, v1, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    iget-object v6, v1, Lcom/mapps/android/share/ShareUtil;->m_section:Ljava/lang/String;

    move-object v2, v9

    move-object/from16 v3, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/mapps/android/share/Track;->getInterval(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "interval_sec : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    if-lez v2, :cond_1

    int-to-long v2, v2

    cmp-long v4, v14, v2

    if-lez v4, :cond_0

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sectime : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "It need interval Time ("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    sub-long/2addr v2, v14

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")sec"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    return v13

    :cond_1
    const-string v2, "interval pass"

    .line 557
    invoke-static {v2}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_2
    invoke-virtual {v9, v0, v12, v11}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 564
    :cond_3
    :goto_0
    invoke-virtual {v9, v0, v12, v11}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 567
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v10
.end method

.method public static getInstance()Lcom/mapps/android/share/ShareUtil;
    .locals 1

    .line 50
    sget-object v0, Lcom/mapps/android/share/ShareUtil;->mShareInstance:Lcom/mapps/android/share/ShareUtil;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/mapps/android/share/ShareUtil;

    invoke-direct {v0}, Lcom/mapps/android/share/ShareUtil;-><init>()V

    sput-object v0, Lcom/mapps/android/share/ShareUtil;->mShareInstance:Lcom/mapps/android/share/ShareUtil;

    .line 53
    :cond_0
    sget-object v0, Lcom/mapps/android/share/ShareUtil;->mShareInstance:Lcom/mapps/android/share/ShareUtil;

    return-object v0
.end method


# virtual methods
.method public getAccount(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 0

    .line 408
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public getAdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "&d_adid="

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/mapps/android/share/ShareUtil;->getgoogleAdvertiseID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAdvertisingId(Landroid/content/Context;)V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/share/ShareUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/share/ShareUtil$1;-><init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    new-instance v0, Lcom/mapps/android/share/GetAdvertisingIdTask;

    new-instance v1, Lcom/mapps/android/share/ShareUtil$2;

    invoke-direct {v1, p0}, Lcom/mapps/android/share/ShareUtil$2;-><init>(Lcom/mapps/android/share/ShareUtil;)V

    invoke-direct {v0, p1, v1}, Lcom/mapps/android/share/GetAdvertisingIdTask;-><init>(Landroid/content/Context;Lcom/mz/common/listener/AdvertisingIdListener;)V

    const/4 p1, 0x0

    .line 121
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/mapps/android/share/GetAdvertisingIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getAdvertisingIdForResult(Landroid/os/Handler;Landroid/content/Context;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V
    .locals 8

    .line 130
    new-instance v5, Lcom/mapps/android/share/GetAdvertisingIdTask;

    new-instance v0, Lcom/mapps/android/share/ShareUtil$3;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/mapps/android/share/ShareUtil$3;-><init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;Landroid/os/Handler;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V

    invoke-direct {v5, p2, v0}, Lcom/mapps/android/share/GetAdvertisingIdTask;-><init>(Landroid/content/Context;Lcom/mz/common/listener/AdvertisingIdListener;)V

    .line 157
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/mapps/android/share/ShareUtil$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/mapps/android/share/ShareUtil$4;-><init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;Landroid/os/Handler;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;Lcom/mapps/android/share/GetAdvertisingIdTask;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getDeviceHeader()Ljava/lang/String;
    .locals 2

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mapps/android/share/ShareUtil;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Android MezzoSDKVer=2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil;->DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/mapps/android/bean/DeviceInfoBean;

    invoke-direct {v0}, Lcom/mapps/android/bean/DeviceInfoBean;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil;->DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

    invoke-virtual {v0, p1, p2}, Lcom/mapps/android/bean/DeviceInfoBean;->getDeviceParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHHtoSec(Ljava/lang/String;)J
    .locals 5

    const-string v0, ""

    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    .line 414
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :try_start_0
    const-string v3, "00:00:00"

    .line 418
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 419
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    :catch_0
    move-exception p1

    .line 422
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    return-wide v1
.end method

.method public getIsGPS(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "Loaction"

    const-string v1, "Loaction"

    .line 429
    invoke-virtual {p0, p1, v0, v1}, Lcom/mapps/android/share/ShareUtil;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "1"

    .line 430
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    return-object p1

    :cond_0
    const-string p1, "0"

    return-object p1
.end method

.method public getMemory()V
    .locals 1

    .line 447
    sget-boolean v0, Lcom/mz/common/MzLog;->a:Z

    return-void
.end method

.method public getModel()Ljava/lang/String;
    .locals 3

    .line 437
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    .line 438
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, ""

    .line 382
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRandParam()Ljava/lang/String;
    .locals 3

    .line 376
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&na="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFormat(I)Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil;->DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/mapps/android/bean/DeviceInfoBean;

    invoke-direct {v0}, Lcom/mapps/android/bean/DeviceInfoBean;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil;->DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

    invoke-virtual {v0, p1}, Lcom/mapps/android/bean/DeviceInfoBean;->getResponseFormat(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getgoogleAdvertiseID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 73
    new-instance v0, Lcom/mz/common/utils/AdPreferences;

    invoke-direct {v0, p1}, Lcom/mz/common/utils/AdPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    .line 74
    iget-object p1, p0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    const-string v0, "ad_id"

    invoke-virtual {p1, v0}, Lcom/mz/common/utils/AdPreferences;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    const-string v0, "ad_id"

    invoke-virtual {p1, v0}, Lcom/mz/common/utils/AdPreferences;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    return-object p1
.end method

.method public nearSize(II)F
    .locals 3

    int-to-float v0, p1

    const/4 v1, 0x1

    :goto_0
    mul-int v2, p1, v1

    if-le v2, p2, :cond_0

    return v0

    :cond_0
    int-to-float v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeAllPreferences(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 401
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 402
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 403
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public removePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 395
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 396
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 397
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public requestConf(Landroid/content/Context;ILjava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V
    .locals 9

    .line 193
    new-instance v7, Lcom/mapps/android/share/Track;

    invoke-direct {v7}, Lcom/mapps/android/share/Track;-><init>()V

    .line 196
    new-instance v8, Lcom/mapps/android/share/ShareUtil$5;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/share/ShareUtil$5;-><init>(Lcom/mapps/android/share/ShareUtil;Lcom/mapps/android/share/Track;Landroid/content/Context;ILjava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V

    .line 218
    new-instance p2, Lcom/mapps/android/share/ShareUtil$6;

    move-object v0, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mapps/android/share/ShareUtil$6;-><init>(Lcom/mapps/android/share/ShareUtil;Lcom/mapps/android/share/Track;Landroid/content/Context;Ljava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V

    .line 240
    new-instance v6, Lcom/mapps/android/share/ShareUtil$7;

    invoke-direct {v6, p0, p4}, Lcom/mapps/android/share/ShareUtil$7;-><init>(Lcom/mapps/android/share/ShareUtil;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V

    .line 251
    new-instance p3, Ljava/lang/Thread;

    new-instance p4, Lcom/mapps/android/share/ShareUtil$8;

    move-object v0, p4

    move-object v4, v8

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/share/ShareUtil$8;-><init>(Lcom/mapps/android/share/ShareUtil;Lcom/mapps/android/share/Track;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 365
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 387
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 388
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 389
    invoke-interface {p1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 390
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setAdViewCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V
    .locals 7

    .line 478
    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    .line 479
    iput-object p3, p0, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    .line 480
    iput-object p4, p0, Lcom/mapps/android/share/ShareUtil;->m_section:Ljava/lang/String;

    .line 482
    new-instance v6, Lcom/mapps/android/share/ShareUtil$9;

    invoke-direct {v6, p0, p7}, Lcom/mapps/android/share/ShareUtil$9;-><init>(Lcom/mapps/android/share/ShareUtil;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V

    .line 496
    new-instance p2, Lcom/mapps/android/share/ShareUtil$10;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p7

    move-object v3, p1

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/share/ShareUtil$10;-><init>(Lcom/mapps/android/share/ShareUtil;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {p0, p1, p5, p6, p2}, Lcom/mapps/android/share/ShareUtil;->requestConf(Landroid/content/Context;ILjava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V

    return-void
.end method

.method public stringCheck(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 573
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public version()V
    .locals 2

    const-string v0, "MZ"

    const-string v1, "version : 105"

    .line 594
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MZ"

    const-string v1, "release Date : 20180517_1\ucc28"

    .line 595
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public versionCheck()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 577
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 578
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605"

    .line 579
    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string v2, "\u2605 Release Version : 4.4\uc774\uc0c1\uc5d0\uc11c\ub9cc \uad6c\ub3d9 \uac00\ub2a5"

    .line 580
    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string v2, "\u2605 API Version : 19(KITKAT)\uc774\uc0c1\uc5d0\uc11c\ub9cc \uad6c\ub3d9 \uac00\ub2a5"

    .line 581
    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u2605 apiVersion : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u2605 releaseVersion : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string v1, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605"

    .line 584
    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    if-lez v0, :cond_0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
