.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderParams"
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:F

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;Landroid/app/Activity;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 122
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->b(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 125
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->c(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 128
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->d(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 131
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->e(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 134
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->f(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_5
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 137
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->f(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->g:F

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 142
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->g(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->j:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_8

    .line 145
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->g(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->h(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 147
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f1003da

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->h(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 154
    :cond_8
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->g(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
