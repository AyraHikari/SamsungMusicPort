.class public Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

.field private e:Landroid/widget/ImageView;

.field private final f:Z

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 403
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->track_number:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->a:Landroid/widget/TextView;

    .line 404
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->thumbnail_tag_short:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->b:Landroid/widget/TextView;

    .line 405
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->thumbnail_tag_long:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->c:Landroid/widget/TextView;

    .line 406
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->now_playing:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->d:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    .line 409
    instance-of p3, p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object p3, v0

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getNowPlayingViewHolders()Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g:Ljava/util/ArrayList;

    .line 412
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->a:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->f()I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_2

    .line 413
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    :cond_2
    sget p1, Lcom/samsung/android/app/musiclibrary/R$id;->thumbnail_button:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    return-void
.end method

.method public final d()Landroid/widget/TextView;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public final e()Landroid/widget/TextView;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public final f()Landroid/widget/TextView;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final g()Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->d:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    return-object v0
.end method

.method public final h()Landroid/widget/ImageView;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->f:Z

    return v0
.end method

.method public final j()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;",
            ">;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g:Ljava/util/ArrayList;

    return-object v0
.end method
