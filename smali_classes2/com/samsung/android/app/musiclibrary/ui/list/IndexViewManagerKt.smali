.class public final Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManagerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Landroid/content/res/Resources;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManagerKt;->b(Landroid/content/res/Resources;I)I

    move-result p0

    return p0
.end method

.method private static final b(Landroid/content/res/Resources;I)I
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 357
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method
