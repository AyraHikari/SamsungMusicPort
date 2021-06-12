.class public Landroid/support/v7/widget/SeslDatePicker$LunarUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LunarUtils"
.end annotation


# static fields
.field private static mClassLoader:Ldalvik/system/PathClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPathClassLoader(Landroid/content/Context;)Ldalvik/system/PathClassLoader;
    .locals 3

    .line 2836
    sget-object v0, Landroid/support/v7/widget/SeslDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_3

    .line 2837
    invoke-static {}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2840
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Picker"

    const-string v0, "getPathClassLoader, appInfo is null"

    .line 2843
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2846
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 2851
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2857
    :cond_1
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 2858
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Landroid/support/v7/widget/SeslDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "Picker"

    const-string v0, "getPathClassLoader, calendar package source directory is null or empty"

    .line 2852
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    const-string p0, "Picker"

    const-string v0, "getPathClassLoader, calendar package name not found"

    .line 2848
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2860
    :cond_3
    :goto_1
    sget-object p0, Landroid/support/v7/widget/SeslDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    return-object p0
.end method
