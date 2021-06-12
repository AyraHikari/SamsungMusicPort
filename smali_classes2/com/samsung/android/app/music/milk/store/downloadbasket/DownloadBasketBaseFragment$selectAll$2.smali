.class final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$selectAll$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketSelectAllImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$selectAll$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketSelectAllImpl;
    .locals 3

    .line 80
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketSelectAllImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$selectAll$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketSelectAllImpl;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$selectAll$2;->invoke()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketSelectAllImpl;

    move-result-object v0

    return-object v0
.end method
