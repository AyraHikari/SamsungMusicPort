.class public final Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;
.super Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;
    .locals 2

    .line 145
    new-instance v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;)V

    return-object v0
.end method

.method protected b()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->a()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->b()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    return-object v0
.end method
