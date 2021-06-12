.class final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$selectAllHolder$2;
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
        "Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$selectAllHolder$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$selectAllHolder$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->b(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$selectAllHolder$2;->invoke()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v0

    return-object v0
.end method
