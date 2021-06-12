.class Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$1;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;III)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$1;->d:Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$1;->a:I

    iput p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$1;->b:I

    iput p4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$1;->c:I

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 61
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-gez p2, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 66
    iget p4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$1;->a:I

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 68
    :cond_1
    iget p4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$1;->b:I

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 69
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_2

    .line 70
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$1;->b:I

    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$1;->c:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_2
    return-void
.end method
