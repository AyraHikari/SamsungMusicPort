.class Landroid/support/v7/widget/SeslColorPicker$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslColorPicker;->initGradientColorSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslColorPicker;)V
    .locals 0

    .line 213
    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$3;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 217
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 219
    :pswitch_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$3;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslColorPicker;->access$600(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslGradientColorSeekBar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->setSelected(Z)V

    return p2

    .line 223
    :cond_0
    :pswitch_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$3;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslColorPicker;->access$600(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslGradientColorSeekBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->setSelected(Z)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
