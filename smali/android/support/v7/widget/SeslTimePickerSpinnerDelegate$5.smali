.class Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;
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

    .line 819
    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 823
    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1100(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    .line 824
    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    :cond_0
    return p1
.end method
