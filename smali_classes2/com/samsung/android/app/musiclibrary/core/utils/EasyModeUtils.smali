.class public final Lcom/samsung/android/app/musiclibrary/core/utils/EasyModeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEasyMode(Landroid/content/Context;)Z
    .locals 3

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    return v1

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->EASY_MODE_SWITCH:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->EASY_MODE_MUSIC:Ljava/lang/String;

    .line 25
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isEasyModeOn(Landroid/content/Context;)Z
    .locals 2

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->EASY_MODE_SWITCH:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
