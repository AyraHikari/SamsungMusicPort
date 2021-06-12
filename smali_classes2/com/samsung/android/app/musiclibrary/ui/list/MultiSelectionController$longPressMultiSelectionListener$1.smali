.class public final Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$longPressMultiSelectionListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$longPressMultiSelectionListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 6

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v0, :cond_1

    move-object p1, p2

    :cond_1
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isEnabled(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long p4, p4, v0

    if-lez p4, :cond_3

    if-eqz p1, :cond_3

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$longPressMultiSelectionListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(I)Z

    move-result p1

    xor-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;IZZILjava/lang/Object;)V

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$longPressMultiSelectionListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->safeNotifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    return-void
.end method
