.class final Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$emptyView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$emptyView$2;->this$0:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 4

    .line 42
    new-instance v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$VoucherEmptyViewCreator;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$emptyView$2;->this$0:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$emptyView$2;->this$0:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$VoucherEmptyViewCreator;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$VoucherEmptyViewCreator;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$emptyView$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
