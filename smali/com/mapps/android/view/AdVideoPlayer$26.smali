.class Lcom/mapps/android/view/AdVideoPlayer$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->setloction(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;

.field private final synthetic val$cal:I

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iput-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->val$type:Ljava/lang/String;

    iput p3, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->val$cal:I

    .line 1427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    :try_start_0
    const-string v0, "1"

    .line 1431
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/16 v2, 0xf

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/16 v7, 0x21

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_5

    .line 1433
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v10, v8}, Lcom/mapps/android/view/AdVideoPlayer;->getTextPx(I)I

    move-result v10

    sub-int/2addr v10, v6

    int-to-float v10, v10

    invoke-virtual {v0, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1434
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v10, v8}, Lcom/mapps/android/view/AdVideoPlayer;->getTextPx(I)I

    move-result v10

    sub-int/2addr v10, v6

    int-to-float v10, v10

    invoke-virtual {v0, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1435
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v11}, Lcom/mapps/android/view/AdVideoPlayer;->access$52(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v11

    invoke-virtual {v10, v11, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 1436
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v11}, Lcom/mapps/android/view/AdVideoPlayer;->access$53(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v11

    invoke-virtual {v10, v11, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v10

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v12, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v12}, Lcom/mapps/android/view/AdVideoPlayer;->access$53(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v12

    invoke-virtual {v11, v12, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v11

    iget-object v12, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v12}, Lcom/mapps/android/view/AdVideoPlayer;->access$54(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v12

    add-int/lit8 v12, v12, -0xa

    mul-int v11, v11, v12

    div-int/lit8 v11, v11, 0x64

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHeight(I)V

    .line 1437
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v11}, Lcom/mapps/android/view/AdVideoPlayer;->access$52(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v11

    invoke-virtual {v10, v11, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 1438
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v11}, Lcom/mapps/android/view/AdVideoPlayer;->access$53(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v11

    invoke-virtual {v10, v11, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v10

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v12, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v12}, Lcom/mapps/android/view/AdVideoPlayer;->access$53(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v12

    invoke-virtual {v11, v12, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v11

    iget-object v12, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v12}, Lcom/mapps/android/view/AdVideoPlayer;->access$54(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v12

    add-int/lit8 v12, v12, -0xa

    mul-int v11, v11, v12

    div-int/lit8 v11, v11, 0x64

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHeight(I)V

    .line 1440
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$38(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1441
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uad11\uace0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->val$cal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ucd08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1442
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v0, v1, v6, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1443
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v2, v8

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v1, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1444
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$38(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1447
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0, v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$55(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 1449
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "\uad11\uace0 \uac74\ub108\ub6f0\uae30"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1450
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v2, v8

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v1, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1451
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1453
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$56(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v0

    if-le v0, v2, :cond_2

    .line 1454
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v2, "\uc7a0\uc2dc \ud6c4 \uad11\uace0\uac00 \uc885\ub8cc\ub429\ub2c8\ub2e4"

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1455
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    float-to-int v9, v9

    div-int/2addr v9, v8

    invoke-direct {v2, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v2, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1456
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v6, v8

    invoke-direct {v2, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v2, v4, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1457
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v2, v8

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v3, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1458
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1460
    :cond_2
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$57(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 1462
    :cond_3
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_4

    .line 1463
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0, v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$58(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 1464
    :cond_4
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v1, v1, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    .line 1465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1466
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\ucd08 \ud6c4 \uad11\uace0\uac00 \uc885\ub8cc\ub429\ub2c8\ub2e4"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1467
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    div-int/2addr v4, v8

    invoke-direct {v0, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v2, v0, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1468
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    div-int/2addr v4, v8

    invoke-direct {v0, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v4, v1, 0x3

    add-int/lit8 v6, v1, 0x4

    invoke-virtual {v2, v0, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1469
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    div-int/2addr v4, v8

    invoke-direct {v0, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v4, v1, 0x7

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v4, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1470
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "2"

    .line 1474
    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1475
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    .line 1476
    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v10}, Lcom/mapps/android/view/AdVideoPlayer;->access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    float-to-int v10, v10

    .line 1477
    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v11, v8}, Lcom/mapps/android/view/AdVideoPlayer;->getTextPx(I)I

    move-result v11

    sub-int/2addr v11, v6

    if-ne v0, v11, :cond_6

    .line 1478
    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v11}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v12}, Lcom/mapps/android/view/AdVideoPlayer;->access$54(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v12

    mul-int v12, v12, v0

    div-int/lit8 v12, v12, 0x64

    int-to-float v12, v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v0, v12

    add-int/2addr v0, v9

    int-to-float v0, v0

    invoke-virtual {v11, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1479
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v11}, Lcom/mapps/android/view/AdVideoPlayer;->access$54(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v11

    mul-int v11, v11, v10

    div-int/lit8 v11, v11, 0x64

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v9

    int-to-float v10, v10

    invoke-virtual {v0, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1480
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v11}, Lcom/mapps/android/view/AdVideoPlayer;->access$52(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v11

    invoke-virtual {v10, v11, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v10

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v12, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v12}, Lcom/mapps/android/view/AdVideoPlayer;->access$52(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v12

    invoke-virtual {v11, v12, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v11

    iget-object v12, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v12}, Lcom/mapps/android/view/AdVideoPlayer;->access$54(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v12

    mul-int v11, v11, v12

    div-int/lit8 v11, v11, 0x64

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v9

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 1481
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v11}, Lcom/mapps/android/view/AdVideoPlayer;->access$53(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v11

    invoke-virtual {v10, v11, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v10

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v12, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v12}, Lcom/mapps/android/view/AdVideoPlayer;->access$53(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v12

    invoke-virtual {v11, v12, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v11

    iget-object v12, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v12}, Lcom/mapps/android/view/AdVideoPlayer;->access$54(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v12

    add-int/lit8 v12, v12, -0x7

    mul-int v11, v11, v12

    div-int/lit8 v11, v11, 0x64

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v9

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHeight(I)V

    .line 1482
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v11}, Lcom/mapps/android/view/AdVideoPlayer;->access$52(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v11

    invoke-virtual {v10, v11, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v10

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v12, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v12}, Lcom/mapps/android/view/AdVideoPlayer;->access$52(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v12

    invoke-virtual {v11, v12, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v11

    iget-object v12, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v12}, Lcom/mapps/android/view/AdVideoPlayer;->access$54(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v12

    mul-int v11, v11, v12

    div-int/lit8 v11, v11, 0x64

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v9

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 1483
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v11}, Lcom/mapps/android/view/AdVideoPlayer;->access$53(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v11

    invoke-virtual {v10, v11, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v10

    iget-object v11, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v12, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v12}, Lcom/mapps/android/view/AdVideoPlayer;->access$53(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v12

    invoke-virtual {v11, v12, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v11

    iget-object v12, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v12}, Lcom/mapps/android/view/AdVideoPlayer;->access$54(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v12

    add-int/lit8 v12, v12, -0x7

    mul-int v11, v11, v12

    div-int/lit8 v11, v11, 0x64

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v9

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHeight(I)V

    .line 1484
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v10, 0x11

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1485
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v10, 0x11

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1487
    :cond_6
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$38(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1488
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uad11\uace0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->val$cal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ucd08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1489
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v0, v1, v6, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1490
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v2, v8

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v1, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1491
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1493
    :cond_7
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$38(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1494
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-eqz v0, :cond_8

    .line 1495
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0, v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$55(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 1496
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "\uad11\uace0 \uac74\ub108\ub6f0\uae30"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1497
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v2, v8

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v1, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1498
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1500
    :cond_8
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$56(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v0

    if-le v0, v2, :cond_9

    .line 1501
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v2, "\uc7a0\uc2dc \ud6c4 \uad11\uace0\uac00 \uc885\ub8cc\ub429\ub2c8\ub2e4"

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1502
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    float-to-int v9, v9

    div-int/2addr v9, v8

    invoke-direct {v2, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v2, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1503
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v6, v8

    invoke-direct {v2, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v2, v4, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1504
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v2, v8

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v3, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1505
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1507
    :cond_9
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$57(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 1509
    :cond_a
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_b

    .line 1510
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0, v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$58(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 1511
    :cond_b
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v1, v1, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    .line 1512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1513
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\ucd08 \ud6c4 \uad11\uace0\uac00 \uc885\ub8cc\ub429\ub2c8\ub2e4"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1514
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    div-int/2addr v4, v8

    invoke-direct {v0, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v2, v0, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1515
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    div-int/2addr v4, v8

    invoke-direct {v0, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v4, v1, 0x3

    add-int/lit8 v6, v1, 0x4

    invoke-virtual {v2, v0, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1516
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    div-int/2addr v4, v8

    invoke-direct {v0, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v4, v1, 0x7

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v4, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1517
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    :cond_c
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1523
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1524
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1525
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$26;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1527
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
