.class public final Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;
.super Lkotlin/properties/ObservableProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/ViewGroup;Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/properties/ObservableProperty<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    .line 33
    invoke-direct {p0, p2}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-ne p2, p1, :cond_0

    goto/16 :goto_1

    .line 73
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p3, :cond_2

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eqz p1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->d(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->c(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Landroid/support/v7/widget/SeslIndexScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslIndexScrollView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->e(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onScrollListener$1;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 79
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->f(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$headerItemLayoutChangedListener$1;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnHeaderItemLayoutChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnHeaderItemLayoutChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;)V

    .line 82
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->e(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onScrollListener$1;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 83
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Landroid/support/v7/widget/SeslIndexScrollView;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/SeslIndexScrollView;->setVisibility(I)V

    .line 84
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->d(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Landroid/view/ViewGroup;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->c(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 86
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->g(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    .line 74
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.RecyclerCursorAdapter<android.support.v7.widget.RecyclerView.ViewHolder!>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
