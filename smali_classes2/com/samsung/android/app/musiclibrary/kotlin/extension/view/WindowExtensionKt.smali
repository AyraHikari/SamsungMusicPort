.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/WindowExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/Window;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string v1, "decorView"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit16 p0, p0, 0x200

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static final a(Landroid/view/Window;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_0

    .line 66
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->j_:Z

    if-eqz v0, :cond_1

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "layoutInDisplayCutoutMode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "field"

    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Ui"

    const-string p1, "layoutInDisplayCutoutMode - IllegalAccessException"

    .line 74
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "Ui"

    const-string p1, "layoutInDisplayCutoutMode - llegalArgumentException"

    .line 72
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final a(Landroid/view/Window;Z)V
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string p1, "decorView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit16 p0, p0, 0x2000

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string p1, "decorView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    and-int/lit16 p0, p0, -0x2001

    .line 23
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private static final b(Landroid/view/Window;I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 49
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x316a3

    if-lt v0, v1, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->semSetNavigationBarIconColor(I)V

    :cond_0
    return-void
.end method

.method public static final b(Landroid/view/Window;Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    .line 32
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string p1, "decorView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit8 p0, p0, 0x10

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string p1, "decorView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    and-int/lit8 p0, p0, -0x11

    .line 32
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 36
    :cond_1
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x316a3

    if-lt v0, v1, :cond_3

    if-eqz p1, :cond_2

    .line 39
    sget p1, Lcom/samsung/android/app/musiclibrary/R$color;->sesl_bottom_navigation_icon_light:I

    goto :goto_1

    .line 41
    :cond_2
    sget p1, Lcom/samsung/android/app/musiclibrary/R$color;->sesl_bottom_navigation_icon_dark:I

    .line 37
    :goto_1
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/WindowExtensionKt;->b(Landroid/view/Window;I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static final c(Landroid/view/Window;Z)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x400

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method
