.class Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/text/SpannableStringBuilder;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->a:Ljava/util/List;

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->b:Ljava/util/List;

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->c:Ljava/util/List;

    .line 608
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    .line 609
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->a(I)V

    .line 610
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->b(I)V

    return-void
.end method


# virtual methods
.method public a(C)V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 614
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->h:I

    .line 615
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 616
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 617
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 618
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    const/16 p1, 0xf

    .line 619
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->e:I

    const/4 p1, 0x0

    .line 620
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->f:I

    .line 621
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->g:I

    const/4 p1, -0x1

    .line 622
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->j:I

    return-void
.end method

.method public a(Landroid/text/style/CharacterStyle;)V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/text/style/CharacterStyle;I)V
    .locals 3

    .line 675
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->b:Ljava/util/List;

    new-instance v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-direct {v1, p1, v2, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;-><init>(Landroid/text/style/CharacterStyle;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 680
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->j:I

    goto :goto_0

    .line 681
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->j:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 683
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->j:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    .line 684
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 683
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 685
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->j:I

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    .line 631
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 637
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 626
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->i:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 642
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->e:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 646
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->e:I

    return-void
.end method

.method public d()V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->e()Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 652
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 653
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 654
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->j:I

    .line 656
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->i:I

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 657
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 658
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    .line 663
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->f:I

    return-void
.end method

.method public e()Landroid/text/SpannableString;
    .locals 7

    .line 694
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 697
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x21

    if-ge v2, v3, :cond_0

    .line 698
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 704
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    .line 705
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v5, v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->c:I

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->b:Ljava/util/List;

    iget v5, v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->c:I

    add-int/2addr v5, v1

    .line 706
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget v3, v3, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->b:I

    goto :goto_2

    :cond_1
    move v3, v0

    .line 708
    :goto_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    iget-object v6, v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->a:Landroid/text/style/CharacterStyle;

    iget v2, v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->b:I

    invoke-virtual {v5, v6, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 713
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 714
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->j:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 718
    :cond_3
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 667
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->g:I

    return-void
.end method

.method public f()Lcom/google/android/exoplayer2/text/Cue;
    .locals 12

    .line 722
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 724
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 725
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    .line 726
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->e()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 731
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 739
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->f:I

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->g:I

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v2, 0x20

    .line 741
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, v2, v3

    .line 743
    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->h:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v8, 0x3

    if-lt v5, v8, :cond_2

    if-gez v3, :cond_3

    :cond_2
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    goto :goto_1

    .line 749
    :cond_3
    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->h:I

    const v8, 0x3dcccccd    # 0.1f

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v10, 0x42000000    # 32.0f

    if-ne v5, v7, :cond_4

    if-lez v4, :cond_4

    rsub-int/lit8 v2, v3, 0x20

    int-to-float v2, v2

    div-float/2addr v2, v10

    mul-float v2, v2, v9

    add-float/2addr v2, v8

    move v8, v2

    const/4 v9, 0x2

    goto :goto_1

    :cond_4
    int-to-float v2, v2

    div-float/2addr v2, v10

    mul-float v2, v2, v9

    add-float/2addr v2, v8

    move v8, v2

    const/4 v9, 0x0

    .line 766
    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->h:I

    if-eq v2, v6, :cond_6

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->e:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_5

    goto :goto_2

    .line 776
    :cond_5
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->e:I

    const/4 v5, 0x0

    goto :goto_3

    .line 768
    :cond_6
    :goto_2
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->e:I

    add-int/lit8 v0, v0, -0xf

    add-int/lit8 v2, v0, -0x2

    const/4 v5, 0x2

    .line 779
    :goto_3
    new-instance v10, Lcom/google/android/exoplayer2/text/Cue;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    int-to-float v4, v2

    const/4 v6, 0x1

    const/4 v11, 0x1

    move-object v0, v10

    move-object v2, v3

    move v3, v4

    move v4, v6

    move v6, v8

    move v7, v9

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v10
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
