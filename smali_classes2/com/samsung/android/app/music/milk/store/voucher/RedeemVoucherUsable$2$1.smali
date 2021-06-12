.class Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;->a(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1

    const-string p1, "VoucherUsable"

    const-string v0, "check subscription completed"

    .line 83
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    .line 86
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string p1, "VoucherUsable"

    const-string v0, "already fragment is destoryed"

    .line 89
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
