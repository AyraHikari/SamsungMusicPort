.class public Landroid/support/v7/widget/SeslSeekBar;
.super Landroid/support/v7/widget/SeslAbsSeekBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslSeekBar$OnSeekBarHoverListener;,
        Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;

.field private mOnSeekBarHoverListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarHoverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 81
    sget v0, Landroid/support/v7/appcompat/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 131
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method onHoverChanged(III)V
    .locals 2

    .line 217
    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->mOnSeekBarHoverListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->mOnSeekBarHoverListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarHoverListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Landroid/support/v7/widget/SeslSeekBar$OnSeekBarHoverListener;->onHoverChanged(Landroid/support/v7/widget/SeslSeekBar;IZ)V

    .line 220
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslAbsSeekBar;->onHoverChanged(III)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslSeekBar;->canUserSetProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method onProgressRefresh(FZI)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslAbsSeekBar;->onProgressRefresh(FZI)V

    .line 96
    iget-object p1, p0, Landroid/support/v7/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Landroid/support/v7/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;

    invoke-interface {p1, p0, p3, p2}, Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/support/v7/widget/SeslSeekBar;IZ)V

    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 1

    .line 195
    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->mOnSeekBarHoverListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->mOnSeekBarHoverListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarHoverListener;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/SeslSeekBar$OnSeekBarHoverListener;->onStartTrackingHover(Landroid/support/v7/widget/SeslSeekBar;I)V

    .line 198
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStartTrackingHover(III)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    .line 116
    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/support/v7/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method onStopTrackingHover()V
    .locals 1

    .line 206
    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->mOnSeekBarHoverListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->mOnSeekBarHoverListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarHoverListener;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/SeslSeekBar$OnSeekBarHoverListener;->onStopTrackingHover(Landroid/support/v7/widget/SeslSeekBar;)V

    .line 209
    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStopTrackingHover()V

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/support/v7/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Landroid/support/v7/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setOnSeekBarHoverListener(Landroid/support/v7/widget/SeslSeekBar$OnSeekBarHoverListener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Landroid/support/v7/widget/SeslSeekBar;->mOnSeekBarHoverListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarHoverListener;

    return-void
.end method
