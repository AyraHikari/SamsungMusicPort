.class public final Landroid/support/v7/util/AdapterListUpdateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/util/ListUpdateCallback;


# instance fields
.field private final mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/support/v7/util/AdapterListUpdateCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 1

    .line 61
    iget-object v0, p0, Landroid/support/v7/util/AdapterListUpdateCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    .line 43
    iget-object v0, p0, Landroid/support/v7/util/AdapterListUpdateCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/support/v7/util/AdapterListUpdateCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    .line 49
    iget-object v0, p0, Landroid/support/v7/util/AdapterListUpdateCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
