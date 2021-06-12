.class Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SnackbarBaseLayout"
.end annotation


# instance fields
.field private mOnAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

.field private mOnLayoutChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 625
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 629
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 630
    sget-object v0, Landroid/support/design/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 631
    sget p2, Landroid/support/design/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 632
    sget p2, Landroid/support/design/R$styleable;->SnackbarLayout_elevation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 635
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 637
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 650
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 651
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 655
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 660
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 661
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 642
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 643
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    if-eqz p1, :cond_0

    .line 644
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;)V
    .locals 0

    .line 673
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    return-void
.end method

.method setOnLayoutChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;)V
    .locals 0

    .line 668
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    return-void
.end method
