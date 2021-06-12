.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListTrackFragment$getItemDecoration$1;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListTrackFragment;->a(Landroid/app/Activity;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListTrackFragment$getItemDecoration$1;->a:I

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    const-string p4, "outRect"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "view"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "parent"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 103
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p2

    const/16 p3, 0x17

    if-ne p2, p3, :cond_0

    .line 105
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListTrackFragment$getItemDecoration$1;->a:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method
