.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/IntentExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v1, 0x100000

    and-int/2addr p0, v1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
