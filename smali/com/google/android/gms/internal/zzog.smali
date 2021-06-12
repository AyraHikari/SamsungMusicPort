.class public final Lcom/google/android/gms/internal/zzog;
.super Lcom/google/android/gms/internal/zzpn;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static final zzbtc:I

.field private static final zzbtd:I

.field private static zzbte:I

.field private static zzbtf:I


# instance fields
.field private final mTextColor:I

.field private final zzbtg:Ljava/lang/String;

.field private final zzbth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzoi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbti:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzpq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbtj:I

.field private final zzbtk:I

.field private final zzbtl:I

.field private final zzbtm:I

.field private final zzbtn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzog;->zzbtc:I

    const/16 v0, 0xcc

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzog;->zzbtd:I

    sput v0, Lcom/google/android/gms/internal/zzog;->zzbte:I

    sget v0, Lcom/google/android/gms/internal/zzog;->zzbtc:I

    sput v0, Lcom/google/android/gms/internal/zzog;->zzbtf:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzoi;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpn;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzog;->zzbth:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzog;->zzbti:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzog;->zzbtg:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzog;->zzbth:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzog;->zzbti:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    sget p1, Lcom/google/android/gms/internal/zzog;->zzbte:I

    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/zzog;->zzbtj:I

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_2
    sget p1, Lcom/google/android/gms/internal/zzog;->zzbtf:I

    :goto_2
    iput p1, p0, Lcom/google/android/gms/internal/zzog;->mTextColor:I

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_3
    const/16 p1, 0xc

    :goto_3
    iput p1, p0, Lcom/google/android/gms/internal/zzog;->zzbtk:I

    iput p6, p0, Lcom/google/android/gms/internal/zzog;->zzbtl:I

    iput p7, p0, Lcom/google/android/gms/internal/zzog;->zzbtm:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzog;->zzbtn:Z

    return-void
.end method


# virtual methods
.method public final getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzog;->zzbtj:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzog;->zzbtg:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzog;->mTextColor:I

    return v0
.end method

.method public final getTextSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzog;->zzbtk:I

    return v0
.end method

.method public final zzjm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzpq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzog;->zzbti:Ljava/util/List;

    return-object v0
.end method

.method public final zzjn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzoi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzog;->zzbth:Ljava/util/List;

    return-object v0
.end method

.method public final zzjo()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzog;->zzbtl:I

    return v0
.end method

.method public final zzjp()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzog;->zzbtm:I

    return v0
.end method

.method public final zzjq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzog;->zzbtn:Z

    return v0
.end method
