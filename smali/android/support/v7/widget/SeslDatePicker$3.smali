.class Landroid/support/v7/widget/SeslDatePicker$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePicker;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    .line 410
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$3;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 413
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 415
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$3;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$000(Landroid/support/v7/widget/SeslDatePicker;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
