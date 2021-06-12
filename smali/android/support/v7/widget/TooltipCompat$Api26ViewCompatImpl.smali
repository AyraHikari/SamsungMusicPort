.class Landroid/support/v7/widget/TooltipCompat$Api26ViewCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/TooltipCompat$ViewCompatImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/TooltipCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api26ViewCompatImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/TooltipCompat$1;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Landroid/support/v7/widget/TooltipCompat$Api26ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setTooltipForceActionBarPosX(Z)V
    .locals 0

    .line 98
    invoke-static {p1}, Landroid/support/v7/widget/TooltipCompatHandler;->setTooltipForceActionBarPosX(Z)V

    return-void
.end method

.method public setTooltipForceBelow(Z)V
    .locals 0

    .line 93
    invoke-static {p1}, Landroid/support/v7/widget/TooltipCompatHandler;->setTooltipForceBelow(Z)V

    return-void
.end method

.method public setTooltipNull(Z)V
    .locals 0

    .line 88
    invoke-static {p1}, Landroid/support/v7/widget/TooltipCompatHandler;->setTooltipNull(Z)V

    return-void
.end method

.method public setTooltipPosition(III)V
    .locals 0

    .line 82
    invoke-static {p1, p2, p3}, Landroid/support/v7/widget/TooltipCompatHandler;->setTooltipPosition(III)V

    return-void
.end method

.method public setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    invoke-static {p1, p2}, Landroid/support/v7/widget/TooltipCompatHandler;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method
