.class Landroid/support/v7/widget/SeslColorPicker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 183
    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$2;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 187
    iget-object p2, p0, Landroid/support/v7/widget/SeslColorPicker$2;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Landroid/support/v7/widget/SeslColorPicker;->access$002(Landroid/support/v7/widget/SeslColorPicker;Z)Z

    .line 190
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 192
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$2;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslColorPicker;->access$100(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->setV(F)V

    .line 193
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$2;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslColorPicker;->access$100(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result p1

    .line 194
    iget-object p2, p0, Landroid/support/v7/widget/SeslColorPicker$2;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->access$300(Landroid/support/v7/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 195
    iget-object p2, p0, Landroid/support/v7/widget/SeslColorPicker$2;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->access$300(Landroid/support/v7/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 197
    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/SeslColorPicker$2;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->access$400(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslOpacitySeekBar;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 198
    iget-object p2, p0, Landroid/support/v7/widget/SeslColorPicker$2;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->access$400(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslOpacitySeekBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->changeColorBase(I)V

    .line 200
    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/SeslColorPicker$2;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->access$500(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 201
    iget-object p2, p0, Landroid/support/v7/widget/SeslColorPicker$2;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p2}, Landroid/support/v7/widget/SeslColorPicker;->access$500(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_3
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
