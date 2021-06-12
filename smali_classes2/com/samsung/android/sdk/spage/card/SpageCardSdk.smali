.class public Lcom/samsung/android/sdk/spage/card/SpageCardSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/samsung/android/sdk/spage/card/SpageCardSdk;->a:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.samsung.android.app.spage"

    .line 58
    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/spage/card/SpageCardSdk;->a:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 60
    :catch_0
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v1, "This device is not supported Bixby Home."

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "You should set context."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const/4 v0, 0x0

    const-string v1, "This is not samsung product"

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public a(I)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const p1, 0xc8765c7

    const/4 v1, 0x0

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/spage/card/SpageCardSdk;->a:Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p1, v2, :cond_0

    return v0

    :cond_0
    return v1

    :catch_0
    return v1

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This type is not support"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
