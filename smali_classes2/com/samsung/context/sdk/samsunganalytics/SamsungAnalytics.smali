.class public Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;


# instance fields
.field private b:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;


# direct methods
.method private constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    .line 66
    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->b(Landroid/content/Context;)Z

    .line 67
    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->a(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-direct {v0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-direct {v0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    :cond_1
    :goto_0
    return-void
.end method

.method public static a()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;
    .locals 1

    .line 120
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->a:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    if-nez v0, :cond_0

    const-string v0, "call after setConfiguration() method"

    .line 121
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->a(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 124
    invoke-static {v0, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->b(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->a:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    return-object v0
.end method

.method public static a(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    .line 101
    invoke-static {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->b(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    return-void
.end method

.method private static b(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;
    .locals 2

    .line 81
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->a:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->a:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    iget-object v0, v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    monitor-enter v0

    .line 83
    :try_start_0
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    invoke-direct {v1, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->a:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->a:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    return-object p0

    :catchall_0
    move-exception p0

    .line 84
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a(Ljava/util/Map;Z)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/16 p1, -0x64

    return p1
.end method
