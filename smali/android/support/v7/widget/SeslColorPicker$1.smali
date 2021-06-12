.class Landroid/support/v7/widget/SeslColorPicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslColorPicker;->initGradientColorWheel()V
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

    .line 163
    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$1;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWheelColorChanged(FF)V
    .locals 2

    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker$1;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslColorPicker;->access$002(Landroid/support/v7/widget/SeslColorPicker;Z)Z

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker$1;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslColorPicker;->access$100(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->setHS(FF)V

    .line 168
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$1;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslColorPicker;->access$200(Landroid/support/v7/widget/SeslColorPicker;)V

    return-void
.end method
