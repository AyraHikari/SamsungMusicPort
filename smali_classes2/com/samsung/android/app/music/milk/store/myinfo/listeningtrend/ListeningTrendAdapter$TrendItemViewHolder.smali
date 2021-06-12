.class final Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$TrendItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrendItemViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f13032a

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.listening_trend_rank)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$TrendItemViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f13032b

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.listening_trend_name)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$TrendItemViewHolder;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$TrendItemViewHolder;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$TrendItemViewHolder;->b:Landroid/widget/TextView;

    return-object v0
.end method
