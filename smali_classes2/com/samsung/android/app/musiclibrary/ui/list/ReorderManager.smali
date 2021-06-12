.class public final Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;,
        Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;,
        Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;,
        Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Companion;


# instance fields
.field private final b:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private final h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private final i:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field private final j:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

.field private final k:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;",
            "Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;",
            "Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;",
            ")V"
        }
    .end annotation

    const-string v0, "musicRecyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reorderable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->i:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->j:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->k:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->c:I

    .line 26
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->d:I

    .line 28
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e:I

    .line 30
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->f:I

    const-string p1, "ReorderManager"

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ReorderManager() - recyclerView: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", adapter: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->i:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance p1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)V

    check-cast p2, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-direct {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->b:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 41
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->b:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    const/4 p1, 0x3

    .line 43
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e:I

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->f:I

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->k:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->c:I

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e:I

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->d:I

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->f:I

    return p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->c:I

    return p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->d:I

    return p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->i:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object p0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->j:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    return-object p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->g:Z

    return p0
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ReorderManager"

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startReorder() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 50
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 51
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 52
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e:I

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e:I

    goto :goto_0

    .line 54
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 56
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e:I

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e:I

    .line 59
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->b:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 60
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->g:Z

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEnabled(Z)V

    return-void
.end method
