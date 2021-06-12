.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/TextViewExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/widget/TextView;)Z
    .locals 8

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v5, "UiList"

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEllipsis() width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", lineCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", maxLines="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", ellipsize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", layout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p0

    if-ne v5, p0, :cond_3

    int-to-float p0, v0

    cmpl-float p0, v1, p0

    if-gtz p0, :cond_2

    if-lez v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public static final b(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/text/StringsKt;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v1, p0

    :cond_3
    :goto_1
    return-object v1
.end method
