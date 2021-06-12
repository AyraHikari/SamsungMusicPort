.class Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog$1;->a:Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/music/model/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog$1;->a:Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->a(Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog$1;->a:Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->b(Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog$1;->a:Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->a(Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;)Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b0496

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method
