.class final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;I)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->d(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->e(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 71
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->a(Z)V

    return-void

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->f(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->w_()I

    move-result v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;I)V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->c(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;)I

    move-result v1

    if-lez v1, :cond_9

    .line 81
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->e(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->c()I

    move-result v1

    .line 82
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v4

    sget v5, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d:I

    if-ne v4, v5, :cond_8

    if-ltz v1, :cond_7

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_7

    .line 88
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->e(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(J)Z

    move-result v5

    .line 86
    invoke-virtual {v2, v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(IZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->g(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;)V

    .line 94
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->a(Z)V

    goto :goto_1

    .line 96
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->g(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;)V

    .line 97
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->a(Z)V

    goto :goto_1

    .line 102
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->g(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;)V

    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->a(Z)V

    .line 105
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->safeNotifyDataSetChanged()V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment$updateCheckedItemIds$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_a
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void
.end method
