.class public final Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;,
        Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;,
        Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;,
        Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;",
            "Lcom/samsung/android/app/musiclibrary/ui/list/Divider;",
            ")V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 35
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a:Ljava/util/ArrayList;

    .line 37
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;

    .line 38
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 30
    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->d:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;

    return-object p0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 254
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 55
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 56
    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 59
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    .line 60
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 61
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 62
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v2

    .line 58
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 250
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 41
    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 252
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 45
    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 256
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 69
    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    goto :goto_0

    :cond_0
    return-void
.end method
