.class public final Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    const/16 v0, -0x3e8

    if-ne p3, v0, :cond_0

    const p1, 0x7f130324

    .line 361
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->a:Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 363
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->a:Landroid/widget/TextView;

    .line 365
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->a:Landroid/widget/TextView;

    return-object v0
.end method
