.class public Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;
.super Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;
.source "SourceFile"


# instance fields
.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/database/Cursor;J)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;-><init>(Landroid/support/v4/app/Fragment;Landroid/database/Cursor;J)V

    .line 72
    new-instance p1, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable$2;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->k:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    const-string p1, "productId"

    .line 29
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->h:Ljava/lang/String;

    const-string p1, "pricingTypeCode"

    .line 30
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->i:Ljava/lang/String;

    const-string p1, "voucherId"

    .line 31
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    const-string v0, "VoucherUsable"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "buySubscription"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;-><init>(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->b(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->c(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;-><init>(Landroid/app/Activity;)V

    .line 61
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->k:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "VoucherUsable"

    const-string v1, "execute : activity is not instance of BaseMilkServiceActivity"

    .line 63
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    const v1, 0x7f0b049f

    .line 38
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->f:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b04a1

    .line 42
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable$1;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;)V

    const v2, 0x7f0b02d3

    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00cd

    .line 49
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->c(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    .line 50
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "BillingVoucherUsable"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected a(I)V
    .locals 0

    return-void
.end method
