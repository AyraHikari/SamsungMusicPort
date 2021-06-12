.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f040072

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->a:Landroid/view/View;

    .line 24
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->a:Landroid/view/View;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    return-object v0
.end method
