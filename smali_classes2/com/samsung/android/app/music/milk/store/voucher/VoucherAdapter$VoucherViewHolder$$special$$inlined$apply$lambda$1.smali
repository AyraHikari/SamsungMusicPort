.class final Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder$$special$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder$$special$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->a()Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;->getAdapterPosition()I

    move-result v1

    .line 202
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;->getItemId()J

    move-result-wide v2

    .line 199
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.voucher.VoucherAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
