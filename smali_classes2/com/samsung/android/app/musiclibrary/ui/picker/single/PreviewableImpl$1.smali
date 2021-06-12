.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;Landroid/app/Activity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;->a:Landroid/app/Activity;

    .line 64
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->battery_low_popup_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;->a:Landroid/app/Activity;

    .line 65
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->battery_low_popup_msg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x3

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
