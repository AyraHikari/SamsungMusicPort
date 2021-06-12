.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setChoiceMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setChoiceMode$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 1

    .line 918
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setChoiceMode$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->r(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 919
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setChoiceMode$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result p1

    .line 920
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setChoiceMode$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w_()I

    move-result p2

    .line 921
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setChoiceMode$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->j(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setChoiceMode$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->r(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    if-lez p1, :cond_2

    if-ne p1, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 921
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    :cond_3
    return-void
.end method
