.class public Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->i()Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->i()Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;
    .locals 1

    .line 18
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 23
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->f()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0205

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->g()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0204

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->h()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b0203

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->h()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->j()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b01f4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->j()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog$2;-><init>(Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
