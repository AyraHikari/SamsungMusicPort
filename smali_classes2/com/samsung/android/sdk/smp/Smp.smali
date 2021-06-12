.class public Lcom/samsung/android/sdk/smp/Smp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Z)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 1

    const/16 v0, 0x3c

    .line 246
    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/Smp;->a(Landroid/content/Context;ZI)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ZI)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 0

    if-eqz p0, :cond_0

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a(Landroid/content/Context;ZI)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    return-object p0

    .line 264
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->b(Landroid/content/Context;)V

    return-void

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "context is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpInitOptions;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpInitOptions;)V

    return-void

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "SmpInitOptions is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "appid is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
