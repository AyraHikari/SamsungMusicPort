.class Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeslKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    .line 928
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 933
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 934
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    return v1

    :cond_0
    const/16 p3, 0x17

    if-eq p2, p3, :cond_6

    const/16 p3, 0x3d

    if-eq p2, p3, :cond_5

    const/16 p3, 0x42

    if-eq p2, p3, :cond_1

    return v1

    .line 951
    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->isEditTextMode()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 952
    move-object p2, p1

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getImeOptions()I

    move-result p3

    const/4 v2, 0x5

    and-int/2addr p3, v2

    if-ne p3, v2, :cond_3

    .line 954
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p2

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslDatePicker;

    move-result-object p3

    const/4 v1, 0x2

    invoke-virtual {p2, p3, p1, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 957
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 958
    :cond_3
    invoke-virtual {p2}, Landroid/widget/EditText;->getImeOptions()I

    move-result p1

    const/4 p2, 0x6

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_4

    .line 960
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateInputState()V

    .line 961
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v0

    .line 939
    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 940
    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    return v1

    :cond_7
    return v1
.end method
