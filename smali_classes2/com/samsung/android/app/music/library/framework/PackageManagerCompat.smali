.class public Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 3

    .line 60
    sget-object v0, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 61
    sget-object p0, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 68
    :cond_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->z:Ljava/lang/String;

    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "com.samsung.android.qconnect"

    :cond_2
    const/4 v2, 0x5

    .line 73
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 75
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->a:Ljava/lang/Boolean;

    .line 76
    sget-object p0, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static a(Landroid/content/SharedPreferences;Landroid/content/Context;)Z
    .locals 3

    const-string v0, "support_aod"

    const/4 v1, -0x1

    .line 38
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->b(Landroid/content/Context;)Z

    move-result p1

    .line 43
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "support_aod"

    .line 44
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    xor-int/2addr v2, p1

    :goto_0
    return v2
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "com.samsung.android.app.aodservice"

    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    return v0
.end method
