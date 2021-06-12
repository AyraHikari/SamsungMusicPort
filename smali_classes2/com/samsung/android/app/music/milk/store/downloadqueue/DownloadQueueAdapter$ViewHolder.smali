.class public final Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/widget/ProgressBar;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 255
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f13022a

    .line 256
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    const v0, 0x7f13022c

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    const v0, 0x7f13022b

    .line 258
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f13022e

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f13022d

    .line 260
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->d:Landroid/widget/TextView;

    const v0, 0x7f13022f

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->e:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f130231

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    const v0, 0x7f130230

    .line 264
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->g:Landroid/widget/ProgressBar;

    const v0, 0x7f130232

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->h:Landroid/widget/TextView;

    const v0, 0x7f130233

    .line 266
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->i:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/ProgressBar;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->g:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    return-object p0
.end method
