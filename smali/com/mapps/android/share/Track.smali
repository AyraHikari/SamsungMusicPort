.class public Lcom/mapps/android/share/Track;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/share/Track$TrackAdInfo;,
        Lcom/mapps/android/share/Track$TrackCompleteListener;
    }
.end annotation


# static fields
.field public static final AB_INTERVAL:Ljava/lang/String; = "ab_interval"

.field public static final DEFAULTINTERVAL:Ljava/lang/String; = "0"

.field public static final DEFAULTISINTERVAL:Ljava/lang/String; = "1"

.field public static final Detarget:Ljava/lang/String; = "0"

.field public static FAIL:Ljava/lang/String; = null

.field public static final INTERVAL_USE_NO:Ljava/lang/String; = "0"

.field public static final INTERVAL_USE_YES:Ljava/lang/String; = "1"

.field public static final NETWORK_3G:I = 0x2

.field public static final NETWORK_NONE:I = 0x4

.field public static final NETWORK_WIFI:I = 0x1

.field public static final NETWORK_WIMAX:I = 0x3

.field public static final SHAREDFILE:Ljava/lang/String; = "mezzo"

.field public static SUCCESS:Ljava/lang/String; = null

.field public static final Target:Ljava/lang/String; = "1"

.field public static advertise_ID:Ljava/lang/String; = ""

.field public static isStart:Z

.field public static ispkgSend:Z

.field public static mdeviceModel:Ljava/lang/String;

.field public static mdeviceVersion:Ljava/lang/String;


# instance fields
.field private nt:Lcom/mz/common/network/Nt;

.field private ntOnProgressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/mapps/android/share/Track;->mdeviceVersion:Ljava/lang/String;

    .line 45
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/mapps/android/share/Track;->mdeviceModel:Ljava/lang/String;

    const-string v0, "1"

    .line 46
    sput-object v0, Lcom/mapps/android/share/Track;->SUCCESS:Ljava/lang/String;

    const-string v0, "0"

    .line 47
    sput-object v0, Lcom/mapps/android/share/Track;->FAIL:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    sput-boolean v0, Lcom/mapps/android/share/Track;->isStart:Z

    const/4 v0, 0x1

    .line 49
    sput-boolean v0, Lcom/mapps/android/share/Track;->ispkgSend:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lcom/mapps/android/share/Track$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/share/Track$1;-><init>(Lcom/mapps/android/share/Track;)V

    iput-object v0, p0, Lcom/mapps/android/share/Track;->ntOnProgressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/Track;Lcom/mz/common/network/Nt;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mapps/android/share/Track;->nt:Lcom/mz/common/network/Nt;

    return-void
.end method

.method static synthetic access$1(Lcom/mapps/android/share/Track;)Lcom/mz/common/network/Nt;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/mapps/android/share/Track;->nt:Lcom/mz/common/network/Nt;

    return-object p0
.end method

.method static synthetic access$2(Lcom/mapps/android/share/Track;)Lcom/mz/common/network/Nt$OnProgressbarListener;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/mapps/android/share/Track;->ntOnProgressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    return-object p0
.end method

.method private requestServerPkgConf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mz/common/network/request/OnConnectionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605InitInfo"

    .line 163
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mapps/android/network/UrlManager;->urlPkgConf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/mapps/android/network/ParamManager;

    invoke-direct {v1, p1}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/mapps/android/network/ParamManager;->getParamInitInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 166
    iput p5, v1, Landroid/os/Message;->arg1:I

    .line 167
    new-instance p5, Lcom/mapps/android/share/Track$TrackAdInfo;

    invoke-direct {p5, p0}, Lcom/mapps/android/share/Track$TrackAdInfo;-><init>(Lcom/mapps/android/share/Track;)V

    .line 168
    iput-object p2, p5, Lcom/mapps/android/share/Track$TrackAdInfo;->pub_no:Ljava/lang/String;

    .line 169
    iput-object p3, p5, Lcom/mapps/android/share/Track$TrackAdInfo;->media_no:Ljava/lang/String;

    .line 170
    iput-object p4, p5, Lcom/mapps/android/share/Track$TrackAdInfo;->section_no:Ljava/lang/String;

    .line 171
    iput-object p5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    new-instance p2, Lcom/mz/common/network/request/RequestInitInfo;

    invoke-direct {p2, p1, v0, v1}, Lcom/mz/common/network/request/RequestInitInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 173
    invoke-virtual {p2, p6}, Lcom/mz/common/network/request/RequestInitInfo;->a(Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 174
    new-instance p3, Lcom/mz/common/network/Nt;

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    const/4 p5, 0x0

    invoke-direct {p3, p1, p4, p5, p5}, Lcom/mz/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object p3, p0, Lcom/mapps/android/share/Track;->nt:Lcom/mz/common/network/Nt;

    .line 175
    iget-object p1, p0, Lcom/mapps/android/share/Track;->nt:Lcom/mz/common/network/Nt;

    iget-object p3, p0, Lcom/mapps/android/share/Track;->ntOnProgressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    invoke-virtual {p1, p3}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V

    .line 176
    iget-object p1, p0, Lcom/mapps/android/share/Track;->nt:Lcom/mz/common/network/Nt;

    const/4 p3, 0x1

    new-array p3, p3, [Lcom/mz/common/network/request/RequestNTCommon;

    aput-object p2, p3, p5

    invoke-virtual {p1, p3}, Lcom/mz/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private requestServerPkgList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mz/common/network/request/OnConnectionListener;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 439
    new-instance v3, Lcom/mapps/android/share/Track$9;

    move-object v10, p0

    move-object/from16 v0, p6

    invoke-direct {v3, p0, v0}, Lcom/mapps/android/share/Track$9;-><init>(Lcom/mapps/android/share/Track;Lcom/mapps/android/share/Track$TrackCompleteListener;)V

    .line 450
    new-instance v11, Lcom/mapps/android/share/Track$10;

    move-object v4, v11

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p1

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/mapps/android/share/Track$10;-><init>(Lcom/mapps/android/share/Track;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 471
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/mapps/android/share/Track$11;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/share/Track$11;-><init>(Lcom/mapps/android/share/Track;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 530
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public declared-synchronized SendTagetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    .locals 8

    monitor-enter p0

    .line 318
    :try_start_0
    new-instance v5, Lcom/mapps/android/share/Track$6;

    invoke-direct {v5, p0, p5}, Lcom/mapps/android/share/Track$6;-><init>(Lcom/mapps/android/share/Track;Lcom/mapps/android/share/Track$TrackCompleteListener;)V

    .line 329
    new-instance v6, Lcom/mapps/android/share/Track$7;

    invoke-direct {v6, p0, p5}, Lcom/mapps/android/share/Track$7;-><init>(Lcom/mapps/android/share/Track;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :try_start_1
    new-instance v0, Lcom/mapps/android/share/Track$8;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/mapps/android/share/Track$8;-><init>(Lcom/mapps/android/share/Track;Landroid/content/Context;Lcom/mapps/android/share/Track$TrackCompleteListener;Landroid/os/Handler;Landroid/os/Handler;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/mapps/android/share/Track;->requestServerPkgList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mz/common/network/request/OnConnectionListener;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p5, :cond_0

    .line 431
    :try_start_2
    invoke-interface {p5}, Lcom/mapps/android/share/Track$TrackCompleteListener;->onTrackComplete()V

    .line 433
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 317
    monitor-exit p0

    throw v0
.end method

.method public checkTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    .line 604
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd a hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "package_start"

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package_start"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkgtime"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, ""

    .line 608
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 609
    new-instance p2, Ljava/text/ParsePosition;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    .line 610
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    .line 612
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 613
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    .line 614
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0xea60

    .line 616
    div-long/2addr v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "activity"

    .line 535
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 537
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 538
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "&m_id="

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapps/android/share/ShareUtil;->getgoogleAdvertiseID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAdidv2(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "&d_adid="

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapps/android/share/ShareUtil;->getgoogleAdvertiseID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 660
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 662
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getAppTest(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    .line 595
    invoke-virtual {p0, p1, v0}, Lcom/mapps/android/share/Track;->getApplicationList(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&m_package="

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\^"

    .line 596
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 597
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    const/4 v0, 0x0

    .line 598
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 599
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getApparrList(Landroid/content/Context;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    .locals 7

    .line 136
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LOG : ShareUtil.getInstance().m_publisher "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LOG : ShareUtil.getInstance().m_media "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string v0, ""

    .line 138
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v3, v0, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v4, v0, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mapps/android/share/Track;->SendTagetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "getApparrList error"

    .line 143
    invoke-static {p1}, Lcom/mz/common/MzLog;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getApplicationList(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4

    const-string v0, "&m_package="

    if-eqz p2, :cond_3

    .line 97
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 p2, 0x80

    .line 99
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 103
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 104
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 108
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 115
    :catch_0
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIeVersion(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 122
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    sget-boolean p2, Lcom/mz/common/MzLog;->a:Z

    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public getInterval(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "mezzo"

    const/4 v1, 0x0

    .line 666
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ab_interval"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "0"

    .line 668
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 669
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "0"

    :cond_0
    return-object p1
.end method

.method public getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "mezzo"

    const/4 v1, 0x0

    .line 623
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, ""

    .line 624
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getpkgSend()Z
    .locals 1

    .line 86
    sget-boolean v0, Lcom/mapps/android/share/Track;->ispkgSend:Z

    return v0
.end method

.method public removeAllPreferences(Landroid/content/Context;)V
    .locals 2

    const-string v0, "mezzo"

    const/4 v1, 0x0

    .line 643
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 644
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 645
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 646
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public removePreferences(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "mezzo"

    const/4 v1, 0x0

    .line 636
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 637
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 638
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 639
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public declared-synchronized requestConf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    .locals 13

    move-object v10, p0

    move-object/from16 v11, p7

    monitor-enter p0

    .line 181
    :try_start_0
    new-instance v7, Lcom/mapps/android/share/Track$2;

    invoke-direct {v7, p0, v11}, Lcom/mapps/android/share/Track$2;-><init>(Lcom/mapps/android/share/Track;Lcom/mapps/android/share/Track$TrackCompleteListener;)V

    .line 192
    new-instance v9, Lcom/mapps/android/share/Track$3;

    invoke-direct {v9, p0, v11}, Lcom/mapps/android/share/Track$3;-><init>(Lcom/mapps/android/share/Track;Lcom/mapps/android/share/Track$TrackCompleteListener;)V

    .line 206
    new-instance v8, Lcom/mapps/android/share/Track$4;

    move-object v0, p1

    move-object/from16 v5, p6

    invoke-direct {v8, p0, p1, v5, v11}, Lcom/mapps/android/share/Track$4;-><init>(Lcom/mapps/android/share/Track;Landroid/content/Context;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :try_start_1
    new-instance v12, Lcom/mapps/android/share/Track$5;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v9}, Lcom/mapps/android/share/Track$5;-><init>(Lcom/mapps/android/share/Track;Landroid/content/Context;ILjava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/mapps/android/share/Track;->requestServerPkgConf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mz/common/network/request/OnConnectionListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v11, :cond_0

    .line 294
    :try_start_2
    invoke-interface/range {p7 .. p7}, Lcom/mapps/android/share/Track$TrackCompleteListener;->onTrackComplete()V

    .line 296
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 180
    monitor-exit p0

    throw v0
.end method

.method public savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "mezzo"

    const/4 v1, 0x0

    .line 629
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 630
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 631
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 632
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public selectPTaget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "\\^"

    .line 579
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 580
    :goto_0
    array-length v2, p3

    if-lt v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v2, "1"

    .line 581
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 582
    aget-object v2, p3, v1

    invoke-virtual {p0, p1, v2}, Lcom/mapps/android/share/Track;->getIeVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 586
    :cond_1
    aget-object v2, p3, v1

    invoke-virtual {p0, p1, v2}, Lcom/mapps/android/share/Track;->getIeVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public selectPTaget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    const-string v0, "\\^"

    .line 542
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isAnd : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_3

    const/4 p4, 0x0

    .line 546
    :goto_0
    array-length v2, p3

    if-lt p4, v2, :cond_0

    const-string p1, "1"

    .line 559
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const-string v2, "1"

    .line 547
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    aget-object v2, p3, p4

    invoke-virtual {p0, p1, v2}, Lcom/mapps/android/share/Track;->getIeVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 549
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Target and : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, p3, p4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " don\'t have"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    return v0

    .line 553
    :cond_1
    aget-object v2, p3, p4

    invoke-virtual {p0, p1, v2}, Lcom/mapps/android/share/Track;->getIeVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 554
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Detarget and : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, p3, p4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " don\'t have"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    return v1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    .line 561
    :goto_1
    array-length v2, p3

    if-lt p4, v2, :cond_4

    const-string p1, "1"

    .line 574
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_4
    const-string v2, "1"

    .line 562
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 563
    aget-object v2, p3, p4

    invoke-virtual {p0, p1, v2}, Lcom/mapps/android/share/Track;->getIeVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 564
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Target or : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, p3, p4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " have"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    return v1

    .line 568
    :cond_5
    aget-object v2, p3, p4

    invoke-virtual {p0, p1, v2}, Lcom/mapps/android/share/Track;->getIeVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 569
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Detarget or : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, p3, p4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " have"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    return v0

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_1
.end method

.method public sendPackage(Z)V
    .locals 0

    .line 90
    sput-boolean p1, Lcom/mapps/android/share/Track;->ispkgSend:Z

    return-void
.end method

.method public setAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 651
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 652
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 653
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 655
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setInterval(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const-string v0, "mezzo"

    const/4 v1, 0x0

    .line 676
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 677
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "_"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "ab_interval"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 679
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 680
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public timec()V
    .locals 2

    .line 301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 306
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
