.class public Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;
.super Ljava/lang/Object;
.source "ConfigurationSdlCompat.java"


# static fields
.field private static sMobileKeyboardCoveredField:Ljava/lang/reflect/Field; = null

.field private static sMobileKeyboardCoveredYesField:Ljava/lang/reflect/Field; = null

.field private static sNeedCheckMobileKeyboardCoveredField:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasMobileKeyboard(Landroid/content/res/Configuration;)Z
    .locals 4

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x899

    if-lt v0, v3, :cond_1

    .line 2
    iget p0, p0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 3
    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sNeedCheckMobileKeyboardCoveredField:Z

    if-eqz v0, :cond_4

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 5
    sget-object v3, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sMobileKeyboardCoveredField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_2

    const-string v3, "mobileKeyboardCovered"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sMobileKeyboardCoveredField:Ljava/lang/reflect/Field;

    .line 7
    :cond_2
    sget-object v3, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sMobileKeyboardCoveredYesField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_3

    const-string v3, "MOBILEKEYBOARD_COVERED_YES"

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sMobileKeyboardCoveredYesField:Ljava/lang/reflect/Field;

    .line 9
    :cond_3
    sget-object v3, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sMobileKeyboardCoveredYesField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sget-object v3, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sMobileKeyboardCoveredField:Ljava/lang/reflect/Field;

    .line 10
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p0, :cond_4

    return v2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string v0, "Exception"

    const-string v2, "Unable to read mobile keyboard state"

    .line 11
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    sput-boolean v1, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sNeedCheckMobileKeyboardCoveredField:Z

    :cond_4
    return v1
.end method
