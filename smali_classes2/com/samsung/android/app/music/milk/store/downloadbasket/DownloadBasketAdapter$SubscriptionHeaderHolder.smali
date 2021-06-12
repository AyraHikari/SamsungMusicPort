.class public final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$SubscriptionHeaderHolder;
.super Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionHeaderHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;-><init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;Landroid/view/View;I)V

    return-void
.end method
