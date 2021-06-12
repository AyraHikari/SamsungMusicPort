.class public Lcom/samsung/android/sdk/smp/push/SppRegister;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/smp/push/PushPlatformRegistrable;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.sec.spp.push"

    .line 15
    iput-object v0, p0, Lcom/samsung/android/sdk/smp/push/SppRegister;->a:Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "com.sec.spp.push"

    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/push/SppRegister;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "spp"

    const-string v1, "SMP_5002"

    const-string v2, "SPP is not installed"

    .line 30
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/sdk/smp/push/PushHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/GlobalData;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "spp"

    const-string v1, "SMP_5001"

    const-string v2, "Spp AppId is not set. Should set SmpInitOptions.Option.SPP_APPID"

    .line 36
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/sdk/smp/push/PushHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.spp.push.PUSH_CLIENT_SERVICE_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "reqType"

    const/4 v3, 0x1

    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "appId"

    .line 42
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "userdata"

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.sec.spp.push"

    .line 44
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
