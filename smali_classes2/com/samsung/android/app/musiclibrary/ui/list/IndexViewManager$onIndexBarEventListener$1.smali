.class public final Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onIndexBarEventListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;


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

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onIndexBarEventListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexChanged(I)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onIndexBarEventListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    const-string v2, "layoutManager"

    .line 90
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    .line 91
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onIndexBarEventListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewCount()I

    move-result v2

    add-int/2addr p1, v2

    const/4 v2, 0x1

    if-le v2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-lt p1, v1, :cond_1

    add-int/lit8 p1, v1, -0x1

    .line 93
    :cond_1
    :goto_0
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/RecyclerViewExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onIndexBarEventListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->h(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->a()V

    return-void
.end method

.method public onPressed(F)V
    .locals 0

    return-void
.end method

.method public onReleased(F)V
    .locals 0

    return-void
.end method
