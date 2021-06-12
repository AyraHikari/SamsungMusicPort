.class public Lcom/samsung/android/sdk/SsdkVendorCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/sdk/SsdkVendorCheck;->a:Ljava/lang/String;

    .line 12
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/sdk/SsdkVendorCheck;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Z
    .locals 3

    .line 24
    sget-object v0, Lcom/samsung/android/sdk/SsdkVendorCheck;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/SsdkVendorCheck;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/SsdkVendorCheck;->a:Ljava/lang/String;

    const-string v2, "Samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/samsung/android/sdk/SsdkVendorCheck;->b:Ljava/lang/String;

    const-string v2, "Samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method
