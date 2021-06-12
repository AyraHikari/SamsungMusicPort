.class public final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;
.super Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadBasketTrackViewHolder"
.end annotation


# instance fields
.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


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

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;-><init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;Landroid/view/View;I)V

    const p1, 0x7f130227

    .line 183
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;->d:Landroid/widget/TextView;

    const p1, 0x7f130228

    .line 185
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;->e:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;->e:Landroid/widget/TextView;

    return-object v0
.end method
