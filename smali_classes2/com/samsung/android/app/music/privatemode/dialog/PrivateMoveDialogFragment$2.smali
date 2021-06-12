.class Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$2;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$2;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;

    .line 217
    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->b(Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateAbortMoveDialog;->a(Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$2;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;

    .line 219
    invoke-virtual {v1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "privateAbortMoveDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$2;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a(Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$2;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
