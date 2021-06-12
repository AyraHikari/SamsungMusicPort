.class public Lcom/mz/common/TraceGPS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/lang/String; = ""

.field private static d:Landroid/location/LocationManager;

.field private static e:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 3

    .line 24
    sget-object v0, Lcom/mz/common/TraceGPS;->d:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/mz/common/TraceGPS;->d:Landroid/location/LocationManager;

    sget-object v2, Lcom/mz/common/TraceGPS;->e:Landroid/location/LocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 26
    sput-object v1, Lcom/mz/common/TraceGPS;->d:Landroid/location/LocationManager;

    .line 28
    :cond_0
    sget-object v0, Lcom/mz/common/TraceGPS;->e:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    .line 29
    sput-object v1, Lcom/mz/common/TraceGPS;->e:Landroid/location/LocationListener;

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 13

    .line 36
    sget-object v0, Lcom/mz/common/TraceGPS;->d:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "location"

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/mz/common/TraceGPS;->d:Landroid/location/LocationManager;

    .line 39
    :cond_0
    :try_start_0
    new-instance v0, Lcom/mz/common/TraceGPS$1;

    invoke-direct {v0, p0}, Lcom/mz/common/TraceGPS$1;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mz/common/TraceGPS;->e:Landroid/location/LocationListener;

    .line 57
    sget-object v1, Lcom/mz/common/TraceGPS;->d:Landroid/location/LocationManager;

    const-string v2, "network"

    const-wide/16 v3, 0x3e8

    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v6, Lcom/mz/common/TraceGPS;->e:Landroid/location/LocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 58
    sget-object v7, Lcom/mz/common/TraceGPS;->d:Landroid/location/LocationManager;

    const-string v8, "gps"

    const-wide/16 v9, 0x3e8

    const/high16 v11, 0x3f800000    # 1.0f

    sget-object v12, Lcom/mz/common/TraceGPS;->e:Landroid/location/LocationListener;

    invoke-virtual/range {v7 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Landroid/content/Context;DD)V
    .locals 0

    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mz/common/TraceGPS;->b(Landroid/content/Context;DD)V

    return-void
.end method

.method private static b(Landroid/content/Context;DD)V
    .locals 8

    .line 66
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/mz/common/TraceGPS$2;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/mz/common/TraceGPS$2;-><init>(Landroid/content/Context;DD)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
