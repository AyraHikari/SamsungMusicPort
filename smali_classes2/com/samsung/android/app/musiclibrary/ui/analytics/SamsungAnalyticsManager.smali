.class public Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SamsungAnalyticsManager"

    .line 33
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a:Ljava/lang/String;

    const-string v0, "019-398-1004849"

    .line 42
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c:Ljava/lang/String;

    const-string v0, "legal_information_agreed"

    .line 44
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;
    .locals 2

    .line 65
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->b:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    if-nez v0, :cond_1

    .line 66
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->b:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;-><init>()V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->b:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    .line 70
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->b:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 126
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 127
    aget-byte v2, p0, v1

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/StringBuffer;B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/StringBuffer;B)V
    .locals 2

    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "0123456789ABCDEF"

    and-int/lit8 p1, p1, 0xf

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 91
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ":"

    const-string v1, ""

    .line 95
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "000000000000"

    return-object p1

    :cond_1
    const-string p1, "000000000000"

    return-object p1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "SHA-1"

    .line 109
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    const-string v1, "UTF-8"

    .line 111
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 112
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    .line 138
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->e:Landroid/content/Context;

    .line 145
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p2, "0.1"

    .line 156
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SamsungAnalyticsManager"

    const-string v1, "initSamsungAnalytics >> deviceId is null"

    .line 159
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    const-string v1, "019-398-1004849"

    .line 168
    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->a(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->c(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object p2

    .line 170
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->c()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object p2

    .line 166
    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->a(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SamsungAnalyticsManager"

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendScreenLogV2 enter  eventScreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 230
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->a()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;-><init>()V

    .line 231
    invoke-virtual {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->b(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->b()Ljava/util/Map;

    move-result-object p1

    .line 230
    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->a(Ljava/util/Map;)I

    move-result p1

    const-string v0, "SamsungAnalyticsManager"

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendScreenLogV2 logged sendLog result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 234
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SamsungAnalyticsManager"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEventLogV2 enter  eventName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 248
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->a()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    .line 249
    invoke-virtual {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->a(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->b()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->a(Ljava/util/Map;)I

    move-result p1

    const-string v0, "SamsungAnalyticsManager"

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEventLogV2 logged  sendLog result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 252
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
