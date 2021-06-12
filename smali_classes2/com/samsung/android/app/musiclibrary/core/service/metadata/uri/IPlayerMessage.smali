.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract doNegative()V
.end method

.method public abstract doPositive()V
.end method

.method public abstract getIcon()I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end method

.method public abstract getLayout()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getNegativeText()Ljava/lang/String;
.end method

.method public abstract getPositiveText()Ljava/lang/CharSequence;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract gravity()I
.end method
