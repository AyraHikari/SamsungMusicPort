.class public final Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;
.super Lcom/samsung/android/app/music/list/LoadMoreHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PurchasedTrackLoadMoreHelper"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/LoadMoreHelper;-><init>()V

    const/4 p1, 0x1

    .line 124
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadMoreInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->c:I

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->b:Z

    return-void
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->b:Z

    return p1
.end method

.method public final d()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->b:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->c:I

    return v0
.end method
