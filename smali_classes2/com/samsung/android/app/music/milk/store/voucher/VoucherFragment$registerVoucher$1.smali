.class final Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$registerVoucher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$registerVoucher$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 1

    const-string p1, "VoucherFragment"

    const-string v0, "registered voucher"

    .line 171
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$registerVoucher$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->a(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;)Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->b()V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$registerVoucher$1;->a(Ljava/lang/Integer;)V

    return-void
.end method
