.class interface abstract Landroid/support/v7/widget/TooltipCompat$ViewCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/TooltipCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ViewCompatImpl"
.end annotation


# virtual methods
.method public abstract setTooltipForceActionBarPosX(Z)V
.end method

.method public abstract setTooltipForceBelow(Z)V
.end method

.method public abstract setTooltipNull(Z)V
.end method

.method public abstract setTooltipPosition(III)V
.end method

.method public abstract setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
