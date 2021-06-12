.class Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(I)V
    .locals 2

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotify() type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 343
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->i(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 344
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->j(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f0b043b

    .line 345
    sget v1, Lcom/samsung/android/app/music/regional/VariantStringIds;->b:I

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/dialog/NotiDialog;->a(II)Lcom/samsung/android/app/music/dialog/NotiDialog;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    .line 347
    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/music/dialog/NotiDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0b0426

    const v1, 0x7f0b0425

    .line 349
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/dialog/NotiDialog;->a(II)Lcom/samsung/android/app/music/dialog/NotiDialog;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    .line 351
    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/music/dialog/NotiDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->h(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b0292

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 340
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onScanFinished(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 326
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->d(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;Ljava/util/ArrayList;)V

    .line 327
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->e(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    .line 328
    invoke-static {p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->d(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 329
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->f(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 330
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->g(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onStartScan()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;Z)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)V

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)V

    return-void
.end method

.method public onStopScan()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;Z)V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->c(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)V

    return-void
.end method
