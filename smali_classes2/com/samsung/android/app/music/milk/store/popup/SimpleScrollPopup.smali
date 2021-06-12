.class public Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.source "SourceFile"


# instance fields
.field protected e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f04014a

    return v0
.end method

.method protected a(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4

    .line 42
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->a(Landroid/app/Dialog;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 43
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 44
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v0, 0x7f130070

    .line 46
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f13020f

    .line 47
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1303da

    .line 48
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->e:Landroid/view/ViewGroup;

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "key_title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key_message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(Landroid/view/View;II)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method protected b()I
    .locals 1

    const v0, 0x7f110141

    return v0
.end method
