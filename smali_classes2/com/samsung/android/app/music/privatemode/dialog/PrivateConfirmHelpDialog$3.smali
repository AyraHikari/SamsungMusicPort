.class Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;Z)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$3;->b:Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$3;->b:Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;

    iget-boolean p2, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$3;->a:Z

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->a(Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;Z)V

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$3;->b:Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$3;->b:Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "list_items"

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    const-string v1, "is_folder"

    .line 99
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 100
    iget-boolean v1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$3;->a:Z

    .line 101
    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/app/music/privatemode/PrivateUtils;->a(Landroid/support/v4/app/FragmentActivity;[JZZ)V

    return-void
.end method
