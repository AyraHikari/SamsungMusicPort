.class public final Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$SubHeaderViewHolder;
.super Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubHeaderViewHolder"
.end annotation


# instance fields
.field private final d:Landroid/view/View;


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

    .line 213
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;-><init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;Landroid/view/View;I)V

    .line 215
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$SubHeaderViewHolder;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$SubHeaderViewHolder;->d:Landroid/view/View;

    return-object v0
.end method
