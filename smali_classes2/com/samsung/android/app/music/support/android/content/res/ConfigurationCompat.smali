.class public Lcom/samsung/android/app/music/support/android/content/res/ConfigurationCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasMobileKeyboard(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 11
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 12
    iget p0, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 15
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->hasMobileKeyboard(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method
