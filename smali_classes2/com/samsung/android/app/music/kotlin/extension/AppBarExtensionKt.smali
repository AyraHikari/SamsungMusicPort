.class public final Lcom/samsung/android/app/music/kotlin/extension/AppBarExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/samsung/android/app/musiclibrary/ui/AppBar;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/music/kotlin/extension/AppBarExtensionKt;->a(Lcom/samsung/android/app/musiclibrary/ui/AppBar;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final a(Lcom/samsung/android/app/musiclibrary/ui/AppBar;Z)V
    .locals 4

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->z_:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/ToolbarExtensionKt;->b(Landroid/support/v7/widget/Toolbar;)V

    .line 15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const p0, 0x7f0b04b9

    .line 16
    invoke-virtual {v0, p0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 17
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/ToolbarExtensionKt;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 21
    :cond_2
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 22
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 23
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    if-nez p1, :cond_3

    const p0, 0x7f04018a

    .line 24
    invoke-virtual {v0, p0}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/AppBar;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 10
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/kotlin/extension/AppBarExtensionKt;->a(Lcom/samsung/android/app/musiclibrary/ui/AppBar;Z)V

    return-void
.end method

.method public static final b(Lcom/samsung/android/app/musiclibrary/ui/AppBar;)V
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 33
    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 p0, 0x1

    .line 34
    invoke-virtual {v0, p0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 35
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method
