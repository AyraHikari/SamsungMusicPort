.class final Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AvlBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 753
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    if-nez v1, :cond_0

    return-object v0

    .line 754
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method a(I)V
    .locals 1

    .line 679
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 680
    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->b:I

    const/4 p1, 0x0

    .line 681
    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->d:I

    .line 682
    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->c:I

    const/4 p1, 0x0

    .line 683
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method

.method a(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 687
    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->c:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->b:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    const/4 v0, 0x1

    .line 688
    iput v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->i:I

    .line 691
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->b:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->d:I

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 692
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->d:I

    .line 693
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->b:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->b:I

    .line 694
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->c:I

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 698
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 699
    iget p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->d:I

    .line 702
    iget p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->b:I

    if-lez p1, :cond_1

    iget p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->d:I

    and-int/2addr p1, v0

    if-nez p1, :cond_1

    .line 703
    iget p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->d:I

    .line 704
    iget p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->b:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->b:I

    .line 705
    iget p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->c:I

    :cond_1
    const/4 p1, 0x4

    .line 721
    :goto_0
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->d:I

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 722
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->c:I

    if-nez v1, :cond_2

    .line 724
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 725
    iget-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 726
    iget-object v3, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 727
    iget-object v4, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 728
    iput-object v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 730
    iput-object v3, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->b:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 731
    iput-object v1, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->c:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 732
    iget v4, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->i:I

    add-int/2addr v4, v0

    iput v4, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->i:I

    .line 733
    iput-object v2, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 734
    iput-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_1

    .line 735
    :cond_2
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->c:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_3

    .line 737
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 738
    iget-object v3, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 739
    iput-object v3, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 741
    iput-object v1, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->c:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 742
    iget v4, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->i:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->i:I

    .line 743
    iput-object v3, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 744
    iput v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->c:I

    goto :goto_1

    .line 745
    :cond_3
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->c:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 746
    iput v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->c:I

    :cond_4
    :goto_1
    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_5
    return-void
.end method
