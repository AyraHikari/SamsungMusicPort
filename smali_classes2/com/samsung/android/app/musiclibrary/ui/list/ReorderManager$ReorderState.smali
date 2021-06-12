.class public final Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReorderState"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "positions[position]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final a(II)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->a:Z

    return v0
.end method

.method public final b(I)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->b(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->b:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->b:Z

    return v0
.end method
