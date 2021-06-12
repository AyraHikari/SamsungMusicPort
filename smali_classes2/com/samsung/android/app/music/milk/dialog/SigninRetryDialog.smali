.class public Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/support/v4/app/FragmentActivity;

.field private b:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

.field private c:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->a:Landroid/support/v4/app/FragmentActivity;

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b021f

    .line 33
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "802"

    .line 34
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "8004"

    const v2, 0x7f0b0230

    .line 35
    invoke-virtual {v0, v2, v1, p0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "8003"

    const v2, 0x7f0b00cd

    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->b:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    .line 39
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->c:Landroid/app/ProgressDialog;

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->c:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->a:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0b0482

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;)Landroid/support/v4/app/FragmentActivity;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->a:Landroid/support/v4/app/FragmentActivity;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->c:Landroid/app/ProgressDialog;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->b:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "SigninRetryDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->b:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->dismiss()V

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->c:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;)V

    .line 57
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->c(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    :cond_0
    return-void
.end method
