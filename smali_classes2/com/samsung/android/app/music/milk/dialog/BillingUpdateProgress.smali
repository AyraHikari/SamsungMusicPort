.class public Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;
    .locals 1

    .line 29
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;-><init>()V

    .line 30
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->a(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->b:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->c:Landroid/content/Context;

    .line 38
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f040012

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f130145

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->a:Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->setCancelable(Z)V

    return-object p1
.end method
