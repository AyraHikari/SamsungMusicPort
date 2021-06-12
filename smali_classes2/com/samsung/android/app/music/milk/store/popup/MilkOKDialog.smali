.class public Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

.field private c:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/FrameLayout;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->j:I

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f040123

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->b:Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    return-void
.end method

.method protected b(I)Landroid/view/ViewGroup;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->i:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method protected f()Landroid/widget/TextView;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method protected g()Landroid/widget/TextView;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method protected h()Landroid/widget/Button;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->g:Landroid/widget/Button;

    return-object v0
.end method

.method protected i()Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->b:Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onAttach(Landroid/app/Activity;)V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->a:Landroid/content/Context;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const v0, 0x7f130386

    .line 55
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f130387

    .line 56
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->e:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f130388

    .line 59
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->f:Landroid/widget/TextView;

    const v0, 0x7f13038a

    .line 60
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->h:Landroid/view/View;

    const v0, 0x7f130393

    .line 62
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->g:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->g:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    const v0, 0x7f130389

    .line 65
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->i:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 184
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 175
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 191
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 192
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method
