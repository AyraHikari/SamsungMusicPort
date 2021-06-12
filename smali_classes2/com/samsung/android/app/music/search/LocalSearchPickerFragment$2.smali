.class Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 237
    iget-object v2, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    .line 238
    iget-object v3, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getUserVisibleHint()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    iget-object v4, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->e(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->w_()I

    move-result v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;I)I

    .line 251
    iget-object v1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->f(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)I

    move-result v1

    if-lez v1, :cond_4

    .line 252
    iget-object v1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->c(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->c()I

    move-result v1

    .line 253
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    if-ltz v1, :cond_2

    .line 255
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 257
    iget-object v5, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    .line 258
    invoke-static {v5}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->c(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(J)Z

    move-result v5

    .line 257
    invoke-virtual {v2, v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(IZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->g(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;Z)V

    goto :goto_1

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->g(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;Z)V

    goto :goto_1

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->g(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;Z)V

    .line 274
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchableAdapter;->notifyDataSetChanged()V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void

    .line 242
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;I)I

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->d(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)Lcom/samsung/android/app/music/search/SelectAllObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    .line 244
    invoke-static {v1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->c(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/app/music/search/SelectAllObservable;->a(IZ)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;->a:Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;Z)V

    return-void

    :cond_6
    :goto_3
    return-void
.end method
