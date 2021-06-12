.class final Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onGenericMotionListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onGenericMotionListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onGenericMotionListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onGenericMotionListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g()I

    move-result v0

    const v2, 0x100012

    if-ne v0, v2, :cond_0

    goto :goto_3

    .line 38
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 v0, 0xc

    if-eq p2, v0, :cond_1

    goto :goto_2

    .line 45
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onGenericMotionListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v0

    .line 47
    sget v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    sget v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d:I

    if-ne v0, v2, :cond_5

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onGenericMotionListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->b(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLastCheckedItemPosition()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    .line 52
    :cond_3
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x1

    if-ge v0, p1, :cond_4

    .line 56
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onGenericMotionListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    sub-int/2addr p1, p2

    invoke-virtual {v1, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(IIZ)V

    goto :goto_1

    .line 58
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onGenericMotionListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    add-int/2addr p1, p2

    sub-int/2addr v0, p2

    invoke-virtual {v1, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(IIZ)V

    :goto_1
    return p2

    :cond_5
    return v1

    :cond_6
    :goto_2
    return v1

    :cond_7
    :goto_3
    return v1
.end method
