.class public Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/flexbox/FlexItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/FlexboxLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2805
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams$1;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams$1;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2717
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 2539
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->a:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2544
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->b:F

    const/4 p1, -0x1

    .line 2549
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->c:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 2554
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->d:F

    const p1, 0xffffff

    .line 2569
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->g:I

    .line 2574
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2713
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2539
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->a:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2544
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->b:F

    const/4 p1, -0x1

    .line 2549
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->c:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 2554
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->d:F

    const p1, 0xffffff

    .line 2569
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->g:I

    .line 2574
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->h:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, -0x2

    .line 2787
    invoke-direct {p0, v0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 2539
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->a:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2544
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->b:F

    const/4 v0, -0x1

    .line 2549
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->c:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 2554
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->d:F

    const v0, 0xffffff

    .line 2569
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->g:I

    .line 2574
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->h:I

    .line 2788
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->a:F

    .line 2789
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->b:F

    .line 2790
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->c:I

    .line 2791
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->d:F

    .line 2792
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->e:I

    .line 2793
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->f:I

    .line 2794
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->g:I

    .line 2795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->h:I

    .line 2796
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->i:Z

    .line 2797
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->bottomMargin:I

    .line 2798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    .line 2799
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    .line 2800
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    .line 2801
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->height:I

    .line 2802
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2583
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 2593
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->height:I

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()F
    .locals 1

    .line 2603
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->a:F

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()F
    .locals 1

    .line 2613
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->b:F

    return v0
.end method

.method public f()I
    .locals 1

    .line 2624
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->c:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 2634
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->e:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 2644
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->f:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 2654
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->g:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 2664
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->h:I

    return v0
.end method

.method public k()Z
    .locals 1

    .line 2674
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->i:Z

    return v0
.end method

.method public l()F
    .locals 1

    .line 2684
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->d:F

    return v0
.end method

.method public m()I
    .locals 1

    .line 2694
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    return v0
.end method

.method public n()I
    .locals 1

    .line 2699
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    return v0
.end method

.method public o()I
    .locals 1

    .line 2704
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    return v0
.end method

.method public p()I
    .locals 1

    .line 2709
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->bottomMargin:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2769
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->a:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2770
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->b:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2771
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2772
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2773
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2774
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2775
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2776
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2777
    iget-boolean p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->i:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2778
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2779
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2780
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2781
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2782
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2783
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
