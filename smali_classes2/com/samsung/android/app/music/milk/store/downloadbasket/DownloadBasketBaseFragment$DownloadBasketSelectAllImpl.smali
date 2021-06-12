.class final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketSelectAllImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadBasketSelectAllImpl"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    const v1, 0x7f0b0350

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketSelectAllImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketSelectAllImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    return-void
.end method

.method public d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketSelectAllImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v0

    return-object v0
.end method
