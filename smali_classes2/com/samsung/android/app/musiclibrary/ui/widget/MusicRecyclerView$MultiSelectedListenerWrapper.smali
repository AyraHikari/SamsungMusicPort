.class final Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiSelectedListenerWrapper"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 716
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 718
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    .line 720
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    .line 729
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 730
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 731
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    .line 730
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    .line 737
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 738
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;->a()V

    :cond_2
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 10

    .line 743
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    .line 749
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 750
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 751
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    .line 750
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    .line 758
    :cond_1
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    if-ge p1, p2, :cond_2

    .line 759
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    .line 760
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    .line 761
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    .line 764
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 765
    instance-of p2, p1, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 766
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_6

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 767
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewCount()I

    move-result v1

    .line 768
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    .line 769
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    .line 770
    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    .line 771
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    rem-int/2addr v2, p1

    .line 772
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    rem-int/2addr v3, p1

    if-le v2, v3, :cond_3

    .line 774
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    .line 775
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    .line 776
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    rem-int/2addr v2, p1

    .line 777
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    rem-int/2addr v3, p1

    .line 779
    :cond_3
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    if-gt v4, v5, :cond_9

    .line 780
    :goto_0
    rem-int v6, v4, p1

    if-gt v2, v6, :cond_5

    if-gt v6, v3, :cond_5

    add-int v6, v4, v1

    .line 783
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 785
    :cond_4
    invoke-virtual {p2, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v8

    .line 783
    invoke-interface {v7, v0, v6, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;->a(Landroid/view/View;IJ)V

    :cond_5
    if-eq v4, v5, :cond_9

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 766
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.RecyclerCursorAdapter<*>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 789
    :cond_7
    instance-of p1, p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz p1, :cond_9

    .line 790
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->b:I

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->c:I

    if-gt p1, p2, :cond_9

    .line 791
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 792
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    invoke-interface {v1, v0, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;->a(Landroid/view/View;IJ)V

    if-eq p1, p2, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 795
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_a
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;->b()V

    return-void
.end method

.method public onMultiSelected(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    const-string p3, "RecyclerView"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
