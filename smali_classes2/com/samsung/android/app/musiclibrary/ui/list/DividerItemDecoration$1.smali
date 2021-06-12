.class Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 183
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;I)I

    .line 184
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->b(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;)V

    return-void
.end method
