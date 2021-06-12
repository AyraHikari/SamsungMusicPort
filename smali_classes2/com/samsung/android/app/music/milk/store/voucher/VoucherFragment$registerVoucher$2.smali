.class final Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$registerVoucher$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$registerVoucher$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    instance-of v0, p1, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$VoucherException;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$registerVoucher$2;->a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    check-cast p1, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$VoucherException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$VoucherException;->getErrorCode()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->a(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;I)V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$registerVoucher$2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
