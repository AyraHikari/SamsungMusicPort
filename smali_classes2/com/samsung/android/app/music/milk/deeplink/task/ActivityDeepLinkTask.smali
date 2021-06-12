.class public abstract Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "SourceFile"


# instance fields
.field protected a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V
    .locals 0

    .line 17
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/net/Uri;)V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;->a:Landroid/support/v4/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 23
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "isTaskIntercepted - Legal info not agreed."

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 27
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    new-instance v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0467

    .line 30
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0488

    .line 31
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0261

    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;)V

    .line 32
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method
