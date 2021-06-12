.class public final Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a(Lcom/samsung/android/app/music/list/common/ListHeaderManager;I)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->d()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a(Lcom/samsung/android/app/music/list/common/ListHeaderManager;Z)V

    return-void
.end method
