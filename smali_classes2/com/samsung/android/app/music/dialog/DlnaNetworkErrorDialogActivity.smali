.class public Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string v0, "device_name"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dlna_network_error_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 40
    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->a(Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dlna_network_error_dialog"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
