.class final Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$SectionViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SectionViewHolder"
.end annotation


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 177
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$1;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$SectionViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
