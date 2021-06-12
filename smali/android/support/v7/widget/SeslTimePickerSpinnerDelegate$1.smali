.class Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/SeslNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;-><init>(Landroid/support/v7/widget/SeslTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    .line 122
    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/support/v7/widget/SeslNumberPicker;II)V
    .locals 4

    .line 125
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0xb

    const/16 v0, 0xc

    .line 128
    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$100(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)C

    move-result v1

    const/16 v2, 0x4b

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-ne p2, p1, :cond_1

    if-eq p3, v0, :cond_2

    :cond_1
    if-ne p2, v0, :cond_4

    if-ne p3, p1, :cond_4

    .line 133
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$202(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z

    .line 134
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/SeslNumberPicker;->performClick(Z)V

    .line 135
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1, p3}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$402(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z

    .line 136
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 137
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1$1;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1$1;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$500(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    return-void
.end method
