.class final Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultPlaylistViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;Landroid/view/View;)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->e:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;

    .line 263
    move-object p1, p2

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getClickableView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->a:Landroid/view/View;

    const p1, 0x7f13013a

    .line 264
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.thumbnail)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->b:Landroid/widget/ImageView;

    const p1, 0x7f13015f

    .line 265
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.text1)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->c:Landroid/widget/TextView;

    const p1, 0x7f13006c

    .line 266
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.text2)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->d:Landroid/widget/TextView;

    .line 269
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->a:Landroid/view/View;

    new-instance p2, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder$1;-><init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;)Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->e:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->a:Landroid/view/View;

    return-object v0
.end method

.method public final b()Landroid/widget/ImageView;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final c()Landroid/widget/TextView;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final d()Landroid/widget/TextView;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->d:Landroid/widget/TextView;

    return-object v0
.end method
