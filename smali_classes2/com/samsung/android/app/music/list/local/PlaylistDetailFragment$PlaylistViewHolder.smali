.class public final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;
.super Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaylistViewHolder"
.end annotation


# instance fields
.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;-><init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;Landroid/view/View;I)V

    const v0, 0x7f13028e

    .line 1055
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->d:Landroid/widget/ImageView;

    const v0, 0x7f130314

    .line 1056
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->e:Landroid/view/View;

    const v0, 0x7f130108

    .line 1057
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->f:Landroid/view/View;

    const/16 v0, -0x4c5

    if-eq p3, v0, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/16 v0, 0x7d1

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 1062
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->d:Landroid/widget/ImageView;

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;Landroid/view/View;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1076
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->f:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->addAnimateView(Landroid/view/View;)V

    goto :goto_0

    .line 1071
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->e:Landroid/view/View;

    if-nez p2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    new-instance p3, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder$2;

    invoke-direct {p3, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder$2;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->e:Landroid/view/View;

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->f:Landroid/view/View;

    return-object v0
.end method
