.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/view/View;IJZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $choiceMode:I

.field final synthetic $handled:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $position:I

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;IILkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->$view:Landroid/view/View;

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->$position:I

    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->$choiceMode:I

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->$handled:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 793
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 795
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    .line 796
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->$position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v1, :cond_0

    .line 797
    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 798
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->$position:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->$choiceMode:I

    sget v5, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->c:I

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->c(IZ)V

    .line 800
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->$handled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->$choiceMode:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->c:I

    if-eq v1, v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void

    .line 795
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.RecyclerCursorAdapter.ViewHolder"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
