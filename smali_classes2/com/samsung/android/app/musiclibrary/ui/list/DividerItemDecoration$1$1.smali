.class Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;->onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;I)I

    .line 176
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->b(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->invalidateItemDecorations()V

    return-void
.end method
