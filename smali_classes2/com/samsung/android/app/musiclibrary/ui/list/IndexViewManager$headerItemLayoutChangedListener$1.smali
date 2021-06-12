.class public final Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$headerItemLayoutChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;


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

    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$headerItemLayoutChangedListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIIIIIIII)V
    .locals 0

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$headerItemLayoutChangedListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p3, :cond_1

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eq p10, p6, :cond_0

    .line 135
    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_0

    .line 138
    check-cast p1, Landroid/view/View;

    .line 358
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$headerItemLayoutChangedListener$1$onLayoutChange$$inlined$doOnNextLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$headerItemLayoutChangedListener$1$onLayoutChange$$inlined$doOnNextLayout$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$headerItemLayoutChangedListener$1;)V

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void

    .line 134
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.RecyclerCursorAdapter<*>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
