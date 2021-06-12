.class final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;
.super Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EconomyUsageStatusViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;-><init>(Landroid/view/View;)V

    .line 516
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;->b()Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$EconomyUsageStatusViewHolder;->c()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
