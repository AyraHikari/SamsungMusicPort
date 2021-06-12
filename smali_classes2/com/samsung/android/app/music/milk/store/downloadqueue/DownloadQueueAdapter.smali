.class final Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseIntArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Landroid/support/v4/view/AccessibilityDelegateCompat;

.field private final f:Landroid/support/v4/view/AccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ItemAnimator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->c:Ljava/util/List;

    .line 48
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->d:Landroid/util/SparseIntArray;

    .line 159
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$3;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->e:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 173
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$4;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->f:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    .line 54
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->b:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    return-object p0
.end method

.method private a(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " B"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    long-to-double p1, p1

    .line 154
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    double-to-int v0, v0

    const-string v1, "KMGTPE"

    add-int/lit8 v4, v0, -0x1

    .line 155
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 156
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.2f %cB"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-double v8, v0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v6, v7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v6, p2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 60
    new-instance p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040075

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method a(IJ)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    const-string p1, "Ui"

    const-string p2, "DownloadQueue_DownloadQueueAdapter | updateTrackFileSize() - Requested with wrong position."

    .line 213
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    iput-wide p2, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    .line 217
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->b:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    const-string v0, "Ui"

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueAdapter | updateTrackFileSize() - id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Skip this because item is animate now. currentFileSize: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;I)V
    .locals 11
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    const v1, 0x7f100086

    .line 69
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->a:Landroid/net/Uri;

    iget-wide v3, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->e:J

    .line 70
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v1

    .line 71
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0202e5

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    .line 73
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->c(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->d(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->h:I

    if-nez v2, :cond_0

    const v2, 0x7f0b04fd

    goto :goto_0

    :cond_0
    const v2, 0x7f0b04c3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget v1, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const v1, 0x7f0b010e

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const v1, 0x7f0b0439

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%s,%s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->b:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    aput-object v1, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->c(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%s,%s"

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->c:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object v1, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    iget-wide v3, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    iget-wide v6, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    cmp-long v1, v3, v6

    if-lez v1, :cond_2

    const-string v1, "SV"

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadQueue_DownloadQueueAdapter | onBindViewHolder() - id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", currentFileSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", amountFileSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", Adjust currentFileSize because it is larger than amountFileSize."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-wide v3, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    goto :goto_2

    .line 97
    :cond_2
    iget-wide v3, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    :goto_2
    long-to-float v1, v3

    .line 100
    iget-wide v6, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    long-to-float v6, v6

    div-float/2addr v1, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v1, v1, v6

    float-to-int v1, v1

    .line 101
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->e(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 103
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->f(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 104
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->f(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b01d6

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v8

    .line 103
    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->g(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s/%s"

    new-array v9, v5, [Ljava/lang/Object;

    .line 107
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v8

    iget-wide v3, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    .line 108
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    .line 107
    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->h(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->h(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v1

    const-string v3, "%s,%s,%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->b:Ljava/lang/String;

    aput-object v6, v4, v8

    iget-object v6, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->c:Ljava/lang/String;

    aput-object v6, v4, v2

    const v6, 0x7f0b03e4

    .line 117
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 116
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    iget v0, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    if-ne v0, v2, :cond_3

    .line 120
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->i(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->i(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->e:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    goto :goto_3

    .line 124
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->i(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->i(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->f:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 128
    :goto_3
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;->i(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Ui"

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueAdapter | setItems() - items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->d:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 203
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->d:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    iget v2, v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method a()Z
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 228
    iget v3, v3, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getItemCount()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    iget p1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
