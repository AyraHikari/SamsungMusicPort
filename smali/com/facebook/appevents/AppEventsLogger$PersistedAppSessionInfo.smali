.class Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PersistedAppSessionInfo"
.end annotation


# static fields
.field private static final PERSISTED_SESSION_INFO_FILENAME:Ljava/lang/String; = "AppEventsLogger.persistedsessioninfo"

.field private static final appSessionInfoFlushRunnable:Ljava/lang/Runnable;

.field private static appSessionInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            "Lcom/facebook/appevents/FacebookTimeSpentData;",
            ">;"
        }
    .end annotation
.end field

.field private static hasChanges:Z

.field private static isLoaded:Z

.field private static final staticLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1479
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1480
    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    .line 1481
    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z

    .line 1484
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo$1;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoFlushRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTimeSpentData(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/FacebookTimeSpentData;
    .locals 1

    .line 1592
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->restoreAppSessionInformation(Landroid/content/Context;)V

    .line 1595
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/FacebookTimeSpentData;

    if-nez p0, :cond_0

    .line 1597
    new-instance p0, Lcom/facebook/appevents/FacebookTimeSpentData;

    invoke-direct {p0}, Lcom/facebook/appevents/FacebookTimeSpentData;-><init>()V

    .line 1598
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method static onResume(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V
    .locals 1

    .line 1568
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1569
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->getTimeSpentData(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/FacebookTimeSpentData;

    move-result-object p0

    .line 1570
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/facebook/appevents/FacebookTimeSpentData;->onResume(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    .line 1571
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->onTimeSpentDataUpdate()V

    .line 1572
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static onSuspend(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;J)V
    .locals 1

    .line 1581
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1582
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->getTimeSpentData(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/FacebookTimeSpentData;

    move-result-object p0

    .line 1583
    invoke-virtual {p0, p2, p3, p4}, Lcom/facebook/appevents/FacebookTimeSpentData;->onSuspend(Lcom/facebook/appevents/AppEventsLogger;J)V

    .line 1584
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->onTimeSpentDataUpdate()V

    .line 1585
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onTimeSpentDataUpdate()V
    .locals 5

    .line 1605
    sget-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1606
    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    .line 1607
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$300()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoFlushRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private static restoreAppSessionInformation(Landroid/content/Context;)V
    .locals 9

    .line 1496
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1497
    :try_start_0
    sget-boolean v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1499
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    const-string v5, "AppEventsLogger.persistedsessioninfo"

    .line 1500
    invoke-virtual {p0, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1502
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    sput-object v3, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1503
    sget-object v3, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v5, "AppEvents"

    const-string v6, "App session info loaded"

    invoke-static {v3, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1514
    :try_start_3
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    const-string v3, "AppEventsLogger.persistedsessioninfo"

    .line 1515
    invoke-virtual {p0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1516
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    if-nez p0, :cond_0

    .line 1517
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1523
    :cond_0
    sput-boolean v2, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z

    .line 1524
    :goto_0
    sput-boolean v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    .line 1510
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got unexpected exception restoring app session info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1509
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1514
    :try_start_5
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    const-string v3, "AppEventsLogger.persistedsessioninfo"

    .line 1515
    invoke-virtual {p0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1516
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    if-nez p0, :cond_1

    .line 1517
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1523
    :cond_1
    sput-boolean v2, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z

    goto :goto_0

    :catchall_1
    move-exception v3

    .line 1514
    :goto_2
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    const-string v4, "AppEventsLogger.persistedsessioninfo"

    .line 1515
    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1516
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    if-nez p0, :cond_2

    .line 1517
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1523
    :cond_2
    sput-boolean v2, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z

    .line 1524
    sput-boolean v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    .line 1525
    throw v3

    :catch_2
    move-object v4, v3

    .line 1514
    :catch_3
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    const-string v3, "AppEventsLogger.persistedsessioninfo"

    .line 1515
    invoke-virtual {p0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1516
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    if-nez p0, :cond_3

    .line 1517
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1523
    :cond_3
    sput-boolean v2, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z

    goto :goto_0

    .line 1527
    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method static saveAppSessionInformation(Landroid/content/Context;)V
    .locals 6

    .line 1533
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1534
    :try_start_0
    sget-boolean v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1536
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    const-string v4, "AppEventsLogger.persistedsessioninfo"

    const/4 v5, 0x0

    .line 1538
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1543
    :try_start_2
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1544
    sput-boolean v5, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    .line 1545
    sget-object p0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v1, "AppEvents"

    const-string v3, "App session info saved"

    invoke-static {p0, v1, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1555
    :try_start_3
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1551
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got unexpected exception while writing app session info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1550
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1555
    :try_start_5
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :goto_1
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1556
    throw p0

    .line 1558
    :cond_0
    :goto_2
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method
