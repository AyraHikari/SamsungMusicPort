.class Landroid/support/v7/widget/SeslColorPicker$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslColorPicker;->initOpacitySeekBar()V
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

    .line 246
    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$4;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 251
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$4;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Landroid/support/v7/widget/SeslColorPicker;->access$002(Landroid/support/v7/widget/SeslColorPicker;Z)Z

    .line 254
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$4;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslColorPicker;->access$100(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->setAlpha(I)V

    .line 255
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$4;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslColorPicker;->access$100(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result p1

    .line 256
    iget-object p2, p0, Landroid/support/v7/widget/SeslColorPicker$4;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->access$300(Landroid/support/v7/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 257
    iget-object p2, p0, Landroid/support/v7/widget/SeslColorPicker$4;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->access$300(Landroid/support/v7/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 259
    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/SeslColorPicker$4;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->access$500(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 260
    iget-object p2, p0, Landroid/support/v7/widget/SeslColorPicker$4;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->access$500(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
