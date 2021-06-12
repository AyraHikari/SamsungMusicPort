.class Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->a(Landroid/app/Activity;Landroid/app/Dialog;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;Landroid/app/Dialog;Landroid/app/Activity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$3;->c:Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$3;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$3;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$3;->a:Landroid/app/Dialog;

    const v0, 0x7f130390

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$3;->c:Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$3;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->a(Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 91
    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$3;->c:Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->dismiss()V

    return-void
.end method
