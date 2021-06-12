.class Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog$1;->a:Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 94
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog$1;->a:Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
