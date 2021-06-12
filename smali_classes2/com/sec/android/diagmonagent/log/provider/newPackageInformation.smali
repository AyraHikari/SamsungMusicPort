.class public Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;

    invoke-direct {v0}, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;-><init>()V

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->a:Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 106
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 109
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TWID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 116
    :cond_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 88
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 89
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const-string p1, "unknown"

    return-object p1
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 74
    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v1, "deviceInfo"

    .line 132
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v1, "deviceInfo"

    .line 136
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "serviceClientVer"

    .line 137
    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-object v0
.end method
