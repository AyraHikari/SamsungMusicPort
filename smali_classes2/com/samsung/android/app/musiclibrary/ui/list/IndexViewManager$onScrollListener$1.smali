.class public final Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onScrollListener$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/ViewGroup;Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onScrollListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 100
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 101
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onScrollListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Landroid/support/v7/widget/SeslIndexScrollView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/support/v7/widget/SeslIndexScrollView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 107
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onScrollListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->h(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->a()V

    if-eqz p1, :cond_0

    .line 109
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onScrollListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Landroid/support/v7/widget/SeslIndexScrollView;

    move-result-object p2

    const/4 p3, 0x0

    .line 111
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/RecyclerViewExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 112
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 113
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    const-string v2, "it.layoutManager"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    .line 109
    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/support/v7/widget/SeslIndexScrollView;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method
