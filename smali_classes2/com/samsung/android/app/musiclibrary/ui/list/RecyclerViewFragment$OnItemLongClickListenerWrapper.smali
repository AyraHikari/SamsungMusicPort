.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnItemLongClickListenerWrapper"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 835
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IJ)Z
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UiList"

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onItemLongClick() position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", choiceMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 837
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->c(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->c(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gez v0, :cond_3

    :cond_2
    return v1

    .line 845
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;->a(Landroid/view/View;IJ)Z

    move-result v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_6

    .line 847
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Landroid/view/View;IJ)Z

    move-result v1

    move v2, v1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 849
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result p1

    .line 850
    sget p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    if-eq p1, p2, :cond_7

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;->a()I

    move-result p2

    if-ne p1, p2, :cond_8

    :cond_7
    if-lez v0, :cond_8

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object p1

    if-nez p1, :cond_8

    .line 851
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->J()V

    const/4 v2, 0x1

    :cond_8
    return v2
.end method
