.class public Lcom/samsung/android/app/music/help/SendLogDialog;
.super Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 22
    new-instance p1, Lcom/samsung/android/app/music/help/SendLogDialog$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/help/SendLogDialog$1;-><init>(Lcom/samsung/android/app/music/help/SendLogDialog;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/help/SendLogDialog;->b(Landroid/content/DialogInterface$OnClickListener;)V

    .line 34
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/help/SendLogDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0252

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b022b

    .line 35
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$PositiveButtonClickAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$PositiveButtonClickAdapter;-><init>(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;)V

    const v1, 0x7f0b0251

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;-><init>(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;)V

    const v1, 0x7f0b00cd

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
