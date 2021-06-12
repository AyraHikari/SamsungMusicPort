.class Landroid/support/v7/app/SeslTimePickerDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/SeslTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/SeslTimePickerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/SeslTimePickerDialog;)V
    .locals 0

    .line 54
    iput-object p1, p0, Landroid/support/v7/app/SeslTimePickerDialog$1;->this$0:Landroid/support/v7/app/SeslTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 57
    iget-object p1, p0, Landroid/support/v7/app/SeslTimePickerDialog$1;->this$0:Landroid/support/v7/app/SeslTimePickerDialog;

    invoke-static {p1}, Landroid/support/v7/app/SeslTimePickerDialog;->access$000(Landroid/support/v7/app/SeslTimePickerDialog;)Landroid/support/v7/widget/SeslTimePicker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslTimePicker;->isEditTextMode()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 58
    iget-object p1, p0, Landroid/support/v7/app/SeslTimePickerDialog$1;->this$0:Landroid/support/v7/app/SeslTimePickerDialog;

    invoke-static {p1}, Landroid/support/v7/app/SeslTimePickerDialog;->access$000(Landroid/support/v7/app/SeslTimePickerDialog;)Landroid/support/v7/widget/SeslTimePicker;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SeslTimePicker;->setEditTextMode(Z)V

    :cond_0
    return-void
.end method
