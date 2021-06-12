.class public Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoreViewHolder"
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Lcom/samsung/android/app/music/milk/store/widget/RankView;

.field protected c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    const p3, 0x7f130163

    .line 137
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;->a:Landroid/view/View;

    const p3, 0x7f130175

    .line 138
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/milk/store/widget/RankView;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;->b:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    const p3, 0x7f130174

    .line 139
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;->c:Landroid/view/View;

    .line 141
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;->a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter<",
            "*>;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;->thumbnailView:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder$1;-><init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
