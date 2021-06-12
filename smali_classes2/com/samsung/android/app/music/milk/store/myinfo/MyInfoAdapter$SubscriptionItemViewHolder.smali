.class final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubscriptionItemViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f130463

    .line 486
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.\u2026y_info_subscription_icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->a:Landroid/widget/ImageView;

    const v0, 0x7f130464

    .line 487
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.\u2026_info_subscription_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f130465

    .line 488
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.\u2026info_subscription_period)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f130466

    .line 490
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.\u2026iption_reserved_changing)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public final c()Landroid/widget/TextView;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$SubscriptionItemViewHolder;->d:Landroid/view/View;

    return-object v0
.end method
