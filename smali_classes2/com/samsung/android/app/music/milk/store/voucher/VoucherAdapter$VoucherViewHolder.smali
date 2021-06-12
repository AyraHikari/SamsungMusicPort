.class public final Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoucherViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    const p3, 0x7f130108

    .line 193
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;->a:Landroid/view/View;

    const p3, 0x7f130476

    .line 197
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 198
    new-instance p3, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder$$special$$inlined$apply$lambda$1;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder$$special$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;->a:Landroid/view/View;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;->b:Landroid/view/View;

    return-object v0
.end method
