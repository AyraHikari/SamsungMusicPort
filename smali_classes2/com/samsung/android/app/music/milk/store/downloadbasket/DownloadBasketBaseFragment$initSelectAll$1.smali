.class final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$initSelectAll$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$initSelectAll$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 345
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$initSelectAll$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 346
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$initSelectAll$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$initSelectAll$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->b:Landroid/widget/CheckBox;

    const-string v1, "selectAllHolder.checkBox"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->g(Z)V

    .line 349
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "936"

    const-string v1, "1542"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
