.class public final Lcom/samsung/android/app/music/list/ResizableHeightItemKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/ResizableHeightItem;)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/ResizableHeightItem;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 27
    new-instance v0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/ResizableHeightItem;)V

    check-cast v0, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
