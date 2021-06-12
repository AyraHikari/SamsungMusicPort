.class final Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$loadMoreHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$loadMoreHelper$2;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;
    .locals 2

    .line 36
    new-instance v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$loadMoreHelper$2;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$loadMoreHelper$2;->invoke()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;

    move-result-object v0

    return-object v0
.end method
