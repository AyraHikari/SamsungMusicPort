.class public final Lcom/samsung/android/app/musiclibrary/ui/ThemeManagerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Landroid/content/ContextWrapper;
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "resources.configuration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/ThemeManagerKt;->a(Landroid/content/res/Configuration;Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v1, Landroid/content/ContextWrapper;

    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 47
    :cond_0
    new-instance v1, Landroid/content/ContextWrapper;

    invoke-direct {v1, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v1
.end method

.method public static final a(Landroid/content/res/Configuration;Landroid/content/Context;)Landroid/content/res/Configuration;
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;->a:Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;->b()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    move-object p1, v1

    goto :goto_0

    .line 54
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->c(Landroid/content/Context;)Landroid/app/UiModeManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p1

    and-int/lit8 p1, p1, 0x30

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x20

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x10

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 58
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 59
    iget p0, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, -0x31

    iput p0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 60
    iget p0, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/2addr p0, p1

    iput p0, v1, Landroid/content/res/Configuration;->uiMode:I

    :cond_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
