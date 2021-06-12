.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/ToolbarExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/support/v7/widget/Toolbar;)V
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    return-void
.end method

.method public static final b(Landroid/support/v7/widget/Toolbar;)V
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->toolbar_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    return-void
.end method
