.class final Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpotifyViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1493
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

    .line 1494
    invoke-direct {p0, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->d:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

    const p1, 0x7f13013a

    .line 1496
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    .line 1497
    new-instance p2, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder$$special$$inlined$apply$lambda$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder$$special$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1496
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->b:Landroid/widget/ImageView;

    const p1, 0x7f13015f

    .line 1499
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->c:Landroid/widget/TextView;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;)Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;
    .locals 0

    .line 1493
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->d:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 1

    .line 1496
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    .line 1499
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->c:Landroid/widget/TextView;

    return-object v0
.end method
