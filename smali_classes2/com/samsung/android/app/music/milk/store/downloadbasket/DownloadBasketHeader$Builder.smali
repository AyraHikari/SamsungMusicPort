.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->a:Ljava/lang/ref/WeakReference;

    .line 46
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->h:Ljava/lang/CharSequence;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object v1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->j:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public a(Landroid/view/View$OnClickListener;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->j:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->h:Ljava/lang/CharSequence;

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->a:Ljava/lang/ref/WeakReference;

    .line 70
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->a:Ljava/lang/CharSequence;

    .line 51
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p2, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->c:Ljava/lang/CharSequence;

    .line 57
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p2, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;
    .locals 4

    .line 86
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;-><init>(Landroid/app/Activity;)V

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->b()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;Landroid/app/Activity;)V

    return-object v0
.end method

.method public c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->e:Ljava/lang/CharSequence;

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p2, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->f:Ljava/lang/CharSequence;

    return-object p0
.end method
