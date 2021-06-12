.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

.field final synthetic b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->a:Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->a:Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "SamsungBilling"

    const-string v1, "ALREADY_USED_PROMOTION - positive. continue purchase with original price"

    .line 509
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->g(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .line 513
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->h(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0200

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->g(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->a(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->a:Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->dismiss()V

    return-void
.end method
