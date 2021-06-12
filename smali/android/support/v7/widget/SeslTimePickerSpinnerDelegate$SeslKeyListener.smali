.class Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeslKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    .line 939
    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 945
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1200(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SeslTimePickerSpinner"

    .line 946
    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    return v0

    :cond_1
    const/16 p3, 0x17

    if-eq p2, p3, :cond_7

    const/16 p3, 0x3d

    if-eq p2, p3, :cond_6

    const/16 p3, 0x42

    if-eq p2, p3, :cond_2

    return v0

    .line 957
    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->isEditTextMode()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 958
    move-object p2, p1

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getImeOptions()I

    move-result p3

    const/4 v2, 0x5

    and-int/2addr p3, v2

    if-ne p3, v2, :cond_4

    .line 960
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p2

    iget-object p3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    iget-object p3, p3, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    const/4 v0, 0x2

    invoke-virtual {p2, p3, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    .line 963
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 964
    :cond_4
    invoke-virtual {p2}, Landroid/widget/EditText;->getImeOptions()I

    move-result p1

    const/4 p2, 0x6

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_5

    .line 966
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1100(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    .line 967
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    :cond_5
    :goto_0
    return v1

    :cond_6
    return v1

    .line 954
    :cond_7
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 955
    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method
