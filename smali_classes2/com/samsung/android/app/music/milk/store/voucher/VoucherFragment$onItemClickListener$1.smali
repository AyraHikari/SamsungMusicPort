.class final Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f130476

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 51
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    invoke-static {p2, p1, p3, p4}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->a(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;Landroid/database/Cursor;J)V

    .line 53
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "954"

    const-string p3, "9532"

    .line 54
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
