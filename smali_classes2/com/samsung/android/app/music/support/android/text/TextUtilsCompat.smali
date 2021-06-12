.class public Lcom/samsung/android/app/music/support/android/text/TextUtilsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 1

    .line 12
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/text/TextUtilsSdlCompat;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object p0

    return-object p0
.end method
