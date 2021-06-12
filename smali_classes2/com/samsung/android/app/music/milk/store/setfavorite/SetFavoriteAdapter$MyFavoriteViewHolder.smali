.class final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MyFavoriteViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/view/View;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f13015f

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.text1)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f13006c

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f1304e6

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->c:Landroid/widget/ImageView;

    const v0, 0x7f130560

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.clickable_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->d:Landroid/view/View;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->e:Ljava/util/ArrayList;

    const v0, 0x7f13055e

    .line 217
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->f:Landroid/view/View;

    const v0, 0x7f13055f

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->g:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 222
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->c:Landroid/widget/ImageView;

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 224
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->e:Ljava/util/ArrayList;

    const v0, 0x7f1303b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->e:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->e:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->d:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public final c()Landroid/widget/ImageView;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->d:Landroid/view/View;

    return-object v0
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->f:Landroid/view/View;

    return-object v0
.end method

.method public final g()Landroid/view/View;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;->g:Landroid/view/View;

    return-object v0
.end method
