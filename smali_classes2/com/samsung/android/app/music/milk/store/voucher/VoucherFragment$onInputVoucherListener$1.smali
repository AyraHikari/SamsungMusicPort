.class final Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$onInputVoucherListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$onInputVoucherListener$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$onInputVoucherListener$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    const-string v1, "code"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->a(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "954"

    const-string v1, "9531"

    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
