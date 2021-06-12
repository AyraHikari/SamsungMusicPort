.class Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    .line 866
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$3;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 870
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$3;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateInputState()V

    .line 871
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$3;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    :cond_0
    return p1
.end method
