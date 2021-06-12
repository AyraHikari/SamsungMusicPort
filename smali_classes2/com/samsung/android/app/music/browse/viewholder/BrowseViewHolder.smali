.class public abstract Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    iput p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;->a:I

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/ViewGroup;)V
.end method

.method public abstract a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
.end method

.method public u_()V
    .locals 0

    return-void
.end method
