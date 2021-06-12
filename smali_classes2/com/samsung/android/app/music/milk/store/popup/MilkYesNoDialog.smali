.class public Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;
.source "SourceFile"


# instance fields
.field private c:Landroid/widget/Button;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f040124

    return v0
.end method

.method protected j()Landroid/widget/Button;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->c:Landroid/widget/Button;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 18
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const v0, 0x7f130395

    .line 20
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->e:Landroid/view/View;

    const v0, 0x7f130396

    .line 21
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->c:Landroid/widget/Button;

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->c:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    return-object p1
.end method
