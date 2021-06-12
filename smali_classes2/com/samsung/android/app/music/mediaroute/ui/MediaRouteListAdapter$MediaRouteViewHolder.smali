.class Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaRouteViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    const p1, 0x7f1302bb

    .line 106
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;->a:Landroid/widget/TextView;

    const p1, 0x7f1302ba

    .line 107
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;->b:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;->b:Landroid/widget/ImageView;

    return-object p0
.end method
