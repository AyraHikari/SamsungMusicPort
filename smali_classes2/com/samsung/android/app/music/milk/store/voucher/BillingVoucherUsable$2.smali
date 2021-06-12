.class Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string p1, "VoucherUsable"

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "launchBilling by voucher onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;->c()V

    return-void
.end method
