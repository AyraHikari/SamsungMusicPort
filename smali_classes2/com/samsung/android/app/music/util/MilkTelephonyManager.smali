.class public Lcom/samsung/android/app/music/util/MilkTelephonyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "MilkTelephonyManager"

.field private static volatile c:Lcom/samsung/android/app/music/util/MilkTelephonyManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static d:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->b:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->d:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/util/MilkTelephonyManager;
    .locals 2

    .line 39
    sget-object v0, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->c:Lcom/samsung/android/app/music/util/MilkTelephonyManager;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/samsung/android/app/music/util/MilkTelephonyManager;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->c:Lcom/samsung/android/app/music/util/MilkTelephonyManager;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/samsung/android/app/music/util/MilkTelephonyManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->c:Lcom/samsung/android/app/music/util/MilkTelephonyManager;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 46
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->c:Lcom/samsung/android/app/music/util/MilkTelephonyManager;

    return-object p0
.end method

.method private g()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 270
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->g()Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 282
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 287
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkOperator operator : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", phoneType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 4

    .line 303
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->g()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    sget-object v1, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimOperatorBelowL operator : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 50
    sget-object v0, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->d:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->d:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    const-string v1, "mcc"

    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->a:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->e()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 69
    sget-object v0, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->d:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->d:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    const-string v1, "mnc"

    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->b:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->b:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->f()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 89
    sget-object v0, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->d:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->d:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    const-string v1, "mcc"

    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->a:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->a:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->i()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 101
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 113
    sget-object v0, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->d:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->d:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    const-string v1, "mnc"

    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->b:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->b:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->i()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 125
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->h()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 140
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 142
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->a:Ljava/lang/String;

    const-string v2, "getMccNetworkOperator operator is empty!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->h()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 159
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->a:Ljava/lang/String;

    const-string v2, "getMncNetworkOperator operator is empty!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    return-object v0
.end method
