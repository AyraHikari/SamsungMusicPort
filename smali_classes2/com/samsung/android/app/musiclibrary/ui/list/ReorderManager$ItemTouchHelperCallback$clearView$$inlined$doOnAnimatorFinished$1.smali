.class public final Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback$clearView$$inlined$doOnAnimatorFinished$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback$clearView$$inlined$doOnAnimatorFinished$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationsFinished()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback$clearView$$inlined$doOnAnimatorFinished$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->f(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getReorderState$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback$clearView$$inlined$doOnAnimatorFinished$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->f(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->b(I)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback$clearView$$inlined$doOnAnimatorFinished$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->h(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback$clearView$$inlined$doOnAnimatorFinished$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->d(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback$clearView$$inlined$doOnAnimatorFinished$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;->moveItem(II)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback$clearView$$inlined$doOnAnimatorFinished$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback$clearView$$inlined$doOnAnimatorFinished$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback$clearView$$inlined$doOnAnimatorFinished$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->g(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback$clearView$$inlined$doOnAnimatorFinished$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->i(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEnabled(Z)V

    return-void
.end method
