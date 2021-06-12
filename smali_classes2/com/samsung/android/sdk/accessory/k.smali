.class public final Lcom/samsung/android/sdk/accessory/k;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = "com.samsung.accessory"

.field private static b:I = 0x1

.field private static c:Ljava/lang/String; = ""

.field private static d:I = 0x1

.field private static e:I

.field private static f:I

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x2

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/k;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcom/samsung/android/sdk/accessory/k;->b:I

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/sdk/accessory/k;->c:Ljava/lang/String;

    const-string v2, "[SA_SDK]SASdkConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Accessory Framework:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Accessory SDK:2.6.0 r6"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/accessory/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "[SA_SDK]SASdkConfig"

    const-string v0, "Accessory framework does not support thin-sdk"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string p1, "[SA_SDK]SASdkConfig"

    const-string v1, "Accessory Framework Not installed"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/sdk/accessory/d;

    const-string v1, "Accessory Framework Not installed"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const-string p1, "[SA_SDK]SASdkConfig"

    const-string v1, "Accessory Framework Not installed"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/sdk/accessory/d;

    const-string v1, "Accessory Framework Not installed"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/d;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/accessory/k;->e:I

    return v0
.end method

.method static a(I)V
    .locals 0

    sput p0, Lcom/samsung/android/sdk/accessory/k;->e:I

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "[SA_SDK]SASdkConfig"

    const-string v2, "Package Manager is null"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v2, 0x1000

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "[SA_SDK]SASdkConfig"

    const-string v2, "PackageInfo is null"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    const/4 v4, -0x1

    if-ge v2, v3, :cond_4

    const-string v3, "com.samsung.accessory.permission.ACCESSORY_FRAMEWORK"

    aget-object v5, p0, v2

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    :goto_1
    if-ne v2, v4, :cond_5

    const-string p0, "[SA_SDK]SASdkConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Accessory service permission not granted for Package"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const-string p0, "[SA_SDK]SASdkConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Accessory service permission available for Package"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "[SA_SDK]SASdkConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Admin Permission check failed for Package"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static b()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/accessory/k;->g:I

    return v0
.end method

.method static b(I)V
    .locals 0

    sput p0, Lcom/samsung/android/sdk/accessory/k;->f:I

    return-void
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/accessory/k;->b:I

    return v0
.end method

.method static c(I)V
    .locals 0

    sput p0, Lcom/samsung/android/sdk/accessory/k;->g:I

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessory/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static d(I)V
    .locals 0

    sput p0, Lcom/samsung/android/sdk/accessory/k;->d:I

    return-void
.end method

.method public static e()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/accessory/k;->d:I

    return v0
.end method

.method static f()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method static g()Z
    .locals 2

    sget v0, Lcom/samsung/android/sdk/accessory/k;->b:I

    const/16 v1, 0x197

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static h()Z
    .locals 2

    sget v0, Lcom/samsung/android/sdk/accessory/k;->d:I

    const/16 v1, 0x197

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static i()Z
    .locals 2

    sget v0, Lcom/samsung/android/sdk/accessory/k;->b:I

    const/16 v1, 0xcd

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
