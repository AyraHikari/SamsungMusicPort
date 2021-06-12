.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/ImageViewExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 11
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v4/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method
