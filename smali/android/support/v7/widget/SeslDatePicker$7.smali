.class Landroid/support/v7/widget/SeslDatePicker$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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

    .line 622
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$7;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 625
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$7;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$400(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 626
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$7;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SeslDatePicker;->setEditTextMode(Z)V

    :cond_0
    return-void
.end method
