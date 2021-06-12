.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListLoaderCallbacksWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1181
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 1191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1192
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->N()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v1, "UiList"

    .line 1195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ListLoaderCallbacksWrapper.onLoadFinished() count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", has it="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->m(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/HashSet;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    if-eqz p1, :cond_2

    .line 1196
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v2

    .line 1195
    :goto_2
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1193
    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_13

    .line 1201
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->m(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/HashSet;

    move-result-object v1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_6

    :cond_5
    const/4 v1, 0x0

    if-eqz p2, :cond_6

    .line 1212
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    .line 1213
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v5, 0x1

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d(Z)V

    .line 1215
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    .line 1216
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->n(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1219
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v4

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 1222
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->b()Z

    move-result v2

    .line 1223
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setGoToTopEnabled(Z)V

    .line 1225
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 1227
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d()V

    .line 1229
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->n(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v3, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1230
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$1;

    invoke-direct {p2, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1232
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Z)V

    .line 1234
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 1235
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->o(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1236
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;)V

    check-cast p2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-virtual {p1, p2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1243
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1244
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1260
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->q(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1261
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w_()I

    move-result p1

    .line 1262
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/ArrayList;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 1487
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;

    .line 1263
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;->a(I)V

    goto :goto_5

    .line 1266
    :cond_d
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->q(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->a(I)V

    .line 1269
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->r(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 1270
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result p2

    .line 1271
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w_()I

    move-result v0

    .line 1272
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->j(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    move-result-object v3

    if-nez v3, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_f
    if-lez p2, :cond_10

    if-ne p2, v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    invoke-interface {v3, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    :cond_11
    if-eqz v2, :cond_12

    .line 1280
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$6;

    invoke-direct {p2, p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$6;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;Z)V

    check-cast p2, Ljava/lang/Runnable;

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    return-void

    :cond_13
    :goto_6
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 1186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/support/v4/content/Loader;)V

    .line 1187
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Landroid/support/v4/content/Loader;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 1181
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 1285
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onLoaderReset(Landroid/support/v4/content/Loader;)V

    return-void
.end method
