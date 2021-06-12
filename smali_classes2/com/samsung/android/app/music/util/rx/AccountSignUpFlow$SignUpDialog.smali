.class public Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignUpDialog"
.end annotation


# instance fields
.field a:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;-><init>()V

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;)Landroid/os/Handler;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->b:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(Lio/reactivex/subjects/PublishSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->a:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 233
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string p1, "AccountSignUpFlow"

    const-string v0, "onCancel"

    .line 234
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->b:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 188
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 189
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 199
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b02a9

    .line 200
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog$2;-><init>(Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;)V

    const v1, 0x7f0b0256

    .line 201
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog$1;-><init>(Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;)V

    const v1, 0x7f0b00cd

    .line 211
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 226
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 228
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 240
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 242
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->b:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->a:Lio/reactivex/subjects/PublishSubject;

    if-nez v0, :cond_0

    const-string v0, "AccountSignUpFlow"

    const-string v1, "run. publish subject is null"

    .line 248
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->a:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method
