.class Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment$1;->a:Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 29
    iget-object p1, p0, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment$1;->a:Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment$1;->a:Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 32
    instance-of p2, p1, Lcom/samsung/android/app/music/help/MuseHelper$MuseLoginRequestReceivable;

    if-eqz p2, :cond_1

    .line 33
    check-cast p1, Lcom/samsung/android/app/music/help/MuseHelper$MuseLoginRequestReceivable;

    const/4 p2, 0x2

    const/4 v0, 0x1

    .line 34
    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/music/help/MuseHelper$MuseLoginRequestReceivable;->a(II)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment$1;->a:Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;->getTargetRequestCode()I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
