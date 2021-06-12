.class Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 274
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->f(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->w_()I

    move-result v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;I)I

    .line 284
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->g(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)I

    move-result v1

    if-lez v1, :cond_3

    .line 285
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->d(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->c()I

    move-result v1

    .line 286
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    if-ltz v1, :cond_1

    .line 288
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 290
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .line 291
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->d(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(J)Z

    move-result v5

    .line 290
    invoke-virtual {v2, v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(IZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->h(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;Z)V

    goto :goto_1

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->h(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;Z)V

    goto :goto_1

    .line 304
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->h(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;Z)V

    .line 307
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;->notifyDataSetChanged()V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void

    .line 276
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;I)I

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->e(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->c(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .line 278
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->d(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 277
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;Z)V

    return-void
.end method
