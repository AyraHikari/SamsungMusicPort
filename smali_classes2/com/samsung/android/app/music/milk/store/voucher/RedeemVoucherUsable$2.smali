.class Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 2

    const-string p1, "VoucherUsable"

    const-string v0, "redeemVoucher completed"

    .line 73
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    const v1, 0x7f0b01b4

    .line 76
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 75
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2$1;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;)V

    .line 80
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 66
    instance-of v0, p1, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$VoucherException;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;

    check-cast p1, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$VoucherException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$VoucherException;->getErrorCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->a(I)V

    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;->a(Ljava/lang/Integer;)V

    return-void
.end method
