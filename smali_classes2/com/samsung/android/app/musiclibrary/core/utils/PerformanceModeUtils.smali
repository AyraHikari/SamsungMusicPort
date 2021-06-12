.class public final Lcom/samsung/android/app/musiclibrary/core/utils/PerformanceModeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DISPLAY:I = 0x3

.field private static final ENTERTAINMENT:I = 0x2

.field private static final GAME:I = 0x1

.field private static final NORMAL:I = 0x0

.field private static final ULTIMATE:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPerformanceMode(Landroid/content/Context;)I
    .locals 2

    .line 30
    sget-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Secure;->PERFORMANCE_MODE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Secure;->PERFORMANCE_MODE:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isEntertainmentMode(Landroid/content/Context;)Z
    .locals 1

    .line 26
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/PerformanceModeUtils;->getPerformanceMode(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
