.class public Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;


# instance fields
.field private b:Landroid/app/Application;

.field private c:Z

.field private d:Z

.field private e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field private f:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->c:Z

    .line 65
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->d:Z

    .line 74
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    .line 75
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 77
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->CUSTOM_TERMS:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->DIAGNOSTIC_TERMS:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    :goto_0
    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    .line 80
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->a(I)V

    goto :goto_1

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->CUSTOM_TERMS:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 85
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 86
    :cond_2
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->getSenderType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    move-result-object v0

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLC:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    if-ne v0, v2, :cond_3

    .line 87
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a(Ljava/lang/String;I)V

    .line 94
    :cond_3
    :goto_1
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->needQuota()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a()V

    .line 98
    :cond_4
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->DIAGNOSTIC_TERMS:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    if-ne v0, v1, :cond_5

    .line 99
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->a(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 107
    :cond_5
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 108
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->getSenderType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    .line 111
    :cond_6
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e()V

    .line 113
    :cond_7
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->i()V

    const-string p1, "Tracker"

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tracker start:2.01.007"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->getSenderType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Landroid/app/Application;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const-string v2, "dom"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->setDomain(Ljava/lang/String;)V

    .line 161
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v2, "uri"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->setDirectory(Ljava/lang/String;)V

    .line 162
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR_BAT:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v2, "bat-uri"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->setDirectory(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->a()Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    move-result-object v2

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    invoke-direct {v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$4;

    invoke-direct {v4, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$4;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Ljava/lang/String;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    .line 341
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deviceId"

    .line 343
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auidType"

    .line 344
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 347
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->a(I)V

    .line 348
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->b(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 320
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "."

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 322
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 323
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-ge p1, v3, :cond_0

    const-string p1, "CF version < 2.0.9"

    .line 326
    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    if-ne p1, v3, :cond_1

    if-nez v2, :cond_1

    const/16 p1, 0x9

    if-ge v1, p1, :cond_1

    const-string p1, "CF version < 2.0.9"

    .line 329
    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 333
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    return v0
.end method

.method static synthetic b(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-object p0
.end method

.method private b()Z
    .locals 4

    .line 357
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->DIAGNOSTIC_TERMS:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    .line 358
    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 359
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.providers.context"

    .line 360
    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$7;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$7;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)V

    .line 379
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.providers.context.log.action.GET_DID"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.providers.context.log.action.REQUEST_DID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->f:Landroid/content/Intent;

    .line 382
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->f:Landroid/content/Intent;

    const-string v1, "PKGNAME"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->f:Landroid/content/Intent;

    const-string v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->f:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "request CF id"

    .line 385
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()Z
    .locals 5

    .line 392
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "deviceId"

    const-string v2, ""

    .line 393
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auidType"

    const/4 v3, -0x1

    .line 394
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 395
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v2, v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->a(I)V

    .line 399
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->b(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()Ljava/lang/String;
    .locals 11

    .line 410
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    .line 411
    new-array v1, v1, [B

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 415
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 417
    :try_start_0
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>([B)V

    const-string v6, "0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 419
    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-string v5, "0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v9, v5

    rem-long/2addr v7, v9

    long-to-int v5, v7

    .line 418
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0

    .line 425
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 5

    .line 439
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "user do not agree setting"

    .line 440
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x7

    .line 444
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "status_sent_date"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->a(ILjava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "do not send setting < 7days"

    .line 445
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "send setting"

    .line 449
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->b(Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->a()Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v1, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    invoke-interface {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    return-void
.end method

.method private f()Z
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->h()Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;->a()Z

    move-result v0

    return v0
.end method

.method private g()Z
    .locals 3

    .line 458
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->getSenderType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DMA:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "did is empty"

    .line 463
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method private h()Z
    .locals 5

    .line 472
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->isEnableProperty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "property_sent_date"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->a(ILjava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "do not send property < 1day"

    .line 474
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->b(Ljava/lang/String;)V

    return v1

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "property_sent_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v2

    .line 481
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "property disable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->getSenderType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->b(Ljava/lang/String;)V

    return v1
.end method

.method private i()V
    .locals 10

    .line 516
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    const-string v1, "SATerms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 517
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 518
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 519
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 520
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 521
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->a()Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    move-result-object v2

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$8;

    invoke-direct {v9, p0, v0, v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$8;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V

    invoke-interface {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "user do not agree"

    .line 266
    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->b(Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1

    :cond_0
    if-eqz p1, :cond_6

    .line 268
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->f:Landroid/content/Intent;

    if-eqz p1, :cond_2

    .line 274
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->f:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    const/4 p1, -0x5

    return p1

    :cond_3
    const-string v0, "t"

    .line 278
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "pp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->h()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 p1, -0x9

    return p1

    :cond_4
    if-eqz p2, :cond_5

    .line 282
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->getSenderType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {p2, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;->f(Ljava/util/Map;)I

    move-result p1

    return p1

    .line 284
    :cond_5
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b:Landroid/app/Application;

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->getSenderType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->e:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {p2, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;->e(Ljava/util/Map;)I

    move-result p1

    return p1

    :cond_6
    :goto_0
    const-string p1, "Failure to send Logs : No data"

    .line 269
    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->b(Ljava/lang/String;)V

    const/4 p1, -0x3

    return p1
.end method
